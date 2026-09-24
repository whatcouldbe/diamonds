---
name: heuristic-review-scorecard-template
description: Generic scorecard for quantifying a Heuristic Review against any heuristic set, and guidance for building a company scorecard
source: canonical
provenance: practitioner-verified
---

# Heuristic Review Scorecard

*Grounded in the practitioner teaching session and an anonymized client case study (`../examples/case-study-company-scorecard.md`). The idea of a single comparable number borrows from the System Usability Scale.*

Works with any heuristic set: Nielsen's ten, LUMA's ten, or a team's own.

**Scorecard for:** [experience being assessed]
**Heuristic set:** [Nielsen / LUMA / team or company set]
**Completed by:** [name]
**Completed on:** [date]

| Heuristic | Evaluating question | Outcome (No 0 / Somewhat 1 / Yes 2) | Reason *(specific and observable)* | Reference *(screenshot or link)* |
|---|---|---|---|---|
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | **Score: __ / 20** *(2 × number of heuristics)* | | |

## Scoring

- **No (0):** the design clearly falls short; people will struggle.
- **Somewhat (1):** partly met; some friction or inconsistency.
- **Yes (2):** clearly met.

Write the outcome descriptions for each heuristic before reviewing, so every reviewer scores against the same bar. An earlier alternative is −1 / 0 / +1 per heuristic; No / Somewhat / Yes reads more naturally.

## Using the score

1. Score the current version. That's the baseline.
2. Rate the severity of the main problems and prioritize fixes by their effect on the system.
3. Fix.
4. Re-score with the same set and the same outcome descriptions, to measure the improvement.

## Building a company scorecard

When a company wants its own standard:

1. **Start from a published set** (Nielsen or LUMA).
2. **Rewrite each heuristic as a plain-language outcome** the company's experiences should deliver, framed as *"We should develop experiences that…"*. Plain language makes the scorecard usable by people who don't know the heuristic vocabulary.
3. **Write one evaluating question per criterion.**
4. **Write No / Somewhat / Yes descriptions** for each criterion.
5. **Calibrate on something public** that everyone knows, so reviewers see what a strong but imperfect score looks like.
6. **Keep it in the company's own deployment,** not in this engine.
