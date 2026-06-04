---
name: creative-matrix-ai-usage
description: How to use AI with Creative Matrix — generating challenge statements, selecting and customising enablers, and running the matrix autonomously.
---

# Creative Matrix — AI Usage

AI can support this method in five ways: building the full matrix from upstream work, generating challenge statements (columns) for a given topic, selecting and customising enablers (rows), running the matrix autonomously to generate ideas at scale, and running parallel matrices across multiple column types simultaneously.

**Important:** AI-generated ideas are a starting point, not answers. They reflect patterns based on the inputs provided — they are not validated perspectives from real people. Always make this clear when sharing AI output with a team.

---

## Build the Matrix from Upstream Work

The highest-leverage AI use for this method. Given raw upstream work — research notes, insight themes, affinity clusters, a stakeholder map, a journey map — AI constructs the complete matrix: recommends the right column type, generates the column headings, selects the enablers that will create the most productive tension, and populates the sub-bullet "think about" prompts for each enabler in context.

Use this when the team has done upstream research or synthesis and needs to move into ideation, and wants AI to handle the matrix construction rather than doing it manually.

```
I have the following upstream work from a recent research or synthesis activity:

[PASTE RESEARCH NOTES, INSIGHT THEMES, AFFINITY CLUSTERS, STAKEHOLDER MAP, JOURNEY MAP, OR OTHER UPSTREAM OUTPUT]

Topic or challenge: [INSERT THE OVERARCHING TOPIC OR INITIATIVE]
Context: [DESCRIBE THE ORGANISATION, INDUSTRY, AND AUDIENCE — e.g. "a hospital system improving the patient intake experience" or "a SaaS company improving adoption of a new internal analytics tool across finance and operations teams"]

Please:
1. Recommend the most appropriate column type for a Creative Matrix session based on this upstream work — either HMW challenge statements (from research insights), customer segments or stakeholder roles (when distinct groups need different ideas), or experience stages (when the work points to a customer journey). Briefly explain the recommendation.
2. Generate four column headings of the recommended type, grounded in the upstream work provided.
3. Recommend four enablers that will create the most productive tension with these columns, drawing from: Technology & Digital Media, Games & Competitions, People & Partnerships, Events & Programs, Public Policies & Laws, Hotspots & Hangouts, Internal Policies & Procedures, Facilities & Environments, Surprise & Provocation, Lifestyle Tracking, Celebrities & Superstars, Engage All Senses. Briefly explain each choice.
4. For each enabler, provide 4–6 sub-bullet "think about" prompts — specific examples within that category that would spark ideas given this particular context.

Format the output as a ready-to-use matrix specification: overarching challenge, four column headings, four enabler rows with sub-bullets.
```

---

## Generate Challenge Statements (Columns)

Use when you have a topic or directive but haven't yet developed the HMW challenge statements that will become column headings.

**Prompt one — From a topic or goal**

```
I'm designing a Creative Matrix session on the following topic:

Topic: [INSERT TOPIC OR INITIATIVE]

Please generate four How Might We (HMW) challenge statements to use as column headings. Each should:
- Be framed as a specific, actionable opportunity within the topic
- Be distinct from the others — covering different dimensions of the challenge
- Be written in plain language, as a facilitator would present it to a team

Format: a numbered list of four HMW statements.
```

**Prompt two — From research insights**

```
I have the following insights from user or stakeholder research:

[PASTE INSIGHTS, THEMES, OR AFFINITY CLUSTERS]

Please generate four How Might We (HMW) challenge statements that turn these insights into ideation prompts for a Creative Matrix session. Each should:
- Connect clearly to one or more of the insights provided
- Open up a space for solutions rather than prescribing them
- Be written as a facilitator would present it to a team

Format: a numbered list of four HMW statements, each with a one-line explanation of which insight it draws from.
```

---

## Select and Customise Enablers (Rows)

Use when you want help choosing the right enablers for a specific context, or need the sub-bullet "think about" prompts populated for each enabler.

```
I'm running a Creative Matrix session on the following topic, with these challenge statements as columns:

Topic: [INSERT TOPIC]
Challenges:
1. [HMW STATEMENT 1]
2. [HMW STATEMENT 2]
3. [HMW STATEMENT 3]
4. [HMW STATEMENT 4]

Context: [DESCRIBE THE ORGANISATION, INDUSTRY, AUDIENCE, OR STRATEGIC PRIORITIES — e.g. "a healthcare provider focused on patient experience" or "a technology company trying to improve internal tool adoption across engineering and finance teams"]

Please:
1. Recommend four enablers from the following list that would create the most productive tension with these challenges: Technology & Digital Media, Games & Competitions, People & Partnerships, Events & Programs, Public Policies & Laws, Hotspots & Hangouts, Internal Policies & Procedures, Facilities & Environments, Surprise & Provocation, Lifestyle Tracking, Celebrities & Superstars, Engage All Senses.
2. For each recommended enabler, provide 4–6 sub-bullet "think about" prompts — specific examples within that category that would spark ideas in this context.
3. Briefly explain why each enabler would create useful tension for this particular topic and challenge set.
```

---

## Run the Full Matrix Autonomously

Use when you want AI to generate ideas across the entire matrix — at a scale beyond what a human session can cover in the time available. The grid constraint no longer applies; AI can work across any number of intersections.

```
Please run a Creative Matrix ideation session on the following topic.

Topic: [INSERT TOPIC]
Overarching challenge: [INSERT OVERARCHING HMW OR CHALLENGE STATEMENT]

Columns (challenges):
1. [HMW STATEMENT 1]
2. [HMW STATEMENT 2]
3. [HMW STATEMENT 3]
4. [HMW STATEMENT 4]

Rows (enablers):
1. [ENABLER 1] — [sub-bullets or description]
2. [ENABLER 2] — [sub-bullets or description]
3. [ENABLER 3] — [sub-bullets or description]
4. [ENABLER 4] — [sub-bullets or description]

For each intersection of column and row, generate two to three specific, actionable ideas. Write each idea as a short sticky note — enough detail that someone who wasn't in the room could understand it without asking. Favour specific and concrete over vague and general.

Format: a table with columns as column headers and rows as row headers. Each cell contains the ideas for that intersection, separated by line breaks.
```

**Note on scale:** Unlike a human sprint, AI is not constrained by a 5×5 grid or a 10-minute time limit. You can run a larger matrix — more challenges, more enablers — and the output will still be coherent. Consider using the full extended enabler set from `enablers.md` for a comprehensive sweep, then filtering the output to the most promising intersections before sharing with the team.

---

## Run Parallel Matrices

In a human session, you choose one column type — HMW statements, segments, or experience stages — because mixing creates confusion and the 10-minute sprint only has room for one grid. AI has neither of those constraints. You can run all three column types against the same enabler set simultaneously and surface the most generative intersections across the full output.

Use this when you want comprehensive coverage of a topic, or when you're not sure which column type will yield the most interesting ideas and want to let the output tell you.

```
Please run three parallel Creative Matrix sessions on the following topic, each using a different column type, all using the same four enablers.

Topic: [INSERT TOPIC]
Overarching challenge: [INSERT OVERARCHING HMW OR CHALLENGE STATEMENT]
Context: [DESCRIBE THE ORGANISATION, INDUSTRY, AND AUDIENCE]

Enablers (same for all three matrices):
1. [ENABLER 1] — [sub-bullets]
2. [ENABLER 2] — [sub-bullets]
3. [ENABLER 3] — [sub-bullets]
4. [ENABLER 4] — [sub-bullets]

Matrix A — HMW Statements: Generate four How Might We challenge statements from the topic and run the full matrix. Each HMW should address a distinct dimension of the challenge.

Matrix B — Customer Segments or Stakeholder Roles: Identify four meaningful segments or roles relevant to the topic and run the full matrix. Each column should represent a group with distinct needs or perspectives.

Matrix C — Experience Stages: Use the Five E's (Entice, Enter, Engage, Exit, Extend) as the five columns and run the full matrix.

For each intersection in each matrix, generate two specific, sticky-note–style ideas.

After completing all three matrices, identify the five most generative intersections across the full output — the cells that produced the most surprising, concrete, or strategically interesting ideas — and highlight them with a brief explanation of why each stands out.
```

**Note on parallel matrices:** Running three matrices produces a large volume of output. The highlight step at the end is important — it surfaces the signal from the noise and gives a human reviewer a starting point rather than 60+ cells to read. If you want to go deeper on any single matrix, use the standalone "Run the Full Matrix Autonomously" prompt instead.

---

## How to Use the Output

AI-generated matrix output can be used to:

1. **Prime facilitation** — review AI ideas before a human session to anticipate what participants might generate, and to identify intersections likely to yield the most interesting output
2. **Seed the grid** — share selected AI ideas at the start of the session as examples of what responses might look like, framed as "here's a starting point — your job is to react, extend, or go somewhere these didn't"
3. **Extend the sprint** — after a human session, run the same matrix through AI to surface intersections the team didn't reach, or to stress-test whether the team's ideas cover the space
4. **Stand-alone synthesis** — for situations where a full human session isn't possible, AI-generated output can anchor a prioritisation conversation using the same selection methods (individual nomination, dot voting, affinity clustering)

---

## Limitations

AI-generated ideas reflect patterns in training data, not lived experience or organisational context. The more specific the challenge statements and enabler prompts, the more grounded the output. Generic inputs produce generic ideas. The output is most valuable when the matrix has been constructed thoughtfully — good columns and good enablers produce output worth using; a poorly constructed matrix produces output that misses the point.
