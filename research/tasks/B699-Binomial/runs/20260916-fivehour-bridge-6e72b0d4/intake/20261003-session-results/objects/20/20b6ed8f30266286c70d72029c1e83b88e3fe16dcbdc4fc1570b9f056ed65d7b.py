#!/usr/bin/env python3
"""Hash-check and replay the fixed E2 payload, without writing into it."""
from pathlib import Path
import hashlib, subprocess, sys
ROOT=Path(__file__).resolve().parents[1]

def check_manifest(path:Path,strict:bool=False)->int:
    seen=set()
    for line in path.read_text(encoding='utf-8').splitlines():
        digest,name=line.split('  ',1)
        q=Path(name)
        assert not q.is_absolute() and '..' not in q.parts
        assert name not in seen
        seen.add(name)
        target=ROOT/q
        assert target.is_file() and not target.is_symlink(),name
        assert hashlib.sha256(target.read_bytes()).hexdigest()==digest,name
    if strict:
        actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}
        assert actual==seen|{path.name},'unexpected/missing member'
    return len(seen)

if __name__=='__main__':
    check_manifest(ROOT/'PAYLOAD_SHA256SUMS.txt')
    if (ROOT/'SHA256SUMS.txt').exists():
        check_manifest(ROOT/'SHA256SUMS.txt',strict=True)
    subprocess.run([sys.executable,'-B',str(ROOT/'scripts/verify.py')],cwd=ROOT,check=True)
    print('PASS: manifest(s) and E2 exact replay')
