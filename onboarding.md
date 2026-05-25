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

## Project vault creation (during usage, not onboarding)

When a project is mentioned and no `diamonds-vault/` exists in that directory:

> "Do you want to keep a record of the work we do on this project? I can create a diamonds-vault folder here to track progress, decisions, and open questions."

If yes:
1. Create `diamonds-vault/` in the project root containing:
   - `project.md` — prompt the user for: what is this project, who's involved, where do external resources live
   - `health.md` — initialize with empty validation status and open assumptions
   - `log/` — empty directory for dated session records
2. Add the project to `projects` in `~/.diamonds/config.json`

If no: proceed without a vault. Don't ask again in the same session.

---

## Config schema

`~/.diamonds/config.json`

```json
{
  "config_version": "1.0",
  "environment": "claude-code",
  "diamonds_path": "/absolute/path/to/diamonds",
  "diamonds_repo_url": "https://github.com/whatcouldbe/diamonds.git",
  "projects": [
    {
      "name": "Project Name",
      "path": "/absolute/path/to/project"
    }
  ]
}
```

`diamonds_repo_url` is detected automatically (see Step 3) and records which engine the user installed from. New projects scaffolded from this engine read it to stamp the correct URL into their web-session bootstrap script, so a project scaffolded from a fork bootstraps from that fork — not canonical. May be `null` if the engine isn't a git working tree.

`projects` starts as an empty array and grows as projects are introduced during usage.
