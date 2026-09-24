#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd "$(dirname "$0")" && pwd)
cd "$ROOT"
sha256sum -c SHA256SUMS
g++ -O3 -march=native -fopenmp -std=c++20 -o evidence/scan_fixed_m_newton evidence/scan_fixed_m_newton.cpp
g++ -O3 -march=native -fopenmp -std=c++20 -o evidence/sample_oracle evidence/sample_oracle.cpp
python3 -B evidence/symbolic_verify.py
python3 -B evidence/verify_crosscheck.py
python3 -B evidence/verify_full_rho12.py
python3 -B evidence/verify_receipts.py
echo ROUND18_QUICK_REPLAY=PASS
