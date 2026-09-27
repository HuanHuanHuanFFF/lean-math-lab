#!/usr/bin/env python3
"""Verify package hashes, then run the offline exact mathematical checker.
No network, repository access, writes to this package, or third-party libraries.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import hashlib,subprocess,os
ROOT=Path(__file__).resolve().parent

def check_manifest():
    manifest=ROOT/'SHA256SUMS.txt'
    if not manifest.exists():manifest=ROOT/'PAYLOAD_SHA256SUMS.txt'
    if not manifest.exists():raise RuntimeError('No checksum manifest present')
    seen=set()
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line.strip():continue
        digest,name=line.split('  ',1)
        path=Path(name)
        if path.is_absolute() or '..' in path.parts or name in seen:
            raise RuntimeError('Unsafe or duplicate manifest path: '+name)
        if len(digest)!=64:raise RuntimeError('Bad digest: '+name)
        data=(ROOT/path).read_bytes()
        if hashlib.sha256(data).hexdigest()!=digest:raise RuntimeError('Hash mismatch: '+name)
        seen.add(name)
    actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file()}
    permitted={manifest.name}
    if actual != seen|permitted:
        raise RuntimeError('File coverage mismatch: '+str(sorted(actual^(seen|permitted))))
    print('PASS SHA-256:',len(seen),'files;',manifest.name,flush=True)

if __name__=='__main__':
    check_manifest()
    env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
    proc=subprocess.run([sys.executable,str(ROOT/'evidence'/'verify.py'),'--root',str(ROOT)],env=env,cwd=ROOT)
    if proc.returncode:raise SystemExit(proc.returncode)
    print('PASS complete offline replay; package files unchanged')
