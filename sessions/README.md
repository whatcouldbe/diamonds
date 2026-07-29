# Sessions

Sessions are named, outcome-driven combinations of methods — the sentence to a method's vocabulary. Where a method is an atomic element that can be used in many contexts, a session is a composed arc with a specific purpose, a defined method sequence, and a facilitation flow designed to produce a particular outcome.

A team doesn't run an Importance/Difficulty Matrix. They run a prioritization session in which Importance/Difficulty Matrix is the primary method.

## Structure

Each session lives in its own folder:

```
sessions/
├── _template.md              — template for new session files
├── README.md                 — this file; cross-reference index
├── prioritization/
│   ├── session.md
│   └── resources/
├── decision-making/
│   ├── session.md
│   └── resources/
├── customer-discovery/
│   ├── session.md
│   └── resources/
└── retrospectives/
    ├── session.md
    └── resources/
```

**`session.md`** — The core reference. Contains the benefit statement, key question mapping, method sequence, working session arc, teaching notes, and common questions. All modes draw from this file; the mode determines what's surfaced.

**`resources/`** — Supplementary materials for running, teaching, or deploying the session:
- `board-template.md` — digital workspace setup (Miro, Mural, FigJam)
- `[mode]-system-prompt.md` — AI system prompt for deploying the session in a specific mode (e.g., `facilitation-system-prompt.md`, `coaching-system-prompt.md`)
- `facilitator-guide.md` — condensed run sheet for live facilitation
- `materials.md` — in-person delivery checklist (printed templates, room setup)

## Sessions and Methods

Sessions declare the methods they use. Methods do not track which sessions use them. This cross-reference index is the single source of that relationship.

| Session | Methods used |
|---|---|
| Prioritization | Importance/Difficulty Matrix (primary); Bullseye Diagramming (precursor when items > 12) |
| Decision Making | — |
| Customer Discovery | — |
| Retrospectives | Rose, Thorn, Bud (primary) |

## Sessions and Key Questions

Each session declares which key question it addresses in its `session.md`. The key questions file does not reference sessions. Navigation flows: key question → session → methods.

| Session | Key question addressed |
|---|---|
| Prioritization | What should we be working on to achieve our goals? |
| Decision Making | — |
| Customer Discovery | — |
| Retrospectives | — |
