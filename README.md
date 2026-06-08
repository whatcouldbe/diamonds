# Diamonds

**The Human-Centered Design Agent System**

Diamonds is an agent you invite into your work. It encodes decades of human-centered design practice into a structured knowledge base that Claude can reason with not just retrieve from. Clone it, open Claude Code, and the agent handles the rest.

## What It Does

Humans are bad at process adherence. They have good ideas in the shower and go straight to building. They shortcut validation because they're excited or under pressure. They assume alignment that doesn't exist.

Diamonds is the friction that prevents this consistently, without judgment, every time. It runs you through the questions you'd ask yourself if you had the discipline, brings the right method at the right moment, and keeps a persistent record of what's been validated versus what's still an assumption.

The secondary purpose is helping people apply HCD thinking, methods, and process to their innovation work — whether they're discovering problems, defining opportunities, developing solutions, or scaling what works.

## Architecture

Diamonds is built on two interlocking systems:

### Skill Library

The methods and knowledge that power HCD practice — research techniques, synthesis frameworks, design methods. Each skill is a standalone file with enough context for an AI to understand *when* to use it, *how* to run it, and *what* it produces.

Located in: `foundation/`, `methods/`, `navigation/`, `architecture/`

### Mode Engine

The behavioral layer that controls *how* the agent engages. The same method (e.g., affinity clustering) plays differently depending on whether the agent is coaching a learner, teaching a concept, facilitating a workshop, or executing the method directly.

Located in: `modes/`

## Getting Started

1. Clone this repository to your machine.
2. Open any project in Claude Code.
3. The agent handles the rest.

On your first session, the agent will ask where you cloned Diamonds and write a small config file so it can find the engine in future sessions. You won't be asked again.

When you mention a project for the first time, the agent will offer to scaffold a `diamonds-vault/` in it, creating the persistent record where project orientation, validation status, and open assumptions live.

### What Gets Created

You don't have to set any of this up. The agent does. But it's worth knowing what to expect when you see it:

**`~/.diamonds/config.json`** — points at your engine, records which projects use Diamonds. Written on first run.

**`diamonds-vault/` (inside a project)** — the project's knowledge layer. Contains `project.md` (orientation), `health.md` (current status), and `log/` (dated session records). Scaffolded the first time a project comes up in conversation.

**`.claude/settings.json` and `.claude/bootstrap-diamonds-engine.sh` (inside a project)** — the wiring that makes Diamonds reachable in web/cloud sessions. No-op on desktop. Added when the agent deploys Diamonds to a project.

## Web Sessions

Diamonds works in Claude Code on the Web as well as the desktop app. When a project is opened in a web session, the SessionStart hook clones the engine into the container so the agent has its full instructions even though the container starts fresh.

If the engine repo is private (for example, a fork being used for client work) set `GH_TOKEN` in the project's cloud environment configuration. A fine-grained PAT with read-only access to the engine repo is sufficient. The token is spliced into the clone at runtime, never written to disk.

For the canonical public engine, no token is needed.

## Repository Structure

```
diamonds/
├── CLAUDE.md                    — Agent instructions
├── README.md                    — You are here
├── onboarding.md                — First-run setup the agent walks the user through
│
├── foundation/                  — Core HCD knowledge
│   ├── hcd-philosophy.md            — Why HCD works
│   ├── hcd-mindsets.md              — How to think
│   ├── hcd-double-diamond.md        — The process framework
│   ├── hcd-principles.md            — Operating principles
│   └── hcd-bridge-exercise.md       — 3-minute opener for resistant audiences
│
├── navigation/                  — Process guidance
│   └── key-questions.md             — 10 process checkpoints
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
├── selection/                   — Method selection logic
│   └── hcd-method-selection.md
│
└── templates/                   — Files the agent copies into projects
    └── bootstrap-diamonds-engine.sh
```

## Contributing a New Method

See [`methods/README.md`](methods/README.md) for the method file format and contribution process.

## Current Status

| Component | Status |
|-----------|--------|
| Foundation (philosophy, mindsets, double diamond, principles) | Complete |
| Navigation (key questions) | Complete |
| Modes: Coaching, Teaching, Facilitating, Participating, Executing | Complete |
| Mechanics: Instruction, Facilitation, Participation, Execution | Complete |
| Skill Architecture | Complete |
| Method Selection | Complete |
| Project deployment automation (vault, hooks, web bootstrap) | Complete |
| Methods Library (taxonomy structure) | In place |
| Methods Library (individual methods) | In progress |

---

*Diamonds is a project by What Could Be.*
