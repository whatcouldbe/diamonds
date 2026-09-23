---
name: heuristic-review-ai-usage
description: Using Heuristic Review with AI tools
source: canonical
provenance: reconstructed
---

# Heuristic Review: AI Usage

The three AI patterns below are **grounded**: What Could Be has used them in client heuristic kits. The guardrails are **`[reconstructed]`**: Diamonds positioning, not field-tested.

---

## Where AI helps

### 1. Drafting authored heuristics *(grounded)*
Give the AI the domain's definition of success and ask for 4 to 6 heuristics in a fixed format: a Verb + Outcome name, a plain-language guiding question, 2 to 3 sentences on why it matters, and 3 to 5 look-fors. Written plainly, self-contained, like a guide card.

The client kit's own instruction: use the output as **raw material**. Discuss as a team what feels right, what needs refining, what's missing. The final heuristics should reflect the team's shared perspective, not what the AI produced.

### 2. Generating scenarios to test heuristics *(grounded)*
Before applying new heuristics to real work, ask the AI for a detailed, realistic scenario (a narrative, a persona's reflective account, or several perspectives on the same experience) with successes, struggles, and at least one surprising outcome. Run the heuristics against the scenario to see if they discriminate.

The client kit's own caveat, which Diamonds keeps: *this isn't a replacement for testing real experiences with actual people. It's a fast, low-stakes way to try out your heuristics before you apply them in the field.*

### 3. Scoring against heuristics *(grounded)*
For a scored self-assessment, paste the work and the heuristics and ask the AI to:
1. Ask 2 to 3 clarifying questions first
2. For each heuristic: score it (green / yellow / red), say what's strong, what's weak, and how to strengthen it
3. Give an overall readiness score and priority areas

Compare the AI's scoring with your own. The disagreements are where the learning is.

### 4. Acting as an additional reviewer `[reconstructed]`
Given screenshots, a prototype walkthrough, or a description of a flow, the agent can review against a heuristic set as one reviewer among several. It should work task by task, cite one heuristic per issue, and describe issues rather than fixes, following the same rules as human reviewers.

---

## Where AI must not substitute `[reconstructed]`

- **An AI review is one reviewer, not a panel.** The whole case for 3 to 5 reviewers is that different perspectives find different problems. An agent is one perspective, and not the perspective of the people being designed for.
- **The agent can't use the thing.** Working from screenshots or descriptions, it misses timing, physical context, and anything that only appears in use. Say so in every AI review output.
- **AI-authored heuristics the team didn't argue over aren't the team's heuristics.** The value of authoring is the convergence. Skip it and you have a list, not a shared standard.

---

## Transparency `[reconstructed]`

When the agent runs a heuristic review, every output states:
- That the method is provisional in this library
- That the findings are **predictions of where people will struggle**, not evidence that they do
- Which findings should be confirmed with real people first

Never present an AI heuristic review as validation. It is the fastest way to get a team to believe they've tested something they haven't, which is exactly what Diamonds exists to prevent.
