# Empathy and Customer Journey Report (Italy/SSN)

This is the final, human-readable story of the two-sided reality in Italy/SSN:
- patients trying to get from "something feels wrong" to "I have a plan" and "a clinician can help me", and
- payer/procurement stakeholders trying to approve solutions that are defensible under HTA, governance, and interoperability constraints.

Scope: Italy (SSN and regional context), with two distinct cohorts:
1) `patient_unknown_symptom`
2) `insurer` interpreted as payer/procurement/governance stakeholders in Italy/SSN.

Sources used in this document:
- Narrative synthesis: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)
- Business digest building blocks: [`analysis/business_maker_digest.md`](analysis/business_maker_digest.md)
- Quantitative overlays (Eurostat EHIS/SHA + Orphadata metadata surface): [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md)

---

## 1) Empathy Map Introduction

This empathy map is about one system seen from two seats:
- Patients live the uncertainty, the fear of not being believed, and the handoffs.
- Stakeholders live the appraisal pressure, integration risk, and compliance vetoes.

The goal is not "more insights". It is alignment:
- build patient value that actually survives SSN friction, and
- package it in a way that can be procured and scaled.

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md), [`analysis/business_maker_digest.md`](analysis/business_maker_digest.md)

---

## 2) Empathy Map Summary

### Patient (unknown/unexplained symptoms)
- Core need: "help me move forward" without making me spiral.
- Trust breaks when guidance feels alarmist, generic, or like extra work.
- Trust grows when the tool helps them speak to a clinician clearly and avoids repeat-story fatigue.

Quantitative context (Italy):
- Waiting-list unmet need remains high: 29.9% (2014) -> 25.2% (2019).
- A handoff-risk proxy peaks for ages 45-54 and 55-64, and is lowest for 15-24.

### Procurement/governance stakeholder (Italy/SSN)
- Core need: approve something they can defend to auditors, clinicians, and the public.
- Trust breaks when vendors cannot explain data flows, accountability, or measurable outcomes.
- Trust grows when evidence + governance + integration are delivered as a complete, testable pack.

Quantitative context (Italy):
- Financing mix (2024): HF1 public/compulsory 74.25%, HF2 voluntary 3.44%, HF3 out-of-pocket 22.31%.
- Structured data surfaces are available (EHIS/SHA/Orphadata), enabling measurable design and monitoring.

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md), [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md)

---

## 3) Empathy Map A - Patient Unknown Symptom

### Segment
People navigating persistent, unclear symptoms through self-triage plus SSN pathways.

Interview snapshot (synthetic, n=8):
- Counts and distributions: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv)
- Full quote pool: [`analysis/interview_quant/patient_quote_pool.md`](analysis/interview_quant/patient_quote_pool.md)

Quantified behaviors and needs (n=8):
- First 48 hours: search engine 7/8; symptom checker 5/8; online community 3/8.
- Care access in last 6 months: MMG 8/8; diagnostic tests 6/8; SSN specialist visit 6/8.
- Top barriers: access delay 6/8; repeat story 4/8; bureaucracy/admin 4/8; not being believed 4/8.
- Most trusted info: specialist 7/8; MMG 6/8; official health sites 4/8.
- Top outcomes: faster access 5/8; fewer repeats 5/8; reassurance and clarity 5/8.
- Unacceptable tools: too generic 5/8; too alarmist 4/8; adds steps 4/8.

| Says | Thinks |
| :--- | :--- |
| "Is this happening to you?" | "If I don't explain it perfectly, I will be dismissed." |
| "I need a clear next step, not another reset." | "What would change the plan, concretely?" |
| "I want to be taken seriously." | "Normal test results don't mean I'm fine if symptoms persist." |

More "Says" (direct quotes, interview pool):
- "I used a checker at 2am and it made everything worse. Then I couldn't sleep." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md))
- "At this point I'm not searching for diagnoses, I'm searching for a clinician who won't dismiss me." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md))
- "I need reassurance, but I also need to know what sign would change the plan." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))
- "I am tired of proving I'm not lying. I need a plan." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md))

More "Thinks" (unsaid thoughts, interview pool):
- "I'm scared that if I don't present it perfectly, I'll be dismissed again." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))

| Does | Feels |
| :--- | :--- |
| Uses search + symptom checkers early | Anxiety, especially at night uncertainty peaks |
| Seeks peer similarity in online communities | Shame/anger after minimization or dismissal |
| Repeats story across MMG/specialist handoffs | Relief when there is explicit ownership of next step |
| Tries to convert symptoms into a credible narrative | Fatigue from admin friction and retelling |

More "Feels" (direct feelings language, interview pool):
- "I feel believed when they ask clarifying questions and write things down like they matter." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))
- "Believed means: we agree on a plan. Not believed means: they call it stress and end the visit." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md))

### Expanded Empathy Detail (Patient, n=8)

Says (top quotes):
- "I need you to take the pattern seriously and help me choose the next test, not restart the story from zero." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))
- "Please help me get to the right specialist without making me prove it again." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md))
- "I am not making this up. I just need someone to connect the dots." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md))
- "I just want to know what to do next without being treated like I'm dramatic." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-018.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-018.md))
- "Please tell me what I should do next in a calm way." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md))
- "I need reassurance, but I also need to know what sign would change the plan." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))
- "I am tired of proving I'm not lying. I need a plan." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md))
- "I need you to stop treating me like a mystery story and start treating me like a person." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md))

Thinks (unsaid, pattern across interviews):
- "I'm scared that if I don't present it perfectly, I'll be dismissed again. I rehearse how to say it so it sounds credible." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))
- "I keep thinking: what if this is serious and I'm wasting time? But also: what if they think I'm exaggerating?" (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md))
- "If I don't find someone like me, I feel like I'm disappearing." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md))
- "I think I'm wasting everyone's time. I think I'm annoying." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-018.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-018.md))
- "I think I'm going to miss something serious, and then it'll be my fault." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md))
- "My brain goes to worst case, then I feel ashamed about it." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))
- "I think: I have to perform. If I cry, they stop listening." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md))
- "I think: even if I had the diagnosis tomorrow, I'd still have lost years of being doubted." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md))

Feels (during the journey):
- "Before: nervous and focused. During: I go blank if I feel rushed. After: either relief (if they give a plan) or anger and shame (if they minimize it)." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))
- "I switch between urgency and exhaustion. The paperwork and booking steps make me feel powerless." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md))
- "I feel relief in the community and dread in the waiting room." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md))
- "Mostly shame and fear. Relief when someone online says 'me too'." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-018.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-018.md))
- "Fear first. Then exhaustion. If I get a concrete plan, I relax for a few days." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md))
- "The worst is the empty space after I leave the clinic. No plan means I fill it with panic." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))
- "Mostly anger and exhaustion. Relief only when someone gives me a concrete next step." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md))
- "I'm numb now. It's survival." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-022.md))

Does (quantified signals from the synthetic interviews):
- First 48 hours: search engine 7/8; symptom checker 5/8; online community 3/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))
- Accessed care in last 6 months: MMG 8/8; diagnostic tests 6/8; SSN specialist visits 6/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))
- Barriers: access delay 6/8; repeat story 4/8; bureaucracy/admin 4/8; not being believed 4/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))

Values (quantified signals from the synthetic interviews):
- Outcomes that matter: reassurance and clarity 5/8; faster access 5/8; fewer repeat explanations 5/8; legitimacy support 4/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))
- Unacceptable tools: too generic 5/8; too alarmist 4/8; adds more steps 4/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))

### Product Design Implication
The product job is not "diagnose me".
The product job is: turn uncertainty into a calm, clinician-usable next step that reduces retelling and keeps momentum after handoffs.

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)

---

## 4) Empathy Map B - Payer / Procurement Stakeholder (Italy/SSN)

### Segment
Regional/ASL/hospital procurement and governance actors evaluating digital health adoption under SSN constraints.

Interview snapshot (synthetic, n=8):
- Counts and distributions: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv)
- Full quote pool: [`analysis/interview_quant/stakeholder_quote_pool.md`](analysis/interview_quant/stakeholder_quote_pool.md)

Quantified gates and preferences (n=8):
- Primary evaluation criterion: operational feasibility 4/8; clinical outcomes 2/8.
- Evidence trusted: pilot results 8/8; peer reviewed 4/8.
- Blocking risks: compliance risk 7/8; workflow disruption 5/8; vendor lock-in 3/8.
- Contracting: fixed fee 7/8.
- Internal stakeholders involved: IT security 7/8; privacy/legal 6/8; procurement 5/8.
- Core jobs: reduce risk and ensure compliance 5/8; measurement and monitoring 4/8; interoperability and scaling 4/8.

| Says | Thinks |
| :--- | :--- |
| "Bring an HTA-ready dossier, not marketing slides." | "If governance is unclear, it is dead on arrival." |
| "Show outcomes + privacy compliance." | "Integration risk is operational risk." |
| "Map your data flows and accountability." | "Who owns monitoring after pilot, and at what burden?" |

More "Says" (direct quotes, interview pool):
- "Integration is the project. If integration fails, the tool doesn't exist." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))
- "If the data governance is unclear, it's dead on arrival." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))

More "Thinks" (unsaid constraints, interview pool):
- "If we approve something and governance breaks later, it's on us." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md))

| Does | Feels |
| :--- | :--- |
| Runs multi-gate checks (HTA, DPIA, IT/integration, monitoring) | Cautious due to audit/reputational exposure |
| Prioritizes interoperability fit with EDS/FSE constraints | Skeptical of ROI claims without independent evidence |
| Rejects unclear controller/processor and lawful-basis models | More confident when artifacts are testable in pre-prod |
| Focuses on scale-out feasibility, not pilot optics only | Concerned about hidden manual workload post-pilot |

More "Does" (what they actually do, quantified cues):
- 7/8 explicitly include IT security in the stakeholder set; 6/8 include privacy/legal; 5/8 include procurement.

More "Values" (what success looks like, quantified cues):
- 5/8 prioritize risk and compliance reduction as a core job; 4/8 prioritize monitoring; 4/8 prioritize interoperability and scaling.

### Expanded Empathy Detail (Stakeholder, n=8)

Says (go/no-go language, one per interview variant):
- "Without a measurable outcomes plan and privacy compliance, adoption is not defensible." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md))
- "If the data governance is unclear, it's dead on arrival." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))
- "We can approve innovation, but only if we can measure outcomes and stay compliant." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md))
- "We need measurable pathway impact and governance, otherwise it's just noise." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-026.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-026.md))
- "The pilot must produce a measurable signal and an integration path that scales." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-027.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-027.md))
- "If it creates manual reconciliation, it won't survive." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md))
- "Operations first: if it breaks, we will be blamed." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-029.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-029.md))
- "We need privacy compliance and auditability, otherwise procurement risk is unacceptable." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md))

Thinks (hidden vetoes, one per interview variant):
- "The hidden veto is reputational: if a tool touches sensitive data without airtight governance, it becomes a scandal risk." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md))
- "Hidden veto: our security team. If they flag it, it stops." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))
- "Hidden veto is political: if it looks like we are experimenting on citizens without governance, it stops." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md))
- "Hidden veto: if clinicians feel it's imposed without evidence, they reject it." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-026.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-026.md))
- "Hidden veto: when the pilot looks like a one-off with no path to scale, leadership says no." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-027.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-027.md))
- "Hidden veto: frontline staff. If they say it's extra work, it dies." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md))
- "Hidden veto: when frontline teams say it's extra burden." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-029.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-029.md))
- "Hidden veto: privacy office. If they can't sign off, nothing moves." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md))

Feels (confidence vs anxiety language, one per interview variant):
- "Confident when the dossier is appraisal-ready and the integration story is explicit. Anxious when it's a black box with generic outcomes." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md))
- "Confident when integration is testable in pre-prod with clear specs. Anxious when it's 'trust us'." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))
- "Confident when there is a clean decision memo with evidence and a monitoring plan. Anxious when it becomes a vendor-led story." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md))
- "Confident when the outcome measures are crisp and the governance is clear." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-026.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-026.md))
- "Confident when I have an integration checklist and a measured outcome. Anxious when it's vague." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-027.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-027.md))
- "Confident when the rollout plan is honest. Anxious when it's a one-slide promise." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md))
- "Confident when I see the end-to-end workflow impact mapped." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-029.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-029.md))
- "Confident when I see governance documents and can audit data flows." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md))

Does (quantified signals from the synthetic interviews):
- Internal stakeholders pulled in: IT security 7/8; privacy/legal 6/8; procurement 5/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))
- Blocking risks named: compliance risk 7/8; workflow disruption 5/8; vendor lock-in 3/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))
- Evidence trusted: pilot results 8/8; peer reviewed 4/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))

Values (quantified signals from the synthetic interviews):
- Core jobs: reduce risk and ensure compliance 5/8; monitoring 4/8; interoperability and scaling 4/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))
- Contracting preference: fixed fee 7/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))

### Product and GTM Implication
What wins is a complete approval pack:
- HTA-ready evidence framing,
- an outcomes + monitoring plan,
- DPIA-ready governance inputs, and
- an explicit, testable integration story.

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)

---

## 5) Customer Journey Map A - Patient Unknown Symptom

| Stage | Planning trigger | First-line management | Care branch | Diagnostics/handoff | Evening reset | Reflection |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| What happens | New symptom appears; uncertainty spikes | Search/checker/community sensemaking | Decide wait/self-care/MMG/urgent | Tests + referrals + specialist loops | Attempts to regain calm and function | Evaluates whether progress happened |
| Main friction | No clear initial triage confidence | Alarmist outputs, noise, contradictory input | Booking and access delays | "Normal" result with no next owner | Emotional depletion | Restart-from-zero fatigue |
| Desired outcome | Clear and calm initial framing | Practical next-step fork | Fast transition to right care level | Explicit ownership of next step | Preserve momentum | Reusable continuity artifact |

### Priority Moments to Fix
1. Post-test ambiguity ("normal result" without ownership)
2. MMG-to-specialist handoff loss
3. Repeat-story burden across visits

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md), [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md)

---

## 6) Customer Journey Map B - Procurement / Adoption (Italy/SSN)

| Stage | Need identification | Appraisal framing | Compliance/governance | Integration feasibility | Pilot decision | Scale-out decision |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| What happens | Define problem and mandate | Assess evidence against HTA/procurement logic | Validate DPIA/controller/processor/lawful basis | Validate EDS/FSE-aligned architecture | Decide pilot scope and ownership | Decide expand vs stop |
| Main friction | Weak problem-to-outcome framing | Non-appraisal-ready evidence | Governance ambiguity | "Trust us" integration claims | Manual reporting burden | No credible monitoring/ownership model |
| Desired outcome | Problem and value logic are explicit | Recommendation-ready evidence set | Audit-ready governance pack | Testable pre-prod integration path | Clear success criteria and responsibilities | Predictable operational model across sites |

### Priority Moments to Fix
1. Governance veto prevention (before pilot)
2. Integration proof before procurement lock-in
3. Monitoring ownership and reporting burden at pilot exit

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)

---

## 7) Service Recommendations

### Recommendation A: Patient Continuity Pack
- A one-page clinician summary (timeline, symptom changes, what was tried)
- A forked next-step plan ("if X then Y" and "if not, do Z")
- A visit script that helps the patient be believed without overexplaining

### Recommendation B: Procurement Readiness Pack
- HTA-ready evidence packet (problem, outcomes, how it can be evaluated)
- Governance packet (controller/processor mapping, lawful basis, DPIA inputs, audit controls)
- Interoperability packet (data-flow map, standards mapping, test criteria, rollout checklist)

### Recommendation C: Pilot-to-Scale Contracting Guardrails
- Pre-agreed outcome ownership
- Pre-agreed monitoring cadence and data burden limits
- Explicit no-manual-reconciliation threshold for scale approval

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)

---

## 8) Appendix - Quantitative Overlay (Italy)

From [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md):
- Q1: unmet waiting-list need 29.9% (2014) -> 25.2% (2019)
- Q2: complexity proxy highest age 45-54 (7.975)
- Q3: handoff-risk hotspot highest age 45-54 (1.605)
- Q4: equity gap (low-high education) 7.6 pp -> 6.6 pp
- Q5: financing mix (2024) HF1 74.25%, HF2 3.44%, HF3 22.31%
- Q6: data readiness metrics (EHIS/SHA observations and Orphadata path coverage)

Repro command:

```bash
bash ./analysis/r_pipeline/run_r_pipeline.sh --phase all --strict
```
