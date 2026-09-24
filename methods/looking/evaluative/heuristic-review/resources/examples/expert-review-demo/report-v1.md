---
name: heuristic-review-demo-report-v1
description: Worked demo of the report an agent produces from a guided expert review transcript, version 1 (12 / 20)
source: canonical
provenance: reconstructed
---

# Expert Review: Bankeo "Pay Someone New"

*Worked demo. Produced from the synthetic `transcript-v1.md` by following `../../facilitation-system-prompt.md`, Stage 4, and `../../templates/expert-review-report.md`. Bankeo and Claudia Larmon are fictional placeholders.*

**Version:** iOS build 4.2
**Task walked:** Pay someone you've never paid before: add them as a payee and send the first payment
**Heuristic set:** LUMA's ten
**Reviewer:** Claudia Larmon
**Facilitated and synthesized by:** the agent
**Recording:** build-4.2-review.mov, 11:50
**Date:** 2026-09-23

## Score: 12 / 20

The flow looks clean and follows familiar banking patterns, but it does little to stop someone paying the wrong account, and nothing to help them recover once they have. That one heuristic scored No, and it's where the biggest risk is.

| Heuristic | Score | Reason | Where | Basis |
|---|---|---|---|---|
| Constraints | Somewhat (1) | Text scales and contrast is good on the form, but at the largest text size the amount truncates to "$5..." so the person can't check what they're sending. | Add payee 05:12; Amount 08:05 | Agent's reading |
| Aesthetics | Yes (2) | One thing to look at on each screen; the promo carousel doesn't compete with the balance. | Home 00:20; Amount 07:32 | Agent's reading |
| Language | Somewhat (1) | Labels and the confirmation sentence are plain, but the name check says "Close match" without saying to what or what to do. | Name check 05:52 | Agent's reading |
| Consistency | Somewhat (1) | "Pay someone", "Beneficiaries", and "payee" name the same thing; Continue moves from bottom to top right on the amount screen. | Payees 02:40; Amount 07:50 | Agent's reading |
| Anticipate | Somewhat (1) | The task is possible but takes extra steps: paying is hidden under More, and adding a payee returns you to the list instead of to the payment. | Home 00:48; Payees 07:00 | Agent's reading |
| Errors | No (0) | The account number field accepts letters, clears everything on error, is never shown back for checking, and can't be cancelled after sending. The name check raises a flag but doesn't help the person decide. | Add payee 04:12, 04:50; Name check 06:10; Review 09:10; Sent 10:30 | Agent's reading |
| Match | Yes (2) | Move money follows the pattern every banking app uses. | Move money 02:09 | Agent's reading |
| Feedback | Somewhat (1) | The sent screen is clear, with reference number and arrival time, but the name check shows a wordless spinner for about five seconds. | Name check 05:35; Sent 10:10 | Agent's reading |
| Place | Somewhat (1) | The tab bar keeps you oriented, but there's no sense of how many steps are left, and Back on the amount screen returns to Home and loses the payee. | Home 01:16; Amount 08:20, 08:35 | Agent's reading, changed by reviewer from No |
| Complexity | Yes (2) | Apart from the detours already noted, every step earns its place and nothing optional gets in the way. | Whole flow 10:58 | Reviewer's verdict |
| **Total** | **12 / 20** | | | |

## Main issues

Ordered by effect on the person trying to get the task done.

1. **A wrong account number isn't caught, isn't shown back, and can't be undone** (Errors). The field accepts letters and uses the full keyboard, clears all twelve digits on error, never appears on the review screen, and there's no cancel after sending. This is how money goes to the wrong place. *Seen on:* Add payee 04:12, 04:50; Review 09:10; Sent 10:30.
2. **The name check raises a flag and leaves the person to guess** (Language, Errors). "Close match" doesn't say to what, or whether to go ahead, at the one moment designed to stop a wrong payment. *Seen on:* Name check 05:52, 06:10.
3. **At large text sizes the amount can't be read** (Constraints). Someone relying on large text can't check the amount before sending. *Seen on:* Amount 08:05.
4. **No sense of progress, and Back throws away the work** (Place). *Seen on:* Amount 08:20, 08:35.
5. **The main task is hidden and the flow doubles back** (Anticipate). Paying is under More, and after adding a payee you have to find and tap them again. *Seen on:* Home 00:48; Payees 07:00.

*Reviewer's first fix:* the account number problems in main issue 1.

## What's working

- **Clean screens with one focus** (Aesthetics). *Seen on:* Home 00:20; Amount 07:32.
- **Familiar banking patterns** (Match). *Seen on:* Move money 02:09.
- **A clear, reassuring sent screen** with reference number and arrival time (Feedback). *Seen on:* Sent 10:10.
- **Plain confirmation wording**: "You're sending $50 to Dana Ruiz today" (Language). *Seen on:* Review 09:00.
- **A name check at all.** The reviewer called it the right idea; the problem is what it says, not that it's there. *Seen on:* Name check 06:34.

## Findings by heuristic

Quotes are the reviewer's words. No observation in this walkthrough needed tagging by the agent; the reviewer named every heuristic, with prompting where noted in the transcript.

### Constraints
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Add payee | Met | "Labels scale, fields grow, nothing's cut off. Contrast is good." | 05:12 |
| Amount | Not met | "If you rely on large text, you can't check the amount you're about to send." | 08:05 |

### Aesthetics
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Home | Met | "Clean, one thing to look at." Carousel "doesn't compete." | 00:20 |
| Amount | Met | "Big clear amount, a reference field." | 07:32 |

### Language
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Move money | Met | "Clear labels." | 01:34 |
| Add payee | Met | "Labels sit above the fields and stay visible while you type." | 03:30 |
| Name check | Not met | "Close match to what? It doesn't tell me whether to go ahead." | 05:52 |
| Review | Met | "You're sending $50 to Dana Ruiz today." "Plain." | 09:00 |

### Consistency
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Payees | Not met | "Three words for the same thing." | 02:40 |
| Amount | Not met | "Continue has jumped to the top right. I went for the bottom and nothing was there." | 07:50 |

### Anticipate
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Home | Not met | "An extra tap and a search for the main task." | 01:02 |
| Payees (after adding) | Not met | "Why would I add a payee except to pay them?" | 07:00 |

### Errors
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Add payee | Not met | Accepts letters, full keyboard: "They mistype and don't find out until they submit." | 04:12 |
| Add payee | Not met | Error clears the whole field: "Recovery is worse than it needs to be." | 04:50 |
| Name check | Not met | "It raises a flag and then doesn't help me decide." | 06:10 |
| Review | Not met | "There's no point at which I can check I typed it right." | 09:10 |
| Sent | Not met | "If I realize now that I got the account wrong, there's nowhere to go." | 10:30 |

### Match
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Move money | Met | "The pattern every banking app uses. Nobody would be surprised." | 02:09 |

### Feedback
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Name check | Partly met | "It tells me something is happening, not what." | 05:47 |
| Sent | Met | "Big check mark, 'Sent,' a reference number, and when it'll arrive." | 10:10 |

### Place
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Home | Met | "The current tab is highlighted, I know where I am." | 01:16 |
| Amount | Not met | "No idea how many steps are left." | 08:20 |
| Amount | Not met | Back "goes all the way to Home. I've lost Dana." | 08:35 |

### Complexity
| Screen | Met? | Reason | Time |
|---|---|---|---|
| Whole flow | Met | "Every step earns its place, and nothing optional gets in the way." | 10:58 |

## Other observations

- The reviewer mentioned not liking the Move money icons, then withdrew it as taste with no effect on the person (01:57). Not recorded as a finding.
- The review covered one device (iPhone).

## Reviewer's suggestions

Voiced during the walkthrough. Starting points, not decisions.

- Allow only numbers in the account number field and bring up the number pad (04:12).
- Show the last four digits of the account number on the review screen (09:10).

## Caveats

- **What this is.** A design-quality score against principles, from one expert's guided walkthrough. It measures how well the flow follows the heuristics, not whether it works for the people who'll use it.
- **What the agent could and couldn't see.** The agent worked from the recording's transcript only; it did not see the screens. Not seen: real people using the app, the timing and context of real use (on the move, one-handed, under time pressure), other devices, and any task other than paying a new payee.
- **One reviewer.** One expert catches some problems and misses others. A second reviewer with a different perspective, for example someone who uses assistive technology daily, would likely find more.
- **Think-Aloud Testing complements this.** Bankeo customers are within reach. Watching a few of them pay someone new would show whether these problems trip real people up, and find what heuristics can't. Fixing main issues 1 and 2 first will make that testing more productive.
- **Status.** The guided expert review is built but not yet field-tested, and this report comes from a synthetic transcript.

## Next steps

- **Fix first:** main issue 1, the account number problems. Owner: the Bankeo payments team.
- **Re-score:** on the next build, same task, same heuristics, same reviewer.
- **With users:** plan Think-Aloud Testing on the same task once main issues 1 and 2 are addressed.
