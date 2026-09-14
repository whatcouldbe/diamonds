---
name: abstraction-laddering-ai-usage
description: How to use Abstraction Laddering with AI tools, including the structured WHY/HOW prompt
source: canonical
---

# Abstraction Laddering — AI Usage

How to use AI to support or extend Abstraction Laddering, and what to keep in mind when you do.

---

## The Structured WHY/HOW Prompt

This prompt generates a full abstraction ladder from a directive. Use it to prepare for a session, kickstart a team discussion, or run a solo version of the method.

---

```
You are acting as a helpful, reflective teammate participating in a strategic design exercise titled "Size Up the Challenge."
Your goal is to help explore the directive below through structured WHY and HOW ladders of abstraction.

Directive: [INSERT THE INITIATIVE OR DIRECTIVE YOU'RE EXPLORING]

Part 1: The WHY Ladder
Create a "WHYs" ladder of abstraction.
Start with the directive.
Generate three benefits of tackling this directive. These should be succinct and lean toward unusual or unexpected outcomes.
For each benefit, build two higher levels of abstraction (i.e. reasons why that benefit matters).
Begin each with "So that…" or "In order to…" — mix the phrasing across entries.
Title this section: "'WHYs' for [INSERT DIRECTIVE HERE]"
Present as a table:
3 columns: one for each benefit.
3 rows: Level 1 (bottom) to Level 3 (top), showing increasing abstraction.
Add a left-hand column labeling the levels: Level 1 (bottom), Level 2, Level 3 (top).

Part 2: The HOW Ladder
Create a "HOWs" ladder of abstraction.
Start again with the directive.
Generate three distinct approaches to tackle the directive. Focus on non-obvious or creative ideas.
For each approach, build two more detailed levels beneath it, describing how to carry it out.
Begin each with "Enabled by…" or "By considering…" — mix the phrasing across entries.
Title this section: "'HOWs' for [INSERT DIRECTIVE HERE]"
Present as a table:
3 columns: one for each approach.
3 rows: Level 1 (top) to Level 3 (bottom), showing increasing detail.
Add a left-hand column labeling the levels: Level 1 (top), Level 2, Level 3 (bottom).

Important Guidelines:
Keep WHYs and HOWs separate:
Use "So that…" / "In order to…" only in the WHYs section.
Use "Enabled by…" / "By considering…" only in the HOWs section.
If the directive is illegal, unethical, or morally questionable, include a clear warning at the start.
```

---

## How to Use the Output

The AI-generated ladder is a starting point, not a finished product. Use it in one of two ways:

**As preparation:** Run the prompt before a team session. Review the output and identify the most interesting or unexpected WHYs and HOWs to seed the discussion. This is especially useful when facilitating a group that tends to anchor quickly — having provocative framings ready helps you push past the obvious.

**As a discussion artifact:** Share the output directly with the team at the start of the session. Use it as a first draft of the ladder rather than having everyone generate from scratch. Ask: "What resonates? What's missing? What would you add or change?" This approach trades individual generation for a faster start — use it when time is short or when the team needs a concrete anchor to react to.

**As a solo tool:** Use the prompt to think through a directive you're responsible for — a brief you're preparing, a pitch you're developing, a project you're kicking off. The AI output helps you see the full landscape of goals and approaches before you commit to a framing.

---

## Synthesising an Existing Ladder

The prompt above *generates* a ladder from a directive. The opposite — being handed a ladder that already exists and making sense of it — is just as common, and a distinct AI use. A populated, multi-contributor board (often exported to a PDF or image) where generation happened but the decision never did is raw material, not a result. Synthesising it turns a wall of stickies into a decision the team can actually make.

This is not a new set of moves. It is the method's own facilitation notes run as one deliberate pass — follow them in order, and lean on the sections named rather than re-deriving them:

1. **Transcribe verbatim.** Read every sticky exactly as written, with its author, and reconcile the count against the source's own totals before going further — a synthesis built on a miscount is worse than none. Never paraphrase: the team's words are the evidence every later claim traces back to.

2. **Cluster by shared meaning, and label with discipline.** This is affinity clustering inside the ladder (method.md → *You're Doing Affinity Clustering — Borrow Its Discipline*). Non-negotiable: each cluster title is a **verb-led insight sentence — one idea, every claim traceable to a sticky beneath it** — never a one-word category ("Support," "Format"). A terse category label is the single most common failure of an AI synthesis; it hides the very insight the clustering exists to surface (Affinity Clustering → *Label the Clusters*; method.md → *The Title Isn't Finished Until Its Owner Can Explain It*).

3. **Band by altitude.** Separate the WHY clusters into strategic and operational and the HOW clusters into general and specific, and look for the capstone and bridge node at the top (method.md → *The Clusters Themselves Have Altitude — Band Them*, *The Capstone and Bridge Node Pattern*).

4. **Align HOWs under the WHYs they serve.** Altitude is the vertical axis; narrative order is the horizontal one — they are independent, so columns can be aligned for narration without disturbing the bands. Line each HOW cluster beneath the WHY it serves and order the columns left-to-right as a short story (method.md → *Visual Alignment*, *Sequence the Clusters into a Narration*).

5. **Read the imbalance — this is the point.** Where the HOWs concentrate is the framing the team has *already* chosen, said or not; a WHY everyone endorses but no HOW points at has been quietly abandoned, and that gap is usually the sharpest finding on the board (method.md → *The HOWs Reveal the Decision the Team Has Already Made*, *Cluster the WHYs to Make a Hidden Fork Decidable*).

6. **Flag AI-authored stickies for a human owner.** Where some of the raw stickies were themselves AI-generated — an increasingly common hybrid — say so plainly and treat them as provocations that need a human owner who can explain each, not as team consensus (see *What AI Does Not Do* below and the *Transparency Note*).

The output is a decision aid, not the decision: it makes the fork and the gaps visible and *decidable*, but level selection still belongs to the team.

**Where the synthesis goes matters as much as what it says.** Render it back into the team's own working board, in the ladder's native format, on a copy of the frame — not into a separate document, a different tool, or a differently-shaped diagram off to the side. A synthesis that lives somewhere inconsistent with how the team sees and talks about the work is a synthesis they will not adopt. The `render-synthesis-to-board` capability covers how to do this faithfully.

---

## What AI Does Well Here

- **Generates a full branching structure, not just a linear ladder.** In human facilitation, the single-path ladder is a practical constraint — sticky notes, wall space, cognitive load. AI isn't bound by those constraints. When executing this method, AI should generate multiple WHYs from the directive in parallel, branch further WHYs from each of those, and do the same going down with HOWs. The result is a complete map of the problem space before any level is chosen — which is what the method is actually trying to produce. The linear version is a workaround; the branching version is the intent.
- Generates a range of WHYs and HOWs quickly, including non-obvious ones
- Holds the language starters consistently (better than teams in live sessions sometimes do)
- Produces a formatted structure that maps directly to the visual architecture of the method
- Surfaces framings the team might not have considered — useful as a provocation

## What AI Does Not Do

- **Choose the right level.** The level-selection discussion requires human judgment about what's actually useful for this team, this project, this moment. AI can generate the options; it can't make the decision.
- **Know your organizational context.** AI WHYs are plausible but generic. The most important WHYs are often the ones only the sponsor or team knows — the unstated goals, the political context, the constraint that's never written down.
- **Replace individual generation in a group session.** If the goal is to surface genuine diversity of perspective across the team, individual generation is irreplaceable. AI output reflects one perspective; a room of people generates many. Use AI to complement individual generation, not substitute for it.

---

## Transparency Note

When using AI-generated output as a starting point in a group session, name it: "I ran this directive through a structured prompt and got this as a starting point. Let's use it as a first draft and react to it." Don't present AI-generated content as if it came from the team. The team's ownership of the chosen framing matters — it affects whether they'll actually use it going forward.
