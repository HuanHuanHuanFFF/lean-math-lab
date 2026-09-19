#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p replay-latest
python code/check_manifest.py
python code/assemble_finite.py > replay-latest/assembly.log
python code/verify.py --output replay-latest/verification.json > replay-latest/verification.log
python code/regression.py --output replay-latest/regression.json > replay-latest/regression.log
python code/check_manifest.py
python - <<'PY'
import json
from pathlib import Path
for name in ('verification','regression'):
    data=json.loads(Path('replay-latest',name+'.json').read_text())
    print(data['status'])
PY
