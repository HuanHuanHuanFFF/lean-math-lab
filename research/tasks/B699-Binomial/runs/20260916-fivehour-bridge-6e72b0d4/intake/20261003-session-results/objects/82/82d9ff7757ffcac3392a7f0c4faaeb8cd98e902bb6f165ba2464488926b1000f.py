#!/usr/bin/env python3
"""Regenerate member-level source map and SHA256SUMS; adapted from R09 archive layout."""
from pathlib import Path
import importlib.util
root=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('local_archive',root/'replay.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)

files=sorted(p for p in root.rglob('*') if p.is_file() and p.name not in ('MEMBERS.json','SHA256SUMS.txt'))
rows=[]
for p in files:
    n=p.relative_to(root).as_posix();b=p.read_bytes()
    if n.startswith('dependencies/'):
        ids=['S1'];note='Direct parent raw ZIP; unchanged uploaded bytes, nested members preserved.'
    elif n=='sources/OVERVIEW-2026-09-22-original.md.txt':
        ids=['S2'];note='Byte-for-byte copy of mounted frozen Project file; scope protocol only.'
    elif n=='sources/CURRENT_OVERVIEW_STATUS.md':
        ids=['S3','R10'];note='Locally written record of actual partial GitHub read, not full Overview bytes.'
    elif n=='sources/METHOD_REFERENCE.md':
        ids=['S4','R10'];note='Reading record of primary method page; not archived source HTML.'
    elif n.startswith('logs/PARENT_'):
        ids=['S1','R10'];note='Actual local parent-byte comparison or parent-own finite replay receipt.'
    elif n in ('replay.py','scripts/refresh_manifest.py'):
        ids=['R10','S1'];note='Local archive/replay code; structure adapted from frozen parent and explicitly attributed.'
    elif n in ('SOURCE_ADOPTION.md','SOURCES.json','SESSION_STATE.json'):
        ids=['R10','S1','S2','S3','S4'];note='Local adoption, scope and evidence-state record; no new external verification implied.'
    else:
        ids=['R10','S1'];note='Current author proof, local implementation, finite certificate, or execution log; inherited core from S1.'
    rows.append({'path':n,'size':len(b),'sha256':m.sha(b),'source_ids':ids,'origin_note':note})
parent=(root/'dependencies/D-R09-evidence.zip').read_bytes()
obj={'schema':'B699-D-R10-member-source-map-v1','members':rows,
     'recursive_parent_members':m.audit_archive(parent),
     'self_exclusions':['MEMBERS.json','SHA256SUMS.txt'],
     'note':'SHA256SUMS includes MEMBERS and the replay receipt. The clean-replay payload digest excludes the receipt and manifests to avoid self-hashing.'}
(root/'MEMBERS.json').write_bytes(m.canon(obj))
allfiles=sorted(p for p in root.rglob('*') if p.is_file() and p.name!='SHA256SUMS.txt')
(root/'SHA256SUMS.txt').write_text(''.join(m.sha(p.read_bytes())+'  '+p.relative_to(root).as_posix()+'\n' for p in allfiles))
print('manifest',len(allfiles)+1,'members;',len(obj['recursive_parent_members']),'recursive parent members')
