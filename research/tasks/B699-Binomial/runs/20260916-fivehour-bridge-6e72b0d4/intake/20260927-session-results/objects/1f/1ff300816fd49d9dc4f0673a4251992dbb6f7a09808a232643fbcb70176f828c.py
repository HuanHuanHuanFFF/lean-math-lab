#!/usr/bin/env python3
"""Check integrity, receive new certificates, regenerate them outside the package."""
from __future__ import annotations
import hashlib, os, subprocess, sys, tempfile
from pathlib import Path


def main() -> None:
    root=Path(__file__).resolve().parent
    manifest=root/'SHA256SUMS.txt'
    if not manifest.exists():
        manifest=root/'PAYLOAD_SHA256SUMS.txt'
    if not manifest.exists():
        raise FileNotFoundError('No integrity manifest present')
    checked=0
    for line in manifest.read_text().splitlines():
        digest,name=line.split('  ',1)
        p=root/name
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
            raise ValueError(f'Integrity check failed: {name}')
        checked+=1
    print(f'PASS integrity: {checked} files ({manifest.name})',flush=True)
    env=dict(os.environ, PYTHONDONTWRITEBYTECODE='1')
    subprocess.run([sys.executable,str(root/'evidence/verify.py'),'--root',str(root)],check=True,env=env)
    with tempfile.TemporaryDirectory(prefix='b699-d-cert-regen-') as tmp:
        out=Path(tmp)/'certificates'
        subprocess.run([sys.executable,str(root/'evidence/generate.py'),'--root',str(root),'--out',str(out)],check=True,env=env)
        originals=sorted((root/'certificates').glob('*.json'))
        if sorted(p.name for p in originals)!=sorted(p.name for p in out.glob('*.json')):
            raise ValueError('Regenerated certificate inventory differs')
        for p in originals:
            if p.read_bytes()!=(out/p.name).read_bytes():
                raise ValueError(f'Certificate regeneration mismatch: {p.name}')
        print(f'PASS byte-identical regeneration: {len(originals)} certificates',flush=True)
    print('PASS replay; no package files written; no old mathematical proof replayed',flush=True)

if __name__=='__main__':
    main()
