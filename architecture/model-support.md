---
name: model-support
description: Architectural decision governing how model-specific capabilities (skills, wiring, integrations) are structured within a Diamonds deployment. Extends Design Principle 7.
---

# Model Support Architecture

*Recorded: August 2026*

---

## The Decision

Diamonds capabilities that require model-specific wiring — Claude Code skills, system prompt configurations, platform integrations — follow a two-layer model:

**Layer 1 — Model-agnostic (lives in the Diamonds repo source files)**
The instructions, process arcs, checklists, format rules, and content standards that define *what* a capability does. Written in plain markdown, readable by any sufficiently capable model or system. This is methodology content — it belongs in the source.

**Layer 2 — Model-specific (lives in the deployment, outside the repo)**
The wiring that makes Layer 1 invocable in a specific model's toolchain — a Claude Code skill file, a GPT action, a system prompt configuration. This is platform packaging — it belongs in the derivative layer.

**The boundary:** Layer 1 defines the capability. Layer 2 invokes it. A Layer 2 file should contain nothing that would need to be preserved if the model changed — only the invocation mechanism and a pointer to Layer 1.

---

## What This Means in Practice

When building a new capability (e.g., a skill for building co-pilot apps from session definitions):

- The process, checklist, cue label rules, format standards, and quality criteria live in a Diamonds source file — likely in `sessions/` alongside the session resources it operates on, or in a new `capabilities/` directory if the capability is cross-session
- The Claude Code skill file (`.md` with frontmatter, invoked by `/skill-name`) lives in the Claude-specific deployment layer
- A person deploying Diamonds with a different model would write their own Layer 2 file pointing at the same Layer 1 instructions

---

## Deployment Directory

Model-specific derivatives for a Claude deployment live at:

```
~/.diamonds/model-support/claude/skills/
```

This directory is not part of the Diamonds repo — it is created during deployment and travels with the instance, not the methodology. The `onboarding.md` process is responsible for creating it.

Other models would follow the same pattern under their own subdirectory:
```
~/.diamonds/model-support/[model-name]/skills/
```

---

## Why This Structure

- The methodology outlasts any one model or platform (Principle 7)
- Capabilities improve independently of model changes — better Layer 1 instructions make the capability better everywhere, not just for Claude users
- Someone deploying Diamonds gets the Layer 1 instructions automatically; they write their own Layer 2 once, and it stays current as the instructions evolve
- The structure makes it visible when methodology content has accidentally been placed in a derivative file

---

## Open Questions

- Should a `capabilities/` directory be added to the Diamonds source for cross-session process instructions (like build-copilot), distinct from session-specific resources?
- What does `onboarding.md` need to add to bootstrap the `model-support/` directory during a new deployment?
- Should the model-support directory path be configurable in `~/.diamonds/config.json`, or is the path convention sufficient?
