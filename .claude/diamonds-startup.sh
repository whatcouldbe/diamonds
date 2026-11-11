#!/usr/bin/env python3
# diamonds-startup.sh
#
# NOTE: Despite the .sh extension, this is a PYTHON script. It is invoked as
# `python3 {diamonds_path}/.claude/diamonds-startup.sh` by the second SessionStart
# hook wired into every project's .claude/settings.json. The extension is kept to
# match the name already referenced by deployed projects; the wrapper runs it with
# python3 regardless of extension.
#
# Registry — the canonical projects registry is the `projects` array in
# ~/.diamonds/config.json (objects with `name` and `path`). If that array is
# missing or empty, fall back to the legacy markdown registry at
# ~/.claude/projects.md (free-form; paths are detected by existence).
#
# Purpose — "watch the tape." At session start, read the projects registry and
# each known project's current status, and emit it into the agent's context so
# Diamonds arrives already current, before its first response. This is the silent
# loading the Session Start arc in the engine DIAMONDS.md depends on: the returning
# branch ("how are you showing up") assumes the agent has already read the film.
#
# Contract — print exactly one SessionStart additionalContext JSON object to
# stdout (Claude Code shape by default; `--format=copilot` emits the GitHub
# Copilot shape, a top-level `additionalContext`). Never crash the session: on any error, emit minimal valid output and
# exit 0. (The hook wrapper suppresses stderr and `|| true`s the exit code, so a
# malformed stdout is the only way to do harm — guard against it.)

import json
import os
import re
import sys

CONFIG = os.path.expanduser("~/.diamonds/config.json")
LEGACY_REGISTRY = os.path.expanduser("~/.claude/projects.md")
MAX_FILE_CHARS = 6000


def read_text(path, limit=None):
    try:
        with open(path, "r", encoding="utf-8", errors="replace") as f:
            data = f.read()
    except Exception:
        return None
    if limit and len(data) > limit:
        data = data[:limit] + "\n…(truncated)…\n"
    return data


def read_config_projects():
    """Return [(name, abs_path), ...] from the `projects` array in
    ~/.diamonds/config.json. Malformed entries are skipped; any read/parse
    failure yields an empty list so the caller can fall back."""
    try:
        with open(CONFIG, "r", encoding="utf-8") as f:
            entries = json.load(f).get("projects") or []
    except Exception:
        return []
    projects = []
    for entry in entries if isinstance(entries, list) else []:
        if not isinstance(entry, dict) or not isinstance(entry.get("path"), str):
            continue
        path = os.path.expanduser(entry["path"].strip())
        if not os.path.isabs(path):
            continue
        name = entry.get("name") if isinstance(entry.get("name"), str) else None
        projects.append((name or os.path.basename(path.rstrip("/")), path))
    return projects


def find_project_dirs(registry_text):
    """Best-effort, format-agnostic: pull filesystem paths out of the registry
    that resolve to a directory containing a diamonds-vault/. The registry is
    human/agent-authored markdown with no fixed schema, so detect by existence
    rather than by parsing a structure."""
    dirs = []
    seen = set()
    for raw in re.findall(r'[~/][^\s)\]>"\'`]+', registry_text or ""):
        token = raw.rstrip(".,;:")
        path = os.path.expanduser(token)
        if not os.path.isabs(path):
            continue
        if os.path.isdir(os.path.join(path, "diamonds-vault")) and path not in seen:
            seen.add(path)
            dirs.append(path)
    return dirs


def project_title(path):
    pm = read_text(os.path.join(path, "diamonds-vault", "project.md"))
    if pm:
        m = re.search(r'^#\s+(.+)$', pm, re.MULTILINE)
        if m:
            return m.group(1).strip()
    return os.path.basename(path.rstrip("/")) or path


def definition_of_success(path):
    """Pull the definition-of-success section out of project.md, best-effort.
    Matches a heading whose text mentions 'success' and returns its body."""
    pm = read_text(os.path.join(path, "diamonds-vault", "project.md"))
    if not pm:
        return None
    sec = re.search(
        r'(?ims)^#{1,6}\s*[^\n]*success[^\n]*$\n(.*?)(?=\n#{1,6}\s|\Z)', pm
    )
    if sec:
        body = sec.group(1).strip()
        return body[:800] if body else None
    return None


ENGINE_FILE = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "DIAMONDS.md"
)


def engine_section(heading):
    """One `## heading` section of the engine's DIAMONDS.md, verbatim."""
    text = read_text(ENGINE_FILE)
    if not text:
        return None
    sec = re.search(r'(?ms)^## ' + re.escape(heading) + r'\n(.*?)(?=^## )', text)
    return sec.group(1).strip() if sec else None


def session_start_rules():
    """The Session Start section of the engine's DIAMONDS.md, verbatim, so the
    opening arc is in context even if the model never opens the engine file
    (smaller models often don't). Single source: extracted at runtime, never
    duplicated."""
    text = read_text(ENGINE_FILE)
    if not text:
        return None
    sec = re.search(r'(?ms)^## Session Start\n(.*?)(?=^## )', text)
    return sec.group(1).strip() if sec else None


CLOSED_STATUS = re.compile(
    r"validated|resolved|done|complete|✅|n/?a|not in scope", re.IGNORECASE
)


def project_digest(path):
    """(last_activity, title, [(question, status, note), ...]) for one vault.
    Last activity is the latest YYYY-MM-DD in health.md (file mtime fallback).
    Open questions are question-status table rows whose status isn't closed."""
    health = read_text(os.path.join(path, "diamonds-vault", "health.md")) or ""
    dates = re.findall(r"\b(20\d\d-\d\d-\d\d)\b", health)
    if dates:
        last = max(dates)
    else:
        try:
            import datetime
            last = datetime.date.fromtimestamp(
                os.path.getmtime(os.path.join(path, "diamonds-vault", "health.md"))
            ).isoformat()
        except Exception:
            last = "unknown"
    open_qs = []
    for row in re.findall(r"(?m)^\|([^|\n]+)\|([^|\n]+)\|([^|\n]*)\|\s*$", health):
        q, status, note = (c.strip() for c in row)
        if not q.endswith("?") or CLOSED_STATUS.search(status):
            continue
        note = note if len(note) <= 160 else note[:157] + "…"
        open_qs.append((q, status, note))
    return last, project_title(path), open_qs


def digest_section(project_dirs):
    rows = sorted((project_digest(p) for p in project_dirs), reverse=True)
    out = [
        "## Where the work stands — digest (most recent first)\n",
        "Use this to bridge. Plain words only when you speak.\n",
    ]
    for last, title, open_qs in rows:
        out.append(f"### {title} — last activity {last}")
        if not open_qs:
            out.append("- No open questions recorded.")
        for q, status, note in open_qs[:3]:
            out.append(f"- **{q}** ({status}) — {note}" if note else f"- **{q}** ({status})")
        if len(open_qs) > 3:
            out.append(f"- …and {len(open_qs) - 3} more open.")
        out.append("")
    out.append(
        "**Your second turn (after they tell you how they're showing up):** "
        "acknowledge them in a sentence, then name ONE project from this digest "
        "— the one where an unvalidated assumption most blocks a real decision. "
        "Weigh stakes over recency: client and commercial work, and projects "
        "with a definition of success at risk, outrank newer but lower-stakes "
        "ones; skip sandbox or test projects unless the person is working on "
        "them. If a project's last activity is weeks old, say so and check "
        "whether things have moved on. Say the open question in plain words and "
        "why it matters now. Then ask exactly one question. Do not ask what they're "
        "working on or which project they want; you already know. If you're "
        "unsure between two, name both briefly and ask which.\n"
    )
    return "\n".join(out)


def build_context():
    parts = ["# Diamonds — session orientation (loaded automatically)\n"]
    rules = session_start_rules()
    if rules:
        parts.append(
            "## How to open this session (from DIAMONDS.md — follow exactly)\n\n"
            "You are Diamonds. Ask one question at a time. Never say the internal "
            "words \"tape\" or \"gate\", and never name files or frameworks to the "
            "person.\n\n" + rules + "\n"
        )
    close = engine_section("Session Close")
    if close:
        parts.append(
            "## How to close this session (from DIAMONDS.md — follow exactly)\n\n"
            + close + "\n"
        )
    parts.append(
        "Project state, loaded silently so you arrive already "
        "current. Do not recite it as a status dashboard. Follow the Session "
        "Start arc in the engine DIAMONDS.md — open on the person, then bridge "
        "through where the work stands, then tie back to the definition of "
        "success.\n"
    )

    config_projects = read_config_projects()
    if config_projects:
        parts.append("## Projects registry (`~/.diamonds/config.json`)\n")
        project_dirs = []
        for name, path in config_projects:
            has_vault = os.path.isdir(os.path.join(path, "diamonds-vault"))
            note = "" if has_vault else " — _no diamonds-vault/ on disk here_"
            parts.append(f"- **{name}** — `{path}`{note}")
            if has_vault and path not in project_dirs:
                project_dirs.append(path)
        parts.append("")
    else:
        registry_text = read_text(LEGACY_REGISTRY)
        if not registry_text or not registry_text.strip():
            parts.append(
                "## Projects registry\n_No projects registered (no `projects` in "
                "`~/.diamonds/config.json`, no `~/.claude/projects.md`)._ Nothing "
                "to watch — treat this as a first session and run the cold-start "
                "coaching arc.\n"
            )
            return "\n".join(parts)
        parts.append("## Projects registry (`~/.claude/projects.md`, legacy)\n")
        parts.append(registry_text.strip() + "\n")
        project_dirs = find_project_dirs(registry_text)

    if not project_dirs:
        parts.append(
            "\n## Project status\n_No on-disk project vaults resolved from the "
            "registry (paths may be unavailable in this environment — e.g. a web "
            "session where only some repos are checked out)._\n"
        )
        return "\n".join(parts)

    parts.append(digest_section(project_dirs))
    parts.append("\n## Project status — full detail (watched silently — do not recite)\n")
    for path in project_dirs:
        parts.append(f"\n### {project_title(path)}\n`{path}`\n")
        dos = definition_of_success(path)
        parts.append(
            f"\n**Definition of success:**\n{dos}\n" if dos
            else "\n**Definition of success:** _not yet set._\n"
        )
        health = read_text(
            os.path.join(path, "diamonds-vault", "health.md"), MAX_FILE_CHARS
        )
        parts.append(
            f"\n**health.md:**\n{health.strip()}\n" if health
            else "\n_No health.md found in this vault._\n"
        )
    return "\n".join(parts)


def main():
    try:
        context = build_context()
    except Exception as e:  # never let the loader break session start
        context = (
            "# Diamonds — session orientation\n_Startup loader hit an error and "
            f"could not read project state: {e}. Proceeding without orientation._"
        )
    if "--format=copilot" in sys.argv[1:]:
        # GitHub Copilot hooks (.github/hooks/diamonds.json). The CLI / desktop
        # app consumes a top-level `additionalContext`; VS Code's agent hooks
        # use the `hookSpecificOutput` shape. Emit both; each ignores the other.
        print(json.dumps({
            "additionalContext": context,
            "hookSpecificOutput": {
                "hookEventName": "SessionStart",
                "additionalContext": context,
            },
        }))
    else:
        # Claude Code SessionStart hook format.
        print(json.dumps({
            "hookSpecificOutput": {
                "hookEventName": "SessionStart",
                "additionalContext": context,
            }
        }))


if __name__ == "__main__":
    main()
