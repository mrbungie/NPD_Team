#!/usr/bin/env bash
set -u

PHASE="all"
STRICT=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --phase)
      PHASE="$2"
      shift 2
      ;;
    --strict)
      STRICT=1
      shift
      ;;
    *)
      echo "Unknown arg: $1"
      exit 1
      ;;
  esac
done

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
PIPE_DIR="$ROOT_DIR/analysis/r_pipeline"
LOG_DIR="$PIPE_DIR/logs"
mkdir -p "$LOG_DIR"

if ! command -v Rscript >/dev/null 2>&1; then
  echo "Rscript not found in PATH"
  exit 1
fi

run_one() {
  local script_path="$1"
  local log_name
  log_name="$(basename "$script_path" .R).log"
  echo "==> Running $script_path"
  Rscript "$script_path" >"$LOG_DIR/$log_name" 2>&1
  local rc=$?
  if [[ $rc -ne 0 ]]; then
    echo "FAILED ($rc): $script_path"
    echo "See log: $LOG_DIR/$log_name"
    if [[ $STRICT -eq 1 ]]; then
      exit $rc
    fi
  else
    echo "OK: $script_path"
  fi
}

phase1_scripts=(
  "$PIPE_DIR/scripts/phase1/query_q1_regional_access_outcome.R"
  "$PIPE_DIR/scripts/phase1/query_q2_diagnostic_odyssey_complexity.R"
  "$PIPE_DIR/scripts/phase1/query_q3_handoff_hotspots.R"
  "$PIPE_DIR/scripts/phase1/query_q4_equity_variance.R"
  "$PIPE_DIR/scripts/phase1/query_q5_procurement_readiness.R"
  "$PIPE_DIR/scripts/phase1/query_q6_chatbot_retrieval_quality.R"
)

phase2_scripts=(
  "$PIPE_DIR/scripts/phase2/plot_table_q1_regional_access_outcome.R"
  "$PIPE_DIR/scripts/phase2/plot_table_q2_diagnostic_odyssey_complexity.R"
  "$PIPE_DIR/scripts/phase2/plot_table_q3_handoff_hotspots.R"
  "$PIPE_DIR/scripts/phase2/plot_table_q4_equity_variance.R"
  "$PIPE_DIR/scripts/phase2/plot_table_q5_procurement_readiness.R"
  "$PIPE_DIR/scripts/phase2/plot_table_q6_chatbot_retrieval_quality.R"
)

if [[ "$PHASE" == "phase1" || "$PHASE" == "all" ]]; then
  echo "--- PHASE 1 ---"
  for s in "${phase1_scripts[@]}"; do
    run_one "$s"
  done
fi

if [[ "$PHASE" == "phase2" || "$PHASE" == "all" ]]; then
  echo "--- PHASE 2 ---"
  for s in "${phase2_scripts[@]}"; do
    run_one "$s"
  done
fi

echo "Pipeline finished (phase=$PHASE, strict=$STRICT)"
