"""Check the received snapshot before reproduce.py updates execution logs."""
from pathlib import Path
import hashlib,json
R=Path(__file__).resolve().parents[1]
data=json.loads((R/'SHA256SUMS.json').read_text())
for item in data['files']:
    b=(R/item['path']).read_bytes()
    if len(b)!=item['bytes'] or hashlib.sha256(b).hexdigest()!=item['sha256']:
        raise SystemExit('FAIL '+item['path'])
print('PASS_SNAPSHOT_SHA256',len(data['files']))
