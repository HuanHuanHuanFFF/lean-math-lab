#!/usr/bin/env python3
"""Validate every archived file and reject unlisted extras (manifest excepted)."""
import argparse,hashlib,json
from pathlib import Path

def verify(root):
    root=root.resolve();listed={}
    for line in (root/'SHA256SUMS').read_text().splitlines():
        digest,rel=line.split('  ',1)
        if rel in listed or len(digest)!=64:raise ValueError('invalid/duplicate manifest entry')
        p=root/rel
        if not p.is_file() or not p.resolve().is_relative_to(root):raise ValueError('missing or unsafe manifest path')
        actual=hashlib.sha256(p.read_bytes()).hexdigest()
        if actual!=digest:raise ValueError('hash mismatch: '+rel)
        listed[rel]=digest
    actual={str(p.relative_to(root)) for p in root.rglob('*') if p.is_file() and p!=root/'SHA256SUMS'}
    if set(listed)!=actual:raise ValueError('unlisted or missing files: '+str(sorted(set(listed)^actual)))
    return {'status':'PASS_ALL_ARCHIVE_FILE_HASHES','files':len(listed)}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);a=p.parse_args();print(json.dumps(verify(a.root),sort_keys=True))
