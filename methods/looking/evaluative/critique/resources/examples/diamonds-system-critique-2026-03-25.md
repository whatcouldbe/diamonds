# Critique Example: Diamonds System
**Date:** 2026-03-25
**Presenter:** Justin
**Reviewer:** Diamonds agent (Claude Opus)
**Format:** Conversational / simulated critique

---

## The challenge we were trying to solve

How do you teach one AI to be more human-centered in order to scale that thinking to more people? The problem is that HCD expertise is tacit — it lives in practitioners, not documents — and most AI tools skip design thinking entirely and jump straight to building.

## One of the ideas we had

A structured set of markdown files — a method library, mode engine, and navigation layer — that can be loaded into an AI agent as a plugin. The agent teaches, coaches, facilitates, and executes HCD methods on behalf of teams. The methodology is authored conversationally by an HCD practitioner, captured at high fidelity for a small set of methods (5–9), and the agent generalizes from those to intake new methods from other practitioners.

---

## What is working well

**The conversational teaching captures tacit knowledge that documents can't.**
Practitioner wisdom — the insight that "one of the ideas we had" does double duty (softening for the reviewer and reducing presenter attachment), the Time/Love Continuum, the silent write principle, the "janitor and CEO" point about sticky notes equalizing voice — that depth came through because we were teaching, not documenting. A lighter format would lose it.

**The "teach me enough to generalize" strategy is right.**
Five to nine methods at high fidelity, then the agent can intake new ones from other practitioners using the structures built. This is training a classification and codification capability, not filling a library. That's a fundamentally different — and better — bet.

**The architecture came first.**
The taxonomy, mode engine, and method intersection model were built before filling in content. When someone brings a new method, the system already knows where it goes and what files it needs. The agent facilitates intake rather than improvising structure.

**The plugin vision is the right scale.**
If the system is AI-readable, it's not one agent — it's any agent. HCD thinking as a layer that sits on top of any product development workflow, enforcing "have we validated this?" before teams invest. That's a meaningful contribution.

**The system is being used on itself.**
This critique session is an example. Recursive validation is how you know the methods actually work.

---

## Challenges we might face

**The biggest challenge is our own principle — validation before investment.**
The entire philosophy of this system says don't build too far before testing with real people. At the time of this critique, no practitioner outside the author has touched the system. Whether the agent behaves as intended with the files we've built is an untested assumption.

**The bottleneck is the author.**
The high-fidelity conversational teaching approach produces great results but is expensive — time, energy, voice. The assumption that the agent can generalize to intake methods from strangers — people with less shared context and rapport — is unproven.

**We don't know if this works as a plugin.**
The CLAUDE.md is tuned for this specific repo and model. Whether another agent framework can pick up these markdown files and produce correct behavior is an assumption. The "AI-readable plugin" vision is compelling but untested.

**Method coverage could be biased.**
The initial method selection reflects one practitioner's 25-year practice. The taxonomy may have blind spots in areas outside that practice.

**The generalization bet is the riskiest assumption.**
"Teach 5–9 methods, then I can handle the rest" — this is the central bet of the entire approach. If the methods taught are too clustered in one area (e.g., all Understanding), the agent may not generalize well across Looking, Understanding, and Making. This hasn't been tested.

---

## How we might build on this

**Test the generalization bet now, not later.**
Take a method the author doesn't teach conversationally — hand the agent a document or a light description — and see if it can produce good method files using the structures already built. This would reveal whether the "teach 5–9 and generalize" assumption holds while there are still methods left to teach.

**Get one practitioner in front of it.**
Even one session with an outside HCD practitioner using the agent on a real problem would surface things invisible from the inside. We are deep in the Time/Love Continuum on this system — the same bias we're teaching the system to counter.

**Design the intake protocol.**
When a stranger brings a method like Crazy 8s, what happens? What does the agent ask, in what order? This intake flow may itself be a form of Critique — a structured conversation to evaluate and codify a method. That could be elegant.

**Diversify method coverage deliberately.**
Critique is in Looking. I/D Matrix is in Understanding. The next method built should be in Making — concept ideation or prototyping — to test the system across all three practice areas.

**Run a real plugin test.**
Take these files, drop them into a fresh agent context with no conversation history, and observe the behavior. Thirty minutes of testing would tell us whether the "AI-readable plugin" vision is real or aspirational.

**Build the Executing mode next.**
The governing framework for how the agent behaves when running a method autonomously doesn't exist yet. This is the gap between having a method and being able to use it.

---

*This example was generated from a live critique session run between the method author (Justin) and the Diamonds agent. The agent served as the sole reviewer. The protocol was run in full: context → present → clarify → strengths → challenges → build on → close.*
