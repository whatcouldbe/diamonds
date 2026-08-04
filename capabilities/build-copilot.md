# Build Co-Pilot — Capability Instructions

*Layer 1 — model-agnostic. Any sufficiently capable model can follow these instructions.*
*Layer 2 wiring (Claude Code skill) lives at `~/.diamonds/model-support/claude/skills/build-copilot.md`*

---

## What This Capability Does

Guides the build of a session co-pilot app — a phone-held facilitation assistant that walks a facilitator through a Diamonds session arc in real time. The output is three artefacts:

1. `session.md` — the session definition (if it doesn't exist yet)
2. `facilitation-system-prompt.md` — the AI facilitation prompt for the live version
3. `copilot.html` — the scripted HTML co-pilot app

These three files together constitute a complete session package and live in `sessions/[session-name]/resources/` within the Diamonds repo.

---

## When to Use

Use this capability when:
- A Diamonds session exists (or needs to be built) and requires a co-pilot app for live facilitation
- Source material is available: a workshop guide, Miro board, facilitation notes, or existing session.md
- The goal is a deployable phone-held app, not a general chatbot

Do not use this capability to build a co-pilot before the session arc is understood. If the session.md doesn't exist, write it first.

---

## The Build Order

Always follow this sequence. Do not skip steps.

### Step 1 — Establish the session arc

Read `sessions/[session-name]/session.md` if it exists. If it doesn't:
- Read all available source material (workshop guide, Miro board, facilitation notes)
- Identify the stages: what happens in order, how long each takes, what the facilitator does vs. what the group does
- Draft the session.md using `sessions/_template.md` as the scaffold
- Get explicit sign-off on the arc before continuing — the co-pilot encodes this arc; changing it later means rebuilding the app

### Step 2 — Identify the content taxonomy for each stage

For every stage in the arc, classify each piece of content as one of three types:

| Type | Label | Rendered as | Rule |
|---|---|---|---|
| Read-aloud text | Tell the group | Green say-block with label | Only use when the facilitator would read this word-for-word to the group |
| Spoken question | Ask the group | Secondary ask-block with label | Only use when the facilitator is asking the group a question — not making a statement |
| Facilitator instruction | (none) | Plain block-text, no label | Use for everything the facilitator does but does not say: actions, logistics, reminders, checklists |

**The hardest design problem is the taxonomy boundary.** When in doubt:
- If it starts with "confirm," "share," "write," "draw," "pick," or "spread" — it's probably a facilitator instruction, not read-aloud
- If it's a checklist ("close with three things...") — it's a facilitator instruction
- If the facilitator would say it to the group but it's a question — it's Ask the group, not Tell the group
- If you're unsure whether something is Tell or Ask — read it aloud. Does it end with a question mark? Ask. Does it feel like a prompt for the group to respond? Ask.

Also identify:
- **Stuck points** — the moments where groups predictably get stuck; each gets a warn-block with a label and a scripted response
- **Advisory notes** — things the facilitator should know but not say; rendered as block-note (italicised, no label)

### Step 3 — Write the facilitation system prompt

The facilitation system prompt is for the live AI version of the co-pilot. It describes the same arc as the HTML but as instructions to an AI, not as UI states.

Follow the format established in `sessions/prioritization/resources/facilitation-system-prompt.md`:
- Two kinds of content: `**Tell the group:**` (followed by exact words in a blockquote) and plain text (for everything else — co-pilot coaching, logistics, questions to ask the co-pilot)
- Short — every response readable aloud in 20 seconds or less
- Process-only — never comment on the content the group is working with
- Include a stuck points section covering the most common failure modes
- Include a quick-tap responses section for the standard buttons (We're ready / We can't agree / What next?)

Before writing, check: does the arc in the system prompt match the arc in the HTML? They must be identical. If they diverge, the HTML is the more-tested version — align the system prompt to it.

### Step 4 — Build the HTML co-pilot

Use `sessions/prioritization/resources/copilot.html` (or its current location in `prioritization-app-poc`) as the template. The shell — CSS, state machine logic, navigation, stuck-point patterns — is identical across all sessions. Only the `STATES` object changes.

For each stage in the arc, write a state object:

```javascript
'state-id': {
  stage: N,
  title: 'Stage Name',
  time: 'X min',
  content: () => `
    <!-- content blocks here -->
  `,
  buttons: [
    { label: 'Button label', style: 'primary|secondary|warn|complete', next: 'next-state-id' }
  ]
}
```

**Content block reference:**

```html
<!-- Facilitator instruction — no label -->
<div class="block-text">Instruction text here.</div>

<!-- Read-aloud — green, "Tell the group" label -->
<div class="cue-block say-block">
  <span class="cue-label">Tell the group</span>
  <div class="cue-text">Exact words to say.</div>
</div>

<!-- Spoken question — secondary colour, "Ask the group" label -->
<div class="cue-block ask-block">
  <span class="cue-label">Ask the group</span>
  <div class="cue-text">Question to ask?</div>
</div>

<!-- Stuck point — warm colour, "Tell the group" or "Ask the group" label -->
<div class="cue-block warn-block">
  <span class="cue-label">Tell the group</span>
  <div class="cue-text">Scripted stuck-point response.</div>
</div>

<!-- Advisory note — italicised, no label -->
<div class="block-note">Note for facilitator only.</div>
```

**State naming convention:** `s[N]-[descriptor]` — e.g., `s1-intro`, `s2-define`, `s3-rank-importance`, `s3-stuck-conflating`. Stuck point states branch off their parent stage.

**Button styles:** `primary` (green, main path), `secondary` (ghost, alternate path), `warn` (soft red, stuck point entry), `complete` (session end).

### Step 5 — Think-aloud test before publishing

Before publishing the artifact, run a think-aloud test. One person plays the facilitator, holds the device, and runs through the full arc stage by stage — narrating what they would say aloud vs. what they would not say.

What to watch for:
- Any "Tell the group" block where the facilitator pauses, edits, or says "I wouldn't actually read this out" — that's a misclassified instruction
- Any facilitator instruction that the facilitator instinctively says aloud — consider whether it should be a Tell the group
- Any stage where the content falls below the fold — critical information that gets missed
- Any moment where the facilitator is confused about what to do next — the instruction is unclear

Fix all issues before publishing. The think-aloud is the quality gate.

### Step 6 — Publish and verify

Publish via Claude Code artifacts. Click through the full arc in the browser after publishing to confirm every state renders correctly — do not assume the publish was clean.

---

## Demo vs Deployed

The published artifact is always demo mode by default — phone frame with drop shadow, suitable for sharing and review.

The deployed version (for actual use on a facilitator's phone) uses the same HTML file with `?mode=demo` removed as the default display. **This distinction is not yet implemented** — it is open build work. Do not deploy to phones until the URL parameter toggle is in place.

---

## Quality Checklist

Before marking a co-pilot complete:

- [ ] Every "Tell the group" block contains text a facilitator would read word-for-word without editing
- [ ] Every "Ask the group" block is a question, not a statement
- [ ] No facilitator action (spread, draw, write, confirm) is labelled Tell the group
- [ ] No checklist or multi-item reminder is labelled Tell the group
- [ ] Stuck points are reachable from the relevant stage and have scripted responses
- [ ] Think-aloud test completed — all issues resolved
- [ ] System prompt and HTML arc are identical
- [ ] Full click-through completed after publishing
- [ ] session.md, facilitation-system-prompt.md, and copilot.html are all committed to `sessions/[session]/resources/`

---

## Reference Files

| File | Purpose |
|---|---|
| `sessions/_template.md` | Scaffold for new session.md |
| `sessions/prioritization/resources/facilitation-system-prompt.md` | Format reference for system prompts |
| `sessions/prioritization/resources/copilot.html` (or prioritization-app-poc) | HTML template — copy the shell, replace STATES |
| `architecture/model-support.md` | Where Layer 2 skill wiring lives |
