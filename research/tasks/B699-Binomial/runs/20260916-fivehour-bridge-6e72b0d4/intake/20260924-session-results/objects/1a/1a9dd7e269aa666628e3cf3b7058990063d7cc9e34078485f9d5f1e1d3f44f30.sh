#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd "$(dirname "$0")" && pwd)
cd "$ROOT"
export PYTHONDONTWRITEBYTECODE=1
python3 src/hash_check.py
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
python3 src/derive.py "$TMP/exact.json"
python3 src/check.py "$TMP/exact.json" "$TMP/standard_library.json"
cmp "$TMP/exact.json" certificates/exact.json
cmp "$TMP/standard_library.json" certificates/standard_library.json
echo 'CERTIFICATES_BYTE_IDENTICAL=PASS'
echo 'CENTRAL_SIXTH_CLEAN_REPLAY=PASS'
