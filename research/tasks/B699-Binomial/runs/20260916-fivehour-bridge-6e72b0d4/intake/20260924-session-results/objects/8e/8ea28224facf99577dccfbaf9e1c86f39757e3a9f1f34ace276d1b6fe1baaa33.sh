#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python -B code/check_hashes.py
scratch=$(mktemp -d)
trap 'rm -rf "$scratch"' EXIT
python -B code/generate.py --out "$scratch/origin_primepower.json"
python -B code/boundary_search.py --out "$scratch/boundary_seed.json"
python -B code/symbolic_verify.py --out "$scratch/symbolic.json"
python -B code/verify.py --certificate "$scratch/origin_primepower.json" --out "$scratch/replay.json"
cmp certificates/origin_primepower.json "$scratch/origin_primepower.json"
cmp certificates/boundary_seed.json "$scratch/boundary_seed.json"
cmp outputs/symbolic.json "$scratch/symbolic.json"
cmp outputs/replay.json "$scratch/replay.json"
echo 'CERTIFICATES_AND_OUTPUTS_BYTE_IDENTICAL=PASS'
echo 'ROUND27_FULL_REPLAY=PASS'
