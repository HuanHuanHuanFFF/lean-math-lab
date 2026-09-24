#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")"
python3 -B src/verify_hashes.py
TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT
python3 -B src/derive.py --out "$TMP_DIR"
python3 -B src/check_standard.py --certificate "$TMP_DIR/exact.json" --out "$TMP_DIR"
cmp certificates/exact.json "$TMP_DIR/exact.json"
cmp certificates/standard_library.json "$TMP_DIR/standard_library.json"
echo 'CERTIFICATES_BYTE_IDENTICAL=PASS'
echo 'CENTER_11_OF_13_CLEAN_REPLAY=PASS'
