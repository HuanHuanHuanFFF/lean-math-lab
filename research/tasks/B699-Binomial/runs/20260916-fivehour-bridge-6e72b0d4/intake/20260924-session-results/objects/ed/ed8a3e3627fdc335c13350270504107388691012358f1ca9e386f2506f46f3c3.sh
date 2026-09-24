#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
OUT="${1:?usage: replay.sh /absolute/new/output [jobs]}"
JOBS="${2:-16}"
python3 -B "$ROOT/code/replay_full.py" --out "$OUT" --jobs "$JOBS"
