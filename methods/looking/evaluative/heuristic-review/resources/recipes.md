---
name: heuristic-review-recipes
description: How Heuristic Review sequences with other methods in the Diamonds library
source: canonical
provenance: reconstructed
---

# Heuristic Review: Recipes

How Heuristic Review combines with other methods. Sequencing drives when the agent surfaces a method, so this file carries the positioning.

---

## What it is (so the agent knows when to reach for it)

Heuristic Review is a **cheap filter before real-user validation**. Reach for it when a team has something concrete and is about to put it in front of people, or when a team wants to audit an existing product and doesn't know where to point testing first.

It is **never the answer** to "What can we build to test whether our solution works for people?" It makes that test more efficient. It does not replace it.

---

## The Core Recipe: Clear the Path, Then Watch People Walk It

```
Rough & Ready Prototyping → build something concrete
    ↓
Heuristic Review → 3–5 reviewers, find the predictable problems
    ↓
Fix the obvious ones
    ↓
Think-Aloud Testing → real people; watch especially for the high-severity findings you were unsure of
    ↓
Iterate
```

Why this order: Think-Aloud Testing sessions are expensive in real people's time. If participants spend their session tripping over a broken label the team could have spotted, the session doesn't reach the deeper problems only they can reveal.

---

## Recipe: Audit an Existing Product

When a team has a live product or service and a vague sense that "it could be better":

```
Heuristic Review → where does it break the rules, and in which tasks?
    ↓
Affinity Clustering → cluster findings by heuristic and by task
    ↓
Importance/Difficulty Matrix → prioritize what to fix and what to test
    ↓
Think-Aloud Testing → confirm the high-importance findings with real users
```

---

## Recipe: Authored Heuristics for a Non-Interface Domain

When the thing being evaluated is a learning experience, program, policy, or submission:

```
Shared definition of success (what does good look like here?)
    ↓
Author 4–6 heuristics → Verb + Outcome name, guiding question, why it matters, look-fors
    ↓
Test the heuristics on a real example → refine
    ↓
Apply them → Heuristic Review or scored self-assessment
    ↓
Confirm with the people served → Interviewing or Think-Aloud Testing
```

Authoring heuristics is itself a convergence exercise. Teams often discover they didn't agree on what "good" meant until they had to write it down.

---

## Recipe: Pair with Critique

Heuristic Review and Critique are both evaluative, both use reviewers, and both happen without end users. They answer different questions:
- **Critique:** what's working, what's not, and how might we make it better? Open-ended.
- **Heuristic Review:** where does this break known principles? Structured by named rules.

Run Heuristic Review first to catch principle violations, then Critique to surface the concerns no heuristic covers (strategy, fit, ambition).

---

## Coaching Note

If a team reports "we did a heuristic review and it came out clean, so we're ready to launch," name the gap directly: *"That tells us it follows good design principles. It doesn't tell us it works for the people it's for. Who have you watched use it?"* A clean Heuristic Review is a reason to test with confidence, not a reason to skip testing.
