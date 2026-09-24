#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 evidence/symbolic_certificate.py
python3 evidence/verify_bounds.py
python3 evidence/phase_probes.py
python3 evidence/same_input_consumer.py --self-test
printf '%s\n' 'NSB64_UNIFORM_CERTIFICATE_REPLAY=PASS' 'NO_LEAN_OR_EXTERNAL_REVIEW_CLAIMED'
