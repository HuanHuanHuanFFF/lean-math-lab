#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 -B code/verify_hashes.py
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
python3 -B code/symbolic_verify.py --output "$work/symbolic.json"
python3 -B code/generate.py --output "$work/cubic_C_terminal.json"
cmp certificates/cubic_C_terminal.json "$work/cubic_C_terminal.json"
python3 -B code/verify.py --certificate "$work/cubic_C_terminal.json" --output "$work/replay.json"
cmp outputs/symbolic.json "$work/symbolic.json"
cmp outputs/replay.json "$work/replay.json"
printf '%s\n' 'CERTIFICATES_AND_OUTPUTS_BYTE_IDENTICAL=PASS' 'ROUND23_REPLAY=PASS'
