"""Verify every static file; mutable replay logs are deliberately excluded."""
from pathlib import Path
import json,hashlib
ROOT=Path(__file__).resolve().parent

def verify():
    m=json.loads((ROOT/'MANIFEST.json').read_text());seen=[]
    for row in m['files']:
        p=ROOT/row['path'];b=p.read_bytes()
        assert len(b)==row['bytes'] and hashlib.sha256(b).hexdigest()==row['sha256'],row['path']
        seen.append(row['path'])
    actual=sorted(p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()
                  and p.relative_to(ROOT).parts[0]!='replay' and '__pycache__' not in p.parts
                  and p.name!='MANIFEST.json' and p.suffix!='.pyc')
    assert sorted(seen)==actual,'static file set changed'
    return m
if __name__=='__main__':
    m=verify();print('PASS',len(m['files']),'static files, exact path/size/SHA256')
