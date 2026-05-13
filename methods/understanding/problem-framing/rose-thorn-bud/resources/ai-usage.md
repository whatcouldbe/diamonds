---
name: rose-thorn-bud-ai-usage
description: Guidance for using Rose, Thorn, Bud with AI tools, including codification and synthesis support
source: canonical
---

# Rose, Thorn, Bud — Using with A.I.

How to use Rose, Thorn, Bud with AI tools, and how the Diamonds agent supports RTB work.

---

## What AI Can Do in Rose, Thorn, Bud

**As a codifier:**
Given a body of raw research notes, interview transcripts, or observations, the agent can assign each item to a rose, thorn, or bud category and explain the reasoning. This is useful for processing large volumes of data quickly or for getting a first-pass codification before a team reviews and adjusts.

**As a quality checker:**
The agent can review a set of RTB items and flag ones that are too vague to be useful in clustering — items that are a word or two, items that mix multiple observations, or items that read as interpretations rather than observations.

**As a naming variant translator:**
Given RTB output, the agent can reframe items using any of the alternative naming conventions (strength/weakness/opportunity, I like/I wish, warm/cool/feed-forward) if the context calls for different language.

**As a pattern spotter:**
The agent can read a set of RTB items and identify which observations appear across multiple items, where divergence exists (same observation, different colors), and what the overall distribution of colors suggests.

---

## Transparency — What AI Cannot Do Here

**AI cannot observe.**
The most valuable RTB items come from what was actually seen and heard in research or in a workshop. The agent can codify existing notes, but it cannot produce observations it didn't make. RTB output generated entirely by AI — without real research input — is synthetic and should be clearly labeled as such.

**AI codification needs practitioner review.**
Assigning a rose, thorn, or bud requires judgment about how something was intended — the tone of a quote, the context of an observation. AI can make a reasonable first pass, but a practitioner who was in the room should review and adjust before the output is used in clustering.

---

## Prompt Patterns for AI-Assisted RTB

**Codification from raw notes:**
> "Here are raw notes from a [research session / workshop / contextual inquiry] on [topic]. Please assign each item to a rose (positive), thorn (negative), or bud (has potential) based on how it reads. For each item, state the color and a brief reason. Flag any items that are too vague to categorize confidently."

**Quality check on existing RTB items:**
> "Here is a set of Rose, Thorn, Bud items. Please review them and flag: (1) any that are too vague to be useful in a clustering session, (2) any that appear to contain multiple observations that should be split, and (3) any that read as interpretations or analysis rather than direct observations."

**Pattern identification:**
> "Here is a set of RTB items. Please identify: which observations appear most frequently, where the same observation appears in different colors (divergence), and what the overall distribution of roses, thorns, and buds suggests about the situation being reviewed."

**Naming convention translation:**
> "Here are RTB items coded as roses, thorns, and buds. Please reframe them using [strength/weakness/opportunity / I like/I dislike/I wish / warm feedback/cool feedback/feed-forward suggestion] language for a [business / educational / team retrospective] audience."

---

## Digital Tool Integration

Rose, Thorn, Bud works in any digital collaboration tool. Common setups:

- **Miro / FigJam / Mural:** Use sticky notes in pink, blue, and green. No special frame setup needed — a blank area works. The color guide visual (`visuals/rtb-color-guide.png`) can be placed on the board for reference.
- **Async collection:** Share a board with the color guide and ask participants to add their items before a synchronous session. Works well for research codification when team members are reviewing material at different times.
- **Spreadsheet:** For AI-assisted codification, a numbered list or table of raw observations works well as input. The agent can return a table with item, color, and reasoning columns.
