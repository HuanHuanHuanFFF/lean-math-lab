#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
PYTHON="${PYTHON:-python3}"
"$PYTHON" -B code/verify_hashes.py
TMPROOT="$(mktemp -d)"
trap 'rm -rf "$TMPROOT"' EXIT
"$PYTHON" -B code/generate.py --directory "$TMPROOT/certificates"
for name in base_q235.json small_V_square.json; do
  cmp "certificates/$name" "$TMPROOT/certificates/$name"
done
"$PYTHON" -B code/verify.py --certificates "$TMPROOT/certificates" --output "$TMPROOT/replay.json"
cmp outputs/replay.json "$TMPROOT/replay.json"
"$PYTHON" -B code/symbolic_verify.py --output "$TMPROOT/symbolic.json"
cmp outputs/symbolic.json "$TMPROOT/symbolic.json"
"$PYTHON" -B code/interval_regression.py --output "$TMPROOT/intervals.json"
cmp outputs/intervals.json "$TMPROOT/intervals.json"
echo 'CERTIFICATES_AND_OUTPUTS_BYTE_IDENTICAL=PASS'
echo 'ROUND24_REPLAY=PASS'
