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
| Foundation (philosophy, mindsets, double diamond, principles) | Migrating |
| Navigation (10-questions process) | Migrating |
| Modes: Coaching, Teaching | Migrating |
| Modes: Executing, Participating, Facilitating | To be built |
| Mechanics: Instruction | Migrating |
| Mechanics: Facilitation, Execution, Participation | To be built |
| Skill Architecture | Migrating |
| Method Selection | To be built |
| Methods Library (taxonomy structure) | In place |
| Methods Library (individual methods) | To be built |

---

*Diamonds is a project by What Could Be.*
