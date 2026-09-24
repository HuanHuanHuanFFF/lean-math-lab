#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
DST="${1:?usage: replay.sh NEW_OUTPUT_DIRECTORY}"
if [[ -e "$DST" ]]; then echo "destination already exists: $DST" >&2; exit 2; fi
mkdir -p "$DST"/{build,logs,certificates/geometry,certificates/ledger,certificates/moment}
compile_pair() {
  local tag="$1" gate_src="$2" jet_src="$3"
  g++ -O3 -std=c++17 "$ROOT/code/$gate_src" -o "$DST/build/${tag}_gates"
  g++ -O3 -std=c++17 -DMODULUS=32749 "$ROOT/code/$jet_src" -o "$DST/build/${tag}_jets_32749"
  g++ -O3 -std=c++17 -DMODULUS=32719 "$ROOT/code/$jet_src" -o "$DST/build/${tag}_jets_32719"
}
run_generic() {
  local tag="$1" q="$2" dir="$DST/certificates/geometry/${tag}_q${q}"
  mkdir -p "$dir"
  "$DST/build/${tag}_gates" "$q" "$dir/gates.txt" >"$DST/logs/${tag}_q${q}.gates.stdout" 2>"$DST/logs/${tag}_q${q}.gates.stderr"
  for p in 32749 32719; do
    "$DST/build/${tag}_jets_${p}" "$dir/gates.txt" "$dir/rank_p${p}.txt" "$q" >"$DST/logs/${tag}_q${q}.p${p}.stdout" 2>"$DST/logs/${tag}_q${q}.p${p}.stderr"
  done
}
run_fixed_q5() {
  local tag="$1" dir="$DST/certificates/geometry/${tag}_q5"
  mkdir -p "$dir"
  "$DST/build/${tag}_gates" "$dir/gates.txt" >"$DST/logs/${tag}_q5.gates.stdout" 2>"$DST/logs/${tag}_q5.gates.stderr"
  for p in 32749 32719; do
    "$DST/build/${tag}_jets_${p}" "$dir/gates.txt" "$dir/rank_p${p}.txt" >"$DST/logs/${tag}_q5.p${p}.stdout" 2>"$DST/logs/${tag}_q5.p${p}.stderr"
  done
}
compile_pair A_delta6_delta7 pattern_A_delta6_delta7_gates.cpp pattern_A_delta6_delta7_jets.cpp
for q in 5 6 7; do run_generic A_delta6_delta7 "$q"; done
compile_pair B_delta6_delta8 pattern_B_delta6_delta8_gates.cpp pattern_B_delta6_delta8_jets.cpp
for q in 6 7; do run_generic B_delta6_delta8 "$q"; done
compile_pair C_2delta6 pattern_C_2delta6_gates.cpp pattern_C_2delta6_jets.cpp
for q in 6 7; do run_generic C_2delta6 "$q"; done
compile_pair D_delta4_delta8 pattern_D_delta4_delta8_gates.cpp pattern_D_delta4_delta8_jets.cpp
for q in 5 6 7; do run_generic D_delta4_delta8 "$q"; done
compile_pair E_delta4_delta6 pattern_E_delta4_delta6_q5_gates.cpp pattern_E_delta4_delta6_q5_jets.cpp
run_fixed_q5 E_delta4_delta6
compile_pair F_delta5_delta8 pattern_F_delta5_delta8_gates.cpp pattern_F_delta5_delta8_jets.cpp
for q in 6 7; do run_generic F_delta5_delta8 "$q"; done

g++ -O3 -std=c++17 "$ROOT/code/eight_frontier_direct.cpp" -o "$DST/build/eight_frontier_direct"
g++ -O3 -std=c++17 "$ROOT/code/eight_frontier_raw_reverse.cpp" -o "$DST/build/eight_frontier_raw_reverse"
g++ -O3 -std=c++17 "$ROOT/code/eight_frontier_stagewise.cpp" -o "$DST/build/eight_frontier_stagewise"
"$DST/build/eight_frontier_direct" "$DST/certificates/ledger/coarse_frontier_direct.tsv" >"$DST/logs/coarse_frontier_direct.stdout" 2>"$DST/logs/coarse_frontier_direct.stderr"
"$DST/build/eight_frontier_raw_reverse" "$DST/certificates/ledger/coarse_frontier_raw_reverse.tsv" >"$DST/logs/coarse_frontier_raw_reverse.stdout" 2>"$DST/logs/coarse_frontier_raw_reverse.stderr"
for mask in 0 1 3 7 15 31 63; do
  "$DST/build/eight_frontier_stagewise" "$mask" "$DST/certificates/ledger/stage_${mask}.tsv" >"$DST/logs/stage_${mask}.stdout" 2>"$DST/logs/stage_${mask}.stderr"
done
python3 "$ROOT/code/moment_frontier.py" "$DST/certificates/moment/targeted_moments.json" >"$DST/logs/moment_frontier.stdout" 2>"$DST/logs/moment_frontier.stderr"
python3 - "$DST" <<'PY'
from pathlib import Path
import sys
D=Path(sys.argv[1]);p=D/'certificates/ledger/coarse_frontier_direct.tsv'
lines=p.read_text().splitlines();out=[lines[0]]
for line in lines[1:]:
    f=line.split('\t');idx=int(f[0]);E=int(f[2])
    if E==0 and idx not in {589,667,792}:out.append(line)
assert len(out)-1==381
(D/'certificates/ledger/final_E0_frontier.tsv').write_text('\n'.join(out)+'\n')
PY
python3 "$ROOT/code/compare_replay.py" "$DST"
