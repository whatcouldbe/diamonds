---
name: heuristic-review-ai-usage
description: Using Heuristic Review with AI tools, including agent-facilitated expert reviews and automated reviews
source: canonical
provenance: reconstructed
---

# Heuristic Review: AI Usage

The direction here comes from the practitioner teaching session (Justin Knecht, September 2026). The authoring and scoring patterns are grounded in What Could Be client kits. The agent-facilitated expert review is **built but not yet field-tested**. The agent reviewing on its own is **designed, not yet built or run**. Flag both as untested when used.

Heuristic Review suits AI especially well. A review has a lot of moving parts: write a note, tag it with a heuristic, say whether it's met, say why, place it on the right part of the right screen, then pool, sort, and score. Much of that is mechanical, and the agent can take it on so people spend their attention on judgment.

---

## Facilitating: the agent guides an expert reviewer

*The practitioner's priority use case.*

The expert walks a flow while recording the screen and talks it through, a think-aloud by the reviewer rather than by a user. The agent:

1. **Names the heuristic set and provides its reference** before the walkthrough: the team's or client's own set if there is one (loaded from their deployment), LUMA's ten for LUMA users, otherwise Nielsen's ten.
2. **Guides the walkthrough:** prompts the reviewer screen by screen, asks about specific heuristics on specific screens, and asks them to think aloud: what they see, which heuristic applies, met or not, and why.
3. **Takes the recording or transcript afterward** and:
   - Sorts every comment by heuristic
   - Highlights the main issues
   - Scores each heuristic and the total, with the reason and a screen reference
   - Produces a report for the current version
4. **Re-scores later versions** the same way, so improvement is measured.

The agent may not see the screens, only the transcript. That's fine: the expert is the eyes, and the agent carries the structure and the synthesis.

**Status: built, not yet field-tested.**
- **The prompt:** `facilitation-system-prompt.md` runs the whole arc: set-up (including choosing the set), the guided walkthrough, closing the walkthrough with a coverage check, synthesis and scoring, and re-scoring later versions.
- **The report:** `templates/expert-review-report.md`, with scores, main issues, findings by heuristic, caveats, and a re-score section. Works with any set.
- **The worked demo:** `examples/expert-review-demo/`, a synthetic transcript of a fictional banking app flow reviewed against LUMA's ten, the report produced from it (12 / 20), and a re-score of the next version (17 / 20).

A team's or client's own set is read from their deployment at run time, and their reports are saved there. Neither is ever committed to this repo.

The demo shows the format and the moves; it isn't evidence the approach works. The first real run with an expert reviewer is what moves this to field-tested. Things to watch on that run: whether the probes help or interrupt, whether the reviewer agrees with the agent's reading of their comments when scoring, and how the set-up works when the agent can't hear the reviewer.

---

## Executing: the agent reviews on its own

Given the chosen heuristic set (see `../method.md` → Choosing a set) and a set of screens (screenshots, a Figma file, a clickable prototype, or a live site it can walk task by task), the agent:

- Walks each key task, screen by screen
- Tags each observation with a heuristic, met or not, and why, referencing the screen
- Scores each heuristic and the total
- Makes suggestions for improvement (after the findings, kept separate from them)
- Re-scores after changes

### Reviewer personas

Running several persona passes (for example accessibility, a first-time user, a domain expert) can widen what the agent notices. But persona passes on the same model are **not independent reviewers**. The published case for 3 to 5 reviewers rests on different people noticing different things, and one model with different prompts will largely converge. Treat multiple passes as one reviewer looking harder, not as a panel. Whether the passes add enough to justify running them is an open question to measure on a real review.

---

## Authoring and self-assessment *(grounded, client kits)*

- **Drafting authored heuristics:** give the AI the definition of what good looks like and ask for 4 to 6 heuristics (Verb + Outcome name, guiding question, why it matters, look-fors). Treat the output as raw material; the team decides what's right.
- **Testing heuristics on a scenario:** have the AI generate a realistic scenario and check whether the heuristics discriminate. The kits' own caveat: not a replacement for real experiences, a fast way to try out your heuristics.
- **Scoring a submission:** the AI asks 2 to 3 clarifying questions first, then scores each heuristic with strengths, gaps, and suggestions, then gives an overall score. Compare with your own scoring; the disagreements are where the learning is.

---

## Caveats the agent always states

- **What the method is:** a design-quality evaluation against principles. When the agent has run it alone, say so.
- **What the agent could see:** screenshots, a transcript, or a live walk. Name what it could *not* see (timing, physical context, real-world use).
- **One reviewer:** an agent review is one perspective. Where possible, pair it with a human reviewer.
- **The score is a design-quality score.** It measures how well the design follows the heuristics. When there's access to the people the design is for, Think-Aloud Testing finds what heuristics can't. Say this plainly, without ranking the methods.
- **The method's status in this library:** the guided expert review is built but not yet field-tested; the agent reviewing on its own is designed but not yet built.
