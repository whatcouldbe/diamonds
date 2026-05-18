---
status: provisional
provenance: reconstructed
category: design-rationale
phase: making
tags: [hypothesis, assumptions, validation, experiments, lean-ux, design-rationale, bets]
also-known-as: [hypothesis statements, design hypotheses, Lean UX hypothesis, assumption statements]
files:
  - method.md (this file) — Core reference: purpose, steps, facilitation notes, variations, connections
  - mechanics.md — Facilitation cheat sheet (reconstructed)
  - teaching.md — Teaching arc content (reconstructed)
  - resources/ — References, AI usage, recipes, FAQ, tips, the worked example
---

> **Reconstructed method — provisional.** This method was built via Pathway B (artifact-seeded reconstruction): a blank template and one worked example, plus research into the method's lineage. It has not been taught by a practitioner or run and verified. The **structure** below is grounded directly in the supplied template. The **facilitation process, timing, and edge cases** are reconstructed from the method's lineage (Lean UX, Strategyzer Test Cards, Lean Startup) and are flagged inline as `[reconstructed]`. Treat those as a best inference, not lived experience. When an expert touches this method, upgrade it — see `../../../README.md` → Provenance ladder.

# Hypothesis Statements

A method for converting a design or product bet into a single, falsifiable sentence — what you're building, who it's for, the outcome you expect, the measurable signal that would prove you right, and the higher goal it serves — so that conviction becomes a testable claim before money is spent on it.

---

## Purpose

Use when a team has concepts or intended features and is about to invest in building or testing them. Hypothesis Statements force each bet to be stated as something that can be proven wrong. They are the seam between having an idea and validating it.

**The core question:** What are we assuming is true, and what would tell us we're wrong?

**Why it matters here:** This is the Diamonds central principle made into an artifact. A concept asserted with confidence and a concept written as a falsifiable hypothesis look the same on a whiteboard. Only the second one can be validated. The method exists to stop teams from skipping that conversion.

**What makes it distinct:**
- It is not ideation. The bet already exists; this method sharpens it into a claim.
- It is not a roadmap. It does not say what you'll build; it says what must be true for building it to be worth it.
- Every statement carries its own disproof condition — the measurable signal.

---

## The Statement Frame

*Grounded — taken directly from the supplied template.*

> **We believe** *[new feature]* **will** *[desired outcome]* **for** *[target persona]*. **We'll know this is true when** *[quantitative impact]*. **We believe this will ultimately help improve** *[high-level goal]*.

Five variables, in order:

| Variable | What it captures | Quality bar |
|---|---|---|
| **New feature** | The specific thing you'd build or change | Concrete and singular — one bet, not a bundle |
| **Desired outcome** | The change it's meant to produce | A verb of change, not a restatement of the feature |
| **Target persona** | Who the outcome is for | Specific enough to find and talk to — not "users" |
| **Quantitative impact** | The measurable signal that confirms the bet | A number and a direction; this is the disproof condition |
| **High-level goal** | The strategic end the bet ultimately serves | Deliberately broad; the "so what" the metric ladders up to |

The third clause — laddering the testable bet up to a high-level goal — is this template's distinguishing addition over the canonical Lean UX hypothesis (which stops at the measurable signal). It forces every bet to connect to impact. See `resources/references.md` for the lineage.

---

## Setup

### When in the process
After concepts exist (post-ideation, post-concept work) and before experiments or prototype testing are designed. It converts the output of *making* into the input of *validating*.

### Participants
- The team that owns the concepts — typically 3–6 people. `[reconstructed]`
- Individual generation first, then convergence as a group. `[reconstructed]` — inferred from standard structured-template practice and the parallel-row layout of the template, not from a taught protocol.

### Materials
- The statement frame, one row per hypothesis (the template supports up to five parallel rows, color-coded)
- A dated header and team attribution — the worked example treats the board as a living snapshot ("hypotheses as of [date]"), not a permanent artifact

### Time
- `[reconstructed]` No timing is supplied by the artifacts. A plausible default is ~60–90 minutes for a team to draft and pressure-test 3–5 hypotheses. Flagged as inference until field-tested.

---

## Steps

*Steps 1 and the frame are grounded. The sequencing, facilitation moves, and convergence mechanics below are `[reconstructed]` from lineage and general structured-template practice — not from a taught session.*

1. **Frame the directive.** Name the concept space the team is making bets in. Without a shared directive, hypotheses scatter.
2. **Generate candidate bets individually.** Each person drafts one or more statements using the frame, working alone first to avoid anchoring. `[reconstructed]`
3. **Fill the frame, all five variables.** A statement missing its quantitative impact is not yet a hypothesis — it's an opinion. Push every row to completion.
4. **Pressure-test each statement** against three checks `[reconstructed, derived from the quality bar in the worked example]`:
   - Is the *quantitative impact* a real signal — a number and a direction — that could come back negative?
   - Is the *target persona* specific enough to actually go find?
   - Does the bet *ladder* — does the high-level goal follow from the outcome, or is it a leap?
5. **Converge and prioritise.** Select which hypotheses to test first — typically by which assumption is most load-bearing and least proven. `[reconstructed]`
6. **Hand off to validation.** Each surviving statement becomes the input to an experiment or prototype test. The quantitative-impact clause is the experiment's success threshold.

---

## Facilitation Notes

`[reconstructed throughout this section]`

- The failure mode is statements that can't lose. "We believe this good feature will be good for users and improve the business" is unfalsifiable. Drive every row toward a number that could disappoint you.
- Watch for the feature and the outcome saying the same thing. "We believe adding search will help users search" is circular. The outcome is the *change*, not the mechanism.
- The high-level goal clause tends to get rushed. It is the part that connects the bet to why anyone should care — protect time for it.
- A board with eight hypotheses is usually a board with no priorities. Fewer, sharper, prioritised beats comprehensive.

---

## Variations

- **Solo / async:** one person drafts, a colleague pressure-tests and rearranges. `[reconstructed]`
- **Test Card pairing:** each prioritised hypothesis flows into a Strategyzer Test Card to design the experiment that tests it (see `resources/recipes.md`).

---

## Outputs

- A dated, attributed board of 3–5 prioritised, falsifiable hypotheses
- For each: an explicit success threshold (the quantitative-impact clause) ready to drive an experiment
- A shared record of what the team is betting on — and what would change their mind

---

## Connections

See `resources/recipes.md` for full sequencing. In brief: hypotheses are fed by concept/ideation work and feed experiments, prototype testing, and Test Cards. This method is the converter between the two.
