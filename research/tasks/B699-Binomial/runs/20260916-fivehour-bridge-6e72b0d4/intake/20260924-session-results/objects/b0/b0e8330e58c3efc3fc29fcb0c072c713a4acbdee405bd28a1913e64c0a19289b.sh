#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
sha256sum -c SHA256SUMS
python3 -B evidence/verify_receipts.py | tee outputs/quick_receipts.log
python3 -B evidence/verify_small.py | tee outputs/quick_small.log
mkdir -p build
g++ -O3 -std=c++20 -I evidence evidence/row_oracle.cpp -o build/row_oracle
python3 -B evidence/verify_crosscheck.py build/row_oracle | tee outputs/quick_crosscheck.log
echo ROUND17_QUICK_REPLAY=PASS | tee outputs/quick_replay.log
