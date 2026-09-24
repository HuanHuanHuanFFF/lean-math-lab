#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

for f in certificates/two_adic_split.json \
         certificates/low_endpoint.json \
         certificates/high_layers.json \
         certificates/remaining_weak_model.json; do
  sha256sum "$f"
done > "$TMP/before.sha256"

PYTHONDONTWRITEBYTECODE=1 python3 -B evidence/make_certificates.py

for f in certificates/two_adic_split.json \
         certificates/low_endpoint.json \
         certificates/high_layers.json \
         certificates/remaining_weak_model.json; do
  sha256sum "$f"
done > "$TMP/after.sha256"

diff -u "$TMP/before.sha256" "$TMP/after.sha256"
echo "CERTIFICATES_BYTE_IDENTICAL=PASS"

PYTHONDONTWRITEBYTECODE=1 python3 -B evidence/verify.py
PYTHONDONTWRITEBYTECODE=1 python3 -B evidence/bridge_gate.py --layer high --r 7 --multiplier 373 >/dev/null
PYTHONDONTWRITEBYTECODE=1 python3 -B evidence/bridge_gate.py --layer weak-model >/dev/null

echo "ROUND11_REPLAY=PASS"
