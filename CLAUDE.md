# Diamonds — Claude Code front door

**Read `DIAMONDS.md` (this folder) and follow it.** That file is the Diamonds engine: how to behave, the Session Start arc, the Deployment Protocol, modes, methods and principles. This file holds only what is specific to Claude Code. Where the two overlap, `DIAMONDS.md` governs behaviour and this file governs Claude Code mechanics.

If you are not Claude Code (for example, GitHub Copilot reading this file as a fallback), ignore this file and follow `AGENTS.md` instead.

## Orientation in Claude Code

A SessionStart hook (`.claude/diamonds-startup.sh`, wired in `.claude/settings.json`) loads the projects registry and each project's status into your context before the first response. That is the "already oriented" state the Session Start arc in `DIAMONDS.md` depends on. Use it silently — don't recite it.

## Deploying to a project in Claude Code

When running the Deployment Protocol in `DIAMONDS.md`:

- **Front-door file (Step 3):** the project's `CLAUDE.md`. In the standard section, keep this extra line after the "If either file cannot be read" list:

  > A SessionStart hook at `.claude/bootstrap-diamonds-engine.sh` attempts to bootstrap the engine automatically in web sessions. If the engine is still unreachable, that script's stderr output (visible in the session start logs) will explain why.

- **Platform-specific setup (Step 4):** do both of the following.

**Create the project's `.claude/settings.json`**

This wires two SessionStart hooks that run in order: first the engine bootstrap (so the engine exists on disk in web sessions), then the projects-registry load (so the agent is oriented to known projects). Both are no-ops in environments where they don't apply, so the same template works on desktop and web.

- Check for `.claude/settings.json` in the project root
- If none exists: create `.claude/` and add `settings.json`
- If one exists: merge the `hooks` block into it, preserving existing settings

**Standard SessionStart hooks for a project settings.json:**

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": ".claude/bootstrap-diamonds-engine.sh"
          }
        ]
      },
      {
        "hooks": [
          {
            "type": "command",
            "command": "python3 -c \"import json,os,subprocess; c=json.load(open(os.path.expanduser('~/.diamonds/config.json'))); subprocess.run(['python3', os.path.join(c['diamonds_path'],'.claude','diamonds-startup.sh')])\" 2>/dev/null || true",
            "statusMessage": "Loading Diamonds vault..."
          }
        ]
      }
    ]
  }
}
```

The first hook bootstraps the engine in web sessions (no-op on desktop via the `CLAUDE_CODE_REMOTE_SESSION_ID` guard). The second resolves the startup script from the engine path at runtime — no hardcoded paths, works on any machine where Diamonds is installed.

**Drop in the engine bootstrap script**

The engine bootstrap script is what makes the engine reachable in web/cloud sessions, where the container starts without `~/.diamonds/` on disk. It is a no-op on desktop.

- Copy `{diamonds_path}/templates/bootstrap-diamonds-engine.sh` to the project's `.claude/bootstrap-diamonds-engine.sh`
- **Stamp this engine's URL into the copy.** The template ships with `https://github.com/whatcouldbe/diamonds.git` as a placeholder default. Replace that URL in the project's copy with the URL of the engine that's doing the scaffolding — read `diamonds_repo_url` from `~/.diamonds/config.json`; if that field is missing or null (older installs), fall back to `git remote get-url origin` run from `diamonds_path`. The resulting line in the project's script should look like:
  ```bash
  ENGINE_REPO_URL="${DIAMONDS_ENGINE_REPO_URL:-<url-of-the-engine-that-scaffolded-this-project>}"
  ```
  Why: every project should default to bootstrapping from the engine that created it. A project scaffolded from a fork must bootstrap from that fork, not from canonical, or web sessions silently load the wrong engine.
- `chmod +x .claude/bootstrap-diamonds-engine.sh`

The `DIAMONDS_ENGINE_REPO_URL` env var still overrides at runtime for one-off exceptions.

**If the engine URL points to a private repo** — the common case for client deployments from forks — also tell the user to set `GH_TOKEN` in the project's cloud environment configuration. A fine-grained PAT with read-only access to the engine repo is sufficient. The bootstrap script splices the token into the clone via `git -c http.extraheader=...` so it is never written to `.git/config`, never embedded in the URL, and never echoed to the session log. Without it, the web-session clone of a private engine fails with "could not read Username". For canonical (public) engine users, no token is needed.

Why this lives in the repo (not as a cloud setup script): per [Claude Code on the Web docs](https://code.claude.com/docs/en/claude-code-on-the-web), cloud setup scripts live in cloud environment configuration, not the repo, which means they cannot be templated and inherited by new projects. A SessionStart hook in the repo is templatable and travels with the project.

- **Registry (Step 5):** the `projects` array in `~/.diamonds/config.json` (shared across platforms; `~/.claude/projects.md` is a legacy fallback the loader still reads).
