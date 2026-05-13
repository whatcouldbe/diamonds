---
name: affinity-clustering-ai-usage
description: Guidance for using Affinity Clustering with AI tools, including simulation and synthesis guidance
source: canonical
---

# Affinity Clustering — Using with A.I.

How to use Affinity Clustering with AI tools, and how the Diamonds agent supports clustering work.

---

## What AI Can Do in Affinity Clustering

**As a synthesizer:**
The agent can take a body of raw research items — notes, quotes, observations — and perform an initial clustering pass. It will group items by affinity, label each cluster with a descriptive title, and flag items that don't cluster cleanly. This is useful as a first pass before a team session, or as a way to process a large dataset quickly.

**As a title consultant:**
Given a set of clusters with rough labels, the agent can help refine titles — pushing one-word labels toward full sentences, testing titles against the three-part test (title → insight → action), and suggesting verb-led alternatives.

**As a heat map reader:**
If the data has been codified using Rose, Thorn, Bud, the agent can read the color distribution across clusters and identify which clusters have the highest concentration of thorns and buds — orienting the team toward where the design work is.

**As a session facilitator:**
The agent can run a clustering session conversationally — presenting items one at a time, inviting grouping decisions, tracking emerging clusters, and prompting for titles when clusters have settled.

---

## Transparency — What Simulation Can and Cannot Do

**What AI clustering does well:**
- Processes large volumes of items quickly
- Applies the affinity criterion consistently without fatigue
- Surfaces initial groupings that a team can react to and refine
- Produces candidate titles that practitioners can accept, reject, or improve
- Is not biased toward expected categories — it doesn't "know" what the themes should be

**What AI clustering cannot replace:**
- The group discussion that surfaces why items belong together
- The experiential knowledge practitioners bring to reading what items mean
- The disagreements that reveal genuine ambiguity in the data
- The sense-making that happens when a team collectively names what they've found
- The commitment that comes from a group building the output together

AI-generated clusters are a starting point, not a finished output. The best use is to generate a first pass and bring it to a team session where people can react, rearrange, and take ownership. A cluster board that was entirely machine-generated carries less shared understanding than one the team built.

---

## Prompt Patterns for AI-Assisted Clustering

**Initial clustering pass:**
> "Here are [N] research items from a [contextual inquiry / interview series / observation session] on [topic]. Please cluster them by affinity — by what they have in common in terms of meaning, not by sentiment or source. Group items that belong together, give each cluster a descriptive title (a full sentence, ideally led with a verb), and flag any items that don't cluster cleanly. Don't pre-define categories — let the groupings emerge from the items."

**Title refinement:**
> "Here are my cluster titles from an affinity clustering session. For each one, tell me: is this a category label or an insight? If it's a category, suggest a revised title that is a full sentence and led with a verb. Apply the test: what is the title, what is the insight, what is the action?"

**Heat map reading:**
> "Here are my clusters from a session where items were coded using Rose, Thorn, Bud (pink = working well, blue = challenges, green = opportunities). Each cluster contains a mix of colored items. Tell me which clusters have the highest concentration of thorns and buds, and what that suggests about where to focus."

**"What did we learn" articulation:**
> "For each of these cluster titles, help me articulate: what did we learn about this cluster, and why is that important? Keep each answer to two sentences. Then suggest how each might be reframed as a How Might We statement."

---

## Digital Tool Integration

Affinity clustering works well in digital collaboration tools. Common setups:

- **Miro / FigJam / Mural:** Use sticky notes in three colors if RTB has been applied (pink, blue, green). Start with a blank frame — no pre-labeled sections. Use text boxes or frames to label clusters once they've settled.
- **Async boards:** One person starts a clustering pass, then invites colleagues to add stickies and adjust groupings before a synchronous review session.
- **Spreadsheet or list format:** For AI-assisted clustering, pasting items as a numbered list works well — the agent can return clusters as grouped lists with titles.

Templates for common tools can be found in `templates/` when available.
