# Methods Library

The methods library is organized by research phase and approach type.

## Structure

```
methods/
├── looking/          — Research and data gathering
│   ├── ethnographic/     — Observational and immersive research
│   ├── participatory/    — Co-design and collaborative research
│   └── evaluative/       — Testing and validation research
├── understanding/    — Analysis and synthesis
│   ├── people-and-systems/       — Stakeholder and systems analysis
│   ├── patterns-and-priorities/  — Pattern recognition and prioritization
│   └── problem-framing/          — Problem definition and reframing
└── making/           — Design and creation
    ├── concept-ideation/    — Idea generation and concept development
    ├── prototyping/         — Rapid prototyping and iteration
    └── design-rationale/    — Decision documentation and justification
```

## Method File Structure

Each method lives in its own folder within the appropriate subcategory. A method folder contains:

```
method-name/
├── method.md       — Core reference: purpose, setup, steps, facilitation notes, variations, outputs, connections
├── mechanics.md    — Facilitation cheat sheet: purpose statements, inputs, outputs, five-stage process, stuff
├── teaching.md     — Teaching arc content: hook, personal story, key insight, conviction close
└── resources/      — PDFs, templates, example artifacts, workshop materials
```

**method.md** is the comprehensive reference — everything you need to understand the method deeply. The frontmatter includes a `files:` field listing all related files in the folder.

**mechanics.md** is the facilitator's one-pager — what you'd print out or pull up on a second screen while running the session. Maps to the method mechanics framework in `modes/mechanics/method-facilitation-mechanics.md`.

**teaching.md** provides content for the 7-step instructional arc — what the agent needs when in Teaching mode. Maps to `modes/mechanics/method-instruction-mechanics.md`.

**resources/** holds supplementary materials — PDFs, templates, filled-in examples, images, or anything a facilitator or learner might reference.

## Contributing a New Method

The `method.md` file should follow this structure:

1. **Frontmatter** — status, category, phase, tags, also-known-as, and a files manifest
2. **Purpose** — What this method achieves and when to use it
3. **Setup** — Prerequisites, materials, participants, and time needed
4. **Steps** — The step-by-step procedure
5. **Facilitation notes** — Tips for running the method effectively
6. **Variations** — Adaptations for different contexts (remote, time-constrained, etc.)
7. **Outputs** — What artifacts or insights this method produces
8. **Connections** — Related methods and natural next steps

Create the method folder in the appropriate subcategory. At minimum, create `method.md`. Add `mechanics.md` and `teaching.md` when the content is available.

## Current Methods

| Method | Phase | Category | Status |
|--------|-------|----------|--------|
| Affinity Clustering | Understanding | Patterns & Priorities | To be built |
| Importance / Difficulty Matrix | Understanding | Patterns & Priorities | Active |
