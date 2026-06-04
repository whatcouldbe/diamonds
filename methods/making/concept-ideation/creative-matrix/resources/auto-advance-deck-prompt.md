---
name: creative-matrix-auto-advance-deck-prompt
description: Reusable prompt for generating a Creative Matrix auto-advance PowerPoint session deck in Claude.ai. Paste your matrix spec and a reference template, then run.
---

# Creative Matrix — Auto-Advance Deck Prompt

## How to use this

1. Open Claude.ai
2. Attach a reference PowerPoint (a previous auto-advance deck or your design template) so Claude matches the visual style
3. Paste the prompt below, filling in the matrix spec section with your actual topic, challenges, and enablers
4. Claude generates the full 25-slide session deck

---

## The Prompt

```
Please generate a Creative Matrix auto-advance session deck as a PowerPoint file.

Use the attached reference deck as the visual template — match its color scheme, 
typography, and layout conventions exactly.

---

MATRIX SPEC

Topic: [YOUR TOPIC]

Overarching challenge: [YOUR OVERARCHING HMW OR CHALLENGE STATEMENT]

Challenges (columns):
1. [HMW STATEMENT 1]
2. [HMW STATEMENT 2]
3. [HMW STATEMENT 3]
4. [HMW STATEMENT 4]

Enablers (rows):
1. [ENABLER NAME 1]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]

2. [ENABLER NAME 2]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]

3. [ENABLER NAME 3]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]

4. [ENABLER NAME 4]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]
   · [sub-bullet]

---

DECK STRUCTURE

Build exactly 25 slides in this order:

SLIDE 1 — Title
- Large headline: "[Topic]"
- Subhead: "Spark new ideas for…"

SLIDE 2 — Overview
- Topic displayed at top
- Label: "CHALLENGES"
- List all four challenge statements numbered 1–4

SLIDE 3 — Instructions
- Headline: "INSTRUCTIONS"
- Body:
  · You will see 16 mash-ups to help spark new ideas
  · Each mash-up will appear on screen for one minute
  · For each, try to write down at least one idea
  · Remember to work quietly and individually

SLIDE 4 — Ready
- Headline: "Ready to come up with ideas?"
- Body: "For the next 16 minutes, the slides will advance automatically."

---

SLIDES 5–24 — Ideation sprint
Repeat the following 5-slide sequence for each of the 4 challenges:

CHALLENGE INTRO SLIDE (slides 5, 10, 15, 20)
- Display the challenge statement prominently, centred
- Label it "CHALLENGE [1/2/3/4]"

PROGRESSIVE BUILD SLIDES (4 slides per challenge)
Each slide introduces one new enabler card while keeping all previous enabler 
cards visible. The layout adjusts as cards accumulate:
  - 1 card: full width
  - 2 cards: side by side
  - 3 cards: three columns
  - 4 cards: four columns

Each enabler card contains:
  - Enabler name (large, prominent, all caps)
  - "USING…" framing label
  - Sub-bullets (the 4–6 think-about prompts for this enabler)
  - "THINK ABOUT:" label
  - The current challenge statement (repeated on each card so it's always visible)
  - "1 MINUTE" timing indicator

Build sequence per challenge:
  Slide A: Challenge + Enabler 1 only
  Slide B: Challenge + Enabler 1 + Enabler 2 (Enabler 2 is the focus; Enabler 1 remains visible)
  Slide C: Challenge + Enablers 1, 2, 3 (Enabler 3 is the focus)
  Slide D: Challenge + all 4 Enablers (Enabler 4 is the focus)

---

SLIDE 25 — Time's up
- Large text: "Time's up!"
- Optional subtext: "Review what you've written before we share out."

---

TIMING AND AUTO-ADVANCE

Set each of the 16 ideation slides (the enabler build slides — 4 per challenge × 4 
challenges) to auto-advance after exactly 60 seconds.

All other slides (title, overview, instructions, ready, challenge intros, time's up) 
should NOT auto-advance — the facilitator advances them manually.

---

DESIGN NOTES

- The enabler cards are the visual centrepiece of the deck — make them clear and 
  legible at a distance
- The challenge statement should appear on every ideation slide so participants 
  never lose the thread
- "1 MINUTE" should be visually prominent on every ideation slide — it sets 
  the pace
- The progressive build (previous cards remaining visible) is intentional — 
  participants can glance back at intersections they've already worked
- Keep slide backgrounds clean and consistent — participants are writing, not reading
```

---

## Input format reference

When you complete the Activity Guide, your matrix spec (from Step 5) maps directly 
to the matrix spec section above. Copy it across as-is.

## What to provide to Claude.ai

1. This prompt (filled in with your matrix spec)
2. A reference deck — either a previous auto-advance deck or the LUMA example — 
   so Claude matches the visual design
3. If you don't have a reference deck: describe the visual style you want 
   (e.g. "dark background, white text, orange accents, clean sans-serif font")

## Notes on output

- The 25-slide structure and the 60-second auto-advance timing are fixed — 
  do not change these
- The challenge intro slides (5, 10, 15, 20) are manually advanced — 
  this gives the facilitator a natural pause between challenges
- If you want to run a larger matrix (more than 4 challenges or 4 enablers), 
  adjust the slide count proportionally — the structure stays the same, 
  just more repetitions
