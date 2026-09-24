#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
python3 -B code/symbolic_verify.py --output "$tmp/symbolic.json"
cmp outputs/symbolic.json "$tmp/symbolic.json"
python3 -S -B code/generate.py --output "$tmp/certificate.json"
cmp certificates/small_C_terminal.json "$tmp/certificate.json"
python3 -S -B code/verify.py --certificate "$tmp/certificate.json" --output "$tmp/replay.json"
cmp outputs/replay.json "$tmp/replay.json"
python3 -S -B code/interval_regression.py --output "$tmp/intervals.json"
cmp outputs/intervals.json "$tmp/intervals.json"
echo 'CERTIFICATES_AND_OUTPUTS_BYTE_IDENTICAL=PASS'
echo 'ROUND22_REPLAY=PASS'
