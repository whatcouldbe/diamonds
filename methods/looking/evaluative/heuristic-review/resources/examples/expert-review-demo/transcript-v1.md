---
name: heuristic-review-demo-transcript-v1
description: Synthetic transcript of an agent-facilitated expert review of a banking app's add-payee flow, version 1. Input for the worked demo.
source: canonical
provenance: reconstructed
---

# Demo Transcript: Bankeo "Pay Someone New", Version 1

*Synthetic. Written to exercise `../../facilitation-system-prompt.md` end to end, not a record of a real review. Bankeo and the reviewer, Claudia Larmon, are fictional placeholders. It shows the format and the facilitation moves; it is not evidence that the guided review works. That comes from the first real run.*

Bankeo has no design principles of its own and the reviewer works with LUMA methods, so the review uses LUMA's ten, following the order in `../../../method.md` → Choosing a set. The set-up happened in chat before recording. The walkthrough is the recording's transcript, with timestamps. In this run the agent could hear the reviewer, so its prompts appear in the transcript. The agent could not see the screen.

---

## Set-up (chat, before recording)

**Agent:** We're going to evaluate this design against a set of rules for good design, and end with a score for this version that we can measure future versions against. You walk the flow and talk; I'll keep track of everything and do the sorting and scoring afterward. What are you reviewing, and what should we call this version?

**Claudia:** The Bankeo mobile app, iOS. Call it build 4.2.

**Agent:** What is the person using the app trying to get done?

**Claudia:** Pay someone they've never paid before. Add them and send the first payment.

**Agent:** Good, one task. Does Bankeo have its own design principles or scorecard we should review against?

**Claudia:** Not that I know of.

**Agent:** Do you already work with LUMA methods?

**Claudia:** Yes.

**Agent:** Then we'll use LUMA's ten heuristics. Do you have the reference beside you, or should I paste it here?

**Claudia:** I have it open.

**Agent:** Has this flow been reviewed before?

**Claudia:** No, this is the first time.

**Agent:** Will I be able to hear you as you talk, or will you be reading my prompts and speaking to the recording?

**Claudia:** You can hear me.

**Agent:** Please start a screen recording with audio, and tell me when it's running.

**Claudia:** Running.

**Agent:** Here's how this works. Walk the task as if you were the person trying to get it done. When you land on a screen, say which screen it is, then talk through what you notice. For each thing, say which heuristic it relates to, whether it's met or not, and why. The good counts as much as the bad. Describe problems rather than fixes; fixes come later. I'll ask you about specific heuristics on specific screens as we go. Any questions before we start?

**Claudia:** None. Let's go.

---

## Walkthrough (recording transcript)

**[00:08] Agent:** Open the app and tell me which screen you're on and what you notice.

**[00:20] Claudia:** Home screen. Balance card at the top, a row of four actions under it: Cards, Statements, Save, More. There's a promo carousel, but it sits below the balance and doesn't compete with anything. That's Aesthetics, met. Clean, one thing to look at.

**[00:48] Claudia:** Now, I want to pay someone. I don't see Pay or Send in that row. It's under More. So the most common thing people do in a banking app is a hunt.

**[00:58] Agent:** Which heuristic is that?

**[01:02] Claudia:** Anticipate. Not met. It's an extra tap and a search for the main task.

**[01:10] Agent:** How does this screen do on Place?

**[01:16] Claudia:** Fine. The tab bar is standard, the current tab is highlighted, I know where I am. Met.

**[01:28] Agent:** When you're ready, go to the next screen and tell me what it is.

**[01:34] Claudia:** Tapped More, then Move money. This is the Move money screen. Four options: Pay someone, Transfer between my accounts, Pay a bill, Request money. Clear labels. Language, met. I don't love the icons, though.

**[01:52] Agent:** What do the icons do to someone using the screen?

**[01:57] Claudia:** Honestly, nothing. They're just not my style. Leave it out.

**[02:05] Agent:** How does this screen do on Match?

**[02:09] Claudia:** Met. It's the pattern every banking app uses. Nobody would be surprised.

**[02:30] Claudia:** Tapping Pay someone.

**[02:40] Claudia:** Payees screen. A list of people I've paid, with Add new payee at the bottom. But the header says Beneficiaries. The button I tapped said Pay someone, and the add button says payee. Three words for the same thing.

**[02:58] Agent:** Which heuristic, and is it met?

**[03:01] Claudia:** Consistency. Not met. Someone new to banking wouldn't know those are the same thing.

**[03:12] Claudia:** Tapping Add new payee.

**[03:30] Claudia:** Add payee form. Name, routing number, account number. Labels sit above the fields and stay visible while you type. Language, met.

**[04:12] Claudia:** Typing the account number. It's taking letters. And I've got the full keyboard, not the number pad. Errors, not met. It should only allow numbers.

**[04:24] Agent:** What goes wrong for someone as it is now?

**[04:28] Claudia:** They mistype, especially on a phone keyboard, and don't find out until they submit.

**[04:50] Claudia:** Submitting with a letter in there. "Invalid account number." And it's cleared the whole field. So I have to retype all twelve digits. That's also Errors, not met. Recovery is worse than it needs to be.

**[05:08] Agent:** How does this screen do on Constraints?

**[05:12] Claudia:** Let me turn text size up to the largest. Labels scale, fields grow, nothing's cut off. Contrast is good. Met on this screen.

**[05:30] Claudia:** Retyped, submitted. Next screen.

**[05:35] Claudia:** Name check screen, I think. It's just a spinner. No words. Still spinning. About five seconds.

**[05:44] Agent:** Which heuristic is that?

**[05:47] Claudia:** Feedback. Partly met. It tells me something is happening, not what.

**[05:52] Claudia:** Now it says "Close match." Close match to what? It doesn't tell me whether to go ahead, or what I should check. Language, not met.

**[06:10] Claudia:** And this is exactly the moment the design should stop me paying the wrong person. It raises a flag and then doesn't help me decide. Errors, not met.

**[06:30] Agent:** Is anything on this screen working well?

**[06:34] Claudia:** The name check existing at all. It's the right idea. Tapping Continue.

**[07:00] Claudia:** It's dropped me back at the payees list. I have to find the person I just added and tap them again to pay them. Anticipate, not met. Why would I add a payee except to pay them?

**[07:25] Claudia:** Tapping Dana.

**[07:32] Claudia:** Amount screen. Number pad comes up by itself, big clear amount, a reference field. Aesthetics, met.

**[07:50] Claudia:** Continue has jumped to the top right. Everywhere else it's a full-width button at the bottom. Consistency, not met. I went for the bottom and nothing was there.

**[08:02] Agent:** How does this screen do on Constraints?

**[08:05] Claudia:** Largest text size again. The amount truncates. I typed fifty and it shows "$5..." That's not met. If you rely on large text, you can't check the amount you're about to send.

**[08:20] Claudia:** I've also got no idea how many steps are left. Place, not met.

**[08:35] Claudia:** Let me try Back. It goes all the way to Home. I've lost Dana, and I'm back at the start. Also Place, not met.

**[08:45] Agent:** When you're ready, go to the next screen and tell me what it is.

**[09:00] Claudia:** Found my way back. Review and confirm screen. It says "You're sending $50 to Dana Ruiz today." Plain. Language, met.

**[09:10] Claudia:** But it doesn't show the account number. So there's no point at which I can check I typed it right. Errors, not met. They should show the last four digits.

**[09:30] Claudia:** Tapping Send.

**[09:38] Claudia:** Short spinner, under a second. Fine.

**[10:10] Claudia:** Sent screen. Big check mark, "Sent," a reference number, and when it'll arrive. Feedback, met, clearly.

**[10:25] Agent:** How does this screen do on Errors?

**[10:30] Claudia:** Looking for a cancel or an undo. There isn't one. If I realize now that I got the account wrong, there's nowhere to go from here. Not met.

**[10:48] Agent:** Before we finish, we haven't talked about Complexity. Across the flow, how did it do, and why?

**[10:58] Claudia:** Pretty lean. Apart from the detours I've already called out, every step earns its place, and nothing optional gets in the way. Yes. I'd score that one Yes. I should say I only used the phone.

**[11:25] Agent:** Of everything you saw, which problem would you fix first?

**[11:30] Claudia:** The account number. Letters accepted, never shown back to you, and no way to cancel. That's how money goes to the wrong place.

**[11:45] Agent:** Thank you. Please stop the recording and share the transcript with timestamps.

---

## Score check (chat, after synthesis)

The agent synthesized the transcript and showed Claudia its score table (see `report-v1.md`), with Place read as No (0).

**Agent:** Here's the score table from what you said. Which of these would you change?

**Claudia:** Place. Back losing the payee is annoying, but you get back in a few taps and the tab bar keeps you oriented. I'd call it Somewhat, not No. The rest stand.

**Agent:** Changed to Somewhat, with your reason. The total is 12 out of 20.
