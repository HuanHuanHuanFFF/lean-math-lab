#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 -B src/hash_check.py
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
python3 -B src/derive.py "$tmp/exact.json"
python3 -B src/check.py "$tmp/exact.json" "$tmp/independent.json"
cmp certificates/exact.json "$tmp/exact.json"
cmp certificates/independent.json "$tmp/independent.json"
printf 'CERTIFICATES_BYTE_IDENTICAL=PASS\nLEADING_SQUARE_CLEAN_REPLAY=PASS\n'
