#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parent

def verify():
    data=json.loads((ROOT/'MANIFEST.json').read_text())
    for item in data['files']:
        p=ROOT/item['path']
        if not p.is_file():raise AssertionError(('missing',item['path']))
        b=p.read_bytes()
        if len(b)!=item['bytes'] or hashlib.sha256(b).hexdigest()!=item['sha256']:
            raise AssertionError(('changed',item['path']))
    for item in json.loads((ROOT/'sources/SOURCE_MAP.json').read_text()):
        p=ROOT/item['stored_path'];b=p.read_bytes()
        assert len(b)==item['bytes'] and hashlib.sha256(b).hexdigest()==item['sha256']
    return len(data['files'])
if __name__=='__main__':print('PASS manifest',verify(),'files and source copies')
