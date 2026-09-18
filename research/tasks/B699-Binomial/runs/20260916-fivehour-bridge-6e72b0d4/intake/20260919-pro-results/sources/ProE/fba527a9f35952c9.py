#!/usr/bin/env python3
"""Verify every frozen member and reject unlisted files in the frozen scope."""
from __future__ import annotations
import hashlib, json
from pathlib import Path

def is_frozen(rel:Path)->bool:
    return rel.as_posix()!='SHA256SUMS' and 'replays' not in rel.parts and '__pycache__' not in rel.parts

def verify(root:Path):
    root=root.resolve();mf=root/'SHA256SUMS'
    if not mf.is_file():raise ValueError('missing SHA256SUMS')
    listed={}
    for line in mf.read_text(encoding='utf-8').splitlines():
        if not line.strip():continue
        digest,name=line.split('  ',1);rel=Path(name)
        if len(digest)!=64 or any(c not in '0123456789abcdef' for c in digest):raise ValueError('digest syntax')
        if rel.is_absolute() or '..' in rel.parts or name in listed or not is_frozen(rel):raise ValueError('manifest path')
        target=root/rel
        if not target.is_file():raise ValueError('missing '+name)
        actual=hashlib.sha256(target.read_bytes()).hexdigest()
        if actual!=digest:raise ValueError('hash mismatch '+name)
        listed[name]=digest
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file() and is_frozen(p.relative_to(root))}
    if actual!=set(listed):raise ValueError('manifest member mismatch: '+str(actual^set(listed)))
    return {'status':'PASS','files':len(listed),'manifest_sha256':hashlib.sha256(mf.read_bytes()).hexdigest()}

if __name__=='__main__':
    print(json.dumps(verify(Path(__file__).resolve().parents[1]),indent=2))
