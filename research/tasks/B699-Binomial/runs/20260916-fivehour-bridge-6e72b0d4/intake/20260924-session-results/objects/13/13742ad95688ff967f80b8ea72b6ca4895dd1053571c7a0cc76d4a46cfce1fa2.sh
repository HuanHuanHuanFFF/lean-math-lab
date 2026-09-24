#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp -a "$ROOT" "$TMP/pkg"
rm -f "$TMP/pkg/outputs/"*.json
rm -rf "$TMP/pkg/src/__pycache__"
cd "$TMP/pkg"
python3 -B src/replay_nonic.py
python3 -B src/derive_111.py
python3 -B src/independent_check.py
python3 -B src/cost_probe_21.py
for f in nonic_reduce6.json derive_111.json independent_check.json cost_probe_21.json; do
  cmp "outputs/$f" "$ROOT/outputs/$f"
done
printf '%s\n' 'CERTIFICATES_BYTE_IDENTICAL=PASS' 'NONIC_REDUCE6_CLEAN_REPLAY=PASS'
