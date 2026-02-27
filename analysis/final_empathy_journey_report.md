# Empathy and Customer Journey Report (Italy/SSN)

This is the final, human-readable story of the two-sided reality in Italy/SSN:
- patients trying to get from "something feels wrong" to "I have a plan" and "a clinician can help me", and
- payer/procurement stakeholders trying to approve solutions that are defensible under HTA, governance, and interoperability constraints.

Scope: Italy (SSN and regional context), with two distinct cohorts:
1) `patient_unknown_symptom`
2) `insurer` (in Italy/SSN this maps to procurement/governance stakeholders, not US-style private payers).

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

| Says (verbatim) | Thinks (verbatim, unsaid) | Does (quantified + observed) | Feels (verbatim) | Values (quantified) |
| :--- | :--- | :--- | :--- | :--- |
| "I need you to take the pattern seriously and help me choose the next test, not restart the story from zero." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))<br>"Please help me get to the right specialist without making me prove it again." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md))<br>"I am not making this up. I just need someone to connect the dots." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md))<br>"Please tell me what I should do next in a calm way." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md))<br>"I need reassurance, but I also need to know what sign would change the plan." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))<br>"I am tired of proving I'm not lying. I need a plan." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md)) | "I'm scared that if I don't present it perfectly, I'll be dismissed again. I rehearse how to say it so it sounds credible." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))<br>"What if this is serious and I'm wasting time? But also: what if they think I'm exaggerating?" (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-016.md))<br>"If I don't find someone like me, I feel like I'm disappearing." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-017.md))<br>"My brain goes to worst case, then I feel ashamed about it." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))<br>"I think: I have to perform. If I cry, they stop listening." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md)) | First 48 hours: search engine 7/8; symptom checker 5/8; online community 3/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))<br>Accessed care in last 6 months: MMG 8/8; diagnostic tests 6/8; SSN specialist visits 6/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))<br>Top barriers: access delay 6/8; repeat story 4/8; bureaucracy/admin 4/8; not being believed 4/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv)) | "Before: nervous and focused. During: I go blank if I feel rushed. After: either relief (if they give a plan) or anger and shame (if they minimize it)." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-015.md))<br>"Fear first. Then exhaustion. If I get a concrete plan, I relax for a few days." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-019.md))<br>"The worst is the empty space after I leave the clinic. No plan means I fill it with panic." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-020.md))<br>"Mostly anger and exhaustion. Relief only when someone gives me a concrete next step." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-021.md)) | Outcomes that matter: reassurance and clarity 5/8; faster access 5/8; fewer repeat explanations 5/8; legitimacy support 4/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv))<br>Unacceptable tools: too generic 5/8; too alarmist 4/8; adds more steps 4/8. (source: [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv)) |

### Product Design Implication
The product job is not "diagnose me".
The product job is: turn uncertainty into a calm, clinician-usable next step that reduces retelling and keeps momentum after handoffs.

Sources: [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)

---

## 4) Empathy Map B - Insurer (Italy/SSN)

### Segment
People who function as the "insurer" side of the market in Italy/SSN: Regional/ASL/hospital procurement and governance actors evaluating digital health adoption under SSN constraints.

Interview snapshot (synthetic, n=8):
- Counts and distributions: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv)
- Full quote pool: [`analysis/interview_quant/stakeholder_quote_pool.md`](analysis/interview_quant/stakeholder_quote_pool.md)

| Says (verbatim) | Thinks (verbatim, hidden veto) | Does (quantified + observed) | Feels (verbatim) | Values (quantified) |
| :--- | :--- | :--- | :--- | :--- |
| "Without a measurable outcomes plan and privacy compliance, adoption is not defensible." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md))<br>"Integration is the project. If integration fails, the tool doesn't exist." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))<br>"We can approve innovation, but only if we can measure outcomes and stay compliant." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-025.md))<br>"If it creates manual reconciliation, it won't survive." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-028.md)) | "The hidden veto is reputational: if a tool touches sensitive data without airtight governance, it becomes a scandal risk." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md))<br>"Hidden veto: our security team. If they flag it, it stops." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md))<br>"Hidden veto: privacy office. If they can't sign off, nothing moves." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-030.md)) | Stakeholders involved: IT security 7/8; privacy/legal 6/8; procurement 5/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))<br>Blocking risks: compliance risk 7/8; workflow disruption 5/8; vendor lock-in 3/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))<br>Evidence trusted: pilot results 8/8; peer reviewed 4/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv)) | "Confident when the dossier is appraisal-ready and the integration story is explicit. Anxious when it's a black box with generic outcomes." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-023.md))<br>"Confident when integration is testable in pre-prod with clear specs. Anxious when it's 'trust us'." (source: [`analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md`](analysis/persona_db/03_framework_runs/interviews/responses/RESPONSE-SOURCE-20260225-024.md)) | Core jobs: reduce risk and ensure compliance 5/8; monitoring 4/8; interoperability and scaling 4/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv))<br>Contracting preference: fixed fee 7/8. (source: [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv)) |

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

## 6) Customer Journey Map B - Insurer Adoption Journey (Italy/SSN)

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
