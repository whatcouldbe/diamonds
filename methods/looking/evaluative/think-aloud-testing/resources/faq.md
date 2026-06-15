---
name: think-aloud-testing-faq
description: Frequently asked questions about the Think-Aloud Testing method — grows over time
source: canonical
---

# Think-Aloud Testing — FAQ

Questions that come up repeatedly when teams learn or run Think-Aloud Testing for the first time. This file grows over time as new questions surface in practice.

---

**How many people should we test with?**
Roughly six to eight, up to about ten, then the law of diminishing returns sets in — you start hearing the same things. This follows established usability guidance. It isn't a statistically significant sample and doesn't need to be; the goal is enough exposure to real behaviour to see the patterns. A real cohort of eight produced the full worked example in `examples/`.

**Does it have to be a prototype?**
No. It's most often run on a rough prototype — which is why it's usually taught alongside Rough & Ready Prototyping — but it works on anything a person can attempt a task with: an existing experience, or a real, shipping product. If they can try to do something with it, you can run a think-aloud test on it.

**What's the difference between this and Critique?**
Critique solicits structured *opinion* on an artifact — "what do you think of this?" Think-aloud testing observes *behaviour* — "show me you doing this, and talk while you do." Use Critique when you want considered reactions; use think-aloud when you need to see how people actually use the thing. Because it's behavioural, think-aloud surfaces things people would never think to tell you.

**What do I do when the participant goes silent?**
First, prevent it in the setup — say plainly that you want them thinking aloud and that silent clicking is the one thing to avoid. When silence still happens while they're active, re-enter as lightly as possible — *"it looks like you're still engaging, can you tell me what you're thinking right now?"* — then withdraw and go quiet again. Re-enter small, leave again.

**They keep asking me questions. Do I answer?**
No — reflect them back: *"how do you think you should proceed?"* or *"what do you think should be here?"* Each question is data about what's unclear; answering it both loses that data and biases what they do next. If a question genuinely needs answering, defer it to the end of the session.

**Isn't it dishonest to say "I didn't make this" when I did?**
It's a framing move, not a lie you have to defend — and you can say it however sits right with you (*"you can't offend me," "imagine someone else built this"*). The point is to borrow distance so the participant feels free to be brutal. Honesty from them is worth more than your ego, and the distance protects you from getting defensive too.

**Can this be done remotely or asynchronously?**
Yes to both. Moderated-remote runs over a video call with the participant sharing their screen. Unmoderated/asynchronous has the participant record their own screen and voice from a written brief, in their own time. Async trades real-time nudging for reach and speed — so the brief has to carry the reassurance and the anti-silence instruction in writing, because there's no moderator in the room. (The airline-booking transcript in `examples/` is an unmoderated test.)

**Do I need a separate note-taker?**
It helps. The moderator can take notes, but a second observer who only captures lets the moderator give full attention to the participant. Either way, capture two things separately: what the participant did and said, and what the team interprets from it.

**What happens to the recordings afterward?**
They're the raw material for synthesis. Transcribe them, code the experience as Rose/Thorn/Bud screen by screen, affinity-cluster the codes into themes, prioritise the cluster headings (by voting or a Bullseye diagram), and sort into a MoSCoW backlog for the next iteration. See `recipes.md`.

**Can AI run the test for me?**
No — this is one of the least simulatable methods in the library. Its value is a real person genuinely encountering your design for the first time, and AI has no authentic first-encounter confusion to offer. Where AI *is* useful is around the test: helping draft tasks and the protocol, transcribing recordings, and synthesising transcripts into coded themes. See `ai-usage.md`.

**It seems simple and basically done — is it worth testing?**
That's precisely when it's most worth it. "Probably close" is the assumption most likely to ship a flaw. The "What Could Be" team thought their simple assessment was nearly done and tested anyway; eight people revealed a whole layer of problems a satisfaction score would have missed. You test not to confirm you're right but because you always learn something new.
