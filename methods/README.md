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
├── method.md           — Core reference: purpose, setup, steps, facilitation notes, variations, outputs, connections
├── mechanics.md        — Facilitation cheat sheet: purpose statements, inputs, outputs, five-stage process, stuff
├── teaching.md         — Teaching arc content: hook, personal story, key insight, conviction close
└── resources/
    ├── README.md       — Resource index and agent mode guidance (how to use these resources by mode)
    ├── tips.md         — Practitioner wisdom, facilitation gotchas, things that trip people up
    ├── faq.md          — Questions that come up repeatedly — grows over time
    ├── ai-usage.md     — How to use this method with AI tools, simulation guidance
    ├── recipes.md      — How this method connects to and sequences with other methods
    ├── references.md   — External reading, videos, related frameworks, further resources
    ├── visuals/        — Sketch-planations, protocol posters, concept drawings
    ├── templates/      — Tool-specific templates (Miro, FigJam, printable PDFs)
    └── examples/       — Real sessions, organizational examples, filled-in artifacts
```

**method.md** is the comprehensive reference — everything you need to understand the method deeply. The frontmatter includes a `files:` field listing all related files in the folder.

**mechanics.md** is the facilitator's one-pager — what you'd print out or pull up on a second screen while running the session. Maps to the method mechanics framework in `modes/mechanics/method-facilitation-mechanics.md`.

**teaching.md** provides content for the 7-step instructional arc — what the agent needs when in Teaching mode. Maps to `modes/mechanics/method-instruction-mechanics.md`.

**resources/** holds supplementary materials organized by type. Each category serves a different mode:
- `tips.md` and `faq.md` — Coaching and Facilitating modes
- `ai-usage.md` — Executing mode
- `recipes.md` — Coaching mode (method selection and sequencing)
- `visuals/` — Teaching mode
- `templates/` — Facilitating and Executing modes
- `examples/` — Teaching and Coaching modes

**resources/README.md** is the index and agent guide — it lists what's in each category and tells the agent which resources to reach for in each mode. Read this first when entering a method's resources folder.

### Provenance

Resource files include a `source:` field in their frontmatter: `canonical` for core WCB methodology content, `custom` for organizational additions contributed by a specific team or context. Both are valid. The distinction helps practitioners understand what is general and what is context-specific.

### Adding New Resources

New methods can start with stub resource files and fill them over time. Not all categories need to be populated immediately — a method can ship with just `method.md` and add resources as practitioners use and contribute to it. The structure is consistent across all methods so the agent always knows where to look.

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

**Method names are for navigation, not for participants.** A method name that is technical, jargon-heavy, or opaque should never be the first thing participants hear. Lead with what the method does: its purpose and what it produces. Use the formal name only in contexts where it is meaningful — such as teaching practitioners to recognise methods in the Luma system or another named framework. The name is how we find the method; the experience is what participants remember.

There are two pathways for adding a method. They differ in *who supplies the knowledge*, and the difference is visible in the resulting method's provenance — never hidden.

### Pathway A — practitioner-taught (preferred)

Used when someone with real facilitation experience can teach the method. This is the higher-rigor path and the default to push for.

1. Have the practitioner teach the method before building any files. Teaching sessions encode stories, facilitation edge cases, and conviction closes that cannot be approximated from research.
2. Collect templates before building files. Seeing actual template language produces better first drafts and avoids updating method.md after the fact when template section names differ from what was written.
3. For the FAQ: generate a prioritized list of plausible questions, then ask the practitioner to add any from real experience and flag any as non-issues. Work through them together one at a time — don't make the practitioner generate the list from scratch, but don't build the FAQ from generated questions alone either.

### Pathway B — artifact-seeded reconstruction (provisional)

> This protocol is itself provisional — first written while reconstructing Hypothesis Statements, revised from what that run exposed. Expect it to change.

Used when no expert is available but the person can supply artifacts — a template, a worked example, a link. The method gets reconstructed from those artifacts plus research. It is honest, useful, and explicitly second-best.

Offer it as the fallback, in order of rigor: first try to find an expert to teach it; failing that, reconstruct from materials; either way, label what was built so a reconstruction is never mistaken for lived knowledge.

1. **Get the worked example, not just the blank.** The blank template gives structure (what the method asks for); the worked example gives the *quality bar* (what good output looks like). The run confirmed this is the single highest-signal input — with structure alone you can describe the method but not its standard. If only the blank is available, say plainly that the quality bar is unestablished.
2. **Research the lineage.** Find where the method comes from and cite it in `references.md`. Ground what you can in real sources; never present inference as canon. This file is the reconstruction's firmest footing — invest in it.
3. **Build `method.md` from artifacts + research.** State purpose and structure from what the artifacts directly show.
4. **Flag at two granularities.** Every file carries a `provenance:` field in frontmatter (`grounded` or `reconstructed`). Files that mix both — like `method.md` — additionally carry inline `[reconstructed]` tags on each inferred claim. Facilitation process, timing, and edge cases are never in the artifacts and are always reconstructed.
5. **Classify by what the artifact *is*, not when it's used.** If taxonomy placement is ambiguous, don't agonise — the folder is a cheap, reversible index. Spend the saved effort on `recipes.md` (what precedes, what follows), which is what actually drives when the method gets surfaced.
6. **Register and name the upgrade.** Add the method to the Target Method Set table with status `Provisional (reconstructed)`. In `method.md`, name the specific things a practitioner must supply to upgrade it (e.g. the live facilitation moves, the real conviction close) — the upgrade path must be concrete, not a vague "needs review."

**Provenance ladder.** Construction provenance is distinct from the `source:` field (which marks *who* contributed). A method's `provenance:` field records *how much we trust the construction*, and it is a ladder, not a binary:

- `reconstructed` — built from artifacts + research; never run or verified. The agent says so whenever it teaches or facilitates the method.
- `field-tested` — someone has run it and reported back; edge cases are starting to be real.
- `practitioner-verified` — an expert has taught or corrected it; equivalent to Pathway A.

A Pathway B method carries `status: provisional` and `provenance: reconstructed` in `method.md` frontmatter until it climbs the ladder. A reconstructed method is an open assumption in the library, waiting to be validated by use — the core Diamonds principle pointed at its own content. The moment an expert touches it, prompt to upgrade it.

Create the method folder in the appropriate subcategory. At minimum, create `method.md`. Add `mechanics.md` and `teaching.md` when the content is available.

## Target Method Set

The 12 methods below form the core training programme — the first complete set to build. Methods marked with † are additional methods that sit outside the training programme but are still part of the Diamonds library.

| Method | Phase | Category | Training | Status |
|--------|-------|----------|----------|--------|
| Interviewing | Looking | Ethnographic | ✓ | Active |
| Think-Aloud Testing | Looking | Evaluative | ✓ | To be built |
| Critique | Looking | Evaluative | ✓ | Active |
| What's on Your Radar | Looking | Participatory | † | Active |
| Stakeholder Mapping | Understanding | People & Systems | ✓ | To be built |
| Affinity Clustering | Understanding | Patterns & Priorities | ✓ | Active |
| Importance / Difficulty Matrix | Understanding | Patterns & Priorities | ✓ | Active |
| Abstraction Laddering | Understanding | Problem Framing | ✓ | Active |
| Statement Starters | Understanding | Problem Framing | ✓ | Active |
| Rose, Thorn, Bud | Understanding | Problem Framing | ✓ | Active |
| Creative Matrix | Making | Concept Ideation | ✓ | To be built |
| Round Robin | Making | Concept Ideation | † | Active |
| Rough & Ready Prototyping | Making | Modeling & Prototyping | ✓ | Active |
| Value Proposition Poster | Making | Design Rationale | ✓ | To be built |
| Hypothesis Statements | Making | Design Rationale | † | Provisional (reconstructed) |
