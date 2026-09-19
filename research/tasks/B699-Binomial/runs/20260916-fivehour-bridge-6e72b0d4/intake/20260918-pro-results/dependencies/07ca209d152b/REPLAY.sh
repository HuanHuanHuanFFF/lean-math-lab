#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 -B code/check_manifest.py
python3 -B code/verify.py
python3 -B code/regression.py
python3 -B code/check_manifest.py
