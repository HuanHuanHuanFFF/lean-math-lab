#!/bin/sh
set -eu
cd "$(dirname "$0")"
python3 code/replay.py --output outputs/replay.json
python3 code/verify_hashes.py
