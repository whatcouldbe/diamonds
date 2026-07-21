# Desirability, Viability, Feasibility

## The Three Questions

Every product lives or dies on three questions. A team can only build something that lasts when it can answer all three with validated knowledge — not confidence, not consensus, not a hunch.

- **Desirability** — *Do people actually want this?* Is there a real human need, and does this address it well enough that people will change their behaviour to adopt it?
- **Viability** — *Will it sustain a business?* Does the value hold up as a business — funding, revenue, cost, the model that keeps it alive after launch?
- **Feasibility** — *Can we actually build and deliver it?* Do the technology, capability, and operations exist to make it real and keep it running?

A product is only sound where all three overlap: **desirable, viable, and buildable.** A weakness in any one of them undermines the whole thing — no amount of strength in the other two compensates.

## The Order Is the Point

The three are not a checklist to tick in any sequence. They are asked in a specific order, and the order is a **filter**:

1. **What do people desire?**
2. **Of the things people desire, what will sustain a business?**
3. **Of the things people desire that will also sustain a business, what can we build?**

Each question narrows the set the next one works on. Viability is only ever asked of the *desirable* things. Feasibility is only ever asked of the *desirable-and-viable* things. Start with desire, because there is no point pricing, funding, or building something nobody wants.

**The common trap is running the filter backwards** — leading with *can we build it?* Teams anchored in technology ask feasibility first, fall in love with what's buildable, and lose sight of whether anyone wants it or whether it sustains a business. This is the single most expensive mistake in innovation work, and it is exactly the shortcut this system exists to prevent. Feasibility is a real gate. It is the *last* gate, not the first.

## Why You Can't Skip One: The Multiplication

The reason all three matter equally is not a slogan — it's arithmetic. Each dimension carries its own probability, and the probability of overall success is the three **multiplied together**:

> **P(success) = P(customer adoption) × P(sustaining business) × P(technical completion)**

- **P(customer adoption)** — the probability people will actually adopt it once it launches (desirability)
- **P(sustaining business)** — the probability the business can sustain itself through launch and long enough to build revenue (viability)
- **P(technical completion)** — the probability the thing can be made to work and delivered (feasibility)

Because the factors multiply rather than add, a near-zero on any single dimension drives the whole product toward zero. A brilliantly engineered, well-funded product nobody wants still fails. A beloved, buildable product with no viable model still fails. This is the mathematical case for **validation before investment**: you cannot let one dimension coast on assumption while you pour effort into another, because the weakest factor sets the ceiling on everything.

## From Questions to Plans

Each question resolves into a model, and each model into a plan — the mechanism that turns "we think so" into something you can act on and test:

| Dimension | Question | Model | Plan |
|---|---|---|---|
| Desirability | What do people desire? | User model | User plan (design, behaviour) |
| Viability | What will sustain a business? | Business model | Business plan (funding, revenue, launch, distribution) |
| Feasibility | What can we build? | Technology model | Technology plan (engineering, delivery) |

The trap of leading with feasibility usually shows up here: teams are most comfortable building the technology plan, because it's the most concrete. The discipline is to build the user model *first* and let it govern the other two.

## Where This Comes From

The lineage matters, because the model is often mis-attributed to a single author:

- **Larry Keeley** originated the triad — the three primary qualities of a successful high-technology business.
- **Alan Cooper** developed it into an operational model as part of Goal-Directed Design — the three questions in their nested order, the probability logic, and the models-to-plans structure. See *About Face: The Essentials of User Interface Design* (IDG Books, 1995, per Dubberly) and *About Face 2.0: The Essentials of Interaction Design* (Wiley, 2003), Chapter 1, "Goal-Directed Design."
- **Hugh Dubberly** drew the model's most complete diagram — the Venn overlaid with the probability equation and the models-to-plans structure — in "Alan Cooper and the Goal-Directed Design Process," *Gain: AIGA Journal of Design for the Network Economy*, Vol. 1, No. 2 (2001). Notably, Dubberly's published rendering (2001) predates the *About Face 2.0* figure (2003) that carries the same model.

The concept is Keeley's; the operational model and its ordering are Cooper's; the definitive diagram is Dubberly's. Related three-part quality models Dubberly places alongside it: Vitruvius (solidity, commodity, delight), ISO 9241 (efficiency, effectiveness, satisfaction), and Cooper's own shorthand (hot, simple, deep).

Reference: [dubberly.com/articles/alan-cooper-and-the-goal-directed-design-process](https://www.dubberly.com/articles/alan-cooper-and-the-goal-directed-design-process.html)

## How This Shows Up in Diamonds

Desirability, viability, and feasibility are a lens for diagnosing *where a product is exposed* — which dimension is still riding on assumption. The multiplication is the reason the core question of this system — *have we validated this, or are we working on assumptions?* — has to be asked of all three, not just the comfortable one.

The order maps directly onto the double diamond: the first diamond is largely a desirability question (is this a real problem worth solving?), and viability and feasibility come into sharper focus as a solution takes shape in the second. Leading with feasibility is the same failure as jumping to build before validating the problem — the trap named throughout this system, in different words.

The trio already lives inside two methods, as an evaluation lens rather than a subject:

- **Value Proposition Poster** (`methods/making/design-rationale/value-proposition-poster/`) — surfaces assumptions across all three dimensions and promotes the deal-breakers, forcing a team to say out loud what would have to be true.
- **Rough & Ready Prototyping** (`methods/making/prototyping/rough-and-ready-prototyping/`) — uses the trio (plus usability) to decide what a prototype is testing, and applies the ordering directly: test desirability first, before investing in usability or polish.
