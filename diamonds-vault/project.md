# Diamonds — Project Orientation

## What This Is

Diamonds is an HCD agent system — a thinking layer built on 30 years of human-centered design methodology. Its purpose is to make HCD accessible to anyone, at the moment they need it, without requiring a practitioner to be present. It is not a build tool; it governs the upstream thinking that determines whether you're building the right thing.

The long-standing goal behind What Could Be: stop being paid for time, make decades of design expertise self-service, scale the practice without scaling the people.

### Three-Layer Architecture

Diamonds exists as one of three layers that work together in an integrated development environment:

1. **Build layer** — Execution engines (Lovable, Investiture, Claude Code). Tools that make things. Powerful, but they don't push back on *what* should be built.
2. **Knowledge layer** — Persistent context that accumulates over time: project intent, research findings, validated assumptions, decisions made, things learned through testing and interviewing.
3. **Judgment layer** — Diamonds. The behavioral layer that ensures human-centered thinking is always present. Not a toolkit you reach for, but a thinking layer that's always on.

These aren't three separate tools you switch between — they blend together in practice, with boundaries collapsing as work progresses. The judgment layer asks "should we build this?" The knowledge layer remembers what you've learned. The build layer makes the thing. All operating in the same flow.

Diamonds is not a set of callable skills (that makes it opt-in, which defeats the purpose), and it's not five separate agents mapped to the five modes (that fragments the thinking). It's a persistent reasoning layer that works *alongside* existing project work — the agent still writes code, but it also pushes back and asks the hard questions.

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

## Open Questions

- **Should the knowledge layer eventually grow out of Diamonds, or is it a genuinely separate concern?** Right now Diamonds is stateless — it shapes thinking but doesn't remember what's been learned across sessions. This feels like the biggest gap between where it is and the full vision.

## Strategic Direction

Diamonds is moving toward client deployment — positioning as a product that scales HCD investment inside organizations, specifically those already familiar with Luma methods. Paid discovery engagements with existing clients are the mechanism for validating this while generating revenue.

Proposition being developed: *"We can make human-centered design available to everyone in your organization through Diamonds — specific to your process, your methods, scaling the investment you've already made."*
