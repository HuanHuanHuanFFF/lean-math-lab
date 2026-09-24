#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
for phase in math first-477 second-477 first-1325 second-1325 finalize; do
  python3 -B code/certify.py --phase "$phase"
done
