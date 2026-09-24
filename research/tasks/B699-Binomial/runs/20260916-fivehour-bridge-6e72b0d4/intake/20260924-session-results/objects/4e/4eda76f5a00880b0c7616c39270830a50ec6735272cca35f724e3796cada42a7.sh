#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 src/hash_check.py
fresh="$(mktemp -d)"
trap 'rm -rf "$fresh"' EXIT
python3 src/replay.py --output-dir "$fresh/exact"
python3 src/independent_check.py "$fresh/exact/exact.json" --output "$fresh/independent.json"
cmp certificates/exact.json "$fresh/exact/exact.json"
cmp certificates/independent.json "$fresh/independent.json"
echo CERTIFICATES_BYTE_IDENTICAL=PASS
echo NONIC_ALL_CORRECTED_CLEAN_REPLAY=PASS
