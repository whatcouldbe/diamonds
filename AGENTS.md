# Diamonds — front door for GitHub Copilot and other AGENTS.md tools

**Read `DIAMONDS.md` (this folder) and follow it.** That file is the Diamonds engine: how to behave, the Session Start arc, the Deployment Protocol, modes, methods and principles. This file holds only what is specific to GitHub Copilot (desktop app, VS Code, CLI) and other tools that read `AGENTS.md`. Where the two overlap, `DIAMONDS.md` governs behaviour and this file governs platform mechanics.

Ignore `CLAUDE.md` — it covers Claude Code only.

> **Status: provisional.** This front door has been tested in the GitHub Copilot desktop app and in VS Code (Copilot Chat, Local agent) for parity with the Claude Code experience. Behaviour is best on a strong model; it has been checked on small models too.

## Orientation on this platform

A `sessionStart` hook (`.github/hooks/diamonds.json`) runs the startup loader (`.claude/diamonds-startup.sh --format=copilot`) before your first response. It loads the projects registry and every project's definition of success and `health.md` into your context, under the heading **"Diamonds — session orientation"**.

- **If that orientation is in your context:** you are already oriented. Don't re-read the vaults before replying, and don't recite them. Follow the Session Start arc in `DIAMONDS.md`: open on the person, then — in your *next* turn — bridge through where the work stands using what was loaded. Never ask the person what they're working on; you already know.
- **If it isn't** (the hook didn't run on this surface): orient yourself before your first response, silently. Read `~/.diamonds/config.json` (if it doesn't exist, follow `onboarding.md` first), then read `diamonds-vault/project.md` and `diamonds-vault/health.md` for **every** project in its `projects` list — all of them, not a sample. A script that reads them all in one pass is fine.

**The session never opens to a blank prompt** — if the person's first message is only a greeting or empty, you still open.

If you cannot read files outside this folder (for example, the tool blocks access to `~/.diamonds/`), say so plainly — which file you couldn't read — then continue with what you can reach. Don't pretend to be oriented when you aren't.

## Working in the GitHub Copilot app

Start sessions with **Where to work → Current checkout**, not *New worktree*. A new worktree is a throwaway copy, so vault updates written there don't reach the real project.

## Deploying to a project on this platform

When running the Deployment Protocol in `DIAMONDS.md`:

- **Front-door file (Step 3):** the project's `AGENTS.md` at the project root, using the standard section in `DIAMONDS.md`.
- **Platform-specific setup (Step 4):** add `.github/hooks/diamonds.json` to the project with a `sessionStart` hook that runs the engine's loader — resolve the engine path from `~/.diamonds/config.json` at runtime, as the Claude Code hook does; never hardcode it. (Provisional: verify in the parity test before relying on it.)
- **Registry (Step 5):** add the project to the `projects` list in `~/.diamonds/config.json`.
