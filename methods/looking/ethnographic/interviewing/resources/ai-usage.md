---
name: interviewing-ai-usage
description: Guidance for using Interviewing with AI tools, including protocol generation and simulated interviews
source: canonical
---

# Interviewing — Using with A.I.

How to use Interviewing with AI tools. This is one of the most powerful AI applications in the Diamonds system — the agent can generate protocols, run simulated interviews, and train interviewers.

---

## What AI Can Do in Interviewing

**As a protocol generator:**
Given a research question and context, the agent can draft an interview protocol — sequenced open-ended questions moving from warm-up to deep exploration to wrap-up. The practitioner reviews and refines before use with real people.

**As a simulated interviewee:**
The agent inhabits a described persona and responds to interview questions as that persona would. This is useful for:
- Testing a protocol before using it with real people — does it flow? Are the questions clear? Does the sequence make sense?
- Generating initial hypotheses when access to real users is limited
- Training new interviewers on technique — following up, using silence, avoiding leading questions
- Exploring edge cases — what would a frustrated user say? A power user? A first-time user?

**As a simulated interviewer:**
The agent can conduct an interview following a protocol, asking open-ended questions and following up with probes. This could be used to:
- Interview practitioners to intake new methods into the Diamonds system
- Conduct stakeholder interviews to map organizational context
- Gather structured input from people who prefer async interaction

**As a synthesis tool:**
After interviews, the agent can organize raw notes, identify key quotes, cluster themes across interviews, and flag gaps that need further investigation.

---

## Running a Simulated Interview

### As Interviewee (Testing a Protocol)

**Setup:** Provide the agent with:
1. The persona to inhabit — role, context, experience level, attitudes, pain points
2. The interview protocol you want to test
3. What you're watching for — flow, question clarity, gaps in coverage

**What the agent will do:**
- Respond as the persona would — with appropriate depth, hesitation, tangents, and emotion
- Surface gaps in the protocol — questions that are unclear, topics that are missing, sequences that feel unnatural
- Provide debrief notes after the interview on what worked and what didn't from the interviewee's perspective

**Transparency:** The agent will flag where its responses are likely to differ from a real interviewee. Simulated responses lack genuine lived experience, emotional complexity, and the unexpected tangents that produce the best insights in real interviews.

### As Interviewer (Gathering Input)

**Setup:** Provide the agent with:
1. The research question — what you're trying to understand
2. The context — who is being interviewed and why
3. Any specific topics to explore

**What the agent will do:**
- Generate a protocol using the "I am / May I / Tell me / Why / Anything else / Thank you" structure
- Conduct the interview using open-ended questions, follow-up probes, and silence
- Capture key quotes and observations
- Produce a structured summary organized by theme

---

## Generating Interview Protocols

The agent can generate a full interview protocol given:
- **The research question** — what you're trying to learn
- **The interviewee profile** — who you'll be talking to
- **The time available** — how long the interview will be
- **Topics to cover** — specific areas you want to explore
- **Any constraints** — sensitive topics to navigate carefully, organizational context

The generated protocol follows the standard structure:
1. "I am..." — introduction and purpose
2. "May I..." — permissions and consent
3. "Tell me..." — sequenced open-ended questions from warm-up to deep exploration
4. "Is there anything else?" — catch what was missed
5. "Thank you" — close with gratitude

The practitioner should always review and refine the protocol before using it. The agent's protocol is a strong first draft, not the final version.

---

## Prompt Patterns

**Protocol generation:**
> "Generate an interview protocol for a 45-minute discovery interview. I'm trying to understand [research question]. The interviewees will be [profile]. I want to cover [topics]. Follow the I am / May I / Tell me / Anything else / Thank you structure."

**Simulated interview (testing a protocol):**
> "I want to test this interview protocol. Please play the role of [persona description — role, context, attitudes, pain points]. I'll interview you using my protocol. Respond naturally as this person would — including hesitation, tangents, and short answers where realistic. After we're done, tell me where the protocol worked and where it didn't."

**Multi-persona protocol testing:**
> "Test this protocol three times, each as a different persona: (1) [persona 1], (2) [persona 2], (3) [persona 3]. For each, flag where the protocol produced useful answers and where it fell flat."

**Post-interview synthesis:**
> "Here are my raw notes from five interviews. Please identify key quotes, cluster themes across interviews, flag contradictions or tensions, and suggest what questions I should ask in the next round."

---

## Transparency — What Simulation Can and Cannot Do

**What simulation does well:**
- Tests protocol flow, question clarity, and sequencing before real interviews
- Generates plausible responses that help identify gaps in coverage
- Produces useful first-pass hypotheses about likely pain points and motivations
- Trains interviewers on technique in a low-stakes environment
- Scales — can simulate 10 personas in the time it takes to do one real interview

**What simulation cannot replace:**
- Genuine lived experience and emotional response
- The unexpected tangent that reveals something you never thought to ask about
- Real body language, facial expressions, and tone
- Validation that your assumptions about the persona are correct
- The credibility that comes from having actually talked to real people

Simulated interviews are most valuable as preparation and hypothesis generation. They are not a substitute for real human interviews. The agent will always be transparent about this distinction.
