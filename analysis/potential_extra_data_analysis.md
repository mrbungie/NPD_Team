# Potential Extra Data + Analysis (DeepWiki Review)

This file captures additional context and data opportunities discovered by reviewing `https://deepwiki.com/giumar11/info_MIB`. It is intended to make the NPD investigation and downstream product decisions more complete and Italy/SSN-localized.

Important: some legacy `persona_db` insurer artifacts were originally built with out-of-scope (non-Italy) evidence. This repository's scope is Italy/SSN; non-Italy-only evidence must be treated as out-of-scope and should not be used to justify Italy product decisions.

---

## 1) What DeepWiki Shows (Relevant to Product Development)

### 1.1 Dual mission: analytics + chatbot
DeepWiki describes the `info_MIB` repository as a unified data foundation supporting:
- Healthcare analytics for Italian SSN performance, disparities, and sustainability.
- A “Geen.ai chatbot system” for navigating complex pathologies and identifying needed specialists.

Why this matters:
- Our patient cohort (`patient_unknown_symptom`) is heavily about uncertainty and navigation.
- DeepWiki indicates there is already a data/knowledge pipeline oriented to navigation and specialist mapping.

### 1.2 A mature data source registry pattern
DeepWiki describes `sources_catalog.csv` as a machine-readable central registry (id, owner, category, license, update frequency, geography, granularity, file paths).

Why this matters:
- This is a concrete implementation of the “evidence discipline” we want in persona_db.
- The same approach can be mirrored for persona_db: consistent source registry + reproducible traceability.

### 1.3 Proxy indicator methodology for “complex pathologies”
DeepWiki highlights a proxy-based approach to identify pathologies requiring multiple specialists (because outpatient specialist data is not directly available).

The four proxies described:
- Rare diseases (Orphanet)
- Oncological pathologies (multi-disciplinary care)
- Multimorbidity in elderly (3+ chronic conditions)
- Complex chronic conditions (multi-organ involvement)

Why this matters:
- This is directly aligned with “unknown/unexplained symptoms” journeys.
- It provides an actionable structure for sub-segmentation of patient journeys by complexity driver.
- It supports building features like “which specialist next” and “in what order” (PDTA sequencing).

### 1.4 Italian healthcare data ecosystem and operational constraints
DeepWiki documents Italian institutional datasets that can localize constraints:
- PNGLA waiting times
- PNE outcomes
- LEA/NSG regional KPIs
- SDO discharge data (diagnoses, DRGs)
- ISTAT EHIS survey microdata
- Orphanet rare disease taxonomy and prevalence classes

Why this matters:
- It can shift our product from generic “care navigation” to region- and system-capacity-aware navigation.
- It provides real-world outcome and access constraints that can be used for “VALUE” and “DO” layers.

---

## 2) Gaps vs Current persona_db (What’s missing today)

### 2.1 Stakeholder model mismatch (Italy/SSN)
Some insurer/payer framing does not transfer to Italy/SSN. For Italy-first work, the "purchaser / governance" cohort should be defined in SSN terms, for example:
- Regional health authority / ASL decision-maker
- National/Regional governance stakeholders (e.g., AGENAS; Ministry of Health implementers)
- Public provider networks operating under SSN constraints (procurement and integration in a public context)

This is not a small tweak: procurement cadence, compliance assumptions (privacy, interoperability), and outcome measurement expectations differ.

### 2.2 More patient navigation realism
Our `patient_unknown_symptom` evidence is strong on:
- symptom checkers
- community sensemaking
- legitimacy and access barriers

DeepWiki suggests we can deepen realism by adding system-specific navigation constraints:
- waiting times and regional access capacity
- condition-level complexity score (specialist count) and likely sequences

---

## 3) High-Value Extra Analyses to Make the NPD Output More Complete

### 3.1 Patient journey enrichment: “specialist complexity” layer
Add a complexity dimension to patient personas and journey maps:
- Complexity score (1-5) based on multi-specialty needs
- Proxy indicator category (rare / onco / multimorbidity / complex chronic)

How it helps downstream:
- Feature prioritization: more complex pathways benefit most from structured clinician-ready outputs and sequence guidance.
- Product UX: different complexity categories require different “next steps” (e.g., rare disease center routing vs multimorbidity coordination).

### 3.2 Regional feasibility: “can the system deliver this?” layer
Use PNGLA waiting times and PNE outcomes to add constraints:
- If waiting times are high, patients will self-triage and community-seek longer.
- Navigation features could incorporate alternative paths (teleconsults, referral centers) based on capacity.

How it helps downstream:
- Better prioritization of “follow-through” features (appointments, referrals, administrative support).
- Better measurement: define outcomes not only as clinical but also time-to-appointment / reduction in failed attempts.

### 3.3 Evidence discipline upgrade: unify “sources catalog” pattern
Adopt the `sources_catalog.csv` idea for persona_db:
- Create a single index file listing SOURCE IDs, URLs, cohort mapping, confidence tier, and last_checked.

Why:
- Faster audits.
- Prevents circular reasoning regressions.

---

## 4) Recommended Additional Sources to Add (If We Expand persona_db)

These are suggested for the next iteration (not yet integrated into claims/personas in this file):

### Italy/SSN system constraints
- AGENAS PNE (outcomes) documentation
- PNGLA (waiting time) datasets and methodology
- LEA/NSG monitoring documentation
- Ministry of Health SDO documentation for discharge and diagnosis coding
- ISTAT EHIS methodology and key access/behavior questions

### Italy/EU digital health governance and interoperability
- FSE 2.0 guidance (AgID) and implementation materials
- Interoperability guidelines for public administrations (AgID)
- Ecosistema Dati Sanitari (EDS) institutional materials and implementation updates
- EU EHDS (European Health Data Space) regulation overview and obligations
- Privacy authority (Garante) guidance relevant to health data processing and secondary use

### Rare disease navigation and centers
- Orphanet: rare disease prevalence classes and reference center metadata
- UNIAMO: patient federation materials that reflect navigation pain points (if accessible with clear methodology)

---

## 5) Concrete Next-Step Work Items (If You Want This Integrated)

1) Lock scope to Italy/SSN (this repo's target) and deprecate US-only artifacts.
- Mark US-only sources/claims as legacy/out-of-scope and remove them from any Italy-facing synthesis.
- Redefine the `insurer` cohort into an Italy/SSN purchaser/governance cohort and rebuild claims using Italy/EU regulatory and institutional sources.

2) Add system-capacity constraints to patient personas.
- Add sources/claims from PNGLA/PNE/LEA and introduce a “regional feasibility” section per patient persona.

3) Add condition complexity scoring into persona_db.
- Use Orphanet/SDO/ISTAT sources to generate claims like “rare diseases correlate with prolonged diagnostic odyssey and multi-specialist routing” (must be source-grounded).

4) Update final summary.
- Ensure the summary only cites Italy/EU sources/claims, and add an Italy-specific appendix: operational constraints, regional variance, and how to measure impact.
