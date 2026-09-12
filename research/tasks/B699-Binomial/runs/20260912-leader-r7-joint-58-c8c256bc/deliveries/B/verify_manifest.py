#!/usr/bin/env python3
"""Verify every static delivery byte. Logs are intentionally outside the static set."""
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parent

def static_paths(root=ROOT):
    return sorted(p for p in root.rglob('*') if p.is_file() and
                  'replay' not in p.relative_to(root).parts and
                  '__pycache__' not in p.parts and p.name!='MANIFEST.json' and p.suffix!='.pyc')

def verify(root=ROOT):
    data=json.loads((root/'MANIFEST.json').read_text(encoding='utf-8'))
    expected={r['path']:r for r in data['files']}
    actual={p.relative_to(root).as_posix():p for p in static_paths(root)}
    if set(expected)!=set(actual):
        raise ValueError('Static file-set mismatch: '+str({'missing':sorted(set(expected)-set(actual)), 'extra':sorted(set(actual)-set(expected))}))
    for name,p in actual.items():
        row=expected[name]
        with p.open('rb') as f: digest=hashlib.file_digest(f,'sha256').hexdigest()
        if p.stat().st_size!=row['bytes'] or digest!=row['sha256']:
            raise ValueError('Hash mismatch: '+name)
    return {'status':'PASS','files':len(actual),'manifest_sha256':hashlib.sha256((root/'MANIFEST.json').read_bytes()).hexdigest()}

if __name__=='__main__':
    try: print(json.dumps(verify(),sort_keys=True))
    except (ValueError,OSError,KeyError) as exc: print(str(exc),file=sys.stderr);sys.exit(1)
