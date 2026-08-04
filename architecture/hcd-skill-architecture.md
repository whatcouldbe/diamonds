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
Philosophy, mindsets, double diamond framework, diagnostic 2×2, validation principle, 8 HCD methodology principles. The WHY behind all method work. Every other skill builds on this foundation.

- `hcd-philosophy.md` — core philosophy, theory of change, validation principle
- `hcd-mindsets.md` — the six HCD mindsets
- `hcd-double-diamond.md` — double diamond framework, practice structure, diagnostic tool
- `hcd-principles.md` — critical principles, facilitation guidelines, tone and approach

### Layer 2 — Navigation
**`navigation/key-questions.md`**
Process checkpoints that guide teams through innovation work. Tool-agnostic. Helps determine which methods to apply and when it's safe to move forward vs. when to iterate.

### Layer 3 — Sessions
**`sessions/`**
Named, outcome-driven combinations of methods — the sentence to a method's vocabulary. Sessions bridge key questions and methods: when a key question maps to a session, the session prescribes the method sequence, the working arc, and the facilitation approach. Sessions also carry teaching notes and resources for deploying the session in different contexts.

Navigation flows: key question → session → methods. Sessions declare which key question they address; key-questions.md does not reference sessions. The `sessions/README.md` is the cross-reference index for the session ↔ method relationship.

When a key question has no matching session yet, fall through to Layer 4 (Selection).

**Current sessions:** Prioritization (active), Decision Making (stub), Customer Discovery (stub), Retrospectives (stub)

### Layer 4 — Selection
**`selection/hcd-method-selection.md`**
The reasoning engine for choosing methods when no session exists for the situation — six principles for selecting, sequencing, and combining methods based on where someone is in their process. Also surfaceable as a teachable framework in Teaching mode.

### Layer 5 — Method Classification & Recommendation System

**The architecture matters more than any specific method.**

Layer 4 is not a fixed library of approved methods — it is a **classification and recommendation system**. Any method can be evaluated and placed within the taxonomy. The agent uses the architecture to recommend methods intelligently based on where a person is in their process, not based on a hardcoded list.

**How it works:**
1. The Key Questions Process identifies where the person is in their innovation work
2. That position maps to a practice area (Looking, Understanding, or Making)
3. That practice area maps to a subcategory
4. The agent recommends methods that fit — whether pre-loaded, user-brought, or discovered
5. If a user brings their own method, the agent can classify it and tell them how and when it applies

**The taxonomy is the intelligence.** Methods slot into it. The system is designed to work with any methods — those built into the engine, future additions, or methods someone brings in mid-session — without being dependent on any specific one.

---

#### Looking
*Becoming a student of human behavior — observing, watching, listening, experiencing firsthand*
*Maps to: Discovering what people are actually trying to accomplish — Discover stage*

| Subcategory | Purpose |
|---|---|
| **Ethnographic Research** | Observe people in their natural context without intervention |
| **Participatory Research** | Engage people directly — interviews, co-design, lived experience |
| **Evaluative Research** | Test and assess — concepts, experiences, and existing solutions |

#### Understanding
*Making sense of what was observed — synthesizing, identifying patterns, framing opportunities*
*Maps to: Defining the most impactful problems to solve — Define stage*

| Subcategory | Purpose |
|---|---|
| **People & Systems** | Map the human experience and the systems around it |
| **Patterns & Priorities** | Synthesize observations into insights and rank what matters most |
| **Problem Framing** | Reframe findings into opportunity statements tied to outcomes |

#### Making
*Developing and testing solutions — prototyping, experimenting, iterating*
*Maps to: Developing solutions and delivering something that works — Develop and Deliver stages*

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

### Coaching *(default)*
The agent's default posture. When someone arrives without a clear method request — with an idea, a problem, a situation, or a question about what to do next — the agent starts here. Guides someone's thinking toward better decisions about their innovation work.

**Posture:** Trusted advisor
**Example:** "We're thinking about building a paid community after our masterclass." / "I'm not sure where to start with this project."
**Governing framework:** See `modes/mode-coaching.md`

### Executing
The agent performs the method independently on someone's behalf. The human is the recipient of output, not a co-participant.

**Includes simulation:** Executing also covers running simulated versions of methods — for example, conducting synthetic empathy interviews by inhabiting a described persona. Simulation produces real value for hypothesis-testing and question refinement, but the agent is always transparent about what synthetic work can and cannot do. See coaching principle 2 in `modes/mode-coaching.md`.

**Posture:** Autonomous actor
**Example:** "Can you synthesize these interview notes for me?" / "Run a simulated interview as someone who took our masterclass."
**Governing framework:** `modes/mode-executing.md`

### Participating
The agent is a team member alongside humans — contributing ideas, taking notes, filling out templates, co-creating. It's in the work with people but not leading the process.

**Posture:** Peer contributor
**Example:** "Join our brainstorm and help us generate ideas." / "Take notes while we run these interviews."
**Governing framework:** `modes/mode-participating.md`

### Facilitating
The agent guides a team through a specific method or activity — asking questions, keeping the process moving, noticing when the group is stuck, prompting next steps. It is serving the process, not contributing content. Facilitating is not coaching — the agent is running an activity, not guiding someone's thinking about what to do.

**Posture:** Process servant
**Example:** "Help us run an ideation session." / "Facilitate us through affinity clustering."
**Governing framework:** `modes/mode-facilitating.md`

### Teaching
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
- There may be additional modes beyond the current five — discover through use.

---

## File Manifest

| File | Location | Status | Purpose |
|---|---|---|---|
| HCD Philosophy | `foundation/hcd-philosophy.md` | Active | Core philosophy, theory of change, validation principle |
| HCD Mindsets | `foundation/hcd-mindsets.md` | Active | The six HCD mindsets |
| HCD Double Diamond | `foundation/hcd-double-diamond.md` | Active | Double diamond framework, practice structure, diagnostic tool |
| HCD Principles | `foundation/hcd-principles.md` | Active | Critical principles, facilitation guidelines, tone and approach |
| HCD Bridge Exercise | `foundation/hcd-bridge-exercise.md` | Active | 3-minute facilitated activity that establishes why teams must explore the problem before developing solutions |
| Key Questions Process | `navigation/key-questions.md` | Active | Navigation framework |
| Skill Architecture | `architecture/hcd-skill-architecture.md` | Active | This file — system blueprint |
| Model Support Architecture | `architecture/model-support.md` | Active | Two-layer model for platform-specific derivatives; where Claude skills and integrations live |
| Build Co-Pilot Capability | `capabilities/build-copilot.md` | Active | Layer 1 model-agnostic instructions for building a session co-pilot app (session.md + system prompt + HTML) |
| Design Principles | `design-principles.md` | Active | Six principles governing how Diamonds is built and how new methods are contributed |
| Coaching Mode | `modes/mode-coaching.md` | Active | Coaching arc, 5 support options, coaching principles |
| Teaching Mode | `modes/mode-teaching.md` | Active | 7-step Method Instruction Mechanics arc |
| Instruction Mechanics | `modes/mechanics/method-instruction-mechanics.md` | Active | Full instructional arc detail |
| Facilitating Mode | `modes/mode-facilitating.md` | Active | Governing framework for facilitating mode |
| Executing Mode | `modes/mode-executing.md` | Active | Governing framework for executing mode |
| Participating Mode | `modes/mode-participating.md` | Active | Governing framework for participating mode |
| Facilitation Mechanics | `modes/mechanics/method-facilitation-mechanics.md` | Active | Mechanics for facilitation mode — method mechanics framework |
| Execution Mechanics | `modes/mechanics/method-execution-mechanics.md` | Active | Mechanics for execution mode |
| Participation Mechanics | `modes/mechanics/method-participation-mechanics.md` | Active | Mechanics for participation mode |
| Sessions Index | `sessions/README.md` | Active | Cross-reference index — sessions ↔ methods, sessions ↔ key questions |
| Sessions Template | `sessions/_template.md` | Active | Template for new session files |
| Prioritization Session | `sessions/prioritization/` | Active | Working session arc, teaching notes, system prompt — Layer 3 |
| Method Selection | `selection/hcd-method-selection.md` | Active | Six principles for selecting, sequencing, and combining methods — Layer 4 reasoning engine (used when no session exists) |
| Affinity Clustering | `methods/understanding/patterns-and-priorities/affinity-clustering/` | Active | Synthesis method — Understanding / Patterns & Priorities (method.md, mechanics.md, teaching.md, resources/) |
| Importance / Difficulty Matrix | `methods/understanding/patterns-and-priorities/importance-difficulty-matrix/` | Active | Prioritization method — Understanding / Patterns & Priorities (method.md, mechanics.md, teaching.md, resources/) |
| Abstraction Laddering | `methods/understanding/problem-framing/abstraction-laddering/` | Active | Problem framing method — Understanding / Problem Framing (method.md, mechanics.md, teaching.md, resources/) |
| Rose, Thorn, Bud | `methods/understanding/problem-framing/rose-thorn-bud/` | Active | Codification method — Understanding / Problem Framing (method.md, mechanics.md, teaching.md, resources/) |
| Statement Starters | `methods/understanding/problem-framing/statement-starters/` | Active | Problem framing method — Understanding / Problem Framing (method.md, mechanics.md, teaching.md, resources/) |
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
| May 2026 | Layer 3 (Method Selection) shipped — six principles for selecting, sequencing, and combining methods. Mode-vocab and key-question-number rules refined in CLAUDE.md and propagated across architecture and navigation files. Practice-area-to-stage mapping made explicit (Discover/Define/Develop/Deliver). Mode numbering dropped from this file — historical artifact, not load-bearing. |
| Jul 2026 | Sessions layer added as new Layer 3 — named, outcome-driven method combinations. Method Selection renumbered to Layer 4. Navigation flow updated: key question → session → methods (fall through to selection when no session exists). Four sessions scoped: Prioritization (active), Decision Making / Customer Discovery / Retrospectives (stubs). |
