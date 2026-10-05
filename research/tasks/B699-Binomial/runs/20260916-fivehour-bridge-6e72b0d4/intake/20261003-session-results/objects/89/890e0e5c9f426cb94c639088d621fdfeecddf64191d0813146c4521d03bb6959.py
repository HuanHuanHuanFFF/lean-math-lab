#!/usr/bin/env python3
"""Offline clean replay, no network/Lean/repository access; standard library only."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import tempfile


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def check_manifest(root, allow_missing=False):
    manifest=root/'SHA256SUMS.txt'
    if not manifest.exists():
        if allow_missing: return {'status':'not_yet_packaged','members':0}
        raise RuntimeError('SHA256SUMS.txt is missing')
    checked=set()
    for line in manifest.read_text(encoding='utf-8').splitlines():
        digest,name=line.split('  ',1)
        rel=Path(name)
        if rel.is_absolute() or '..' in rel.parts or name in checked:
            raise RuntimeError(f'Invalid manifest path {name!r}')
        p=root/rel
        if not p.is_file() or p.is_symlink() or sha(p)!=digest:
            raise RuntimeError(f'Manifest mismatch: {name}')
        checked.add(name)
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()
            and p.name!='SHA256SUMS.txt'}
    if checked!=actual:
        raise RuntimeError(f'Manifest membership differs: {checked ^ actual}')
    metadata=json.loads((root/'MEMBERS.json').read_text(encoding='utf-8'))
    records=metadata['payload_members']
    names=[row['path'] for row in records]
    if len(names)!=len(set(names)) or set(names)!=checked-{'MEMBERS.json'}:
        raise RuntimeError('Member provenance membership mismatch')
    source_ids={row['id'] for row in json.loads((root/'SOURCES.json').read_text(encoding='utf-8'))['sources']}
    for row in records:
        f=root/row['path']
        if row['sha256']!=sha(f) or row['bytes']!=f.stat().st_size:
            raise RuntimeError(f'Provenance hash/size mismatch: {row["path"]}')
        if not set(row['source_refs']) <= source_ids:
            raise RuntimeError(f'Unknown source reference: {row["path"]}')
    return {'status':'PASS','members':len(checked),'member_provenance_checked':len(records)}


def run(cmd):
    p=subprocess.run(cmd,capture_output=True,text=True,check=False)
    if p.returncode:
        raise RuntimeError(f'Command failed ({p.returncode}): {cmd}\n{p.stdout}\n{p.stderr}')
    return p.stdout


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--output',type=Path,help='Prefer a path OUTSIDE the unpacked evidence tree')
    ap.add_argument('--allow-missing-manifest',action='store_true',help='Build-stage use only')
    args=ap.parse_args()
    root=Path(__file__).resolve().parent
    manifest=check_manifest(root,args.allow_missing_manifest)
    with tempfile.TemporaryDirectory(prefix='b699-d04-replay-') as td:
        tmp=Path(td)
        build_log=run([sys.executable,'-I','-B',str(root/'scripts/build_certificate.py'),
                       '--output',str(tmp/'generated')])
        compared=[]
        for name in ('certificate.json','summary.json','A_projection.csv','RETAINED_A.txt'):
            original=root/'certificates'/name
            rebuilt=tmp/'generated'/name
            if original.read_bytes()!=rebuilt.read_bytes():
                raise RuntimeError(f'Byte mismatch on regenerated {name}')
            compared.append({'name':name,'sha256':sha(original),'bytes':original.stat().st_size})
        verify_log=run([sys.executable,'-I','-B',str(root/'scripts/verify_certificate.py'),
                        '--certificate',str(tmp/'generated/certificate.json'),
                        '--output',str(tmp/'verify.json'),'--negative-tests'])
        verification=json.loads((tmp/'verify.json').read_text())
        reference=json.loads((root/'logs/SECOND_FORMULA_VERIFY.json').read_text())
        if verification!=reference:
            raise RuntimeError('Verification result differs from frozen receipt')
    result={'schema':'B699-D04-replay-v1','status':'PASS',
            'network_access':False,'lean_executed':False,'repository_operations':False,
            'manifest':manifest,'regenerated_members':compared,
            'counts':verification['counts'],
            'polynomial_identity_checks':verification['identities'],
            'negative_tests':verification['negative_tests'],
            'proof_scope':'conditional integer balanced same-source core; not general NC3',
            'review_scope':'same-session second algorithm and exact replay; not external review'}
    text=json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(text,encoding='utf-8')
    print(text,end='')

if __name__=='__main__': main()
