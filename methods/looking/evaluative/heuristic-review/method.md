---
status: provisional
provenance: reconstructed
category: evaluative
phase: looking
tags: [heuristics, heuristic-evaluation, usability, audit, inspection, evaluation, rules-of-thumb, expert-review]
also-known-as: [heuristic evaluation, heuristic audit, expert review, usability inspection]
files:
  - method.md (this file): Core reference: purpose, heuristic sets, steps, facilitation notes, variations, connections
  - mechanics.md: Facilitation cheat sheet (process partly reconstructed)
  - teaching.md: Teaching arc content (story and conviction close still needed)
  - resources/: References, recipes, AI usage, FAQ, tips, templates, examples
---

> **Provisional method.** Built from source materials plus research, not from a practitioner's run experience. The **structure** (quick guide, helpful hints, the ten heuristics, benefits, the review template, the Eye-Spy practice activity) is grounded in the LUMA Institute Heuristic Review materials What Could Be teaches from. The **authored-heuristics variation** is grounded in heuristic kits What Could Be has written for clients. The **published lineage** (Nielsen and Molich, severity ratings, evaluator counts) is grounded in cited research. What is **not** grounded: synthesis mechanics, timing, and live facilitation edge cases. Those are flagged inline as `[reconstructed]`. The method has been taught but not yet run and reported back on. See `../../../README.md` for the Provenance ladder and the upgrade path at the end of this file.

# Heuristic Review

An auditing procedure where a small team of reviewers works through key tasks with a design, checking it against a short set of rules of thumb for good design, and notes every place a rule is broken.

---

## Purpose

Use when you have something concrete to inspect (a prototype, a live product, a service blueprint, a form, a document, a physical device) and want to find the obvious problems quickly and cheaply, before or between rounds of testing with real people.

**The core question:** Where does this design break the rules we already know good design follows?

**What a heuristic is:** a rule of thumb. A generally accurate guideline drawn from experience of how things work best. Heuristics are shortcuts: easy to recall and apply, less precise than a formal rubric or standard. That trade is the point. Anyone on the team can carry ten short rules into a review.

**What the method gives you** (grounded, LUMA benefits):
- Leverages proven principles of good design
- Helps you identify problems quickly
- Yields data in the absence of test participants
- Shows opportunities for improvement

### Where it sits in Diamonds

The third benefit is the one to handle with care. Heuristic Review produces findings *without* people using the thing. That makes it fast, and it makes it expert judgment, not evidence of what people do. Every finding is a well-informed prediction that someone will struggle. It is not a record that someone did.

So in Diamonds, Heuristic Review is a **filter before validation, never validation itself**:
- Run it to clear the obvious problems so that Think-Aloud Testing spends real people's time on the problems only real people can reveal.
- Run it on an existing product to decide where to point real-user testing first.
- Never let a clean Heuristic Review answer "What can we build to test whether our solution works for people?" A design that breaks no heuristics can still fail the people it is for, because it solves the wrong problem or solves it in a way that does not fit their world.

If a team says "we did a heuristic review, so we know it works," that is the moment to name the gap.

---

## The Heuristics

### The LUMA ten (default in What Could Be practice)

*Grounded. Names and principles from the LUMA Institute Heuristic Review materials; one-line descriptions paraphrased.*

| Short name | Principle | What to look for |
|---|---|---|
| **Match** | Match the mental model | Works the way people already understand the world, rather than forcing them to adapt to an unnatural system. If a convention is broken, the result must be clearly better. |
| **Complexity** | Minimize perceived complexity | Self-evident. Progressive disclosure, clear hierarchy, no haphazard layout. People should not have to "figure it out" or rely on instructions. |
| **Consistency** | Use consistent form, words, and actions | Things that are the same behave and look the same everywhere. Break from convention only when the convention is inadequate. |
| **Place** | Provide a sense of place | People can tell where they are, where they can go, and how to get back. Landmarks and wayfinding. |
| **Constraints** | Account for user and environmental constraints | Visual, verbal, auditory, and physical choices fit the context of use and the range of people's abilities. |
| **Anticipate** | Anticipate needs | The right tools and information at the right moment. Does not rely on people's memory. |
| **Language** | Use clear and concise language | Plain words from the person's world. No jargon, system-speak, or wrong tone. |
| **Feedback** | Give feedback about actions and status | People can see what their action did, where a process is, and roughly how long it will take. |
| **Errors** | Prevent errors and provide graceful recovery | Prevent first. When errors happen, explain what happened, how to recover (or reach a human), and how to avoid it next time. |
| **Aesthetics** | Strive for appropriate and minimal aesthetics | Every element earns its place. Form reinforces function. Appeal matters: people rate attractive things as more usable. |

The LUMA framing is deliberately broad: "a product, service, presentation, or policy." These heuristics are not only for screens.

### Other published sets

*Grounded. See `resources/references.md`.*

- **Nielsen's 10 usability heuristics** (Nielsen and Molich 1990, refined by Nielsen 1994): visibility of system status; match between system and the real world; user control and freedom; consistency and standards; error prevention; recognition rather than recall; flexibility and efficiency of use; aesthetic and minimalist design; help users recognize, diagnose, and recover from errors; help and documentation. The most widely cited set, and heavily screen-oriented. Use it when working with teams who already speak it.
- **Shneiderman's Eight Golden Rules of Interface Design.** An older, overlapping set.

The sets overlap heavily. Choose one and use it consistently across reviewers. Mixing sets mid-review makes findings impossible to cluster.

### Authored heuristics

*Grounded in What Could Be client kits (anonymized).*

When the thing being evaluated is not an interface (a learning experience, a program submission, a policy, a strategy), the ten usability heuristics may not fit. Teams can **author their own**: 4 to 6 short rules of thumb that describe what good looks like in their domain. See the Variations section below and `resources/templates/authoring-heuristics.md`.

---

## Setup

### When in the process
- **Develop and Deliver:** once there is a prototype or artifact concrete enough to perform tasks with. Most valuable right before Think-Aloud Testing, to clear obvious issues first.
- **Post-launch:** as an audit of an existing product or service, to decide what to test and fix.
- **Any time a team is about to put something in front of real people**, and hasn't looked at it critically themselves.

### Participants
- **A team of reviewers with multiple perspectives** (grounded). Different backgrounds catch different problems.
- **3 to 5 reviewers** (grounded in published research). One reviewer finds roughly a third of the problems; five find roughly three-quarters. Returns diminish after that.
- Reviewers do not need to be usability experts, but they must know the heuristics. Novice reviewers find fewer problems than experienced ones (grounded, Nielsen).
- Ideally, reviewers did not design the thing. The designers can be reviewers, but they will see what they intended rather than what is there. `[reconstructed]`

### Materials
*Grounded (LUMA template and quick guide).*
- The subject of the review, in a state where the key tasks can be performed
- The heuristics reference sheet, visible to every reviewer
- A small number of key tasks (the LUMA template uses three)
- Sticky notes and pens (or a digital board), with each reviewer's initials on their notes
- A review board: a column per task, so issues are captured task by task

### Time
`[reconstructed]` No timing is given in the source materials. A plausible default for a team review of a modest prototype: 10 minutes to familiarize with the heuristics, 10 to 15 minutes per task for individual review, and 30 to 45 minutes to synthesize. Roughly 90 minutes for three tasks. Flagged until field-tested.

---

## Steps

*Steps 1 to 9 are grounded in the LUMA quick guide and helpful hints. Steps 10 to 12 (synthesis) are `[reconstructed]` from published practice (Nielsen's aggregation and severity rating) and from how What Could Be synthesizes other evaluative methods.*

### Prepare
1. **Identify the subject of your review.** Name exactly what is being reviewed, and at what fidelity.
2. **Form a team of reviewers with multiple perspectives.**
3. **Get everyone familiar with the heuristics.** Walk through each one with an example. The Eye-Spy practice activity (see `teaching.md`) is a fast way to do this.
4. **Select a small number of key tasks.** Tasks are things a person would actually try to accomplish ("find a flight and book it"), not features to inspect.

### Review (individually)
5. **Instruct each reviewer to conduct each task**, one task at a time.
6. **Remind them to keep the heuristics in mind** while they work.
7. **Give each reviewer a pen and a sticky note pad.** Initials on every note.
8. **Ask them to note all of the issues they discover.** One issue per note, described clearly enough that someone else could find it.
9. **Tell them to cite one heuristic for each issue.** Not every heuristic needs a note. Discourage solutions at this stage.

### Synthesize `[reconstructed]`
10. **Pool and cluster.** Bring all notes onto one board. Group duplicates: the same issue found by several reviewers becomes one finding, and the number of reviewers who found it is signal. Clustering by heuristic shows which principles the design breaks most. Clustering by task shows where in the experience it breaks.
11. **Rate severity.** For each finding, agree how bad it is, considering how often people will hit it, how much it hurts when they do, and whether they can work around it. A simple 0 to 4 scale works (see Variations).
12. **Prioritize and hand off.** Decide what to fix now, and, critically, which findings need real people to confirm. The high-severity findings you are least sure of are the first things to watch for in Think-Aloud Testing.

---

## Facilitation Notes

*Grounded where marked; otherwise `[reconstructed]`.*

- **Initials on every note** (grounded). Lets you count how many reviewers found each issue, and lets you go back and ask a reviewer what they meant.
- **Describe the issue, not the fix** (grounded). "The Save button is below the fold on a laptop screen" is a finding. "Move Save to the top" is a solution, and it closes the conversation before the problem is understood.
- **One heuristic per note** (grounded). Forces the reviewer to name *why* it is a problem. If an issue fits two heuristics, pick the stronger one. Arguing about which heuristic is less important than capturing the issue. `[reconstructed]`
- **Reviewers don't need a note for every heuristic** (grounded). Silence on a heuristic is fine.
- **Review individually before discussing.** `[reconstructed, grounded in Nielsen]` Reviewers who talk during the review converge on each other's findings and the total drops.
- **Watch for opinions dressed as heuristics.** "I don't like the colour" is taste. "The red text reads as an error message but it's a confirmation" is Consistency or Feedback. Push reviewers to say what a person would experience. `[reconstructed]`
- **Say out loud what this is not.** Close the session by naming which findings need confirming with real people. Otherwise the team leaves believing they tested the design. `[reconstructed, Diamonds positioning]`

---

## Variations

### Severity rating
*Grounded, Nielsen (1994).* Rate each pooled finding 0 to 4: 0 not a problem; 1 cosmetic, fix if time allows; 2 minor, low priority; 3 major, important to fix; 4 catastrophe, fix before release. Consider frequency, impact, and persistence. Ratings are more reliable when several reviewers rate independently and you average.

### Authored heuristics
*Grounded in What Could Be client kits.* When the subject is not an interface, the team writes its own heuristics first, then applies them.
- **Draft 4 to 6** short rules of thumb that define what good looks like. Start from a shared definition of success in the domain.
- **Each heuristic has:** a short name in Verb + Outcome style (e.g. "Builds Autonomy"), a plain-language guiding question, 2 to 3 sentences on why it matters, and 3 to 5 "look-fors" (what good looks like in practice).
- **Heuristics are not a rubric.** They are mental shortcuts: easier to recall, less precise. Keep them that way.
- **Test the heuristics on a real example** before relying on them. Walk an actual experience through them and discuss where it is strong, where it falls short, and where the opportunities are.

### Scored self-assessment
*Grounded in a What Could Be client kit.* A person evaluates their own work against a short heuristic set before submitting it for review. Each heuristic gets green (clearly meets), yellow (partially, needs work), or red (missing). Only greens count toward readiness. The person revises the reds and yellows and re-scores. Useful for proposals, submissions, and briefs. Note that self-assessment carries the designer's blind spot; pair it with an outside reviewer where possible.

### Solo review
One reviewer, typically when time is short. Grounded research says a single reviewer misses most problems. Say so, and treat the output as a partial list. `[reconstructed framing]`

### AI-assisted review
See `resources/ai-usage.md`.

---

## Outputs

- A pooled, deduplicated list of findings, each tied to a heuristic and a task, with reviewer count
- A severity rating per finding (if used)
- A view of which heuristics the design breaks most, and where in the experience
- A short list of findings to confirm with real people, which becomes the watch-list for Think-Aloud Testing
- For authored heuristics: a reusable, team-owned set of rules of thumb for the domain

---

## Connections

See `resources/recipes.md` for sequencing. In brief: Heuristic Review follows Rough & Ready Prototyping or sits on an existing product; it precedes Think-Aloud Testing; its findings synthesize through Affinity Clustering and prioritize through the Importance/Difficulty Matrix. It is a close neighbour of Critique: Critique gathers open, structured feedback; Heuristic Review audits against named principles.

---

## Upgrade Path

What a practitioner must supply to move this method from `reconstructed` to `field-tested` and then `practitioner-verified`:

1. **A real run, reported back.** Actual timing, how synthesis went, how many findings, what surprised the team. This moves it to `field-tested`.
2. **A real worked example.** A pooled findings board or report from a review (anonymized), to set the quality bar. There is none yet.
3. **The teaching story.** Justin has taught this method. A short teaching session capturing his hook, story, and conviction close would replace the placeholders in `teaching.md`.
4. **The live facilitation moves.** How to handle reviewers who argue over which heuristic applies, who write solutions instead of issues, or who designed the thing and defend it.
5. **Confirmation of the synthesis steps.** Steps 10 to 12 are inferred. A practitioner should confirm or correct them.
