#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd "$(dirname "$0")" && pwd)
cd "$ROOT"
g++ -O3 -march=native -fopenmp -std=c++20 -o evidence/scan_fixed_m_newton evidence/scan_fixed_m_newton.cpp
: > outputs/full_replay_campaign.log
for r in $(seq 12 24); do OMP_NUM_THREADS=${OMP_NUM_THREADS:-8} evidence/scan_fixed_m_newton "$r" 80 | tee -a outputs/full_replay_campaign.log; done
run(){ local r=$1 lo=$2 hi=$3; OMP_NUM_THREADS=${OMP_NUM_THREADS:-8} evidence/scan_fixed_m_newton "$r" 80 "$lo" "$hi" | tee -a outputs/full_replay_campaign.log; }
run 25 0 80000000; run 25 80000000 160000000; run 25 160000000 226492416
run 26 0 80000000; run 26 80000000 160000000; run 26 160000000 240000000; run 26 240000000 320000000; run 26 320000000 400000000; run 26 400000000 452984832
run 27 0 120000000; run 27 120000000 240000000; run 27 240000000 360000000; run 27 360000000 480000000; run 27 480000000 600000000; run 27 600000000 720000000; run 27 720000000 840000000; run 27 840000000 905969664
echo ROUND18_FULL_CAMPAIGN=PASS
