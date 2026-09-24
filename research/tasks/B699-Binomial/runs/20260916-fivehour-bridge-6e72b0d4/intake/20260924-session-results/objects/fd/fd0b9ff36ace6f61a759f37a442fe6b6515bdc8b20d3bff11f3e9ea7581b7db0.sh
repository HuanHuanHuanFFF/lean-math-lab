#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
python3 -B code/symbolic_verify.py --out "$TMP/symbolic.json"
python3 -B code/generate.py --out "$TMP/same_s_seven.json"
cmp certificates/same_s_seven.json "$TMP/same_s_seven.json"
python3 -B code/verify.py --certificate "$TMP/same_s_seven.json" --out "$TMP/replay.json"
cmp outputs/replay.json "$TMP/replay.json"
cmp outputs/symbolic.json "$TMP/symbolic.json"
printf '%s\n' 'CERTIFICATE_AND_OUTPUTS_BYTE_IDENTICAL=PASS' 'ROUND26_FULL_REPLAY=PASS'
