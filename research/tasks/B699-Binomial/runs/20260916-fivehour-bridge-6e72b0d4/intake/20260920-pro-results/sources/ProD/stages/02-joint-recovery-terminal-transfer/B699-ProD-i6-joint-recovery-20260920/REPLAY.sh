#!/bin/sh
# No network access, upstream research reruns, repository writes, or Lean.
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
python3 code/verify_hashes.py
python3 code/replay.py
python3 code/verify_hashes.py
