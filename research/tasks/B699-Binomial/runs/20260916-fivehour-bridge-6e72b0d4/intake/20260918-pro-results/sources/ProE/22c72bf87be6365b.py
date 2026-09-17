"""Check exact packaged file bytes, reject missing or unexpected members."""
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parents[1]
m=json.loads((ROOT/'MANIFEST.json').read_text())
expected={r['path']:r for r in m['files']}
actual={str(p.relative_to(ROOT)):p for p in ROOT.rglob('*') if p.is_file() and p.name!='MANIFEST.json' and '__pycache__' not in p.parts}
if set(expected)!=set(actual):
    raise SystemExit('FAIL: missing/extra members '+str((set(expected)-set(actual),set(actual)-set(expected))))
for name,p in actual.items():
    data=p.read_bytes();r=expected[name]
    if len(data)!=r['bytes'] or hashlib.sha256(data).hexdigest()!=r['sha256']:
        raise SystemExit('FAIL: bytes changed: '+name)
print(json.dumps(dict(status='PASS',files=len(actual),total_bytes=sum(p.stat().st_size for p in actual.values()))))
