#!/usr/bin/env python3
import hashlib,json
from pathlib import Path

def verify(root=None):
    root=Path(root or __file__).resolve()
    if root.is_file():root=root.parent
    m=json.loads((root/'MANIFEST.json').read_text())
    for name,item in m['files'].items():
        p=root/name
        assert p.is_file(),('missing',name)
        b=p.read_bytes()
        assert len(b)==item['bytes'] and hashlib.sha256(b).hexdigest()==item['sha256'],('mismatch',name)
    return len(m['files'])
if __name__=='__main__':print(json.dumps({'status':'PASS','static_files':verify()}))
