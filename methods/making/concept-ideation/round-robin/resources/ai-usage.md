---
name: round-robin-ai-usage
description: Guidance for using AI to run or assist with Round Robin. Covers solo execution, one-on-one sessions, and AI-assisted generation at scale.
---

# Round Robin — AI Usage

## When AI Runs All Three Passes

When executing Round Robin solo or on behalf of a team, the agent runs all three passes in sequence on the same set of ideas:

1. **Generate** — produce a set of distinct ideas in response to the prompt. Each idea should be developed enough to be critiqued: named, described, with key elements explained.
2. **Critique** — for each idea, list the specific failure modes. Be honest and specific. Vague critique ("this might not work") produces vague resolution. Name the actual risks.
3. **Resolve** — for each idea, address the critique. Fix the failures, reinforce the weaknesses, develop the promising parts. The resolved idea should be stronger than the original, not a replacement for it.

The output of this sequence is meaningfully different from simply asking for a list of ideas. The failure modes have been surfaced and addressed within the method rather than left for the team to discover later.

## When AI Participates in a Human Session

In a two-person session, the agent can take one role per round:
- **Round 1:** Both generate an idea independently, then share.
- **Round 2:** Each critiques the other's idea.
- **Round 3:** Each resolves the critique on the idea they inherited.

In a larger facilitated session, the agent can:
- Take a participant slot and complete all three passes like any other participant
- Serve as a silent participant whose ideas are added to the rotation (useful for seeding with an unusual or challenging concept)
- Assist the facilitator with timekeeping and round transitions

## Prompting Notes

When running all three passes autonomously, make the separation between rounds explicit. Complete the full generate pass before starting critique. Complete the full critique pass before starting resolve. This mirrors the human mechanic — the passer doesn't know what comes next when they're writing — and produces better output than running all three passes simultaneously on each idea.
