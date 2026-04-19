# Diamonds

**The Human-Centered Design Agent System**

Diamonds is a structured knowledge base that teaches AI agents to apply human-centered design (HCD) methodology. It encodes decades of design practice into a format that AI can reason with — not just retrieve from.

## Architecture

Diamonds is built on two interlocking systems:

### Skill Library

The methods and knowledge that power HCD practice — research techniques, synthesis frameworks, design methods. Each skill is a standalone file with enough context for an AI to understand *when* to use it, *how* to run it, and *what* it produces.

Located in: `foundation/`, `methods/`, `navigation/`, `architecture/`

### Mode Engine

The behavioral layer that controls *how* the agent engages. The same skill (e.g., affinity clustering) plays differently depending on whether the agent is coaching a learner, teaching a concept, facilitating a workshop, or executing directly.

Located in: `modes/`

## Setup

Diamonds works as a persistent context layer in Claude Code — available across all your projects, not just inside this repo.

1. Clone this repository to your machine
2. Create `~/.claude/CLAUDE.md` if it doesn't already exist
3. Add the following to that file, replacing the path with wherever you cloned the repo:

```markdown
# Global Agent Configuration

## Diamonds — HCD Agent System

Diamonds is a human-centered design knowledge base, located at `/path/to/diamonds`.

This system governs how the agent thinks, communicates, and behaves across all work — not just HCD projects. When in doubt about how to engage, default to the Diamonds architecture.

Start with `/path/to/diamonds/CLAUDE.md` for full instructions.

**Key behaviors this system defines:**
- Five modes of engagement: Coaching (default), Teaching, Facilitating, Executing, Participating
- Infer the mode from context — never announce it, never label it
- Ask one question at a time
- Coaching arc: receive → diagnose → name what's missing → recommend → offer support
- Validation before investment — everything is an assumption until tested with real people
```

Once set up, Diamonds will be available in every Claude Code session automatically — across all your projects, not just inside this repo.

**Note:** `~/.claude/CLAUDE.md` is the global persistent layer in Claude Code. If you already have content there, add the Diamonds block alongside it rather than replacing it. If you also maintain a project-level or home directory `CLAUDE.md` with personal context, add a pointer to that file as well so the agent has your full profile in every session.

## Project Setup

The engine above tells the agent *how* to think. Projects need a place for the agent to remember *what it's learning* — that's the vault.

Each project using Diamonds gets a `diamonds-vault/` folder at its root. This is the project's knowledge layer: persistent context the agent reads at the start of every session and updates as work progresses.

```
your-project/
└── diamonds-vault/
    ├── project.md     — orientation: who, what, where (read first to get oriented)
    ├── health.md      — status: what's validated, what's open (read to get current)
    └── log/           — dated records of actions and experiments
```

To set up a vault in a new project:

**1.** Create `diamonds-vault/` at the root of the project.

**2.** Create `diamonds-vault/project.md`:

```markdown
# Project

## What
One or two sentences on what this project is and why it exists.

## Who
- Team:
- Customers / users being served:
- Stakeholders:

## Where
- Build / code:
- Research notes:
- Other resources:

## Key decisions
Decisions made that shape the work — added as they happen.
```

**3.** Create `diamonds-vault/health.md`:

```markdown
# Health

*Last updated: YYYY-MM-DD*

## Current focus
The question the team is trying to answer right now, and why it matters.

## Validation progress
What's been tested with real people and what was learned.

## Open assumptions
Things being treated as true but not yet validated — flagged for testing.

## Activity log
- YYYY-MM-DD —
```

**4.** Create an empty `diamonds-vault/log/` folder for dated records.

Once the vault exists, the agent will orient itself by reading `project.md` and `health.md` at the start of every session, and update them as work progresses.

## Repository Structure

```
diamonds/
├── CLAUDE.md                    — Agent instructions
├── README.md                    — You are here
│
├── foundation/                  — Core HCD knowledge
│   ├── hcd-philosophy.md            — Why HCD works
│   ├── hcd-mindsets.md              — How to think
│   ├── hcd-double-diamond.md        — The process framework
│   └── hcd-principles.md            — Operating principles
│
├── navigation/                  — Process guidance
│   └── 10-questions-process.md      — Structured discovery process
│
├── modes/                       — Behavioral modes
│   ├── mode-coaching.md             — Guide learners through practice
│   ├── mode-teaching.md             — Explain concepts and theory
│   ├── mode-executing.md            — Do the work directly
│   ├── mode-participating.md        — Collaborate as a team member
│   ├── mode-facilitating.md         — Run workshops and sessions
│   └── mechanics/                   — How modes operate methods
│       ├── method-instruction-mechanics.md
│       ├── method-facilitation-mechanics.md
│       ├── method-execution-mechanics.md
│       └── method-participation-mechanics.md
│
├── methods/                     — The skill library
│   ├── README.md                    — How to contribute methods
│   ├── looking/                     — Research & data gathering
│   │   ├── ethnographic/
│   │   ├── participatory/
│   │   └── evaluative/
│   ├── understanding/               — Analysis & synthesis
│   │   ├── people-and-systems/
│   │   ├── patterns-and-priorities/
│   │   └── problem-framing/
│   └── making/                      — Design & creation
│       ├── concept-ideation/
│       ├── prototyping/
│       └── design-rationale/
│
├── architecture/                — System design docs
│   └── hcd-skill-architecture.md
│
└── selection/                   — Method selection logic
    └── hcd-method-selection.md
```

## Contributing a New Method

See [`methods/README.md`](methods/README.md) for the method file format and contribution process.

## Current Status

| Component | Status |
|-----------|--------|
| Foundation (philosophy, mindsets, double diamond, principles) | Complete |
| Navigation (10-questions process) | Complete |
| Modes: Coaching, Teaching, Facilitating, Participating, Executing | Complete |
| Mechanics: Instruction, Facilitation, Participation, Execution | Complete |
| Skill Architecture | Complete |
| Method Selection | Complete |
| Methods Library (taxonomy structure) | In place |
| Methods Library (individual methods) | In progress |

---

*Diamonds is a project by What Could Be.*
