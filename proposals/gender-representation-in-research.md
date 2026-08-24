# Proposal: representativeness as a validation concern

**Status:** Draft for review · **Spark:** *Invisible Women*, Caroline Criado Perez · **Scope:** small, additive edits

## The gap

Diamonds gates hard on whether you talked to **real** people, but never on **whose** reality you captured. A research sample skewed by who was easiest to reach — one gender, one age, one context — can pass every gate and still miss half the people the work is meant to serve. Criado Perez calls this the **data gap**: the easiest-to-study become the people the thing is built for, and nobody checks the difference. It's rarely malice; it's an unexamined assumption — exactly what Diamonds exists to catch, and currently doesn't.

## Why it's not hypothetical

Two products shipping right now, both from teams that didn't game-plan how their tech would land for women:

- **Meta's smart glasses.** An analysis of public Instagram videos found men using them to covertly film and pursue women in public, then posting the footage with the woman's handle or workplace attached. The only safeguard is a small "recording" light — which users promptly learned to disable. The design never asked what the product enables for someone unlike its designers.
- **Flock license-plate readers.** Built to track criminals; the *Washington Post* found at least 50 officers charged or accused of using them to stalk women — including one checking whether his ex had visited an abortion clinic. 85% of searches carried a one-word justification; under 3% were tied to an actual case. The misuse was foreseeable and unguarded.

The instructive contrast is the VR game **QuiVr** (from the book): a woman was groped in multiplayer, and the all-male team was horrified — they'd "overlooked something so obvious." They fixed it in days. The lesson isn't that they were careless; it's that *a team can't test its way out of a harm no one in the room ever had to imagine.* That's a gap on the design side, not just the research side — which is why the edits below touch both.

## What I found in the repo

1. **The concept is absent.** No representativeness, sex-disaggregated data, or data-gap idea anywhere.
2. **"Diversity" always means diversity of *perspective in the room*** — the anti-groupthink case for generating individually. Never demographic coverage of the people being designed for.
3. **The gates test *realness*, not *representativeness*.** Recruiting optimizes for proximity to the target user; Q3 passes at "validated with real people." Nothing asks whether those people span who you're designing for.

## A note on framing

The proposed language **doesn't name the book, use "DEI" framing, or set quotas.** The Key Questions are deliberately tool- and ideology-agnostic, so this belongs there as native craft — *"is your sample actually the range you claim?"* — not a mandate grafted on. Framed as craft, it's a forcing function everyone applies; framed as values, it's something people agree with and skip. The book earns its place in *this* doc, not the engine text.

---

## Proposed edits

Two tiers, plus one optional. Each edit is independent — accept, reject, or reword per item.

### Tier 1 — the recruiting touchpoints (minimal, highest-leverage)

**Edit 1 — Interviewing → "Who to interview"** · `methods/looking/ethnographic/interviewing/method.md` (~L62)
Add a bullet:
> - **Check your sample against who you're actually designing for.** If your product serves a broad population but your interviewees skew one way — one gender, one age band, one context — you haven't covered the range, you've covered the reachable slice of it. The easy-to-reach are easy for a reason, and it often correlates with who ends up left out. Name who you're designing for, then look at your list and ask who's missing.

**Edit 2 — Think-Aloud Testing → participant spectrum** · `methods/looking/evaluative/think-aloud-testing/resources/tips.md` (~L30)
Add a tip:
> **Six of the same person isn't six people.**
> The spectrum from "warm body" to "specific user" is one axis; coverage is the other. Six respondents who all match the persona but share the same gender, age, or context give you the patterns for *that* slice and hide the rest — and the confusions you don't see are the ones your unrepresented users hit hardest. When your real users span a range, let your handful span it too. If a screener is finding your target user, let it spread the handful across the range, not converge on one corner.

### Tier 2 — the gate and the principle (makes it structural, not just advice)

**Edit 3 — Q3 discovery gate** · `navigation/key-questions.md` (~L96)
Extend "Can you move on?":
> …validated what matters to them — and when the people you learned from represent the range you're designing for, not just the slice that was easiest to reach. Not when you think you know - when you've validated with real people, and you can say whose reality you captured and whose you didn't.

Add to "Questions leaders can ask to validate":
> - Whose needs did we validate — and who did we not hear from?

**Edit 4 — Foundation: the Central Principle** · `foundation/hcd-philosophy.md` (~L43)
Add after the three validation bullets:
> **Real people — and the right range of them.** "Validated with real people" carries a quiet condition: with people who represent who you're designing for. A sample skewed by who was easiest to reach — one gender, one context, one demographic — can pass every gate while missing the people it's meant to serve. Realness is what makes research more than opinion; representativeness is what makes it count.

### Optional — the harm the room can't see (from the glasses / ALPR cases)

**Edit 5 — Critique → add a lens** · `methods/looking/evaluative/critique/method.md`
Critique already exists to "surface blind spots the team can't see from inside the work." Add one prompt:
> **Who could this fail, or harm, that isn't in the room?** Ask it of anyone unlike the team — a different gender, body, or context. Some failures aren't usability problems; they're what the product enables against someone. A homogeneous team can't test its way out of a harm no one there ever had to imagine — so name it deliberately.

---

## What I deliberately did *not* propose

- **No quotas or demographic checklists.** The check is "does your sample match your stated users?" — proportional to the project.
- **No new method or session.** Small insertions into files that already exist.
- **No rewrite of "diversity of perspective."** It's correct as-is and about a different thing; conflating them weakens both.
- **No persona-synthesis edit yet.** Persona Development isn't built out; the note belongs there when it is.

## Open questions

1. **How far — Tier 1, +Tier 2, +Edit 5?** Tier 1 is uncontroversial. Tier 2 changes a gate. Edit 5 widens the idea from sampling to harm-anticipation.
2. **Voice check** — does the language read as native Diamonds?
3. **Is `proposals/` the right home,** or is there a convention I should follow?

If the direction lands, I'll turn the accepted edits into a second commit on this branch so the PR carries both the rationale and the change.
