---
name: heuristic-review-expert-review-report
description: Report template for an agent-facilitated expert think-aloud review, with scores, findings by heuristic, main issues, caveats, and a re-score comparison
source: canonical
provenance: reconstructed
---

# Expert Review Report Template

*Built for the guided expert review in `../facilitation-system-prompt.md`. Works with any heuristic set: LUMA's ten, Nielsen's ten, or a team's or client's own. The scale follows `scorecard-template.md`. The report structure is `[reconstructed]` and not yet field-tested. See `../examples/expert-review-demo/` for a completed example.*

*A completed report about a team's or client's product belongs in their own deployment (for example the project's `diamonds-vault/log/`), never in this repo.*

---

# Expert Review: [experience being reviewed]

**Version:** [version label]
**Task(s) walked:** [the goal a person is trying to get done]
**Heuristic set:** [LUMA's ten / Nielsen's ten / the team's or client's own set]
**Reviewer:** [name]
**Facilitated and synthesized by:** [agent]
**Recording:** [link or file name, length]
**Date:** [date]

## Score: [total] / [maximum]

[One or two sentences: what the score says about this version, in plain language.]

| Heuristic | Score | Reason | Where | Basis |
|---|---|---|---|---|
| [Heuristic 1] | [No (0) / Somewhat (1) / Yes (2) / Not reviewed] | [Specific, observable reason] | [Screen, timestamp] | [Reviewer's verdict / agent's reading] |
| [Heuristic 2] | | | | |
| *(one row per heuristic in the set)* | | | | |
| **Total** | **[x] / [2 × number of heuristics]** | | | |

*Basis:* **reviewer's verdict** means the reviewer scored it directly. **Agent's reading** means the agent read the reviewer's comments against the scale, and the reviewer confirmed it. If any heuristic is not reviewed, the total is out of the heuristics reviewed and isn't comparable to a full score.

## Main issues

Ordered by effect on the person trying to get the task done.

1. **[Short statement of the problem]** ([heuristic]). [What goes wrong for the person, in the reviewer's terms.] *Seen on:* [screens, timestamps].
2. ...

*Reviewer's first fix:* [what the reviewer said they'd fix first].

## What's working

Strengths to protect in the next version.

- **[Strength]** ([heuristic]). [Why it works.] *Seen on:* [screen, timestamp].

## Findings by heuristic

Every observation from the walkthrough, sorted by heuristic. Quotes are the reviewer's words. *Tagged by agent* means the reviewer didn't name the heuristic and the agent chose the closest one.

### [Heuristic]
| Screen | Met? | Reason | Time |
|---|---|---|---|
| [screen] | [Met / Not met] | "[short quote]" | [mm:ss] |

*(Repeat for each heuristic with evidence.)*

## Other observations

Remarks that don't fit any heuristic, and screens that couldn't be reached.

## Reviewer's suggestions

Fixes the reviewer voiced during the walkthrough, kept separate from the findings. These are starting points, not decisions.

## Caveats

- **What this is.** A design-quality score against principles, from one expert's guided walkthrough. It measures how well the design follows the heuristics, not whether it works for the specific people it's for.
- **What the agent could and couldn't see.** [Transcript only / transcript and screenshots / live screens.] Not seen: real people using it, the timing and context of real use, [screens or tasks not walked], [heuristics not reviewed].
- **One reviewer.** One expert catches some problems and misses others. More reviewers with different perspectives find more.
- **Think-Aloud Testing complements this.** When the people this design is for are within reach, watching them attempt the same task finds what heuristics can't. This review makes that testing more productive by clearing the obvious issues first.
- **Status.** The guided expert review is built but not yet field-tested.

## Next steps

- **Fix first:** [main issue], owned by [name].
- **Re-score:** [date or trigger], same task, same heuristics, [same reviewer].
- **With users:** [whether and when Think-Aloud Testing is planned].

---

## Re-score section *(for a later version only)*

**Compared with:** [previous version label, date, score]
**Conditions held:** [same task / same heuristics / same reviewer; name anything that changed]

| Heuristic | Previous | Current | Change | What changed |
|---|---|---|---|---|
| [Heuristic] | [score] | [score] | [+/-] | [reason] |
| **Total** | **[x]** | **[y]** | **[+/-]** | |

| Previous main issue | Now | Evidence |
|---|---|---|
| [issue] | [Resolved / Improved / Unchanged / Worse] | [screen, timestamp] |

**New issues:** [any problems that weren't there before, or weren't seen before]

**What the change means:** a higher score shows this version follows the heuristics better. It isn't evidence that people now succeed with it.
