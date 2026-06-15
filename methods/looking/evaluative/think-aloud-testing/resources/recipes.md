---
name: think-aloud-testing-recipes
description: How Think-Aloud Testing connects to and sequences with other methods in the Diamonds library
source: canonical
---

# Think-Aloud Testing — Recipes

How Think-Aloud Testing combines with other methods. Recipes describe natural sequences — what typically comes before, what typically follows, and useful combinations for specific situations.

---

## The Core Pair: Build It, Then Test It

Think-aloud testing has a natural companion in **Rough & Ready Prototyping**. One method builds something cheap and rough; the other puts it in front of people and watches them use it. They're typically taught and run together.

```
Rough & Ready Prototyping → build a rough artifact
    ↓
Think-Aloud Testing → watch real people attempt tasks with it
    ↓
Iterate → rebuild based on what broke
    ↓
Think-Aloud Testing again → with the next version
```

---

## The Full Synthesis Pipeline (from a real project)

This is the sequence the "What Could Be" team ran, and the canonical way to carry think-aloud data through to a prioritised backlog:

```
Think-Aloud Testing → recordings + transcripts
    ↓
Rose / Thorn / Bud → codify the experience screen by screen
    ↓
Affinity Clustering → cluster the coded data into themes
    ↓
Prioritise → vote on, or Bullseye-diagram, the cluster headings
    ↓
MoSCoW backlog (Must / Should / Could / Won't) → with owners
    ↓
Next iteration of the prototype
```

The key move is to **prioritise the cluster headings, not the individual observations**. A short session generates a large number of small notes; clustering first turns that volume into a handful of themes you can actually act on. (Bullseye diagramming and MoSCoW are techniques used here but are not yet their own methods in this library.)

---

## Recipe: Test the Thing You Think Is Done

When a team believes a simple thing is "probably close" and is tempted to ship:

```
Near-final artifact (the team thinks it works)
    ↓
Think-Aloud Testing → 6–8 real people, recorded
    ↓
Rose / Thorn / Bud + Affinity Clustering → what actually broke
    ↓
Decision: ship, iterate, or rethink
```

This is the highest-leverage application precisely because it's the one teams skip. The surface positivity of "it looks clean" masks the behavioural failures only narration reveals.

---

## Recipe: Unmoderated Test at Reach

When you need feedback from more people than you can sit with, or across time zones:

```
Write the unmoderated brief (carries safety + anti-silence instruction)
    ↓
Participants record their own screen + voice, in their own time
    ↓
Collect recordings → transcribe
    ↓
Rose / Thorn / Bud + Affinity Clustering
```

Trades real-time nudging for scale. See the unmoderated template in `templates/` and the airline-booking transcript in `examples/`.

---

## Think-Aloud vs. Critique — Which to Reach For

| If you want to know… | Use |
|---|---|
| How people actually *use* the thing — where they get stuck, what they expect | **Think-Aloud Testing** (behavioural) |
| What people *think* of the thing — considered reactions, strengths, concerns | **Critique** (opinion) |

They're complementary. A common pattern: critique a concept to shape it, prototype it, then think-aloud test the prototype to see if the shaping held up in use.

---

## Related Methods

| Method | Relationship |
|---|---|
| **Rough & Ready Prototyping** | The companion. Builds the artifact you test. Taught and run together. |
| **Rose / Thorn / Bud** | The usual scheme for coding think-aloud transcripts — what worked, what didn't, what's an opportunity |
| **Affinity Clustering** | The usual next step after coding — find themes across respondents before prioritising |
| **Critique** | Also evaluative, but solicits opinion rather than observing behaviour. Less behavioural, more simulatable |
| **Interviewing** | Shares a protocol and a person narrating, but is about a person's experience and history rather than a live task |
| **Importance / Difficulty Matrix** | An alternative to Bullseye/MoSCoW for prioritising the clustered themes |
