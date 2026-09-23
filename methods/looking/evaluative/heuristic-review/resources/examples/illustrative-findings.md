---
name: heuristic-review-illustrative-findings
description: Synthetic example of pooled Heuristic Review findings, for format only
source: canonical
provenance: reconstructed
---

# Illustrative Findings: Event Registration Form

> **Synthetic.** Written to show format, not taken from a real review. Do not present as a real review.

**Focus of review:** clickable prototype of a conference registration flow
**Reviewers:** 4 (designer from another team, customer support lead, developer, program manager)
**Key tasks:** 1. Register for the conference. 2. Add a workshop to an existing registration. 3. Cancel a registration.

| Finding | Task | Heuristic | Found by | Severity | Next |
|---|---|---|---|---|---|
| After "Submit," the page stays the same for several seconds with no indication anything is happening | 1 | Feedback | 4 of 4 | 3 | Fix now |
| "Add-on" on the menu, "Workshop" on the confirmation email, "Session" on the schedule for the same thing | 2 | Consistency | 3 of 4 | 2 | Fix now |
| No way to find cancellation from the confirmation page; reviewers went back to the home page | 3 | Place | 2 of 4 | 3 | Confirm with people |
| Entering an invalid promo code clears the whole form | 1 | Errors | 1 of 4 | 4 | Fix now |
| "Attendee type" dropdown uses internal codes (e.g. "STD-EB") | 1 | Language | 2 of 4 | 2 | Fix now |

## Weak vs. strong issue notes

| Weak | Why | Strong |
|---|---|---|
| "Confusing" | No issue, no location | "Task 2: 'Add-on' and 'Workshop' used for the same thing" · Consistency |
| "Add a spinner" | A solution, not a problem | "Task 1: no feedback for ~5 seconds after Submit" · Feedback |
| "Ugly colours" | Taste, not a heuristic | "Task 1: confirmation message is red, reads as an error" · Consistency |

Note the row marked "Confirm with people": the reviewers agree it's a problem, but they're guessing at how often real registrants cancel and where they'd look. That's a question for Think-Aloud Testing.
