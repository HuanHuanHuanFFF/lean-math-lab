#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1
python3 evidence/symbolic_certificate.py
python3 evidence/verify_certificate.py
python3 evidence/phase_evidence.py
python3 evidence/integration_tests.py
echo 'REPLAY=PASS'
