# Issues

Append-only. Track blockers, contradictions, and validation failures.


## Quality Audit Findings (2026-02-23)

### Three-Way Schema War
- Naming manifest, templates, and instantiated files each use different frontmatter field sets
- Sources/Claims/Clusters follow template schema; RUN files follow manifest schema; neither is complete
- No authoritative schema definition exists that all tiers actually follow

### Missing Kawakita Runs
- Zero RUN-*-kawakita-* files despite manifest and rules.md declaring kawakita as in-scope
- Clusters perform Kawakita-style grouping inline, citing CLAIMs directly — breaking CLUSTER→RUN→CLAIM chain
- Resolution: create retroactive RUN records or amend manifest to permit direct CLUSTER→CLAIM references

### Manifest vs Reality Drift
- RUN storage: manifest says flat; actual uses do/say/value × raw/intermediate/final tree
- Framework slugs: manifest says `do-say-value`; actual uses `do` and `say` separately
- CLUSTER location: manifest says `04_personas/`; actual is `05_synthesis/clusters/`
- PERSONA location: manifest says flat `04_personas/`; actual uses `insurers/`+`patients_unknown_symptom/` subdirs
- Template filenames: manifest says `template-claim.md`; actual is `claim_template.md`

### Bidirectional Link Gap
- All 8 personas have empty `cluster_refs: []` while all 6 clusters correctly reference personas
- One-directional traceability only; persona→cluster traversal requires cluster scan

### Non-Canonical Cohort Slug `both`
- 24/30 claims use `applies_to: both` — not defined in manifest's canonical cohort list
- 8/8 sources use `covers_cohorts: [both]` — field name not in manifest schema at all

## Navigation QA Findings (2026-02-23)

### End-to-End Navigation: CONFIRMED WORKING
- synthesis → clusters → personas → runs → claims → sources path is navigable for BOTH cohorts
- All IDs in frontmatter `cluster_refs`, `persona_refs`, `run_refs`, `claim_refs`, `source_refs` point to files that exist
- No dangling references detected at any tier in the forward direction

### Missing Frontmatter Back-Reference (NEW)
- PERSONA-patient_unknown_symptom-002-trust-first-verifier references CLAIM-20260223-021 in body text (lines 39, 46) but does NOT list it in frontmatter `claim_refs`
- Impact: Any tool scanning only frontmatter claim_refs will miss this dependency

### Orphan Claims — 14 of 30 Claims Unreferenced by Any Operational Artifact
- The following claims exist in 02_claims/ but are NEVER referenced by any run, persona, cluster, or synthesis file:
  - CLAIM-001, 003, 007, 014, 015, 016, 017, 020, 025, 026, 027, 028, 029, 030
  - CLAIM-005 appears ONLY in intermediate SAY run files (not final/persona/cluster/synthesis)
- Impact: Nearly half the claims database (14/30) is disconnected from the operational artifact chain
- These claims have valid SOURCE back-references but no forward-references consume them
- This is a significant navigability gap — a user discovering these claims has no path upward to personas/clusters

### Structural Observations from QA Walkthrough
1. Framework runs stored under do/say/value subdirectories with raw/intermediate/final stages — good progressive disclosure but diverges from manifest (already logged in CTX-001)
2. Cluster files under 05_synthesis/clusters/ rather than 04_personas/ — improves conceptual hierarchy (synthesis groups personas) but manifest says otherwise (CTX-002)
3. Persona subdirectories (insurers/, patients_unknown_symptom/) aid browsing but diverge from manifest flat rule (CTX-003)
4. All 8 personas have `cluster_refs: []` — already logged but confirmed as navigation blocker for persona→cluster traversal
5. No index/README at any tier level — a new user entering persona_db/ has no orientation beyond directory names
6. The validation_report.md in 06_audit/ is excellent and self-documents most of these issues, including the assumption inventory

## Code Quality Review Punchlist (2026-02-23, F2)

### Top 10 Issues (ordered by priority)
1. **14/30 orphan claims** — never referenced by run/persona/cluster/synthesis
2. **cluster_refs: [] on all 8 personas** — bidirectional traceability broken
3. **PERSONA-patient-002 body cites CLAIM-021 but frontmatter omits it** — frontmatter gap
4. **Sources use `covers_cohorts: [both]`** — field not in template, `both` not a canonical cohort
5. **24/30 claims use `applies_to: both`** — non-canonical cohort value
6. **Sources/Claims missing manifest-mandated fields** — `type, created_at, created_by, version, status` absent from all 38 files
7. **Kawakita runs exist but not wired into reference chain** — no persona/synthesis references them
8. **Validation report + changelog stale** — still say 'no Kawakita runs' but 6 exist
9. **Cluster location: manifest says 04_personas/, actual is 05_synthesis/clusters/** — CTX-002 still open
10. **Framework slug mismatch** — manifest says `do-say-value`, actual uses `do` and `say` separately

### Zero anti-patterns found
- No TODO/FIXME/TBD/xxx/@ts-ignore markers in any persona_db file

### Positive findings
- All forward-direction references resolve (no dangling refs in CLAIM→SOURCE, RUN→CLAIM, PERSONA→RUN, CLUSTER→PERSONA)
- Every persona body assertion cites at least one CLAIM (no uncited assertions except the one missing frontmatter ref)
- All [ASSUMPTION] markers are explicit and claim-linked
- Audit artifacts (validation_report, contradictions, changelog) are thorough but need updating for kawakita


## CTX-007 Resolved (2026-02-24)

- **Status change:** CTX-007 (Missing Kawakita Framework Runs) moved from Open → Resolved
- **What was done:** Wired `RUN-20260223-insurer-kawakita-001` and `RUN-20260223-patient_unknown_symptom-kawakita-001` into synthesis `run_refs` and all 6 cluster `run_refs`
- **Audit updates:** validation_report.md (record counts, framework coverage table, structural observation #2), contradictions.md (CTX-007 rewritten, summary stats), changelog.md (v1.0.1 entry added)
- **Issue #7 from punchlist** ("Kawakita runs exist but not wired into reference chain") is now resolved
- **Issue #8 from punchlist** ("Validation report + changelog stale") is now resolved for Kawakita-related items
- [2026-02-24] CTX-007 updated; audit refreshed; counts updated. Kawakita runs (RUN-20260223-insurer-kawakita-001, RUN-20260223-patient_unknown_symptom-kawakita-001) are now correctly reflected and linked in all audit artifacts (validation_report.md, contradictions.md, changelog.md).

- 2026-02-24: CTX-007 status change to Resolved. Updated audit artifacts (validation_report.md, contradictions.md, changelog.md) to reflect Kawakita run inclusion and linkage across both cohorts.


## F2 Code Quality Review (2026-02-24)

### Key Findings
1. All 8 personas missing Kawakita in `derived_from_runs` — confirmed across all persona files
2. CTX-008 is resolved in data (cluster_refs populated) but contradictions.md still says Open
3. CTX-001 description is wrong — manifest already uses short slugs (do, say, value, kano, kawakita)
4. CTX-002/CTX-003 Side A descriptions are wrong — manifest matches actual structure; real issue is plural dir names (insurers/ vs insurer/)
5. Kano runs stored under value/ dir instead of kano/ — manifest mismatch
6. 11/30 claims are completely orphaned (never referenced outside own file)
7. All 26 framework run files missing template-required fields (prompt_fingerprint, raw_output, etc.)
8. 2 SAY raw files use non-conformant SYNTHETIC-INTERVIEW-* naming
9. `applies_to: both` used in 24 claims but `both` not in manifest canonical cohorts
10. No TODO/FIXME/TBD markers found — clean codebase

### Verdict: PASS (conditional) — no blocking issues, lineage is navigable, all assertions claim-cited