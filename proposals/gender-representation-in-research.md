# Proposal: representativeness as a validation concern

**Status:** Draft for review · **Spark:** *Invisible Women*, Caroline Criado Perez · **Scope:** small, additive edits to existing files

---

## The one-sentence version

Diamonds gates hard on whether you talked to **real** people, but never on **whose** reality you captured — so a research sample skewed by who was easiest to reach (one gender, one age, one context) can pass every gate cleanly and still miss half the people the work is meant to serve.

## Where this came from

Caroline Criado Perez's *Invisible Women* documents what happens when the "default human" in research and design data is quietly male: products, spaces, and systems that work well for men and fail — sometimes dangerously — for everyone else. The mechanism is rarely malice. It's a **data gap**: the people who were easiest to study became the people the thing was built for, and nobody checked the difference. Her argument isn't only about gender; it's about any group that falls outside the sample and therefore outside the design.

That mechanism is worth taking seriously here specifically because Diamonds exists to catch exactly this kind of unexamined assumption — and right now it doesn't catch this one.

## What I found in the repo

I reviewed the foundation, the Key Questions, the modes, and every built method, focusing on recruiting, sampling, persona synthesis, and what the validation gates actually check. Three things:

1. **The book and its concept are absent.** No mention of representativeness, sex-disaggregated data, or the data-gap idea anywhere.
2. **"Diversity" always means diversity of *perspective in the room*** — the anti-groupthink argument for generating individually before sharing. It never means demographic coverage of the people being designed for.
3. **The gates test *realness*, not *representativeness*.** Recruiting guidance optimizes for proximity to the target user ("closer = better," warm-body-to-specific-user spectrum, 6–8 for saturation). Q3 passes when you've "validated with real people." None of it asks whether those people span who you're designing for.

The net effect: a team can recruit an all-male (or otherwise skewed) cohort, satisfy every checkpoint, and ship. The gap never announces itself — which is precisely why it needs a forcing function rather than good intentions.

## Design choice for the edits

The proposed language below **does not name the book, use "DEI" framing, or introduce quotas.** Two reasons:

- The Key Questions are deliberately tool- and ideology-agnostic. A representativeness check belongs in that register — as native research craft ("is your sample actually the range you claim?"), not as an external mandate grafted on.
- Framing it as craft makes it a *forcing function everyone applies*, which is the whole Diamonds thesis. Framing it as a values statement makes it something people can agree with and still skip.

The book earns its place in *this* document — the rationale — not in the engine text.

---

## Proposed edits

Grouped into two tiers so you can take the minimal version or the fuller one. Each edit is independent — accept, reject, or reword per item.

### Tier 1 — the two recruiting touchpoints (minimal, highest-leverage)

These are where a team decides who they hear from. This is the cheapest place to insert the check and the place it bites hardest.

#### Edit 1 — Interviewing → "Who to interview"

`methods/looking/ethnographic/interviewing/method.md` (~line 62)

**Current:**
> **Who to interview:**
> - Closer to the actual people you're designing for = better insights
> - Include a range of perspectives — not just the easy-to-reach or the most enthusiastic
> - Look for people who represent different contexts, experience levels, or relationships with the problem space
> - After each interview, ask "who else should I talk to?" — let interviewees point you to the next conversation

**Proposed** — add one bullet:
> - **Check your sample against who you're actually designing for.** If your product serves a broad population but your interviewees skew one way — one gender, one age band, one context — you haven't covered the range, you've covered the reachable slice of it. The easy-to-reach are easy for a reason, and the reason often correlates with who ends up left out. Name who you're designing for, then look at your list and ask who's missing.

#### Edit 2 — Think-Aloud Testing → participant spectrum

`methods/looking/evaluative/think-aloud-testing/resources/tips.md` (~line 30, after the existing "spectrum" tip)

**Proposed** — add a new tip block:
> **Six of the same person isn't six people.**
> The spectrum from "warm body" to "specific user" is one axis; coverage is the other. Six respondents who all match the persona but share the same gender, age, or context give you the patterns for *that* slice and hide the rest — and the confusions you don't see are the ones your unrepresented users hit hardest. When your real users span a range, let your handful span it too. If you're using a screener to find the target user, let it spread the handful across the range rather than converge on one corner of it.

### Tier 2 — the gate and the principle (fuller; makes it structural, not just advice)

Tier 1 improves the guidance. Tier 2 makes representativeness something you can *fail a gate on*, which is what actually changes behavior under pressure.

#### Edit 3 — Q3 discovery gate

`navigation/key-questions.md` (~line 96, "Question 3: What are people actually trying to accomplish?")

**Current "Can you move on?":**
> When you've spent time with real customers, observed their actual behavior, and validated what matters to them. Not when you think you know - when you've validated with real people.

**Proposed** — extend it:
> When you've spent time with real customers, observed their actual behavior, and validated what matters to them — and when the people you learned from represent the range you're designing for, not just the slice that was easiest to reach. Not when you think you know - when you've validated with real people, and you can say whose reality you captured and whose you didn't.

**Also proposed** — add one question to the "Questions leaders can ask to validate" list:
> - Whose needs did we validate — and who did we not hear from?

#### Edit 4 — Foundation: the Central Principle

`foundation/hcd-philosophy.md` (~line 43, under "Everything is an assumption until validated with real people")

**Proposed** — add after the three validation bullets:
> **Real people — and the right range of them.** "Validated with real people" carries a quiet condition: with people who represent who you're designing for. A sample skewed by who was easiest to reach — one gender, one context, one demographic — can pass every gate while missing the people it's meant to serve. Realness is what makes research more than opinion; representativeness is what makes it count.

---

## What I deliberately did *not* propose

- **No quotas or mandatory demographic checklists.** The check is "does your sample match your stated users?", which stays proportional to the project — a niche B2B tool has a different range than a consumer app.
- **No new method or session.** This is a set of small insertions into files that already exist, not a new artifact to maintain.
- **No rewrite of "diversity of perspective."** That guidance is correct as-is; it's about workshop dynamics, a genuinely different thing. Conflating the two would weaken both.
- **No persona-synthesis edit yet.** Persona Development is referenced but not yet built out as a method; the representativeness note belongs there when it is, and I've left it for that build rather than force it into a cross-reference now.

## Open questions for you

1. **Tier 1 only, or Tier 1 + Tier 2?** Tier 1 is safe and uncontroversial. Tier 2 changes a gate, which is a bigger call about how prescriptive the framework should be.
2. **Voice check on the proposed language** — does it read as native Diamonds, or does any of it feel like it's wearing a different jacket?
3. **Is `proposals/` the right home** for a doc like this, or do you have a convention for design proposals I should follow instead?

If the direction lands, I'll turn the accepted edits into a second commit on this branch so the PR carries both the rationale and the change.
