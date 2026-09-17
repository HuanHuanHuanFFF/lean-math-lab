#!/bin/sh
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
python3 code/select_i5_kernels.py
python3 code/verify.py
