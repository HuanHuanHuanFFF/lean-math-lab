#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="${1:?Usage: bash scripts/replay.sh /absolute/new/output/directory}"
mkdir -p "$OUT"
OUT="$(cd "$OUT" && pwd)"
if [[ "$OUT" == "$ROOT/outputs" ]]; then
  echo 'Refusing to overwrite frozen outputs.' >&2; exit 2
fi
BUILD="$(mktemp -d)"
trap 'rm -rf "$BUILD"' EXIT
CXX="${CXX:-g++}"
"$CXX" -O2 -std=c++17 "$ROOT/scripts/probe_original_cubes.cpp" -o "$BUILD/cube_probe"
"$BUILD/cube_probe" 5000 > "$OUT/original_cube_hits.csv" 2> "$OUT/original_cube_probe.log"
python3 -S -B "$ROOT/scripts/build_certificate.py" --output "$OUT/CERTIFICATE.json" --cube-hits "$OUT/original_cube_hits.csv" > "$OUT/build_certificate.log"
python3 -S -B "$ROOT/scripts/verify_certificate.py" --certificate "$OUT/CERTIFICATE.json" --output "$OUT/ACCEPTANCE.json" --negative-tests > "$OUT/verify_certificate.log"
python3 -B "$ROOT/scripts/check_identities.py" --output "$OUT/IDENTITY_CHECKS.json" --cube-hits "$OUT/original_cube_hits.csv" > "$OUT/check_identities.log"
python3 -B "$ROOT/scripts/probe_windows.py" --limit 5000000 --step 512 --output "$OUT/window_probe.json" > "$OUT/window_probe.log"
python3 -B "$ROOT/scripts/probe_windows.py" --limit 500000 --step 4 --no-shape --output "$OUT/weak_window_probe.json" > "$OUT/weak_window_probe.log"
python3 -B "$ROOT/scripts/check_weak_models.py" --models "$OUT/weak_window_probe.json" --output "$OUT/WEAK_MODEL_CHECKS.json" > "$OUT/check_weak_models.log"
cat "$OUT/original_cube_probe.log" "$OUT/verify_certificate.log" "$OUT/check_identities.log"
echo "PASS_REPLAY_OUTPUT=$OUT"
