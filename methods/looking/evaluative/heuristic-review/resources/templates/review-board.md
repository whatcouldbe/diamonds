---
name: heuristic-review-board
description: Board layout for capturing and synthesizing a Heuristic Review
source: canonical
provenance: reconstructed
---

# Heuristic Review: Board Layout

*The Preparation and Review sections are grounded in the LUMA review template. The Synthesis section is `[reconstructed]`.*

## Preparation (header of the board)

| Focus of review | Reviewers | Key tasks |
|---|---|---|
| What exactly are we reviewing, at what fidelity? | Names and roles, 3 to 5, multiple perspectives | 1. … 2. … 3. … |

## Review (one column per task)

Each reviewer does each task with all the heuristics in mind and adds a note for every issue.

| Task 1 | Task 2 | Task 3 |
|---|---|---|
| Issue notes | Issue notes | Issue notes |

Each note: **issue** · **heuristic** · **initials**

Helpful hints (grounded): initials on every note; reviewers don't need a note for every heuristic; no solutions yet.

## Synthesis `[reconstructed]`

Pool, merge duplicates, then fill one row per finding:

| Finding | Task | Heuristic | Found by (count) | Severity 0–4 | Confident? |
|---|---|---|---|---|---|
| | | | | | |

**Severity (Nielsen):** 0 not a problem · 1 cosmetic · 2 minor · 3 major · 4 catastrophe. Consider frequency, impact, persistence.

**Score:** fill in `scorecard-template.md` (No / Somewhat / Yes per heuristic).

**Hand-off:**
- **Fix now:** high severity, confident
- **Evaluate with users:** high severity but uncertain; a candidate for Think-Aloud Testing if users are within reach
- **Backlog:** low severity
