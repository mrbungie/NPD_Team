# Concepts (Italy/SSN)

This page rewrites the product concepts in plain language, grounded in the two seats that matter in Italy/SSN:

- **Citizen**: living the uncertainty, the access friction, and the handoffs.
- **Insurer (Italy/SSN)**: the buyer/accountability seat (procurement + governance inside Regions/ASL/hospitals), trying to approve something defensible.

Important framing:
- The citizen is the **primary experience**.
- The insurer side is the **primary buyer and accountability owner**.
- Clinicians are **part of the environment and integration path**, not the buyer.

Where this comes from (clickable sources):
- Empathy + journey narrative: [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)
- Full traceability and inputs: [`analysis/final_empathy_journey_report_history.md`](analysis/final_empathy_journey_report_history.md)

---

## Concept 1: Clear Path

### Human promise
"I don't need a diagnosis. I need a clear next step I can actually follow, and I need the system to stop resetting me to zero."

### What it is
A citizen-facing continuity app that turns uncertainty into a structured journey.

It produces two outputs:
1) **A structured symptom + attempt timeline** the citizen can carry across handoffs.
2) **A measurable progress state** (how far the person has advanced through the pathway, without claiming diagnosis).

### What it is not
- Not a diagnostic engine.
- Not a clinician override.
- Not a black-box "AI doctor".

### When it shows up
Citizen side:
- When symptoms first feel unfamiliar
- Before booking MMG
- After "normal" or unclear results
- During referral waits

Insurer side:
- When monitoring repeat access without ownership
- When evaluating referral loops and inefficiency
- When needing measurable pilot outcomes without diagnostic liability

### Citizen interface
- Guided symptom timeline ("what changed?" prompts)
- One-page export (structured summary)
- Clear fork logic ("if X then Y, if not then Z")
- Calm red-flag explanation (avoid panic spirals)

### Insurer interface
An aggregated monitoring view (no individual medical content), e.g.:
- continuity breakdowns by segment
- post-test re-access signals
- referral loop duration proxies
- drop-off after testing

### Why an insurer would adopt
Because it offers **measurable continuity improvement** without taking on diagnostic liability:
- fewer repeat visits driven by uncertainty
- clearer handoff accountability signals
- a defensible monitoring narrative for pilots

### Pilot success signals (examples)
- reduced repeat-story burden / restart loops
- reduced re-access after "normal" results without next-step ownership
- improved follow-through time to the next owned step

Sources: [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)

---

## Concept 2: Next Owner

### Human promise
"After a visit, I want to know who owns the next step, by when, and what happens if it doesn't happen."

### What it is
A lightweight ownership layer that sits on top of existing care flows.

It records:
- **next-step owner**
- **expected timeframe**
- **escalation trigger**

Citizen sees clarity.
Insurer sees accountability and handoff latency.

### What it is not
- Not an EHR replacement.
- Not a clinical decision tool.

### When it shows up
Citizen:
- after a referral
- after a diagnostic result
- when symptoms persist despite "normal" results

Insurer:
- referral monitoring
- complaint / escalation analysis
- pilot evaluation (handoff latency, ownership gaps)

### Citizen interface
- "Next step owner: X"
- "Expected by: date"
- "If not contacted by then: do this"

### Insurer interface
- handoff latency distribution
- ownership gaps by pathway stage
- abandoned referral indicators
- escalation rate and causes

### Why an insurer would adopt
Because it reduces reputational risk and makes system accountability measurable.

Sources: [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)

---

## Concept 3: Access Map

### Human promise
"Tell me what to expect, and help me prepare so I'm not surprised by the system."

### What it is
A regional access observatory that combines:
- waiting-list patterns,
- referral delays,
- citizen continuity signals,
- equity gaps.

Citizen side = transparency and preparation.
Insurer side = planning and monitoring.

### Citizen interface
- expected waiting windows (where publishable)
- pathway expectations (what usually happens next)
- visit preparation checklist
- documentation checklist

### Insurer interface
- segment-level unmet-need and friction signals
- equity gap tracking
- referral inefficiency hotspots
- pilot impact: "did continuity improve in the pilot area?"

### Why an insurer would adopt
Because it turns "we think access is bad" into a measurable dashboard the region can act on.

Sources: [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)

---

## Concept 4: Adoption Studio

### Human promise
"Make adoption defensible. Make pilots scalable. Don't drown us in manual reporting."

### What it is
A payer-facing workspace that standardizes adoption for citizen-facing tools.

It standardizes:
- outcome definitions
- monitoring cadence
- governance mapping (DPIA-ready inputs)
- interoperability checklist

Citizen impact is indirect:
- fewer "random pilots" that die
- clearer monitoring with capped reporting burden
- more consistent rollouts

### Why an insurer would adopt
Because it reduces procurement risk: evidence + governance + integration become a repeatable pack.

Sources: [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)

---

## How the Concepts Connect

Think of it as four layers that each produce measurable artifacts:

1) **Clear Path** (citizen continuity)
2) **Next Owner** (handoff accountability)
3) **Access Map** (regional monitoring)
4) **Adoption Studio** (defensible procurement and scale)

Each layer reduces either:
- citizen uncertainty and restart loops, or
- insurer defensibility and operational risk.

---

## Recommended Entry Point

Start with **Clear Path** plus **aggregated friction analytics**.

Why:
- low diagnostic liability
- measurable continuity outcomes
- aligns to waiting-list and handoff pain
- produces a story the insurer side can defend

Then add **Next Owner** to make handoffs explicit.

Sources: [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)
