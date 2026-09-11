from pathlib import Path
import hashlib,json
root=Path(__file__).resolve().parent
m=json.loads((root/'MANIFEST.json').read_text())
for name,want in m['files'].items():
    p=root/name
    if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=want:raise SystemExit('FAIL: '+name)
print('PASS: '+str(len(m['files']))+' static hashes')
