#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
OUT="${1:?usage: replay.sh /absolute/new-output-directory}"
if [[ -e "$OUT" ]]; then echo "output path already exists: $OUT" >&2; exit 2; fi
mkdir -p "$OUT/bin"
CXX="${CXX:-g++}"
CXXFLAGS=(-O3 -std=c++17)

"$CXX" "${CXXFLAGS[@]}" "$ROOT/code/eight_frontier_direct.cpp" -o "$OUT/bin/eight_direct"
"$CXX" "${CXXFLAGS[@]}" "$ROOT/code/eight_frontier_raw_reverse.cpp" -o "$OUT/bin/eight_raw_reverse"
"$CXX" "${CXXFLAGS[@]}" "$ROOT/code/odd_q3_zero_cost.cpp" -o "$OUT/bin/q3_p1"
"$CXX" "${CXXFLAGS[@]}" -DMODULUS=32719 "$ROOT/code/odd_q3_zero_cost.cpp" -o "$OUT/bin/q3_p2"
"$CXX" "${CXXFLAGS[@]}" "$ROOT/code/odd_q4_zero_cost.cpp" -o "$OUT/bin/q4_p1"
"$CXX" "${CXXFLAGS[@]}" -DMODULUS=32719 "$ROOT/code/odd_q4_zero_cost.cpp" -o "$OUT/bin/q4_p2"
"$CXX" "${CXXFLAGS[@]}" "$ROOT/code/odd_q5_zero_cost.cpp" -o "$OUT/bin/q5_p1"
"$CXX" "${CXXFLAGS[@]}" -DMODULUS=32719 "$ROOT/code/odd_q5_zero_cost.cpp" -o "$OUT/bin/q5_p2"

"$OUT/bin/eight_direct" "$OUT/edge8_frontier_direct.tsv" >"$OUT/eight_direct.stdout" 2>"$OUT/eight_direct.stderr"
"$OUT/bin/eight_raw_reverse" "$OUT/edge8_frontier_raw_reverse.tsv" >"$OUT/eight_raw_reverse.stdout" 2>"$OUT/eight_raw_reverse.stderr"
python3 "$ROOT/code/positive_payoff.py" "$OUT/positive_payoff.json" >"$OUT/positive_payoff.stdout" 2>"$OUT/positive_payoff.stderr"

"$OUT/bin/q3_p1" "$OUT/q3_mod32749.txt" >"$OUT/q3_mod32749.stdout" 2>"$OUT/q3_mod32749.stderr"
"$OUT/bin/q3_p2" "$OUT/q3_mod32719.txt" >"$OUT/q3_mod32719.stdout" 2>"$OUT/q3_mod32719.stderr"
"$OUT/bin/q4_p1" 4 "$OUT/q4_mod32749.txt" >"$OUT/q4_mod32749.stdout" 2>"$OUT/q4_mod32749.stderr"
"$OUT/bin/q4_p2" 4 "$OUT/q4_mod32719.txt" >"$OUT/q4_mod32719.stdout" 2>"$OUT/q4_mod32719.stderr"
"$OUT/bin/q5_p1" "$OUT/q5_mod32749.txt" >"$OUT/q5_mod32749.stdout" 2>"$OUT/q5_mod32749.stderr"
"$OUT/bin/q5_p2" "$OUT/q5_mod32719.txt" >"$OUT/q5_mod32719.stdout" 2>"$OUT/q5_mod32719.stderr"

python3 "$ROOT/code/exact_receive.py" 3 "$OUT/q3_mod32749.txt" "$OUT/q3_exact.json" >"$OUT/q3_exact.stdout" 2>"$OUT/q3_exact.stderr"
python3 "$ROOT/code/exact_receive.py" 4 "$OUT/q4_mod32749.txt" "$OUT/q4_exact.json" >"$OUT/q4_exact.stdout" 2>"$OUT/q4_exact.stderr"
python3 "$ROOT/code/verify.py" "$OUT" --summary "$OUT/summary.json" >"$OUT/verify.stdout" 2>"$OUT/verify.stderr"
if [[ -f "$ROOT/certificates/summary.json" ]]; then
  python3 "$ROOT/code/compare_certificates.py" "$ROOT/certificates" "$OUT" >"$OUT/compare.json"
else
  echo '{"status":"SKIP_NO_FROZEN_CERTIFICATES_YET"}' >"$OUT/compare.json"
fi
echo PASS_FULL_ODD_SAT3_5_EDGE8_REPLAY
