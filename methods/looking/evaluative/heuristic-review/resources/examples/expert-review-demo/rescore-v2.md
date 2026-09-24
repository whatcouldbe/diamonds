---
name: heuristic-review-demo-rescore-v2
description: Worked demo of re-scoring a later version after a guided expert review (12 to 17 out of 20), with transcript excerpts and the comparison
source: canonical
provenance: reconstructed
---

# Re-score: Bankeo "Pay Someone New", Version 2

*Worked demo, synthetic. Follows `../../facilitation-system-prompt.md`, Stage 5. The full walkthrough ran the same way as `transcript-v1.md`; only the moments that show the re-score moves are excerpted here. Bankeo and Claudia Larmon are fictional placeholders.*

**Conditions held:** same task (pay someone new), same heuristics (LUMA's ten), same reviewer (Claudia Larmon), same device (iPhone). The scores are comparable.

---

## Transcript excerpts

**Narrate first, then ask about the old issue.** On the add payee form, the agent waited for open narration before raising anything from the last report.

> **[03:40] Claudia:** Add payee form. Same three fields. Number pad comes up for the routing and account numbers now, and it won't take letters. Errors, met on this screen.
>
> **[04:05] Agent:** Last time, an error cleared the whole account number field. How does it do now?
>
> **[04:10] Claudia:** Let me mistype on purpose. It flags it inline as I leave the field and keeps what I typed. Met.

**A new issue the reviewer found unprompted.**

> **[05:30] Claudia:** Name check. The spinner now says "Checking the name with their bank." Feedback, met. And the result is much better: "The name doesn't quite match this account. Check with Dana before you pay." Language, met.
>
> **[05:55] Claudia:** But look at the buttons. "Pay anyway" is the big filled button and "Check details" is a text link. The design is nudging you toward the risky choice. Errors, not met.

**A previous issue that hasn't changed.**

> **[07:40] Claudia:** Amount screen. There's a step indicator now, "Step 3 of 4." Place, met there. Continue is back at the bottom.
>
> **[07:58] Agent:** Last time, the amount was cut off at the largest text size. How does it do now?
>
> **[08:02] Claudia:** Still cut off. "$5..." Not met.
>
> **[08:15] Claudia:** And Back still goes to Home and loses the payee.

---

## Re-score section

**Compared with:** build 4.2, 2026-09-23, 12 / 20
**This version:** build 4.3, 2026-10-14

| Heuristic | Previous | Current | Change | What changed |
|---|---|---|---|---|
| Constraints | Somewhat (1) | Somewhat (1) | 0 | The amount still truncates at the largest text size. |
| Aesthetics | Yes (2) | Yes (2) | 0 | Still clean; the new step indicator adds no clutter. |
| Language | Somewhat (1) | Yes (2) | +1 | The name check now says what doesn't match and what to do. |
| Consistency | Somewhat (1) | Yes (2) | +1 | "Payee" used throughout; Continue at the bottom on every screen. |
| Anticipate | Somewhat (1) | Yes (2) | +1 | Pay someone is on Home; adding a payee goes straight to the amount. |
| Errors | No (0) | Somewhat (1) | +1 | Numbers only, inline check, field kept on error, last four digits on review. Still no cancel after sending, and the name check emphasizes "Pay anyway." |
| Match | Yes (2) | Yes (2) | 0 | Unchanged. |
| Feedback | Somewhat (1) | Yes (2) | +1 | The name check spinner now says what it's doing. |
| Place | Somewhat (1) | Somewhat (1) | 0 | Step indicator added, but Back still returns to Home and loses the payee. |
| Complexity | Yes (2) | Yes (2) | 0 | Fewer steps than before. |
| **Total** | **12** | **17** | **+5** | |

| Previous main issue | Now | Evidence |
|---|---|---|
| 1. A wrong account number isn't caught, isn't shown back, and can't be undone | Improved | Caught and shown back (Add payee 03:40, 04:10; Review 09:05). Still no cancel after sending (Sent 10:20). |
| 2. The name check raises a flag and leaves the person to guess | Resolved | Clear message and next step (Name check 05:30). See new issue below. |
| 3. At large text sizes the amount can't be read | Unchanged | Amount 08:02. |
| 4. No sense of progress, and Back throws away the work | Improved | Step indicator added (Amount 07:40). Back unchanged (Amount 08:15). |
| 5. The main task is hidden and the flow doubles back | Resolved | Pay someone on Home (00:40); straight to amount after adding (07:20). |

**New issues:**
- **The name check makes the risky choice the easy one** (Errors). "Pay anyway" is the primary button and "Check details" a text link. *Seen on:* Name check 05:55.

**What the change means:** build 4.3 follows the heuristics noticeably better than 4.2, and the fixes went where the biggest risks were. A higher score isn't evidence that people now pay the right account; watching Bankeo customers attempt the task would show that. The remaining priorities are the name check buttons, a way to cancel, and the large-text amount.

*The full version 2 report would also carry the findings by heuristic, what's working, and the caveats, as in `report-v1.md`.*
