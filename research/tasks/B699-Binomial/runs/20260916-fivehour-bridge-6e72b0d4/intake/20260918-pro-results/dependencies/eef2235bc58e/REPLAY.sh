#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
out="${1:-replay/$(date -u +%Y%m%dT%H%M%SZ)-$$}"
mkdir -p "$out"
python3 code/verify.py --output "$out/verification.json" | tee "$out/replay.log"
