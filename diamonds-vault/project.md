# Diamonds — Project Orientation

## What This Is

Diamonds is an HCD agent system — a thinking layer built on 30 years of human-centered design methodology. Its purpose is to make HCD accessible to anyone, at the moment they need it, without requiring a practitioner to be present. It is not a build tool; it governs the upstream thinking that determines whether you're building the right thing.

The long-standing goal behind What Could Be: stop being paid for time, make decades of design expertise self-service, scale the practice without scaling the people.

## Who's Involved

- **Justin Knecht** — Co-Founder, What Could Be. Pittsburgh, PA. Building Diamonds in Claude Code.
- **David Townson** — Co-Founder, What Could Be. UK. Working in parallel; sync sessions ongoing.

## Where Things Live

- Diamonds repo: `~/projects/diamonds/`
- Global Claude config: `~/.claude/`
- Diamonds config: `~/.diamonds/config.json`
- Projects registry: `~/.claude/projects.md`

## Key Decisions Made

- Diamonds deploys as a `diamonds-vault/` inside any project — one folder, nothing else required at the root
- Config lives at `~/.diamonds/config.json`, outside the repo, so it survives updates
- Onboarding is lightweight: capture Diamonds path on first run, register projects during real work
- Vault creation is triggered during usage, not at setup
- Diamonds itself does not get governed by a separate thinking layer — it is the engine. The vault here tracks project progress, not methodology.
- Demonstration projects are the next priority — not more engine building. The existing method library is sufficient to test with real clients.
- TK Elevator identified as the warmest client relationship for a paid discovery engagement on AI enablement.

## Strategic Direction

Diamonds is moving toward client deployment — positioning as a product that scales HCD investment inside organizations, specifically those already familiar with Luma methods. Paid discovery engagements with existing clients are the mechanism for validating this while generating revenue.

Proposition being developed: *"We can make human-centered design available to everyone in your organization through Diamonds — specific to your process, your methods, scaling the investment you've already made."*
