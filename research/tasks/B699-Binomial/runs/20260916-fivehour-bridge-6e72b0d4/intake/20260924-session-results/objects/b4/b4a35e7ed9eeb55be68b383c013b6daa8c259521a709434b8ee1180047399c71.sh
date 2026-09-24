#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 -B evidence/symbolic_verify.py
python3 -B evidence/verify.py
python3 - <<'PY'
import json, pathlib
p=pathlib.Path('outputs/replay.json')
d=json.loads(p.read_text())
assert d['status']=='PASS'
print('ROUND19_REPLAY=PASS')
import json, pathlib
p=pathlib.Path('outputs/replay.json')
d=json.loads(p.read_text())
assert d['status']=='PASS'
print('ROUND19_REPLAY=PASS')
PY
