# Engine candidate — Signal discipline in the assumptions register

**Status:** Candidate pattern for the Diamonds engine. Surfaced on the Advance Your Pickleball demonstration project (2026-06-24). Project-agnostic — written to be lifted into the engine as-is.

---

## The gap it fixes

The Diamonds assumptions register, as currently structured, tracks *Assumption · Status · Evidence*. Nothing in that structure forces a team to say **what observation would change the status**. The result: assumptions sit at "Unvalidated" indefinitely, because there is no defined path from open to settled. The register becomes a list of worries rather than a testable backlog.

## The pattern

**An assumption is not fully logged until a signal is named — before the test is run.**

Add a required **Signal** field to every assumption:

> Signal — the specific action or response that would confirm or disprove this assumption.

| Assumption | Signal (confirm / disprove) | Status | Evidence |
|---|---|---|---|

The signal must be an **observable action or response**, not an opinion or a self-report. "Users say they'd use it" is not a signal. "Users click through to the next step unprompted" is.

## Why it works

- It converts the register into a testable backlog: every open item now carries its own resolution criterion.
- It is pre-committed, so the result can't be rationalised after the fact ("well, that sort of counts").
- It exposes assumptions that *can't* be cheaply tested, which is itself useful triage.

## Supporting principles (carry alongside)

1. **Build-brief vs test-brief.** The assumption→signal spine works both before an artifact exists (build-brief: choose the cheapest format that produces the signal) and after one exists (test-brief: treat the existing artifact as the format, design the observation). Same logic, two entry points.

2. **Discovery and validation are different instruments; stack them with a sequencing rule.** Discovery surfaces opinions; a live test captures behaviour. They contaminate each other if mixed. One session can do both — run discovery clean first, bolt the behavioural test on after, never show the artifact during discovery.

3. **Weight observed behaviour over stated preference, especially under observation.** Friendly-call demand characteristics inflate stated interest everywhere. When a behavioural signal and a verbal one disagree, trust the behaviour.

## Worked example (illustration, not a rule)

On Advance — a diagnostic tool with a single-result reveal — the team built a "predict-before-reveal" test: capture what the user *thinks* they should work on before the result, then watch whether the result surprises them and whether they click through to the recommended content unprompted. The click was weighted over anything they said.

This mechanic is shaped to a single-reveal diagnostic. Carry it as an example of signal discipline applied, not as a general pattern.

## How to fold into the engine

- Update the assumptions-register template/columns to include **Signal** as a required field.
- Add a one-line check to the Diamonds process: "No assumption is logged without a pre-committed signal."
- Add build-brief and test-brief as two named variants of the same artifact.
