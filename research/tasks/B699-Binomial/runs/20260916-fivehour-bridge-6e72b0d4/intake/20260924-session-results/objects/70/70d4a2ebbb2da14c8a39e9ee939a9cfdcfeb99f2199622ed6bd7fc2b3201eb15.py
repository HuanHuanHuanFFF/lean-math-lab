#!/usr/bin/env python3
"""Verify archival byte integrity only. Does not run research scripts."""
from __future__ import annotations
from pathlib import Path, PurePosixPath
import hashlib,json,re,sys,zipfile

def digest(b:bytes)->str:
    return hashlib.sha256(b).hexdigest()

def check(ok:bool,msg:str)->None:
    if not ok:
        raise ValueError(msg)

def main()->None:
    root=Path(__file__).resolve().parent
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()}
    lines=(root/'SHA256SUMS.txt').read_text(encoding='utf-8').splitlines()
    expected={}
    for line in lines:
        match=re.fullmatch(r'([0-9a-f]{64})  (.+)',line)
        check(match is not None,'Malformed master hash line')
        h,rel=match.groups()
        parts=PurePosixPath(rel)
        check(not parts.is_absolute() and '..' not in parts.parts,'Unsafe master hash path')
        check(rel not in expected,'Duplicate master hash path')
        expected[rel]=h
    check(set(expected)==actual-{'SHA256SUMS.txt'},'Master manifest does not cover exact file set')
    for rel,h in expected.items():
        check(digest((root/rel).read_bytes())==h,'Hash mismatch: '+rel)
    reg=json.loads((root/'provenance/SESSION_DELIVERY_REGISTER.json').read_text(encoding='utf-8'))
    zcount=mcount=acount=rcount=inner_count=0
    for rnd in reg['rounds']:
        zp=root/rnd['original_zip']
        check(digest(zp.read_bytes())==rnd['expected_sha256_from_visible_delivery'],'Original ZIP differs from delivered hash')
        check((root/rnd['zip_sha256_sidecar']).read_text().split()[0]==rnd['actual_sha256'],'Original ZIP sidecar mismatch')
        with zipfile.ZipFile(zp) as z:
            check(z.testzip() is None,'Original ZIP CRC failure')
            members={i.filename for i in z.infolist() if not i.is_dir()}
            check(members=={x['zip_member'] for x in rnd['members']},'Original ZIP member list differs')
            relative={}
            for m in rnd['members']:
                data=z.read(m['zip_member'])
                check(data==(root/m['path']).read_bytes(),'Expanded member bytes differ: '+m['path'])
                check(digest(data)==m['sha256'],'Recorded member hash differs')
                relative[m['zip_member'].split('/',1)[1]]=data
                mcount+=1
            for rel,data in relative.items():
                if PurePosixPath(rel).name in ('SHA256SUMS','SHA256SUMS.txt'):
                    for line in data.decode('utf-8').splitlines():
                        if not line.strip():continue
                        mm=re.fullmatch(r'([0-9a-fA-F]{64})\s+\*?(.+)',line)
                        check(mm is not None,'Malformed original hash line')
                        target=mm[2].removeprefix('./')
                        check(target in relative,'Original manifest missing member')
                        check(digest(relative[target])==mm[1].lower(),'Original manifest hash mismatch')
                        inner_count+=1
        zcount+=1
        for a in rnd['standalone_attachments']:
            data=(root/a['path']).read_bytes()
            check(digest(data)==a['sha256'],'Standalone attachment hash mismatch')
            check(data==(root/a['package_copy']).read_bytes(),'Standalone vs package mismatch')
            acount+=1
        for r in rnd['separate_validation_receipts']:
            check(digest((root/r['path']).read_bytes())==r['sha256'],'Historical receipt byte mismatch')
            rcount+=1
    summary={'status':'PASS','scope':'archive-byte-integrity-only','file_count':len(actual),
      'master_hash_entries':len(expected),'original_zips':zcount,'expanded_members':mcount,
      'original_internal_hash_entries':inner_count,'standalone_attachments':acount,
      'separate_historical_validation_receipts':rcount,'research_replayed':False,'lean_run':False}
    print(json.dumps(summary,ensure_ascii=False,indent=2))
    print('ARCHIVE_INTEGRITY_ONLY=PASS')

if __name__=='__main__':
    try:
        main()
    except Exception as exc:
        print('ARCHIVE_INTEGRITY_ONLY=FAIL: '+str(exc),file=sys.stderr)
        sys.exit(1)
