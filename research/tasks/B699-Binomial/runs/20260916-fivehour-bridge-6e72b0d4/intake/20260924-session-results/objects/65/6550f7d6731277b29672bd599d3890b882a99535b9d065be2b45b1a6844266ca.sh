#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 -B code/verify_hashes.py
TEMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TEMP_DIR"' EXIT
python3 -B code/generate.py --out "$TEMP_DIR/defect_235_periodic.json"
python3 -B code/generate_seven.py --out "$TEMP_DIR/two_seven_tails.json"
cmp certificates/defect_235_periodic.json "$TEMP_DIR/defect_235_periodic.json"
cmp certificates/two_seven_tails.json "$TEMP_DIR/two_seven_tails.json"
python3 -B code/verify.py "$TEMP_DIR/defect_235_periodic.json" --seven "$TEMP_DIR/two_seven_tails.json" --out "$TEMP_DIR/replay.json"
cmp outputs/replay.json "$TEMP_DIR/replay.json"
python3 -B code/symbolic_verify.py --out "$TEMP_DIR/symbolic.json"
cmp outputs/symbolic.json "$TEMP_DIR/symbolic.json"
echo CERTIFICATES_AND_OUTPUTS_BYTE_IDENTICAL=PASS
echo ROUND25_REPLAY=PASS
