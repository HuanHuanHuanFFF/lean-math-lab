#!/usr/bin/env python3
"""Verify packaged file bytes. Does not prove any mathematical statement."""
from __future__ import annotations
import hashlib,json
from pathlib import Path

def main() -> None:
    root=Path(__file__).resolve().parents[1]
    data=json.loads((root/'MANIFEST.json').read_text())
    for item in data['files']:
        path=root/item['path'];raw=path.read_bytes()
        if len(raw)!=item['bytes'] or hashlib.sha256(raw).hexdigest()!=item['sha256']:
            raise SystemExit('MISMATCH '+item['path'])
    print(json.dumps({'status':'PASS','files':len(data['files']),'scope':'byte provenance only'}))
if __name__=='__main__':main()
