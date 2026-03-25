---
name: importance-difficulty-matrix-ai-usage
description: Guidance for using the Importance/Difficulty Matrix with AI tools, including facilitation and simulation
source: canonical
---

# Importance / Difficulty Matrix — Using with A.I.

How to use the Importance/Difficulty Matrix with AI tools, and how the Diamonds agent can support or simulate the method.

---

## What AI Can Do in the I/D Matrix

**As a facilitator:**
The agent can run the full I/D Matrix process — framing the purpose, presenting items, facilitating the importance and difficulty ranking conversations, revealing the quadrants, and guiding the sequencing discussion. This works best with a human group engaging with the agent as facilitator.

**As a simulated participant:**
The agent can inhabit a persona (stakeholder, domain expert, implementer, user) and contribute a perspective on importance and difficulty rankings. This is useful for testing how the matrix might play out with different participant compositions before a real session.

**As a pre-session planner:**
The agent can help draft importance and difficulty definitions for a specific context, prepare the item list, and design the session structure before a live session with a human facilitator.

**As a post-session synthesizer:**
After a session, the agent can take raw notes or a description of the matrix output and produce a written summary of the quadrant distribution, the key tensions and disagreements, the suggested road map sequence, and recommended next steps.

---

## Running a Simulated I/D Matrix Session

### Setup
To request a simulated session, provide:
1. **The items to prioritize** — 8–10 items as a list
2. **The context** — what project or challenge these items relate to
3. **Definitions of importance and difficulty** — or ask the agent to draft working definitions based on the context
4. **Participant personas** — optional, but helps the agent simulate realistic discussion

### What the Agent Will Do
The agent will run the process following the progressive disclosure structure:
1. Frame the purpose and confirm items
2. Define importance (propose a definition for your review)
3. Rank items by relative importance — the agent will reason through the ranking and flag where disagreement is likely
4. Define difficulty
5. Rank items by relative difficulty
6. Reveal the quadrants and describe the distribution
7. Propose a sequencing of items into a road map
8. Capture suggested next steps

### Transparency — What Simulation Can and Cannot Do

**What simulation does well:**
- Applies consistent reasoning across all items without fatigue
- Surfaces likely tensions and trade-offs based on the described context
- Produces a draft ranking quickly for teams to react to
- Can represent multiple perspectives in sequence
- Useful for pre-session preparation and post-session documentation

**What simulation cannot replace:**
- Genuine disagreement and negotiation between real stakeholders
- Domain knowledge held by actual participants
- The social dynamics that surface in real prioritization discussions
- Validation that the importance and difficulty definitions are right for the context

Simulated sessions are most valuable as preparation for real sessions, not as replacements. A simulated run can help facilitators anticipate where debate will cluster and prepare facilitation moves in advance.

---

## Prompt Patterns

**Pre-session definition drafting:**
> "I'm about to run an Importance/Difficulty Matrix session with a team working on [context]. We have these items: [list]. Can you draft working definitions of importance and difficulty for this context that I can bring in and refine with the group?"

**Simulated session:**
> "Run a simulated Importance/Difficulty Matrix on these items: [list]. Context: [description]. Use these definitions of importance and difficulty: [definitions]. Walk through the full process and produce a suggested quadrant placement and road map sequence."

**Post-session synthesis:**
> "Here are the results of an I/D Matrix session: [description of where items landed]. Can you summarize the key patterns, flag the most significant tensions, and suggest a sequenced road map starting from the high-importance, low-difficulty quadrant?"

---

## Digital Tool Integration

The I/D Matrix is well-suited to digital collaboration tools. Common setups:

- **Miro / FigJam / Mural:** Use the alignment/distribution function to spread items evenly along each axis after ranking. Keep the quadrant grid on a hidden layer. Use color-coded stickies if pairing with Critique feedback.
- **Async preparation:** Use the board to pre-populate items before the session. Participants can add clarifying comments before the live ranking conversation.
- **Remote sessions:** Works well with breakout groups — split into two groups for parallel ranking, then compare and reconcile.

Templates for common tools can be found in `templates/` when available.
