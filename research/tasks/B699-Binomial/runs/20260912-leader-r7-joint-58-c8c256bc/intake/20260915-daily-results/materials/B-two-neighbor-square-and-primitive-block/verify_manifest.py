#!/usr/bin/env python3
"""Validate every frozen file and the adopted source-byte mapping."""
import hashlib,json,sys,zipfile
from pathlib import Path

def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def static_paths(root):
    return sorted(p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()
      and p.name!='MANIFEST.json' and '__pycache__' not in p.parts
      and 'replay' not in p.relative_to(root).parts)
def verify(root):
    m=json.loads((root/'MANIFEST.json').read_text());entries=m['files']
    want=sorted(e['path'] for e in entries)
    if want!=static_paths(root):raise ValueError('frozen file-set mismatch')
    for e in entries:
        p=root/e['path']
        if p.stat().st_size!=e['bytes'] or digest(p)!=e['sha256']:raise ValueError('hash mismatch: '+e['path'])
    adoption=json.loads((root/'SOURCE_ADOPTION.json').read_text());zpath=root/adoption['archive']
    if digest(zpath)!=adoption['sha256']:raise ValueError('old archive changed')
    with zipfile.ZipFile(zpath) as z:
        for item in adoption['members']:
            raw=z.read(item['member']);other=(root/item['copy']).read_bytes()
            if raw!=other or hashlib.sha256(raw).hexdigest()!=item['sha256']:raise ValueError('source mapping failure')
    return {'status':'PASS_MANIFEST','frozen_files':len(entries),'adopted_members':len(adoption['members']),'old_archive_sha256':adoption['sha256']}

if __name__=='__main__':
    try: print(json.dumps(verify(Path(__file__).resolve().parent),sort_keys=True))
    except Exception as exc:print(type(exc).__name__+': '+str(exc),file=sys.stderr);sys.exit(1)
