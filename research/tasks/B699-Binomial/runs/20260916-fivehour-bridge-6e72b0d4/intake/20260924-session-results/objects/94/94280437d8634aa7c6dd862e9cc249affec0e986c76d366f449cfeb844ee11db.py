#!/usr/bin/env python3
"""Verify archive bytes only. Never execute historical research/replay scripts."""
from pathlib import Path
import hashlib,json,re,zipfile

def main():
    root=Path(__file__).resolve().parent.parent
    sums=root/'SHA256SUMS'
    count=0
    for line in sums.read_text(encoding='utf-8').splitlines():
        digest,rel=line.split('  ',1)
        path=root/rel
        if not path.is_file():raise RuntimeError(f'Missing: {rel}')
        actual=hashlib.sha256(path.read_bytes()).hexdigest()
        if digest!=actual:raise RuntimeError(f'Hash mismatch: {rel}')
        count+=1
    catalog=json.loads((root/'audit/SESSION_DELIVERY_INVENTORY.json').read_text())
    members=json.loads((root/'audit/SOURCE_MEMBERS.json').read_text())
    zipcount=inner=expanded=loose=0
    for rd in catalog['rounds']:
        zp=root/rd['original_zip']
        if hashlib.sha256(zp.read_bytes()).hexdigest()!=rd['sha256']:
            raise RuntimeError('Original ZIP mismatch')
        with zipfile.ZipFile(zp) as z:
            bad=z.testzip()
            if bad:raise RuntimeError('CRC failed: '+bad)
            for item in members:
                if item['round_id']!=rd['round_id']:continue
                data=z.read(item['member'])
                if hashlib.sha256(data).hexdigest()!=item['sha256']:raise RuntimeError('Member mismatch')
                if item['expanded_archive_path']:
                    if data!=(root/item['expanded_archive_path']).read_bytes():raise RuntimeError('Expanded copy changed')
                    expanded+=1
            text=z.read(rd['stem']+'/SHA256SUMS').decode('utf-8')
            for line in text.splitlines():
                if not line.strip():continue
                m=re.fullmatch(r'([A-Fa-f0-9]{64})\s+[* ]?(.+)',line)
                if not m:raise RuntimeError('Unparsed internal sum')
                expected,rel=m.groups();rel=rel.removeprefix('./')
                candidate=rd['stem']+'/'+rel
                if candidate not in z.namelist():candidate=rel
                if hashlib.sha256(z.read(candidate)).hexdigest()!=expected.lower():raise RuntimeError('Original internal hash mismatch')
                inner+=1
            for rel in rd['standalone']:
                if (root/rd['archive_round_path']/'standalone'/rel).read_bytes()!=z.read(rd['stem']+'/'+rel):
                    raise RuntimeError('Standalone attachment differs')
                loose+=1
        zipcount+=1
    print(f'ARCHIVE_FILE_HASHES=PASS ({count})')
    print(f'ORIGINAL_ZIP_HASHES_AND_CRC=PASS ({zipcount})')
    print(f'ORIGINAL_INTERNAL_SHA256=PASS ({inner})')
    print(f'EXPANDED_FILES_BYTE_IDENTICAL=PASS ({expanded})')
    print(f'STANDALONE_ATTACHMENTS_BYTE_IDENTICAL=PASS ({loose})')
    print('RESEARCH_SCRIPTS_EXECUTED=0')
    print('ARCHIVE_ONLY_VERIFICATION=PASS')
if __name__=='__main__':main()
