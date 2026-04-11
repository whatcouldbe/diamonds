# Conversation Context

*Last updated: 2026-04-11*

## The Three-Layer Vision

Diamonds exists as one of three layers that work together in an integrated development environment:

1. **Build layer** — Execution engines (Lovable, Investiture, Claude Code). These are tools that make things. They're powerful but don't push back on *what* should be built.
2. **Knowledge layer** — Persistent context that accumulates over time: project intent, research findings, validated assumptions, decisions made, things learned through testing and interviewing.
3. **Judgment layer** — Diamonds. The behavioral layer that ensures human-centered thinking is always present. Not a toolkit you reach for, but a thinking layer that's always on.

### Key insight
These aren't three separate tools you switch between. They blend together in practice, with boundaries collapsing as work progresses. The judgment layer asks "should we build this?" The knowledge layer remembers what you've learned. The build layer makes the thing. All operating in the same flow.

## Diamonds as a Thinking Layer

The core problem Diamonds solves: current AI tools are extraordinarily capable build layers, but nobody's asking "should we make this?" or "who is this for?" or "have we validated that anyone actually needs it?"

Diamonds is not:
- A set of callable skills (that makes it opt-in, which defeats the purpose)
- Five separate agents mapped to the five modes (that fragments the thinking)
- A standalone layer people use *before* building

Diamonds is:
- A persistent reasoning layer that's always on
- One system with multiple postures, not five separate tools
- Something that works *alongside* existing project work — the agent still writes code, but it also pushes back and asks the hard questions
- Methods are knowledge the thinking layer draws from when it recognizes a situation that calls for them

## Organizational Use Case

The primary deployment scenario: an organization using Claude Code wants to ensure everyone takes a human-centered approach to development. Diamonds gets installed across every developer's environment so it becomes the default way their agents think.

## Open Question for Next Session

**Should the knowledge layer (persistent context that accumulates project intent and research findings) eventually grow out of Diamonds, or is it a genuinely separate concern that should live in its own system?** Right now Diamonds is stateless — it shapes thinking but doesn't remember what's been learned across sessions. This feels like the biggest gap between where it is and the full vision.

## Reference Projects

- **Investiture** — A build-layer framework/repository. Explore as a reference for how the build layer works.
- **Lovable** — Commercial build tool. Another example of the build layer.
- **Labrador** — Also potentially open source. Worth investigating.
