---
name: heuristic-review-references
description: Lineage and external sources for the Heuristic Review method
source: canonical
provenance: grounded
---

# Heuristic Review: References

This file is **grounded**: researched and cited. It is the firmest footing the method has.

## Lineage

Heuristic evaluation was introduced by **Jakob Nielsen and Rolf Molich** in 1990 as a "discount usability" method: a cheap, fast inspection that does not require test participants. Nielsen refined the heuristics in 1994 by factor-analysing 249 usability problems, producing the ten heuristics still widely used today. The same research established that individual evaluators miss most problems and that aggregating 3 to 5 evaluators finds the large majority.

**LUMA Institute** adapted the method as **Heuristic Review**, part of the Looking / Evaluative Research category of the LUMA System, with its own ten heuristics broadened beyond software to "a product, service, presentation, or policy." This is the version What Could Be teaches, and the name Diamonds uses.

**What Could Be** has extended the method in three ways:
- **Scoring**: turning a review into a score (No / Somewhat / Yes per heuristic) to measure design quality and re-score after changes, borrowing the idea of a single comparable number from the System Usability Scale. Clients have built their own scorecards this way; see the anonymized case study in `examples/` and `templates/scorecard-template.md`.
- **Authored heuristics**: design principles written for a specific project or domain (for example, the quality of learning experiences, or the readiness of innovation program submissions). Client kits are referenced here in anonymized form only.
- **Agent-facilitated expert review**: designed in the practitioner teaching session (September 2026), not yet built. See `ai-usage.md`.

## Primary sources

**[10 Usability Heuristics for User Interface Design](https://www.nngroup.com/articles/ten-usability-heuristics/): Jakob Nielsen, Nielsen Norman Group**
The canonical list, with explanations and examples. Required first read for anyone using the Nielsen set.

**[How to Conduct a Heuristic Evaluation](https://www.nngroup.com/articles/how-to-conduct-a-heuristic-evaluation/): Nielsen Norman Group**
The procedure: independent evaluation, aggregation, and why multiple evaluators matter. Source for the evaluator-count guidance.

**[Severity Ratings for Usability Problems](https://www.nngroup.com/articles/how-to-rate-the-severity-of-usability-problems/): Jakob Nielsen, Nielsen Norman Group**
The 0 to 4 severity scale and its three factors (frequency, impact, persistence).

**Nielsen, J. and Molich, R. (1990). "Heuristic evaluation of user interfaces." *Proceedings of CHI '90*, 249–256.**
The original paper.

**Nielsen, J. (1994). "Heuristic evaluation." In Nielsen, J. and Mack, R.L. (eds.), *Usability Inspection Methods*. Wiley.**
The fuller treatment, including the refined heuristics.

## LUMA

**[Heuristic Review](https://www.lumaworkplace.com/methods/heuristic-review): LUMA Institute (LUMA Workplace)**
LUMA's reference for the method: definition, the ten heuristics, benefits, quick guide, and helpful hints.

**LUMA Institute (2012). *Innovating for People: Handbook of Human-Centered Design Methods*.**
The printed handbook covering Heuristic Review alongside the rest of the LUMA System.

**What Could Be holds LUMA teaching materials** for this method: the basic module slides, the 8.5×11 reference guide, the review template, and the Eye-Spy practice activity. These are © LUMA Institute and its licensors and are not reproduced in this repo. The method files paraphrase and cite them.

## Scoring

**Brooke, J. (1996). "SUS: A 'quick and dirty' usability scale." In *Usability Evaluation in Industry*. Taylor & Francis.**
The System Usability Scale, the model for turning an evaluation into a single comparable score.

## Design principles

**Dieter Rams, "Weniger, aber besser" (less but better).**
Rams's design philosophy, used on a What Could Be project as an authored design principle. See Rams, D. (1995). *Less but Better*. Jo Klatt Design+Design Verlag.

## Other heuristic sets

**[The Eight Golden Rules of Interface Design](https://www.cs.umd.edu/users/ben/goldenrules.html): Ben Shneiderman**
An earlier, overlapping set from *Designing the User Interface*.

## Neighbouring methods

- **Think-Aloud Testing** (this library). The behavioural counterpart: real people, real tasks. Complementary: Heuristic Review evaluates against principles; Think-Aloud Testing observes people. See `../../think-aloud-testing/`.
- **Critique** (this library). Structured open feedback rather than an audit against named principles. See `../../critique/`.
- **Cognitive walkthrough.** Another inspection method, focused on learnability of a task step by step. Not yet in this library.
- **System Usability Scale.** A questionnaire LUMA pairs with evaluative research to quantify perceived usability, and the inspiration for scoring a review. Not yet in this library.
- **Alternative Worlds** (LUMA). Studying analogous systems to borrow their best practices; one source of authored design principles. Not yet in this library.
