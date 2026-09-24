#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 -B evidence/verify.py
python3 -B evidence/smooth_gate.py --support 2,3,5,7
