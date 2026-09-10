#!/usr/bin/env python3
"""Check the frozen source/mathematical snapshot; mutable replay logs excluded."""
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parent
if __name__=='__main__':
    manifest=json.loads((ROOT/'MANIFEST.json').read_text())
    for row in manifest['files']:
        p=ROOT/row['path']
        if not p.is_file():raise SystemExit('Missing: '+row['path'])
        if p.stat().st_size!=row['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=row['sha256']:
            raise SystemExit('Mismatch: '+row['path'])
    print(json.dumps(dict(status='PASS',files=len(manifest['files']),scope=manifest['scope'])))
