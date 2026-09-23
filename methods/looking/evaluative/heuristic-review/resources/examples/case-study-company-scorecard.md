---
name: heuristic-review-case-study-company-scorecard
description: Anonymized case study of a company that built its own heuristic scorecard and used it to quantify design quality
source: canonical
provenance: grounded
---

# Case Study: A Company Builds Its Own Scorecard

*Grounded, anonymized. Based on What Could Be client work in early 2025. The client's name, industry, exact criteria wording, and product findings are deliberately left out. The company's actual scorecard lives in its own deployment.*

## Why they built it

The company needed a repeatable, comparable way to evaluate the quality of its digital products. Reviews existed, but they were impressions. Nothing let one team's review be compared with another's, or a product be compared with itself six months later.

## How they built it

- **Started from a standard set** of ten heuristics.
- **Rewrote each heuristic as a plain-language outcome** the company's experiences should deliver, each completing the sentence *"We should develop experiences that…"*. The heuristic names became phrases anyone in the company could understand without design training.
- **Added one evaluating question per criterion**, and a short description of what No, Somewhat, and Yes look like for each.
- **Added columns for a reason and a reference screenshot**, so every score has evidence.

## How they scored it

- **No / Somewhat / Yes = 0 / 1 / 2** per criterion. Ten criteria, so a score out of 20.
- They first tried **−1 / 0 / +1** per heuristic, and moved to No / Somewhat / Yes because it reads more naturally to non-designers.

## How they calibrated it

Before scoring their own work, a reviewer scored **a well-known public e-commerce checkout: 14 / 20.** Mostly strong, with a few clear shortfalls, each with a specific reason. For example, promotional banners added visual noise, and there was no easy way to undo choosing the wrong delivery address. It showed reviewers what a good-but-imperfect product scores, and what a well-evidenced reason looks like.

## How they used it

They scored **one of their own internal tools: 4 / 20.** Only one criterion fully met. The scorecard made the size of the gap unarguable, and the reasons pointed straight at the most severe problems, especially where several combined (for example, unclear status language together with missing feedback, so people couldn't tell whether an action had worked). That became the baseline: prioritize fixes by effect on the system, fix, re-score.

## What this example teaches

- **You can measure design quality.** A number turns "this feels clunky" into a gap everyone can see and track.
- **Calibrate on something public first.** It anchors what the numbers mean.
- **Every score needs a specific, observable reason.** That's what makes the score actionable and the re-score credible.
- **Plain language widens who can review.** The outcome phrasing let people outside design use the scorecard.
- **A low baseline is a starting point, not a verdict.** The point is the re-score.
