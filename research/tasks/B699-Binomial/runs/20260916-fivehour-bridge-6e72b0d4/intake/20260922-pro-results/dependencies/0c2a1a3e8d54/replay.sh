#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
TEMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TEMP_DIR"' EXIT
python3 evidence/make_certificate.py --output "$TEMP_DIR/certificate.json"
cmp evidence/cyclotomic_defect_one.json "$TEMP_DIR/certificate.json"
echo 'DETERMINISTIC_CERTIFICATE_REGENERATION=PASS'
python3 evidence/verify_certificate.py
python3 evidence/symbolic_check.py
python3 evidence/finite_recovery.py --defect 1 --output "$TEMP_DIR/recovery.json"
cmp evidence/defect_one_recovery.json "$TEMP_DIR/recovery.json"
echo 'GENERIC_DEFECT_ONE_RECOVERY=EMPTY (150 exhaustively bounded quadratics)'
echo 'REPLAY=PASS'
