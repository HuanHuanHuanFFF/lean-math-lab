#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
sha256sum -c SHA256SUMS

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
cp certificates/rank_exponent.json "$tmp/cert.before.json"
cp outputs/replay.json "$tmp/replay.before.json"
python3 -B evidence/replay.py | tee "$tmp/stdout.log"
cmp -s "$tmp/cert.before.json" certificates/rank_exponent.json
cmp -s "$tmp/replay.before.json" outputs/replay.json
grep -q '"status": "PASS"' "$tmp/stdout.log"
echo ROUND14_REPLAY=PASS
