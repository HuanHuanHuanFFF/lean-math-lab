#!/usr/bin/env python3
import hashlib,json
from pathlib import Path
root=Path(__file__).resolve().parent
entries=json.loads((root/'MANIFEST.json').read_text())['files']
for e in entries:
    p=root/e['path'];b=p.read_bytes()
    if len(b)!=e['bytes'] or hashlib.sha256(b).hexdigest()!=e['sha256']:
        raise SystemExit('HASH MISMATCH: '+e['path'])
print(json.dumps({'status':'PASS','verified_files':len(entries)},sort_keys=True))
