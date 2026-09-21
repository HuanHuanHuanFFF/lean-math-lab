#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
PYTHONDONTWRITEBYTECODE=1 python3 evidence/verify.py
PYTHONDONTWRITEBYTECODE=1 python3 evidence/bilateral_gate.py --delta 49 --cofactor 72
PYTHONDONTWRITEBYTECODE=1 python3 evidence/bilateral_gate.py --delta 65 --cofactor 2
