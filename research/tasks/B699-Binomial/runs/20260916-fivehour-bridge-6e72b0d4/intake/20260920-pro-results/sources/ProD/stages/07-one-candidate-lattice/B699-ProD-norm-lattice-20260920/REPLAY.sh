#!/bin/sh
set -eu
export PYTHONDONTWRITEBYTECODE=1
cd "$(dirname "$0")"
python3 code/verify.py
sha256sum -c SHA256SUMS
