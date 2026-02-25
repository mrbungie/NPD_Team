# Decisions

Append-only. Record scope decisions, thresholds, and conflict-resolution rules.

- 2026-02-23: v1 scope lock = DO/SAY/VALUE + Interview Planning + Kawakita + Kano only.
- 2026-02-23: Evidence-first chain enforced: SOURCE -> CLAIM -> FRAMEWORK_RUN -> PERSONA -> SYNTHESIS.
- 2026-02-23: Assumptions require `expires_on` + `validation_method` and must be retired or validated on expiry.
- 2026-02-23: Conflicts default to competing hypotheses + explicit contradiction logging (no forced consensus).

- 2026-02-24: Updated naming_manifest.md to accurately reflect the actual filesystem layout (nested framework runs, persona cohorts, synthesis clusters), template naming convention (*_template.md), and varying frontmatter schemas across record types.
- 2026-02-24: Created and linked synthetic SAY interview artifacts for insurer and patient_unknown_symptom cohorts (SYNTHETIC-INTERVIEW-INSURER-001.md, SYNTHETIC-INTERVIEW-PATIENT-001.md) to strengthen evidence-chain coverage.
