---
status: active
category: prototyping
phase: making
provenance: practitioner-verified
tags: [prototyping, build-to-learn, low-fidelity, testing, assumptions, iteration, making, desirability, usability, viability, feasibility]
also-known-as: [quick and dirty prototyping, rough prototyping, rapid prototyping, low-fi prototype, lo-fi prototype, build to learn]
files:
  - method.md (this file) — Core reference: purpose, steps, facilitation notes, variations, connections
  - mechanics.md — Facilitation cheat sheet: purpose statements, inputs, outputs, five-stage process, stuff
  - teaching.md — Teaching arc content: hook, personal story, key insight, conviction close
  - resources/README.md — Resource index and agent mode guidance
  - resources/tips.md — Practitioner wisdom and facilitation gotchas
---

# Rough & Ready Prototyping

A rapidly built model of a new idea that approximates its appearance and behavior using readily available materials — built to learn, not to impress.

---

## Purpose

Use when you have a concept and need to test whether it's worth building further. Rough & Ready Prototyping makes an idea tangible enough that real people can react to it, exposing assumptions before they become expensive mistakes.

**The core question:** What's the least I can build to learn the most?

Both words in the name carry meaning. *Rough* means low effort, approximate, not polished — you're building only what's necessary to test your assumption. *Ready* means it's ready for a purpose: not rough for its own sake, but rough because that's all you need to learn something.

**Two things worth saying plainly:** if it's the first time you're making the thing, it's a prototype — there's no argument about that. And if you're not 100% sure your idea will work, you need to make a prototype to test it. Prototyping isn't a specialist activity reserved for designers or engineers; it's what anyone does when they're uncertain and want to find out cheaply.

**Why prototype early:**

Tom Gilb's development cost pyramid is the clearest argument: correcting a problem at the concept stage costs 1x. The same problem found in active development costs 10x. After release, it costs 100x. The pyramid doesn't say "don't build" — it says "test before you build, and learn as early as possible."

Frank Lloyd Wright put it a different way: *"You can use an eraser on the drafting table or a sledgehammer on the construction site."*

The Time/Love Continuum compounds the risk: the longer you work on something, the more attached you become to it, and the less receptive you are to honest feedback. Polished work signals to reviewers that you've invested heavily — they soften their feedback to protect your feelings. Rough work invites honesty.

The antidote is to make little loops of learning rather than taking giant leaps of faith: build something rough, put it in front of people, learn, adjust, repeat.

**What you can test:**

A prototype lets you test how something *looks*, how it *works*, and how it *behaves* — any one of these, or all three. You can build something that only looks like the final thing and does nothing, or something that behaves correctly but looks like nothing at all. Be clear which you're testing, because it changes what's worth building. Underneath that sit four sharper lenses:

- **Desirability** — do people actually want or need this? Is the core idea compelling?
- **Usability** — can people navigate and use it? Task-based prototypes test whether people can accomplish what you intend.
- **Viability** — will people pay for this? Does the business model hold up? Early tests of value and willingness to pay.
- **Feasibility** — can this actually be built and delivered? Early tests of technical or operational possibility.

Early in development, desirability is usually the most important thing to test — don't invest in usability refinement until you've validated that people want the thing at all.

**What prototyping gives you:**

- It brings the idea to life — you stop only *looking* at a concept and start interacting with it
- It lets you test ideas quickly, and sets up its companion method, Think-Aloud Testing
- It lowers development cost and supports iterative improvement
- It reduces risk — every loop of make/test/learn drives risk down; stop prototyping and risk climbs back up
- It reduces your attachment — feedback from other people loosens your grip on your own idea

---

## Setup

### Participants
- **Design team or workshop participants** — the people building the prototype. Groups of 2–4 per prototype work well; anything larger needs clear division of labor.
- **Testers** — real people (ideally matching the target user) who will react to the prototype. They come in after the build phase — see Think-Aloud Testing for how to run the test.

### What You Need
- **A concept to prototype** — typically a concept poster or value proposition poster from upstream work. If none exists, articulate the idea in writing before starting.
- **Your critical assumption** — the one thing that must be true for this concept to work. This is what you're testing.
- **Materials appropriate to the format:**
  - *Physical prototype:* paper, cardboard, tape, index cards, found objects, markers
  - *Screen-based prototype:* PowerPoint or Keynote, Miro/Mural, or a purpose-built tool like Figma or Lovable. For workshop use: device frame templates, a wireframe component library, access to icon resources (Icon Finder, Unsplash, Google image search + "icon")
  - *Service prototype:* props, physical space, people willing to role-play service interactions

### Time
- 5–10 minutes for planning (scenario + format + task definition)
- 10 minutes for blocking out the structure (what screens/components are needed)
- 30–60 minutes for building, depending on fidelity and team size
- More time does not mean better output — the constraint is the point

---

## Steps

### Step 1 — Choose a concept
Identify the idea you're prototyping. If you have a concept poster or value proposition poster, review it. Name the core idea in one sentence: what is the product or service, and what does it do for people?

### Step 2 — Decide what you want to learn

**Name the riskiest assumption:**
*"The one thing that must be true for this to work is..."*

**Identify the assumption type** — because it determines what you need to build:

- **Do people want it?** → desirability assumption → prototype the concept or value proposition (storyboard, concept poster, landing page with sign-up, explainer video)
- **Can people use it?** → usability assumption → prototype the experience (screen flow, paper prototype, Wizard of Oz, role-play or bodystorming)
- **Can we deliver it?** → feasibility assumption → prototype the delivery capability or system (service walkthrough, technical proof-of-concept, pilot program)
- **Is it worth doing?** → viability assumption → prototype the business model (business model test, pricing experiment, pre-sale or pre-order, letter of intent)

**Write the learning question:**
*"We need to find out whether..."*

Everything you build should answer that question. If a screen or a component doesn't help you answer it, leave it out.

### Step 3 — Define a scenario and critical tasks
Choose a realistic scenario that puts your core assumption to the test. Identify the 4–8 tasks or steps a person would need to complete to walk through that scenario. These become the structure of your prototype.

In a workshop: if you're providing pre-written scenarios, have participants choose from a short list rather than generating scenarios from scratch — this keeps momentum and prevents teams from spending build time on scenario debate.

### Step 4 — Build just enough to test
Construct only what you need to test the scenario. Key principles:
- **Simulate as much functionality as possible** — if it's a screen, show the state of each screen at each point in the flow, even if transitions aren't interactive
- **Use realistic, legible content** — placeholder text and lorem ipsum reduce the realism of the test. Use real words, real (or realistic) numbers, real images where possible. Google image search + "icon" finds usable visual shorthand for almost anything.
- **Mark incomplete areas clearly** — anything that isn't built should be labeled explicitly ("This section not yet available," "Content coming soon") so testers aren't confused during the test
- **Be resourceful** — use what's available. Found objects, printed images, drawn sketches, sticky notes over phone templates. The constraint creates useful creativity.
- **Divide and conquer in groups** — once you've agreed on the screen/component flow, split up and each person builds a section. Reconvene to review for consistency before testing.

---

## Deciding what to model — physical, information, people

A prototype rarely needs to model everything. One way to decide what to build is to picture three overlapping circles — the physical, the information, and the people — and ask which one (or which overlap) your critical assumption actually touches.

- **Physical** — the objects, large and small, and the space. What stuff is needed to use or deliver the offer? How are those objects handled and used?
- **Information** — what's shown, and what form it takes, digital or analogue. Increasingly a physical object also conveys information — through screens, sound, or labelling — so the physical and the informational rarely sit fully apart.
- **People** — the interactions. Who's talking to who? What do they say? What do they do, and how do they feel?

Most modern offers live in the overlap: a physical thing that carries information and is used by people. Naming where your assumption sits tells you what to build — and, just as usefully, what to leave out.

---

## Facilitation Notes

### The roughness is the point
Frame this explicitly at the start. You're not building something polished; you're building something testable. Teams — especially teams with design or engineering backgrounds — need explicit permission to be rough. Name the Time/Love Continuum: the reason we keep it rough is that rough work gets honest feedback. Polished work gets protected feelings.

### Start from what you want to learn, not the interface
The most common mistake is jumping to "what should the screens look like" before establishing "what question are we trying to answer?" Hold the group on Step 2 until they can name what they want to learn and what kind of assumption it is. That answer determines the format — not the other way around. A prototype that isn't testing a specific question is just decoration.

### 4–8 screens is usually enough
For a task-based screen prototype in a workshop, 4–8 screens covers a realistic scenario without becoming a production effort. If a team is trying to prototype more than 8 screens, ask what assumption requires all of that — usually the answer reveals they're building more than they need to learn what they're trying to learn.

### Don't debate the scenario too long
In a time-limited workshop, groups can spend 20 minutes choosing the "right" scenario. Give them a time box (5 minutes) and a default: *prototype the riskiest thing, not the easiest thing.* If they're still debating, the facilitator should call it.

### Consistency matters
When groups divide and conquer, they often produce screens that look and sound different from each other. Before testing, do a quick pass: check headings, terminology, and visual style for consistency. A tester who hits a tonal or visual inconsistency mid-flow will break concentration on the thing you're actually trying to test.

---

## Variations

### Physical prototype
Using cardboard, foam, index cards, found objects, and paper to approximate physical products, environments, or service touchpoints. Best for testing form factor, ergonomics, spatial layout, and service flows. Examples: the hawker centre cardboard model and the pharmacy wayfinding prototype; at domestic scale, taping out the size of a TV on the wall before drilling, or laying objects on the floor to feel where furniture should go; and at full scale, the McDonald's brothers in *The Founder* chalking out their kitchen on a tennis court to prototype the service system before building it.

### Screen-based prototype (digital)
Using PowerPoint, Keynote, Miro/Mural, Figma, or prototyping tools like Lovable to create interactive or static screen flows. Best for testing digital products, apps, or web services. The activity guide in `resources/activity-guide.md` covers this format in detail.

### Service prototype
Acting out a service interaction — role-playing staff, customer, and touchpoints. Can also involve building low-fidelity physical artifacts (signage, forms, props) to simulate the service experience. Best for testing service design, customer journeys, and interpersonal dynamics.

### Business model / proof-of-concept prototype
Testing the actual delivery of value in the real world, rather than simulating it. The "One Van, One Stand" example — a branded van and a pop-up tent distributing fresh produce — tested both desirability and feasibility of the food desert distribution concept in the real community. This type of prototype has the highest fidelity and highest cost; use it when paper or digital testing has validated the core concept and you're ready to test the real-world mechanics.

### Fidelity progression
Prototypes typically evolve from lower to higher fidelity as confidence in the concept grows:
1. Sketch / paper — fastest, cheapest, most honest feedback
2. Wireframes — structure and flow, no visual design
3. Lo-fi digital — screens with rough visual treatment
4. Hi-fi digital — polished screens with realistic content and interactions
5. Real-world proof of concept — actual delivery of value

The fidelity of your prototype should be proportional to your confidence in the concept. When in doubt, go lower.

---

## Outputs

- **A testable prototype** — an artifact representing the concept at a fidelity appropriate for the current stage of confidence
- **A defined scenario and task list** — the test structure that pairs with the prototype
- **Tested assumptions** — specific things you now know, partially know, or have invalidated
- **A decision: iterate, validate further, or eliminate** — the prototype either confirms you're on the right track, reveals what needs to change, or shows the concept isn't viable — all three are good outcomes

---

## Connections

### In the Double Diamond
Rough & Ready Prototyping lives in **Making / Prototyping**. It is the primary method for the Develop phase — taking concepts from the first diamond and giving them tangible form for testing. It is also used in Deliver to refine solutions through repeated rounds of build-and-test.

### Upstream methods (prototype receives from)
- **Concept Poster** — the concept being prototyped is typically articulated in a concept poster. Critical assumptions identified there become the test focus.
- **Value Proposition Poster** — a more developed artifact that makes the prototype's test targets explicit (desirability, viability, etc.)
- **Round Robin / Creative Matrix** — ideation methods whose output becomes the raw material for concept selection and prototyping
- **Statement Starters / Abstraction Laddering** — problem framing methods whose "How Might We" outputs guide what gets designed and tested

### Downstream methods (prototype feeds into)
- **Think-Aloud Testing** — the natural next step after building a screen-based or task-based prototype. Participants use the prototype while narrating their thought process; the team observes and learns.
- **Critique** — structured feedback protocol that can evaluate a prototype through balanced strengths/challenges/suggestions conversation
- **Affinity Clustering** — clustering feedback from multiple test sessions to identify themes and patterns
- **Importance/Difficulty Matrix** — prioritizing which findings from prototype testing to act on

### Related methods
- **Think-Aloud Testing** — Rough & Ready Prototyping and Think-Aloud Testing are a natural pair; one builds, the other tests. They are typically taught and run together.
- **Critique** — also evaluative, but collects structured opinion rather than observing behavior
- **Hypothesis Statements** — a method for making assumptions explicit before prototyping; useful for articulating the critical assumption that drives the prototype
- **Storyboarding, Schematic Diagramming, and Appearance Modelling** — the other methods in the modelling & prototyping family. They're better seen as relatives of Rough & Ready Prototyping than as alternatives to it: a storyboard or a schematic diagram is itself a kind of prototype. What distinguishes a rough & ready prototype is its emphasis on the *look* — it approximates how the final thing appears and behaves. Appearance Modelling pushes that furthest, making something look exactly like the final artefact while having no function at all.
