#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 -B evidence/verify_hashes.py
tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT
python3 -B evidence/replay.py --output "$tmpdir/replay.json"
cmp outputs/replay.json "$tmpdir/replay.json"
python3 -B evidence/symbolic_verify.py
echo 'ROUND20_REPLAY=PASS'
