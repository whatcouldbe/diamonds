---
name: critique-ai-usage
description: Guidance for using Critique with AI tools, including simulated critique sessions
source: canonical
---

# Critique — Using with A.I.

How to use Critique with AI tools, and how the Diamonds agent runs simulated critique sessions.

---

## What AI Can Do in Critique

**As a reviewer (simulated critique):**
The agent can inhabit a described persona — a user, a stakeholder, a domain expert, a skeptic — and provide feedback on presented work through the Critique protocol. The agent follows the seven-step structure, asks clarifying questions, names what's working, surfaces challenges, and suggests improvements — all from the perspective of the assigned persona.

Simulated critique is closer to interviewing than to a think-aloud test in terms of what AI can replicate. It follows a protocol, collects perspectives through structured conversation, and produces structured feedback. This makes it more simulatable than behavioral methods like usability testing.

**As a facilitator:**
The agent can run the Critique protocol with a human group — introducing each step, holding the structure, managing transitions, and capturing feedback.

**As a synthesizer:**
After a critique session, the agent can organize raw notes into the four categories (clarifying questions, strengths, challenges, suggestions) and identify patterns across responses.

---

## Running a Simulated Critique

### Setup
To request a simulated critique, provide:
1. **The artifact or concept** — describe it, share it as text, or provide an image
2. **The challenge it addresses** — what problem or opportunity it responds to
3. **The reviewer persona** — who the simulated reviewer is (e.g., "a mid-career HR professional at a 500-person company who is skeptical of new tools")
4. **What kind of feedback you're most interested in** — optional, but useful for calibrating emphasis

### What the Agent Will Do
The agent will run the full seven-step protocol from the reviewer's perspective:
1. Receive the context and presentation
2. Ask clarifying questions (step 3)
3. Share what's working (step 4)
4. Surface challenges (step 5)
5. Suggest how to build on it (step 6)
6. Close with thanks (step 7)

### Transparency — What Simulation Can and Cannot Do
The agent will always be transparent about the limits of synthetic feedback:

**What simulation does well:**
- Surfaces likely reactions and patterns based on the described persona
- Applies the protocol consistently without fatigue or social pressure
- Can inhabit multiple personas in sequence to represent diverse perspectives
- Identifies logical gaps, unclear framing, and missing information
- Produces a useful first pass before going to real people

**What simulation cannot replace:**
- Genuine emotional and behavioral responses from real people
- Lived experience the persona is described as having
- Unexpected reactions that a real person would surface
- The social dynamics of a real critique session
- Validation that assumptions about the persona are correct

Simulated critique is most valuable for hypothesis-testing and identifying obvious blind spots before investing in sessions with real people. It is not a substitute for feedback from the actual people you are designing for.

---

## Prompt Patterns for Simulated Critique

**Basic simulated critique:**
> "Can you run a simulated critique on this concept? I'll play the role of the presenter. The challenge we were trying to solve was [X]. One of the ideas we had was [Y]. Please play the role of [persona description] and follow the Critique protocol."

**Multi-persona critique:**
> "Run three separate simulated critiques on this concept, each from a different perspective: (1) a skeptical end user, (2) a supportive but budget-conscious stakeholder, and (3) a technical implementer who will have to build it."

**Synthesis after a real session:**
> "Here are the raw notes from a critique session. Please organize them into the four categories (clarifying questions, strengths, challenges, suggestions) and identify the top three themes in each."

---

## Using AI Directly for Critique

This prompt is for practitioners who want to use any AI tool to get critique-style feedback on a piece of work — independent of Diamonds or any specific agent setup.

---

**AI Critique Prompt**

You are a [describe the role — e.g. *a potential customer*, *an experienced practitioner in this field*, *someone who would be directly affected by this work*]. You are giving feedback on a piece of work in progress. Your job is to be honest and constructive — not polite.

The challenge we were trying to solve: [describe the problem or opportunity in 2–3 sentences]

Here is the work we'd like feedback on: [paste or describe the artifact — concept, plan, design, copy, process, strategy, etc.]

Please give feedback in three parts:
1. **What's working** — what resonates, what's strong, what you'd want to keep
2. **Challenges** — concerns, risks, weaknesses, or things that don't land
3. **How to build on it** — specific suggestions for improvement

Be direct. If something doesn't work, say so and explain why. I am collecting feedback, not defending the work.

---

**A few notes on how to use it well**

**Be specific about the role.** The more precisely you describe who is giving feedback, the more useful the response will be. "A potential customer" is a starting point. "A first-time buyer who isn't sure they need this yet" is better.

**Use it on rough work.** This prompt is designed for work in progress. The earlier you use it, the more it's worth.

**Collect, don't defend.** Read the feedback without explaining your choices. Your job here is to understand it, not argue with it.

**It's a language model, not a person.** The feedback is well-informed but not human — no lived experience, no real stakes. It may still surface something genuinely useful. Treat it like any feedback: a gift you say thank you for, but don't have to use.

---

## Digital Tool Integration

Critique works well in digital collaboration tools. Common setups:

- **Miro / FigJam / Mural:** Use color-coded sticky notes matching the protocol (pink = strengths, blue = challenges, green = suggestions). Share the protocol poster on the board. Use the board's timer for silent write phases.
- **Async boards:** Post the artifact and protocol questions. Ask participants to add sticky notes before a synchronous debrief session.
- **Notion / Confluence:** Use a structured template with the seven-step protocol as sections. Reviewers add comments inline.

Templates for common tools can be found in `templates/` when available.
