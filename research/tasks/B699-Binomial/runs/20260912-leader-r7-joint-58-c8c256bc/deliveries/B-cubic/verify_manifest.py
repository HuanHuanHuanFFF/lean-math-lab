"""Fail closed on any missing/altered/unlisted static deliverable file."""
from __future__ import annotations
import hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def verify(root=ROOT):
    m=json.loads((root/'MANIFEST.json').read_text());names=set()
    for item in m['files']:
        name=item['path']
        if name in names or Path(name).is_absolute() or '..' in Path(name).parts:raise ValueError('unsafe manifest')
        names.add(name);p=root/name;data=p.read_bytes()
        if len(data)!=item['bytes'] or hashlib.sha256(data).hexdigest()!=item['sha256']:raise ValueError('altered file '+name)
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()
            and 'replay' not in p.relative_to(root).parts and '__pycache__' not in p.parts and p.name!='MANIFEST.json'}
    if actual!=names:raise ValueError('unlisted or missing static files: '+repr(sorted(actual^names)))
    return {'files':len(names),'manifest_sha256':hashlib.sha256((root/'MANIFEST.json').read_bytes()).hexdigest()}
if __name__=='__main__':print('PASS:',verify())
