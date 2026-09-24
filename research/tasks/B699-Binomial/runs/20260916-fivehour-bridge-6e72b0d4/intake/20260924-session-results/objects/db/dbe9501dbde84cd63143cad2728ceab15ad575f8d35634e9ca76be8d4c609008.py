#!/usr/bin/env python3
"""Verify archived bytes only. Does NOT execute the research scripts."""
from pathlib import Path
import hashlib,json,sys,zipfile

def digest(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def main():
    root=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parents[1]
    failures=[];checked=0
    for line in (root/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
        expected,rel=line.split('  ',1)
        p=root/rel
        if not p.is_file() or digest(p)!=expected:failures.append(rel)
        checked+=1
    zip_count=0
    for p in sorted((root/'ORIGINAL_ZIPS').rglob('*.zip')):
        with zipfile.ZipFile(p) as z:
            bad=z.testzip()
            if bad:failures.append(str(p)+':'+bad)
        zip_count+=1
    result={'status':'PASS_ARCHIVE_BYTES_ONLY' if not failures else 'FAIL',
            'files_hashed':checked,'original_zips_crc_checked':zip_count,
            'research_code_executed':False,'mathematical_replay_performed':False,'failures':failures}
    print(json.dumps(result,ensure_ascii=False,indent=2))
    return int(bool(failures))
if __name__=='__main__':raise SystemExit(main())
