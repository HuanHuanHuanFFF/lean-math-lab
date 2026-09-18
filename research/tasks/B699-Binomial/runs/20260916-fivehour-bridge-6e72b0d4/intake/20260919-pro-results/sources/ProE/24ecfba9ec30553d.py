#!/usr/bin/env python3
"""Verify the delivered snapshot. Additional replay outputs are allowed."""
from __future__ import annotations
import hashlib,json
from pathlib import Path

def main():
    root=Path(__file__).resolve().parents[1]
    data=json.loads((root/'MANIFEST.json').read_text())
    for item in data['files']:
        path=root/item['path']
        if not path.is_file(): raise FileNotFoundError(path)
        raw=path.read_bytes()
        if len(raw)!=item['bytes'] or hashlib.sha256(raw).hexdigest()!=item['sha256']:
            raise ValueError('snapshot mismatch: '+item['path'])
    print('PASS_MANIFEST',len(data['files']))
if __name__=='__main__': main()
