#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
for zip in "$ROOT"/evidence_zips/*.zip; do
  base="$(basename "$zip" .zip)"
  sum="$ROOT/checksums/${base}.sha256"
  if [[ ! -f "$sum" ]]; then
    echo "MISSING checksum: $base" >&2
    exit 1
  fi
  expected="$(awk '{print tolower($1)}' "$sum")"
  actual="$(sha256sum "$zip" | awk '{print tolower($1)}')"
  if [[ "$expected" != "$actual" ]]; then
    echo "FAIL $base expected=$expected actual=$actual" >&2
    exit 1
  fi
  echo "OK  $base  $actual"
done
echo "All evidence ZIP SHA-256 checks passed."
