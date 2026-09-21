#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PYTHONPATH="$PWD/evidence${PYTHONPATH:+:$PYTHONPATH}"

before="$(sha256sum certificates/*.json)"
python3 -B evidence/make_certificates.py
python3 -B evidence/verify.py
after="$(sha256sum certificates/*.json)"
if [[ "$before" != "$after" ]]; then
  echo "CERTIFICATES_BYTE_IDENTICAL=FAIL" >&2
  diff <(printf '%s\n' "$before") <(printf '%s\n' "$after") || true
  exit 1
fi
echo "CERTIFICATES_BYTE_IDENTICAL=PASS"
