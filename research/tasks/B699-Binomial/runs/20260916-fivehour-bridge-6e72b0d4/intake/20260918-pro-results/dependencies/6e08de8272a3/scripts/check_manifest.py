#!/usr/bin/env python3
import hashlib
import json
from pathlib import Path

root=Path(__file__).resolve().parent.parent
manifest=json.loads((root/'MANIFEST.json').read_text())
for entry in manifest['files']:
    p=root/entry['path']
    if not p.is_file():
        raise ValueError('Missing member: '+entry['path'])
    data=p.read_bytes()
    if len(data)!=entry['bytes'] or hashlib.sha256(data).hexdigest()!=entry['sha256']:
        raise ValueError('Hash/size mismatch: '+entry['path'])
print('PASS_MANIFEST_MEMBERS='+str(len(manifest['files'])))
