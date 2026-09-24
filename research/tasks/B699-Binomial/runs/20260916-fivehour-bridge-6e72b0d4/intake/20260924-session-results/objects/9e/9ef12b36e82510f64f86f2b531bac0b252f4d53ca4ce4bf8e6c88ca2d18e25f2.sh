#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 -B evidence/symbolic_verify.py
python3 -B evidence/replay.py | tee outputs/replay.log
