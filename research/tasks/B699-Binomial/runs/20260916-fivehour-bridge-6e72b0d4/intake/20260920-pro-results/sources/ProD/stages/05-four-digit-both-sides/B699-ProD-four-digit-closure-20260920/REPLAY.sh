#!/bin/sh
set -eu
cd "$(dirname "$0")"
PYTHONDONTWRITEBYTECODE=1 python3 code/verify.py
sha256sum -c SHA256SUMS
