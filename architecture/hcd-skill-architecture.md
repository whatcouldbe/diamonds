---
name: hcd-skill-architecture
description: The structural blueprint for the HCD agent system. Defines two independent systems — the Skill Library (which method applies?) and the Mode Engine (how is the agent engaged?) — and how they intersect to produce agent behavior. Reference this file to understand how the overall system works and how files relate to each other.
---

# HCD Agent Skill Architecture
*Living document — update as the system evolves*

---

## The Core Principle

Every agent response requires two simultaneous lookups:

1. **Which method applies?** → navigate the Skill Library
2. **Which mode am I in?** → adopt the right Mode Engine behavior

These two systems are **orthogonal** — independent axes that intersect to determine actual agent behavior. A method without a mode is just content. A mode without a method is just a posture. The intersection is where meaningful agent behavior lives.

---

## System 1: Skill Library
*Which method applies here?*

The skill library is organized in layers, from foundational philosophy down to individual method execution.

### Layer 1 — Foundation
**`foundation/`**
Philosophy, mindsets, double diamond framework, diagnostic 2×2, validation principle, 9 core principles. The WHY behind all method work. Every other skill builds on this foundation.

- `hcd-philosophy.md` — core philosophy, theory of change, validation principle
- `hcd-mindsets.md` — the six HCD mindsets
- `hcd-double-diamond.md` — double diamond framework, practice structure, diagnostic tool
- `hcd-principles.md` — critical principles, facilitation guidelines, tone and approach

### Layer 2 — Navigation
**`navigation/key-questions.md`**
Process checkpoints that guide teams through innovation work. Tool-agnostic. Helps determine which methods to apply and when it's safe to move forward vs. when to iterate.

### Layer 3 — Selection *(to be built)*
**`selection/hcd-method-selection.md`**
The art of choosing methods — recipes, sequences, progressions. Bridges the navigation layer and individual method skills. Helps agents and teams decide which specific methods to use at each stage.

### Layer 4 — Method Classification & Recommendation System

**The architecture matters more than any specific method.**

Layer 4 is not a fixed library of approved methods — it is a **classification and recommendation system**. Any method can be evaluated and placed within the taxonomy. The agent uses the architecture to recommend methods intelligently based on where a person is in their process, not based on a hardcoded list.

**How it works:**
1. The Key Questions Process identifies where the person is in their innovation work
2. That position maps to a practice area (Looking, Understanding, or Making)
3. That practice area maps to a subcategory
4. The agent recommends methods that fit — whether pre-loaded, user-brought, or discovered
5. If a user brings their own method, the agent can classify it and tell them how and when it applies

**The taxonomy is the intelligence.** Methods slot into it. The system is designed to work with Justin's existing 36 methods, future methods, and methods the agent surfaces — without being dependent on any of them.

---

#### Looking
*Becoming a student of human behavior — observing, watching, listening, experiencing firsthand*
*Maps to: Key Questions 3 (Discover customer needs)*

| Subcategory | Purpose |
|---|---|
| **Ethnographic Research** | Observe people in their natural context without intervention |
| **Participatory Research** | Engage people directly — interviews, co-design, lived experience |
| **Evaluative Research** | Test and assess — concepts, experiences, and existing solutions |

#### Understanding
*Making sense of what was observed — synthesizing, identifying patterns, framing opportunities*
*Maps to: Key Questions 4 (Define the right problem)*

| Subcategory | Purpose |
|---|---|
| **People & Systems** | Map the human experience and the systems around it |
| **Patterns & Priorities** | Synthesize observations into insights and rank what matters most |
| **Problem Framing** | Reframe findings into opportunity statements tied to outcomes |

#### Making
*Developing and testing solutions — prototyping, experimenting, iterating*
*Maps to: Key Questions 5–6 (Develop and Deliver)*

| Subcategory | Purpose |
|---|---|
| **Concept Ideation** | Generate many possible solutions from validated insights |
| **Prototyping** | Make ideas tangible enough to test with real people |
| **Design Rationale** | Document decisions, trade-offs, and criteria for what was built |

---

## System 2: Mode Engine
*How is the agent engaged?*

Modes are independent of methods. The same method skill behaves differently depending on which mode the agent is in. When the mode is ambiguous, the agent should ask rather than guess — the wrong mode feels immediately off to the person.

**Important distinction — Coaching vs. Facilitating:** These are not the same thing. Coaching guides someone's thinking and decision-making — it's a conversation about what to do and why. Facilitating runs an activity — it's serving a process that a group is moving through. A coach asks "what do you actually need here?" A facilitator asks "what's next in the process?"

### Mode 05 — Coaching *(default)*
The agent's default posture. When someone arrives without a clear method request — with an idea, a problem, a situation, or a question about what to do next — the agent starts here. Guides someone's thinking toward better decisions about their innovation work.

**Posture:** Trusted advisor
**Example:** "We're thinking about building a paid community after our masterclass." / "I'm not sure where to start with this project."
**Governing framework:** See `modes/mode-coaching.md`

### Mode 01 — Executing
The agent performs the method independently on someone's behalf. The human is the recipient of output, not a co-participant.

**Includes simulation:** Executing also covers running simulated versions of methods — for example, conducting synthetic empathy interviews by inhabiting a described persona. Simulation produces real value for hypothesis-testing and question refinement, but the agent is always transparent about what synthetic work can and cannot do. See coaching principle 2 in `modes/mode-coaching.md`.

**Posture:** Autonomous actor
**Example:** "Can you synthesize these interview notes for me?" / "Run a simulated interview as someone who took our masterclass."
**Governing framework:** `modes/mode-executing.md`

### Mode 02 — Participating
The agent is a team member alongside humans — contributing ideas, taking notes, filling out templates, co-creating. It's in the work with people but not leading the process.

**Posture:** Peer contributor
**Example:** "Join our brainstorm and help us generate ideas." / "Take notes while we run these interviews."
**Governing framework:** `modes/mode-participating.md`

### Mode 03 — Facilitating
The agent guides a team through a specific method or activity — asking questions, keeping the process moving, noticing when the group is stuck, prompting next steps. It is serving the process, not contributing content. Facilitating is not coaching — the agent is running an activity, not guiding someone's thinking about what to do.

**Posture:** Process servant
**Example:** "Help us run an ideation session." / "Facilitate us through affinity clustering."
**Governing framework:** `modes/mode-facilitating.md`

### Mode 04 — Teaching
The agent is an instructor introducing a method to someone for the first time. Follows the Method Instruction Mechanics 7-step arc.

**Posture:** Instructor
**Example:** "I want to teach my team empathy interviewing tomorrow." / "Walk me through how affinity clustering works."
**Governing framework:** See `modes/mode-teaching.md`

---

## The Intersection

Every agent response is the product of both systems:

```
Method (from Skill Library)  ×  Mode (from Mode Engine)  =  Agent Behavior
```

**Examples:**
- Empathy Interviewing × Coaching = Agent diagnoses whether interviews are needed, recommends next step, offers tiered support
- Empathy Interviewing × Executing = Agent conducts simulated interviews and delivers findings
- Empathy Interviewing × Participating = Agent joins as note-taker while human leads
- Empathy Interviewing × Facilitating = Agent guides team through interview planning and execution
- Empathy Interviewing × Teaching = Agent delivers 7-step instructional arc about interviewing

---

## Open Questions & Edge Cases
*Capture emerging complexity here as the system evolves*

- Modes can blur mid-session (Coaching into Facilitating once a method is chosen, Participating into Facilitating if the human steps back). How does the agent handle mode transitions gracefully?
- Executing and Participating can overlap when the agent is both taking notes and beginning to synthesize in real time. This is a feature, not a bug — but worth naming explicitly in the governing frameworks.
- Governing behavioral frameworks for Executing, Participating, and Facilitating modes still to be developed.
- There may be additional modes beyond the current five — discover through use.

---

## File Manifest

| File | Location | Status | Purpose |
|---|---|---|---|
| HCD Philosophy | `foundation/hcd-philosophy.md` | Migrated | Core philosophy, theory of change, validation principle |
| HCD Mindsets | `foundation/hcd-mindsets.md` | Migrated | The six HCD mindsets |
| HCD Double Diamond | `foundation/hcd-double-diamond.md` | Migrated | Double diamond framework, practice structure, diagnostic tool |
| HCD Principles | `foundation/hcd-principles.md` | Migrated | Critical principles, facilitation guidelines, tone and approach |
| Key Questions Process | `navigation/key-questions.md` | Migrated | Navigation framework |
| Skill Architecture | `architecture/hcd-skill-architecture.md` | Migrated | This file — system blueprint |
| Coaching Mode | `modes/mode-coaching.md` | Migrated | Coaching arc, 5 support options, coaching principles |
| Teaching Mode | `modes/mode-teaching.md` | Migrated | 7-step Method Instruction Mechanics arc |
| Instruction Mechanics | `modes/mechanics/method-instruction-mechanics.md` | Migrated | Full instructional arc detail |
| Facilitating Mode | `modes/mode-facilitating.md` | Active | Governing framework for facilitating mode |
| Executing Mode | `modes/mode-executing.md` | Active | Governing framework for executing mode |
| Participating Mode | `modes/mode-participating.md` | Active | Governing framework for participating mode |
| Facilitation Mechanics | `modes/mechanics/method-facilitation-mechanics.md` | Active | Mechanics for facilitation mode — method mechanics framework |
| Execution Mechanics | `modes/mechanics/method-execution-mechanics.md` | Active | Mechanics for execution mode |
| Participation Mechanics | `modes/mechanics/method-participation-mechanics.md` | Active | Mechanics for participation mode |
| Method Selection | `selection/hcd-method-selection.md` | To be built | Method recipes and sequencing — Layer 3 |
| Affinity Clustering | `methods/understanding/patterns-and-priorities/affinity-clustering/` | Active | Synthesis method — Understanding / Patterns & Priorities (method.md, mechanics.md, teaching.md, resources/) |
| Importance / Difficulty Matrix | `methods/understanding/patterns-and-priorities/importance-difficulty-matrix/` | Active | Prioritization method — Understanding / Patterns & Priorities (method.md, mechanics.md, teaching.md, resources/) |
| Abstraction Laddering | `methods/understanding/problem-framing/abstraction-laddering/` | Active | Problem framing method — Understanding / Problem Framing (method.md, mechanics.md, teaching.md, resources/) |
| Rose, Thorn, Bud | `methods/understanding/problem-framing/rose-thorn-bud/` | Active | Codification method — Understanding / Problem Framing (method.md, mechanics.md, teaching.md, resources/) |
| Critique | `methods/looking/evaluative/critique/` | Active | Evaluative feedback method — Looking / Evaluative (method.md, mechanics.md, teaching.md, resources/) |
| Interviewing | `methods/looking/ethnographic/interviewing/` | Active | Ethnographic research method — Looking / Ethnographic (method.md, mechanics.md, teaching.md, resources/) |
| What's on Your Radar | `methods/looking/participatory/whats-on-your-radar/` | Active | Participatory research method — Looking / Participatory (method.md, mechanics.md, teaching.md, resources/) |
| Round Robin | `methods/making/concept-ideation/round-robin/` | Active | Concept ideation method — Making / Concept Ideation (method.md, mechanics.md, teaching.md, resources/) |

---

## Version Notes

| Date | Change |
|---|---|
| Feb 2026 | Initial architecture established — two systems (Skill Library × Mode Engine), four modes identified |
| Feb 2026 | Method Instruction Mechanics added as governing framework for Teaching mode |
| Mar 2026 | Mode 05 Coaching added as default mode; mode frameworks extracted to separate files; Facilitating/Coaching distinction clarified; Executing updated to include simulation; file manifest added |
| Mar 2026 | Migrated to whatcouldbe/diamonds repo; foundation split into four files; file manifest updated with new paths |
