#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 evidence/verify.py
python3 evidence/orbit_gate.py --shared-factors 409:1,1129:1
python3 evidence/orbit_gate.py --shared-factors 409:1
python3 evidence/orbit_gate.py --shared-factors 1321442641:1 --max-period 10
