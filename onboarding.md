# Diamonds Onboarding

## When to run

Check for `~/.diamonds/config.json` at the start of every session. If it doesn't exist, run this onboarding before doing anything else.

## First run sequence

1. Introduce Diamonds briefly:

   > "Before we get started — it looks like this is your first time using Diamonds. I just need one thing from you: where did you install Diamonds on your machine? This lets me find it in future sessions without asking again."

2. Ask for the Diamonds path:

   > "What's the full path to your Diamonds folder? For example: `/Users/yourname/projects/diamonds`"

3. Once confirmed, detect the engine's remote URL by running `git remote get-url origin` from inside the diamonds path. Then write `~/.diamonds/config.json` with both values (see config schema below). If the engine isn't a git working tree — for example, an unzipped download — set `diamonds_repo_url` to `null` and continue; nothing else in onboarding depends on it.

4. Confirm and move on:

   > "Got it — you're set up. We won't need to do this again."

## That's it for setup

Don't ask about projects during onboarding. Projects get registered during real work, not at setup time.

---

## When a project gets Diamonds (during usage, not onboarding)

When a project is mentioned and no `diamonds-vault/` exists in that directory, ask once:

> "Do you want to use Diamonds with this project? I'll add a `diamonds-vault/` folder to the repo so we can keep history across sessions — that's how the system maintains continuity and lets work move from single-player to multiplayer."

The vault is not optional within Diamonds — it's the infrastructure that lets the system work for a project. The question is consent for the work, not a choice between the vault and "Diamonds without a vault." There is no such thing.

If yes: run the full Deployment Protocol in the engine's `CLAUDE.md` (create the vault, wire the project's `CLAUDE.md`, drop in the SessionStart hooks, stamp the engine URL into the bootstrap script). Register the project in the projects registry at `~/.claude/projects.md` so future sessions can find it.

If no: proceed without deploying. Don't create any files. Don't ask again in the same session.

---

## Config schema

`~/.diamonds/config.json`

```json
{
  "diamonds_path": "/absolute/path/to/diamonds",
  "diamonds_repo_url": "https://github.com/whatcouldbe/diamonds.git"
}
```

Two fields, both required by consumers:

- **`diamonds_path`** — absolute path to the engine on disk. Read at session start to load the engine's `CLAUDE.md`.
- **`diamonds_repo_url`** — the git URL of the engine. Used by the Deployment Protocol to stamp the right source into new projects' web-session bootstrap scripts (so a project scaffolded from a fork bootstraps from that fork, not from canonical). May be `null` if the engine isn't a git working tree; consumers fall back to `git remote get-url origin` against `diamonds_path`.

Projects registered with Diamonds are tracked separately in `~/.claude/projects.md`, not in this file.
