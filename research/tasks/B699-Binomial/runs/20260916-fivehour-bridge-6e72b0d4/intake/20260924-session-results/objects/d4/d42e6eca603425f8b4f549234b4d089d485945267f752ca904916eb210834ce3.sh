#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
OUT="$ROOT/certificates/replay-fresh"
rm -rf "$OUT"
PYTHONDONTWRITEBYTECODE=1 python3 -B "$ROOT/code/research_round.py" "$OUT" | tee "$ROOT/logs/replay.log"
for f in summary.json ksat2_31_payoff.json current_posttrace.json conditional_ksat2_31_posttrace.json; do
  cmp "$OUT/$f" "$ROOT/certificates/$f"
done
PYTHONDONTWRITEBYTECODE=1 python3 -B "$ROOT/code/check_certificate.py" "$ROOT" | tee "$ROOT/logs/check.log"
echo PASS_CLEAN_REPLAY_BYTE_IDENTICAL
