#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 code/assemble_certificate.py
python3 code/verify.py --output replay/latest.json
