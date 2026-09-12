#!/usr/bin/env python3
"""Verify the frozen static files. Replay directories and this manifest are excluded."""
import hashlib,json
from pathlib import Path

def verify(root):
    data=json.loads((root/'MANIFEST.json').read_text())
    for row in data['files']:
        p=root/row['path']
        assert p.is_file(),row['path']
        raw=p.read_bytes()
        assert len(raw)==row['bytes'],row['path']
        assert hashlib.sha256(raw).hexdigest()==row['sha256'],row['path']
    return {'status':'PASS','files':len(data['files'])}
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not use -O.')
    print(json.dumps(verify(Path(__file__).resolve().parent),sort_keys=True))
