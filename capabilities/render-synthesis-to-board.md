# Render Synthesis to Board — Capability Instructions

*Layer 1 — model-agnostic. Any sufficiently capable model can follow these instructions.*
*Platform-specific mechanics (a particular board's API or MCP, its placement quirks) are Layer 2 wiring and live outside the source — see Design Principle 7. Keep this file board-agnostic.*

---

## What This Capability Does

Renders a synthesised output — a clustered abstraction ladder, an affinity map, any grouped-sticky artefact — back onto the team's own collaboration board (Miro, FigJam, a photographed physical wall) so it sits inside how the team already sees and talks about the work.

The principle behind it: **a synthesis is only useful if the team adopts it, and a team adopts what looks like their own board — not a foreign artefact.** A brilliant clustering rebuilt as a tidy document in a different tool, or parked in an unrelated corner of the canvas in a shape of its own, is quietly discarded: it doesn't match the shared picture, so it never becomes the shared picture. Rendering it in place, in the native format, is what makes the thinking land. (This is the mistake worth naming: the value is lost not because the synthesis was wrong, but because it was put somewhere inconsistent with how the team understands and communicates the work.)

---

## When to Use

- You have synthesised raw board material — clustered, labelled, banded — and need to put the result where the team will actually use it.
- The source lives on a shared board the team already works in.

Do not invent a new visual language. Match the board's existing grammar (the ladder's Why-up / How-down, the affinity map's columns), never one of your own.

---

## The Principles

### 1. Render in the working board, in its native format
Build the synthesis inside the same board and the same shape the team generated it in — not in a separate document, a separate tool, or a distant frame. The format *is* part of how the team understands the work; change the format and you change the meaning, and you break adoption.

### 2. Build on a copy — never overwrite the raw
Work on a copy of the frame, or a clearly separate adjacent space in the same format, leaving the original raw stickies untouched. The raw generation is evidence; the synthesis is an interpretation laid over it. Both must survive, side by side, so anyone can check the interpretation against the source.

### 3. Recreate stickies faithfully
When you copy a sticky into the synthesis, reproduce it exactly: the **verbatim text**, the same **colour**, the same **size**, and — where the board tracks it — the **author**. Fidelity is what lets the team trust the synthesis is *their* words rearranged, not yours rewritten. If the copies would otherwise lose authorship, add an author tag so it travels.

### 4. Two independent layout axes — altitude and narrative
- **Altitude is vertical.** Where a cluster sits up or down encodes its level — a ladder's benefit / tactic bands, a hierarchy's abstraction. Set it deliberately and hold it.
- **Narrative is horizontal.** Order and align clusters left-to-right so the row reads as a short story, and so related clusters line up — a tactic directly beneath the benefit it serves.

Because the two axes are independent, you can align columns for narration **without changing any cluster's altitude**. When a request is "make it narrate but don't change the altitude," this is why it is possible: move on X, leave Y alone.

### 5. Labels: verb-led, and readable above the stickies
Every cluster gets an insight-sentence title — verb-led, one idea, every claim traceable to a sticky beneath it (the Affinity Clustering labelling discipline; not a one-word category). Then place it so it is **clearly readable above its stickies, never tucked behind or under them**: give the label enough width that it doesn't wrap down into the notes, and enough vertical gap that it sits clear (stickies created after a label can render in front of it, so overlap hides the title). A label a note is covering is a label no one reads.

---

## Quality Checklist

- [ ] Built on a copy; the raw original is untouched and still visible
- [ ] Rendered in the board's native format, in the working board — not a separate doc or tool
- [ ] Every copied sticky matches its source: verbatim text, colour, size, author preserved
- [ ] Altitude bands intact; narrative columns aligned without disturbing them
- [ ] Every cluster label is a verb-led insight sentence, traceable to its stickies
- [ ] Every label sits readable above its cluster — nothing hidden behind a note
- [ ] Platform-specific placement quirks kept out of this file (they belong in Layer 2)

---

## Reference

| File | Purpose |
|---|---|
| `methods/understanding/problem-framing/abstraction-laddering/resources/ai-usage.md` | The synthesis pass (*Synthesising an Existing Ladder*) that produces what this capability renders |
| `methods/understanding/patterns-and-priorities/affinity-clustering/method.md` | Labelling discipline — Step 8, *Label the Clusters* |
| `design-principles.md` (§7) | Why platform-specific board mechanics stay out of the source |
