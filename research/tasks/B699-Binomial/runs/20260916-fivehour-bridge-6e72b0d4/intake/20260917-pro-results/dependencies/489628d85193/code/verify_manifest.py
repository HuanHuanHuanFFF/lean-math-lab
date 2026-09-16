#!/usr/bin/env python3
"""Check a clean extracted package before replay overwrites timed outputs."""
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parents[1]
def main():
    m=json.loads((ROOT/'MANIFEST.json').read_text())
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.name!='MANIFEST.json'}
    assert actual=={e['path'] for e in m['files']}
    for e in m['files']:
        assert '..' not in Path(e['path']).parts and not Path(e['path']).is_absolute()
        raw=(ROOT/e['path']).read_bytes()
        assert len(raw)==e['bytes'] and hashlib.sha256(raw).hexdigest()==e['sha256']
    print(json.dumps({'status':'PASS','members_checked':len(m['files'])}))
if __name__=='__main__':main()
