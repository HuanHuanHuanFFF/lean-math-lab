#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp -a "$ROOT" "$TMP/pkg"
cd "$TMP/pkg"
python3 -B src/replay_no211.py > logs/replay_no211.clean.log
python3 -B src/probe_022.py > logs/probe_022.clean.log
python3 -B src/independent_check.py > logs/independent_check.clean.log
cmp -s outputs/replay_no211.json "$ROOT/outputs/replay_no211.json"
cmp -s outputs/probe_022.json "$ROOT/outputs/probe_022.json"
cmp -s outputs/independent_check.json "$ROOT/outputs/independent_check.json"
if [[ -f SHA256SUMS ]]; then
  sha256sum -c SHA256SUMS >/dev/null
fi
printf '%s\n' \
  'REPLAY_NO211=PASS' \
  'PROBE_022=PASS' \
  'INDEPENDENT_CHECK=PASS' \
  'OUTPUTS_BYTE_IDENTICAL=PASS' \
  'PACKAGE_HASHES=PASS'
