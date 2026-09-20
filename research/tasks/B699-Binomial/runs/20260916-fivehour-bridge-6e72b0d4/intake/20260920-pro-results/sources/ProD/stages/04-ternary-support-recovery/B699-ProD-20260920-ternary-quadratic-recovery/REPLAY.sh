#!/bin/sh
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
python3 -B code/verify.py --json
python3 -B code/consumer.py 2165130 730730
