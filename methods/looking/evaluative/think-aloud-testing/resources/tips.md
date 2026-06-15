---
name: think-aloud-testing-tips
description: Practitioner tips and facilitation guidance for running Think-Aloud Testing effectively
source: canonical
---

# Think-Aloud Testing — Tips & Advice

Collected practitioner wisdom for running Think-Aloud Testing well. These are the things that trip people up, and the moves that make the difference between rich signal and an awkward demo.

---

## Before the Session

**Test especially when you think you're close.**
The assumption this method interrogates is usually *"we're probably fine."* That's the most dangerous assumption there is, because it's the one that ships things. The "What Could Be" team thought their simple assessment was nearly done; testing it with eight people surfaced invisible links, a confusing "we," and a dead-end ending. You don't test to confirm you're right — you test because you always learn new material.

**Don't over-polish the thing you're testing.**
Rough is fine, and often better. A rough prototype invites honest reactions and keeps the team unattached. You can test mimicked functionality — when the participant hits the edge of what's built, that's where the "what did you expect here?" move earns its keep.

**Write tasks as goals, not feature tours.**
*"Find a relevant flight and book it"* gives you behaviour. *"Have a look at the booking page"* gives you a tour. Frame each task as something to accomplish, and keep it tied to what you're trying to learn.

**Do a dry run.**
Before your first real session, run through the full test with someone — a colleague, a friend, anyone. The dry run does two things: it lets you practise as a moderator (staying quiet, reflecting questions back), and it catches the technical failures that would otherwise derail the real thing (recording not capturing audio, the prototype breaking on the third screen, the link not working). Catching those on a warm body saves you from embarrassing yourself in front of a real participant.

**Give multiple tasks one at a time, with a frame at the start.**
If you have several things you want to test, don't list them all upfront — that overloads people and creates anticipation that biases what they do. Instead, frame it briefly: *"Time permitting, there are four things I'd like to try — let's start with the first one."* Then give only the first task. Once they're done, move to the second. The frame sets expectations without loading them with instructions they can't hold.

**Get as close to the real user as you can — and think about the spectrum.**
Think of participants on a spectrum from "warm body" (someone not on your team) to "very specific user" (someone who matches your target persona exactly). Early on, a warm body catches obvious problems and is better than nothing. As you get closer to launch, a more specific match matters more — because the confusion that matters is the confusion *your actual user* hits. Finding specific users may require a screener: a short set of qualifying questions that filters for the right characteristics. Screening services exist for this, or you can screen informally by asking a few questions before you invite someone.

**Even one test gives you signal.**
If you talk to zero people, you learn nothing. If you talk to one, you've already started learning. The law of diminishing returns applies at the top end (past 6–8 you hear repetition), but there's no floor — a single test in an afternoon exposes things a team couldn't see from the inside. The cost-of-entry is low enough that there's almost never a good reason to skip it entirely.

**Plan for 6–8 people, not 50.**
Roughly six to eight respondents (up to ~10) gets you the patterns; after that you hear the same things. This is about exposure to real behaviour, not a statistically significant sample.

---

## During the Session

**This is a test, not a demonstration — and the trap is yours, not theirs.**
The hardest discipline in the method. When a participant hesitates or asks a question, every instinct says to jump in and explain what the thing does. Don't. The moment you demonstrate, you've stopped testing. Hand over the task and get out of the way.

**Set them at ease, explicitly and out loud.**
*"We're not testing you — there are no wrong answers. I didn't make this, so you can't offend me."* Say it. Borrowing distance from the work — even when it's yours — is what gives people permission to be honest.

**Reflect questions back; don't answer them.**
*"How do you think you should proceed?"* / *"What do you think should be here?"* Every question the participant asks is data about what's unclear. Answering it removes the data and biases what comes next. Defer any genuinely necessary direct answers to the end.

**Win the fight against silence in the setup.**
A participant clicking around in silence is usually one who wasn't set up well. Front-load it: *"I don't want you to silently click around — I really want you to think aloud. We call it a think-aloud test."* When silence still happens, re-enter as small as possible — *"it looks like you're still engaging, can you tell me what you're thinking right now?"* — and then withdraw again. Re-enter small, leave again.

**Record — with permission — so you can actually listen.**
Recording screen and voice is the default. It frees you to attend to the person instead of scribbling, and the recording becomes the transcript you code later. Always ask first.

**Capture behaviour and interpretation separately.**
Write down what they *did and said* in their words, and — kept distinct — what the team *makes of it*. Mixing the two corrupts the raw signal. In the worked example, observer interpretations are initialled so they're never mistaken for the participant's own words.

---

## In an Unmoderated / Asynchronous Test

**The brief has to carry everything you normally say out loud.**
There's no moderator in the room, so the written brief must do the work: the "you can't offend us" reassurance, the "narrate everything" instruction, and — the one async-specific addition — an explicit anti-silence line, because no one is there to nudge. Something like: *"The one way to get this wrong is to go quiet. If you notice you've stopped talking, that's your cue to start again."*

**Give them the practical setup, not just the spirit.**
A quiet place, a screen-and-voice recorder, the task, and a time box. The airline-booking transcript in `examples/` came from a brief that did exactly this.

---

## After the Session

**Transcribe, then codify across the whole experience.**
Pull the transcript and code it screen by screen — Rose / Thorn / Bud is the usual scheme (what worked, what didn't, what's an opportunity). Coding the *entire* journey, not just the headline moments, is what generates the "fantastic amount of data" from a short session.

**Cluster before you prioritise.**
Affinity-cluster the coded data into themes first; then prioritise the *cluster headings* (by voting or a Bullseye), not the individual stickies. Then sort into a MoSCoW backlog. Prioritising raw items instead of themes is how teams drown in a hundred tiny tweaks and miss the pattern.

**Let the team watch.**
The empathy payoff only happens if people actually see real users struggle. A summary deck doesn't move anyone; a clip of someone saying "now what?" at the end of your flow changes the room.
