#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

sha256sum -c SHA256SUMS

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp -a "$ROOT/." "$TMP/package/"

python3 -B "$TMP/package/src/close_022.py" > "$TMP/close_022.stdout"
python3 -B "$TMP/package/src/close_202.py" > "$TMP/close_202.stdout"
python3 -B "$TMP/package/src/independent_check.py" > "$TMP/independent_check.stdout"

cmp "$ROOT/outputs/close_022.json" "$TMP/package/outputs/close_022.json"
cmp "$ROOT/outputs/close_202.json" "$TMP/package/outputs/close_202.json"
cmp "$ROOT/outputs/independent_check.json" "$TMP/package/outputs/independent_check.json"

python3 - <<'PY'
import json
from pathlib import Path
root=Path('.')
for p in [
    root/'outputs/close_022.json',
    root/'outputs/close_202.json',
    root/'outputs/independent_check.json',
]:
    data=json.loads(p.read_text())
    assert 'PASS' in data['status'] or 'CLOSED' in data['status']
print('JSON_STATUS_CHECK=PASS')
PY

echo 'CERTIFICATES_BYTE_IDENTICAL=PASS'
echo 'OCTIC_ALL_REPLAY=PASS'
