#!/usr/bin/env python3
# diamonds-startup.sh
#
# NOTE: Despite the .sh extension, this is a PYTHON script. It is invoked as
# `python3 {diamonds_path}/.claude/diamonds-startup.sh` by the second SessionStart
# hook wired into every project's .claude/settings.json. The extension is kept to
# match the name already referenced by deployed projects; the wrapper runs it with
# python3 regardless of extension.
#
# Purpose — "watch the tape." At session start, read the projects registry and
# each known project's current status, and emit it into the agent's context so
# Diamonds arrives already current, before its first response. This is the silent
# loading the Session Start arc in the engine CLAUDE.md depends on: the returning
# branch ("how are you showing up") assumes the agent has already read the film.
#
# Contract — print exactly one SessionStart additionalContext JSON object to
# stdout. Never crash the session: on any error, emit minimal valid output and
# exit 0. (The hook wrapper suppresses stderr and `|| true`s the exit code, so a
# malformed stdout is the only way to do harm — guard against it.)

import json
import os
import re
import sys

REGISTRY = os.path.expanduser("~/.claude/projects.md")
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


def build_context():
    parts = ["# Diamonds — session orientation (loaded automatically)\n"]
    parts.append(
        "This is the tape: project state loaded silently so you arrive already "
        "current. Do not recite it as a status dashboard. Follow the Session "
        "Start arc in the engine CLAUDE.md — open on the person, then bridge "
        "through where the work stands, then tie back to the definition of "
        "success.\n"
    )

    registry_text = read_text(REGISTRY)
    if not registry_text or not registry_text.strip():
        parts.append(
            "## Projects registry\n_No projects registry found at "
            "`~/.claude/projects.md`._ No tape to watch — treat this as a first "
            "session and run the cold-start coaching arc.\n"
        )
        return "\n".join(parts)

    parts.append("## Projects registry (`~/.claude/projects.md`)\n")
    parts.append(registry_text.strip() + "\n")

    project_dirs = find_project_dirs(registry_text)
    if not project_dirs:
        parts.append(
            "\n## Project status\n_No on-disk project vaults resolved from the "
            "registry (paths may be unavailable in this environment — e.g. a web "
            "session where only some repos are checked out)._\n"
        )
        return "\n".join(parts)

    parts.append("\n## Project status (watched silently — do not recite)\n")
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
            f"could not read project state: {e}. Proceeding without the tape._"
        )
    print(json.dumps({
        "hookSpecificOutput": {
            "hookEventName": "SessionStart",
            "additionalContext": context,
        }
    }))


if __name__ == "__main__":
    main()
