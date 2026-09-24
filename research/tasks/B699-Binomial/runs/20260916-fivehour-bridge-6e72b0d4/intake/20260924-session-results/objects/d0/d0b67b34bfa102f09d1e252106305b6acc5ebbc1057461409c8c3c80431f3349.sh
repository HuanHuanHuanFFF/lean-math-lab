#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
python3 -B code/generate.py --output "$tmp/cover.json"
cmp certificates/nonnegative_J_cover.json "$tmp/cover.json"
python3 -B code/symbolic_verify.py --output "$tmp/symbolic.json"
cmp outputs/symbolic.json "$tmp/symbolic.json"
python3 -B code/verify.py --certificate "$tmp/cover.json" --output "$tmp/replay.json"
cmp outputs/replay.json "$tmp/replay.json"
echo 'CERTIFICATES_AND_OUTPUTS_BYTE_IDENTICAL=PASS'
echo 'ROUND21_REPLAY=PASS'
