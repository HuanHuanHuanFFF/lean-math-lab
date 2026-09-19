#!/usr/bin/env python3
"""Verify released file bytes. New replay outputs are permitted."""
from __future__ import annotations
import hashlib,json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main():
    data=json.loads((ROOT/'MANIFEST.json').read_text())
    errors=[]
    for item in data['files']:
        rel=item['path']; path=ROOT/rel
        if Path(rel).is_absolute() or '..' in Path(rel).parts:
            errors.append('unsafe path '+rel);continue
        if not path.is_file(): errors.append('missing '+rel);continue
        b=path.read_bytes()
        if len(b)!=item['bytes'] or hashlib.sha256(b).hexdigest()!=item['sha256']:
            errors.append('mismatch '+rel)
    expected={line.split('  ',1)[1]:line.split('  ',1)[0]
              for line in (ROOT/'SHA256SUMS').read_text().splitlines() if line.strip()}
    for rel,digest in expected.items():
        p=ROOT/rel
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
            errors.append('SHA256SUMS mismatch '+rel)
    if errors:
        print(json.dumps({'status':'FAIL','errors':errors},ensure_ascii=False));sys.exit(1)
    print(json.dumps({'status':'PASS','manifest_members':len(data['files']),
                     'sha256sum_entries':len(expected)},ensure_ascii=False))
if __name__=='__main__':main()
