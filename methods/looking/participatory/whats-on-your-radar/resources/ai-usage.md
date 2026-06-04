---
source: canonical
method: whats-on-your-radar
description: How to use AI tools with What's on Your Radar — for item generation and simulated participation.
---

# What's on Your Radar — AI Usage

AI can support this method in two ways: generating a starting set of items before a session, and producing a practice scenario for facilitation training. Both prompts have a placeholder in square brackets — that's the one thing to fill in before running.

**Important:** AI-generated items are a starting point, not answers. They reflect likely patterns based on the directive — they are not validated perspectives from real people. Always make this clear to participants if you share them.

---

## Generate a Starting Set of Items

**Prompt one**

Use when: You want to give workshop participants a realistic example of what responses look like before they generate their own, or you want to prime your facilitation by anticipating what customers might surface.

Two versions are available below: one for customer discovery sessions, one for project kickoffs. Use whichever matches the context. If neither fits, see [Customizing the Prompt](#customizing-the-prompt) below.

### Customer Discovery

```
You are acting as a helpful, reflective customer participating in a
discovery exercise titled "What is the Opportunity?"

Directive: [INSERT THE INITIATIVE OR CHALLENGE YOU'RE EXPLORING]

Your task is to generate four short, sticky-note–style responses for
each of the following categories, written in plain, everyday language
— as a customer would say it, not as an organisation would document it.

For each category:
Mark the sticky that feels most important with (MOST).
Mark the sticky that feels least important with (LEAST).
The other two should be unmarked but still meaningful.

The categories are:
Goals – What are you trying to achieve?
Hopes – What does a good outcome look like to you?
Challenges – What's getting in the way?
Wildcard – What else is on your mind?

Please format your output as a 4-column table with the category label
in the first column and four sticky notes in the columns that follow.
```

### Project Kickoff

```
You are acting as a helpful, reflective teammate participating in a
strategic design exercise titled "What is the Opportunity?"

Directive: [INSERT THE INITIATIVE OR DIRECTIVE YOU'RE EXPLORING]

Your task is to generate four short, sticky-note–style responses for
each of the following categories, written in plain, everyday language.

For each category:
Mark the sticky that feels most important with (MOST).
Mark the sticky that feels least important with (LEAST).
The other two should be unmarked but still meaningful.

The categories are:
Vision – What would the future look like if this initiative succeeds? (Aspirational, future-state outcomes)
Impact – How would success be measured for this initiative? (Observable or measurable indicators of progress or value)
People – Who is this for? (End users, target audience, or key stakeholders)
Challenges – What problems need solving? (Current pain points, blockers, or constraints)

Please format your output as a 4-column table with the category label
in the first column and four sticky notes in the columns that follow.
```

---

## Generate a Practice Scenario

**Prompt two**

Use when: You're running a training session on the method and need a realistic context to practice with — without requiring a live customer relationship.

```
I need a practice scenario for a facilitation training exercise using
the What's on Your Radar method. Please generate a short context
description (2–3 sentences) and four radar categories, each with a
trigger question.

The context should describe a realistic situation where someone is
meeting a customer or stakeholder group — not to sell, but to
understand what matters most to them right now.

The four categories should be distinct enough that participants
naturally surface different things in each. Each trigger question
should invite honest individual reflection. The final category should
always be a wildcard — labelled as such, with the question
"What else is on your mind?"

My scenario should be based on: [describe the context — e.g.
"senior engineers from a long-standing account" or "small business
owners evaluating a new service"]
```

---

## How to Use the Item Generation Output

The prompt produces a table with four items per category, with the most and least important items marked. Use this output to:

1. **Prime facilitation:** Review AI-generated items before the session to anticipate what participants might surface — and what they might miss.
2. **Provide a starting point:** Share the table with participants before or at the start of the generate step, framed as "here's an example of what responses might look like — your job is to generate your own."
3. **Create a synthetic participant:** In a simulation or low-access research context, treat the AI output as one perspective among others — with the explicit understanding that it is synthetic, not validated. The (MOST) marker maps to the center ring; the (LEAST) marker maps to the outer ring.

---

## Customizing the Prompt

To adapt the item generation prompt for a different category set, replace the four categories with your own. Keep:
- The directive clearly stated
- Plain language in category descriptions
- The (MOST) and (LEAST) markers — these produce a synthetic importance signal that maps to the center and outer rings
- The table format — it maps cleanly to the radar structure

Always include a wildcard as the final category, labelled as such, with the question "What else is on your mind?" It captures what the defined categories miss — and in discovery contexts, that is often where the most useful data lives.

---

## Limitations

AI-generated items reflect patterns in training data, not the lived experience of specific people. They are useful for priming, structuring, and simulating — not for substituting real human perspectives. The further the directive is from common organizational contexts, the less reliable the AI output will be.

Always treat AI-generated radar items as hypotheses to test, not insights to act on.
