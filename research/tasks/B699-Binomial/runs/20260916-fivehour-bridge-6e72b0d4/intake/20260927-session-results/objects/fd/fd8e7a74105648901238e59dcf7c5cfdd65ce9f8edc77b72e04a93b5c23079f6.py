#!/usr/bin/env python3
"""Read-only integrity verification, mathematical reception and exact regeneration.
Usage: python replay.py
Requires only Python 3.10+ standard library. Does not access the network or a repo.
"""
from __future__ import annotations
import hashlib,json,os,subprocess,sys,tempfile
from pathlib import Path
if not __debug__:raise RuntimeError('Run without -O.')
ROOT=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(cmd):
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0'
    p=subprocess.run(cmd,cwd=ROOT,env=env,text=True,capture_output=True)
    print(p.stdout,end='')
    if p.stderr:print(p.stderr,file=sys.stderr,end='')
    if p.returncode:raise RuntimeError('command failed: '+repr(cmd))

def main():
    manifest=ROOT/'SHA256SUMS.txt'
    if not manifest.exists():manifest=ROOT/'PAYLOAD_SHA256SUMS.txt'
    listed={}
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line:continue
        expected,rel=line.split('  ',1);p=(ROOT/rel).resolve()
        if not p.is_relative_to(ROOT) or not p.is_file():raise RuntimeError('unsafe or missing path: '+rel)
        if digest(p)!=expected:raise RuntimeError('SHA256 mismatch: '+rel)
        listed[rel]=expected
    actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file()}
    if actual!=set(listed)|{manifest.name}:raise RuntimeError('unlisted or missing package files')
    print('PASS integrity:',len(listed),'files from',manifest.name)
    run([sys.executable,'-B',str(ROOT/'evidence/verify.py'),'--cert-dir',str(ROOT/'certificates')])
    with tempfile.TemporaryDirectory(prefix='b699-a4-regenerate-') as tmp:
        dest=Path(tmp)/'certificates'
        run([sys.executable,'-B',str(ROOT/'evidence/generate.py'),'--out',str(dest)])
        originals={p.name:p.read_bytes() for p in (ROOT/'certificates').glob('*.json')}
        regenerated={p.name:p.read_bytes() for p in dest.glob('*.json')}
        if originals!=regenerated:raise RuntimeError('regenerated certificates differ')
        print('PASS all',len(originals),'certificates byte-identical after regeneration')
    for rel,expected in listed.items():
        if digest(ROOT/rel)!=expected:raise RuntimeError('replay changed package file')
    print(json.dumps({'status':'PASS','read_only':True,'network_used':False,'repository_used':False,'certificate_files':8,'manifest_files_checked':len(listed)},sort_keys=True))
if __name__=='__main__':main()
