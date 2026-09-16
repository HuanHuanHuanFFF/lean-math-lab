"""Fail closed on modified or missing static files. Replay directories are mutable logs."""
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parent

def check(root=ROOT):
    entries=json.loads((root/'MANIFEST.json').read_text())['files']
    for e in entries:
        p=root/e['path']
        if not p.is_file():raise ValueError('missing '+e['path'])
        raw=p.read_bytes()
        if len(raw)!=e['bytes'] or hashlib.sha256(raw).hexdigest()!=e['sha256']:
            raise ValueError('hash mismatch '+e['path'])
    return len(entries)
if __name__=='__main__':print('PASS static manifest',check())
