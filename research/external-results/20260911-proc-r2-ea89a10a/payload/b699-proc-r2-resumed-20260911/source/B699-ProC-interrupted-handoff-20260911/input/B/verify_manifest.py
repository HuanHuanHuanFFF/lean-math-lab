#!/usr/bin/env python3
"""Verify exactly the immutable package files and adopted byte-for-byte sources.
Runtime replay/ directories are intentionally excluded. Integrity is not a proof.
"""
from __future__ import annotations
import hashlib,json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def digest(p:Path)->str:
    h=hashlib.sha256()
    with p.open('rb') as f:
        for x in iter(lambda:f.read(1<<20),b''):h.update(x)
    return h.hexdigest()
def static_files()->dict[str,Path]:
    out={}
    for p in ROOT.rglob('*'):
        if not p.is_file():continue
        rel=p.relative_to(ROOT)
        if rel.parts[0]=='replay' or '__pycache__' in rel.parts or p.suffix=='.pyc' or rel.as_posix()=='MANIFEST.json':continue
        out[rel.as_posix()]=p
    return out

def main()->None:
    manifest=json.loads((ROOT/'MANIFEST.json').read_text());expected={r['path']:r for r in manifest['files']}
    actual=static_files();errors=[]
    if set(expected)!=set(actual):errors.append({'missing':sorted(set(expected)-set(actual)),'extra':sorted(set(actual)-set(expected))})
    for name in sorted(set(expected)&set(actual)):
        p=actual[name];r=expected[name]
        if p.stat().st_size!=r['bytes'] or digest(p)!=r['sha256']:errors.append({'bad_file':name})
    sources=json.loads((ROOT/'input/SOURCE_MAP.json').read_text())
    for r in sources['copied_members']:
        p=ROOT/r['local_path']
        if not p.is_file() or p.stat().st_size!=r['bytes'] or digest(p)!=r['sha256']:
            errors.append({'bad_adopted_source':r['local_path']})
    print(json.dumps({'status':'verified' if not errors else 'failed','static_files':len(expected),
                      'raw_source_members':len(sources['copied_members']),'errors':errors},ensure_ascii=False))
    raise SystemExit(1 if errors else 0)
if __name__=='__main__':main()
