---
status: active
provenance: practitioner-verified
category: evaluative
phase: looking
tags: [heuristics, heuristic-evaluation, usability, audit, inspection, evaluation, rules-of-thumb, expert-review, design-principles, scorecard]
also-known-as: [heuristic evaluation, heuristic audit, expert review, usability inspection, design principles review]
files:
  - method.md (this file): Core reference: purpose, heuristic sets, steps, scoring, variations, connections
  - mechanics.md: Facilitation cheat sheet
  - teaching.md: Teaching arc content, from the practitioner teaching session
  - resources/: References, recipes, AI usage, FAQ, tips, templates, examples
---

> **Sources and grounding.** This method draws on four sources, and each claim is traceable to one of them:
> - **Practitioner teaching session** (Justin Knecht, September 2026): the framing, the teaching arc, how to choose a heuristic set, authored heuristics as design principles, the Alternative Worlds source, scoring, and the positioning among evaluative methods.
> - **What Could Be client work**, anonymized: a company-built scorecard and how it was used (see `resources/examples/case-study-company-scorecard.md`), and authored-heuristics kits. Client wording is not reproduced.
> - **LUMA Institute Heuristic Review materials**: the ten heuristics, quick guide, helpful hints, review template, and the Eye-Spy practice activity.
> - **Published research**: Nielsen and Molich, severity ratings, and evaluator counts.
>
> Still `[reconstructed]` and flagged inline: synthesis mechanics for a multi-reviewer session, and timing. See Open Gaps at the end.

# Heuristic Review

An auditing procedure where reviewers walk through an experience, task by task, and evaluate it against a short set of rules of thumb for good design. They note where the design meets each rule and where it falls short, and score the result so the improvement can be measured.

---

## Purpose

Use when you want to evaluate a design (a prototype, a live product, a service, a document, a physical experience) against what you already know good design looks like. It works on something new before you share it with people, and on an existing system you want to make better.

**The core question:** How well does this design follow the rules of good design, and where does it fall short?

**What a heuristic is:** a rule of thumb. A generally accurate guideline drawn from experience of how things work best. Heuristics are shortcuts: easy to recall and apply, less precise than a formal rubric. That trade is the point. Anyone on a team can carry ten short rules into a review. The hardest part of the method is knowing the heuristics well enough to see them, which is why reviewers always work with a reference beside them.

**The core belief:** good design can be measured. Some of what makes an experience good is qualitative, but there are ways to turn it into a score, so a team can see the difference in design quality between one version and the next. If you know a design needs certain affordances, why wouldn't you use them as a guide and as a way to evaluate?

**What the method gives you** (LUMA benefits, plus scoring):
- Leverages proven principles of good design
- Helps you identify problems quickly
- Yields data when you don't have access to users
- Shows opportunities for improvement
- Gives a score you can re-measure after changes

### Where it sits among evaluative methods

Heuristic Review is one of several evaluative research methods, alongside Think-Aloud Testing, Critique, and the System Usability Scale. **They are not ranked.** Each evaluates for a different reason, and a good looking practice draws on whichever fits the moment, and ideally combines them.

- **Heuristic Review** evaluates a design against known principles of good design. Its particular strength is that it works **without access to users**.
- **Think-Aloud Testing** watches real people attempt real tasks. It finds things that never trace back to a heuristic: what gets in the way of a particular person, in a particular context, trying to get something done.
- **Critique** gathers structured feedback from reviewers, who can include users and customers as well as internal people.
- **System Usability Scale** measures how usable people *feel* something is.

They strengthen each other. A Think-Aloud Test run after a Heuristic Review is likely to be more productive, because the obvious issues are already fixed and participants' time goes on what only they can reveal.

**What to be honest about.** A heuristic score measures design quality against principles. It is not a measure of whether the design works for the specific people it's for, because nobody used it to produce the score. When you have the time and access to users, test with them too. When you don't, a Heuristic Review is far better than evaluating nothing. The most important thing is that designs get evaluated.

---

## The Heuristics

### Lineage

Jakob Nielsen published the most famous set, the ten usability heuristics (Nielsen and Molich 1990, refined 1994). LUMA Institute adapted Nielsen's ten into its own ten, broadened to apply to "a product, service, presentation, or policy." Teams and companies also write their own, either for a specific project or as a company standard.

### Choosing a set

*Practitioner.* Every review starts by naming the set, because every reviewer must use the same one. Choose in this order:

1. **The team's or client's own set.** If the project or company has authored design principles or a house scorecard, use it. Company-specific sets live in that company's own deployment (its fork or `diamonds-vault/`), not in this engine.
2. **LUMA's ten**, for people who already work with LUMA methods. This is What Could Be's default.
3. **Nielsen's ten** otherwise. They are the standard and the most widely recognized.

When teaching or facilitating, say which set is in use before anything else. When coaching someone who has no set, recommend Nielsen's ten, or LUMA's if they already use LUMA methods. Writing a new set is its own piece of work; see Authored Heuristics below.

### Nielsen's ten (general default)

*Grounded. Names from Nielsen (1994, updated 2020); descriptions paraphrased.*

| Heuristic | What to look for |
|---|---|
| **Visibility of system status** | People are kept informed about what's going on, with timely feedback. |
| **Match between system and the real world** | Uses the person's words and concepts, and follows real-world conventions. |
| **User control and freedom** | Clear ways out of unwanted states: undo, redo, cancel. |
| **Consistency and standards** | The same words and actions mean the same thing everywhere; platform conventions are followed. |
| **Error prevention** | Error-prone conditions are removed, or people confirm before committing. |
| **Recognition rather than recall** | Options and information are visible when needed, not held in memory. |
| **Flexibility and efficiency of use** | Shortcuts for experienced people without getting in the way of new ones. |
| **Aesthetic and minimalist design** | No irrelevant or rarely needed information competing for attention. |
| **Help users recognize, diagnose, and recover from errors** | Error messages in plain language that say what went wrong and how to fix it. |
| **Help and documentation** | Help is easy to find, focused on the task, and concrete. |

### The LUMA ten (What Could Be default)

*Grounded. Names and principles from LUMA Institute; descriptions paraphrased.*

| Short name | Principle | What to look for |
|---|---|---|
| **Match** | Match the mental model | Works the way people already understand the world. If a convention is broken, the result must be clearly better. |
| **Complexity** | Minimize perceived complexity | Self-evident. Progressive disclosure, clear hierarchy. No relying on instructions. |
| **Consistency** | Use consistent form, words, and actions | Things that are the same look and behave the same everywhere. |
| **Place** | Provide a sense of place | People know where they are, where they can go, how to get back. |
| **Constraints** | Account for user and environmental constraints | Fits the context of use and the range of people's abilities. |
| **Anticipate** | Anticipate needs | The right tools and information at the right moment. Doesn't rely on memory. |
| **Language** | Use clear and concise language | Plain words from the person's world. No jargon. |
| **Feedback** | Give feedback about actions and status | People can see what their action did and where a process stands. |
| **Errors** | Prevent errors and provide graceful recovery | Prevent first; when errors happen, explain and help recover. |
| **Aesthetics** | Strive for appropriate and minimal aesthetics | Every element earns its place. Form reinforces function. |

### Company scorecards

A company can turn a set into its own standard: rewrite each heuristic as a plain-language outcome its experiences should deliver, and score against it. See the anonymized case study in `resources/examples/case-study-company-scorecard.md`, and `resources/templates/scorecard-template.md` to build one.

---

## Authored Heuristics: Design Principles for a Project

*Grounded, practitioner teaching session and What Could Be client kits.*

Published heuristics describe what is objectively good in experience design. But a project often needs its own definition of good: principles that mirror the design values of that specific work, so the team can evaluate against them.

**Example.** On one project, a design principle was **"less but better"** (a phrase from Dieter Rams). You could argue it's just the simplicity heuristic. But written as the project's own principle, it had teeth: it forced the team to remove things.

**Heuristics are not values.** Team principles and brand values describe how people behave. They guide how you act. A heuristic is **evaluative**: something you hold a design up against to judge whether it's good. The two are closely related and easily confused. When authoring, check each principle: *could we look at a design and say whether it meets this?* If not, it's a value, not a heuristic.

**Where authored heuristics come from.** Principles can be drawn from other methods. One rich source is **Alternative Worlds**, where a team studies analogous systems to borrow their best practices. On a transportation system redesign (fundamentally, getting things from A to B), the team studied network packets, communicable diseases, logistics, and electrical transmission. One candidate principle that emerged: as you approach the urban core, use transfer stations that hand off to different modes for the last mile. Electricity makes the same shift from long-distance transmission to local distribution, and logistics does too (plane to truck to conveyor or robot). *(The practitioner's recollection; the exact source analogy for this finding is uncertain.)*

**How to write them** (grounded, client kits): 4 to 6 heuristics, each with a short Verb + Outcome name, a guiding question, 2 to 3 sentences on why it matters, and 3 to 5 look-fors. Test them on a real example before relying on them. See `resources/templates/authoring-heuristics.md`.

---

## Setup

### When in the process
- **Building something new:** evaluate against the rules of good design before sharing it with people.
- **Improving an existing system:** find where it falls short, prioritize fixes, and measure the improvement.
- **When you don't have access to users.**

### Participants
- **Reviewers with multiple perspectives** (grounded, LUMA). Different backgrounds catch different problems.
- **3 to 5 reviewers** find the most (grounded, published research). One reviewer finds roughly a third of the problems; five find roughly three-quarters. A single reviewer is still useful; just know the list is partial.
- Reviewers need to know the heuristics well. Knowing them is the hardest part, so give everyone the reference and a chance to practice first (Eye-Spy, see `teaching.md`).

### Materials
- The subject of the review, in a state where key tasks can be performed
- The heuristics reference, beside every reviewer
- A small number of key tasks (the LUMA template uses three)
- A board (physical or virtual) with a place for each screen or task; sticky notes tagged with a heuristic
- A scorecard for the chosen set (see `resources/templates/scorecard-template.md`)

### Time
`[reconstructed]` No timing is given in the source materials. A plausible default for a team review of a modest prototype: 10 minutes to familiarize, 10 to 15 minutes per task, 30 to 45 minutes to pool and score. Roughly 90 minutes for three tasks.

---

## Steps

### Prepare *(grounded, LUMA)*
1. **Identify the subject of your review.**
2. **Form a team of reviewers with multiple perspectives.**
3. **Choose the heuristic set and get everyone familiar with it.** Name the set (see Choosing a set), preview it, then practice with Eye-Spy.
4. **Select a small number of key tasks.**

### Review *(grounded, LUMA and practitioner)*
5. **Walk through each task, screen by screen,** with the heuristics in mind. It's like walking a mile in someone's shoes, with rules.
6. **For each observation, tag the heuristic and say whether it's met or not, and why.** On a board: a sticky note tagged with the heuristic, placed on the part of the design it refers to, with a positive or negative comment. For example: *Aesthetics, negative: text contrast is too low, it's hard to read.*
7. **Initial every note.** One issue per note, described clearly enough that someone else could find it.
8. **Don't write solutions yet.** Not every heuristic needs a note.

### Pool and score
9. **Pool and cluster** `[reconstructed]`. Merge duplicates across reviewers; the number of reviewers who found something is signal. Cluster by heuristic to see which principles break most; by task to see where.
10. **Score each heuristic** *(grounded, practitioner and client case study)*: No (0), Somewhat (1), Yes (2). Record the reason and a reference screenshot. With ten heuristics, the total is out of 20.
11. **Rate severity and prioritize** *(grounded, practitioner and Nielsen)*: how severe is each problem? Prioritize fixes by the effect they'll have on the system.
12. **Fix, then re-score** *(grounded, practitioner)*: re-run the review on the next version to measure the improvement.

---

## Facilitation Notes

- **Knowing the heuristics is the hard part** (practitioner). Hand out the reference before anything else, and practice before reviewing real work.
- **Good as well as bad** (practitioner, LUMA Eye-Spy). Note where the design meets a heuristic, not just where it breaks one. It teaches the heuristic and tells the team what to protect.
- **Always say why** (practitioner). A tag without a reason isn't a finding.
- **Initials on every note** (LUMA). You can count agreement and ask a reviewer what they meant.
- **Describe the issue, not the fix** (LUMA).
- **Review individually before discussing** `[reconstructed, grounded in Nielsen]`. Talking during the review makes reviewers converge and the total drops.
- **Watch for taste dressed as a heuristic** `[reconstructed]`. "I don't like the colour" is taste. "The red text reads as an error but it's a confirmation" is Consistency.
- **Name what the score is** `[reconstructed]`. A score measures design quality against principles. When users are within reach, it's worth watching some of them use it too.

---

## Variations

### Expert think-aloud review
*Practitioner's design, not yet run.* A close cousin of Think-Aloud Testing. Instead of a user narrating, an **expert reviewer** narrates: they walk a flow with the heuristics reference beside them and talk through what they see, which heuristic applies, and whether it's met, while recording the screen. A facilitator (a person or the agent) prompts them about specific heuristics on specific screens. Afterward, the transcript is sorted by heuristic, the main issues are highlighted, and the flow is scored. This removes the mechanical overhead of writing, tagging, and placing notes, so the reviewer can focus on reviewing. See `resources/ai-usage.md`.

### Everyday experience review
*Practitioner (a colleague's workshop exercise).* In a workshop or conference, give people the heuristics and send them to review an everyday, non-screen experience, such as the lunch line. Does it anticipate the needs of people with dietary restrictions? Does the order of plates and cutlery match how people expect to move through a line? Playful, and it proves the heuristics apply beyond screens.

### Scored self-assessment
*Grounded, client kit.* A person scores their own work against a short heuristic set (green / yellow / red) before submitting it, revises, and re-scores. Carries the author's blind spot; pair with an outside reviewer where possible.

### Severity rating
*Grounded, Nielsen.* Rate each finding 0 to 4: not a problem, cosmetic, minor, major, catastrophe. Consider frequency, impact, and persistence.

### Alternative scoring scale
*Grounded, client case study.* Score each heuristic −1, 0, or +1 and total. The company in the case study started with this and moved to No / Somewhat / Yes because it reads more naturally.

---

## Outputs

- Findings tied to a heuristic, a screen or task, and a reason, with reviewer count
- A score per heuristic and a total (e.g. 14 / 20 for ten heuristics), with notes and reference screenshots
- A prioritized list of fixes, ordered by effect on the system
- A baseline to re-score against after changes
- For authored heuristics: a reusable, team-owned set of design principles

---

## Connections

See `resources/recipes.md`. In brief: Heuristic Review sits with Think-Aloud Testing, Critique, and the System Usability Scale as complementary evaluative methods. Authored heuristics can be sourced from Alternative Worlds (not yet in this library). Findings synthesize through Affinity Clustering and prioritize through the Importance/Difficulty Matrix.

---

## Open Gaps

Practitioner-verified in September 2026. What would still strengthen it:

1. **A multi-reviewer synthesis, observed.** Steps 9 to 11 for a team session (pooling, deduplicating, agreeing scores) are still inferred.
2. **Real timing.**
3. **The Eye-Spy example set.** The full set of 10 to 12 images and which heuristic each teaches (only one frame was located).
4. **The expert think-aloud review, run.** It's the practitioner's design and hasn't been tried yet.
5. **A public worked example.** A completed review of a public product using Nielsen's or LUMA's ten, to set the quality bar without client material.
