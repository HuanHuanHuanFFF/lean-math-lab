#!/usr/bin/env python3
"""Refresh only local delivery manifests. Never writes outside the package."""
from __future__ import annotations
import hashlib, importlib.util, json
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

def sha(b):return hashlib.sha256(b).hexdigest()
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()

def origin(n):
    if n=='dependencies/D-R05-evidence.zip':return ['PARENT-R05'],'Frozen original parent ZIP, byte-identical'
    if n=='sources/OVERVIEW-2026-09-22-original.md.txt':return ['OVERVIEW-OLD-RAW'],'Original historical mounted file, not current Overview'
    if n=='sources/CURRENT_OVERVIEW_STATUS.md':return ['OVERVIEW-CURRENT-READ','R06-AUTHOR'],'Author note of connector read; not raw repository file bytes'
    if n=='sources/BL_FLOOR_ADOPTION.md':return ['BL-HTML','R06-AUTHOR'],'Author adoption note of published HTML; not raw publication bytes'
    if n=='logs/PARENT_R05_REPLAY.json':return ['PARENT-R05','R06-EXECUTION'],'Actual local replay output of R05 finite certificates'
    if n=='replay.py':return ['R06-AUTHOR','R05-REPLAY-STRUCTURE'],'R06 replay with parent-derived archive audit structure; no ancestor math imports'
    if n.startswith('certificates/') or n in ['logs/BUILD.json','logs/VERIFY.json','logs/CLEAN_REPLAY_RECEIPT.json']:
        return ['R06-AUTHOR','R06-EXECUTION'],'Locally generated finite evidence or actual execution receipt'
    return ['R06-AUTHOR'],'New author proof, scope, provenance, or local implementation'

def main():
    spec=importlib.util.spec_from_file_location('r06_archive_audit',ROOT/'replay.py')
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    parent=(ROOT/'dependencies/D-R05-evidence.zip').read_bytes()
    rows=module.audit_archive(parent)
    files={p.relative_to(ROOT).as_posix():p for p in ROOT.rglob('*') if p.is_file()}
    members=[]
    for n,p in sorted(files.items()):
        if n in ['MEMBERS.json','SHA256SUMS.txt']:continue
        src,note=origin(n);b=p.read_bytes()
        members.append({'path':n,'size':len(b),'sha256':sha(b),'source_ids':src,'origin_note':note})
    obj={'schema':'B699-D-R06-members-v1','members':members,'recursive_parent_members':rows,
         'manifest_self_reference_note':'SHA256SUMS covers every file except itself. MEMBERS omits itself and SHA256SUMS.',
         'hashes_do_not_imply_mathematical_independent_acceptance':True}
    (ROOT/'MEMBERS.json').write_bytes(canon(obj))
    files={p.relative_to(ROOT).as_posix():p for p in ROOT.rglob('*') if p.is_file()}
    text=''.join(sha(p.read_bytes())+'  '+n+'\n' for n,p in sorted(files.items()) if n!='SHA256SUMS.txt')
    (ROOT/'SHA256SUMS.txt').write_text(text)
    print(json.dumps({'status':'PASS','members':len(files),'recursive_parent_members':len(rows)}))
if __name__=='__main__':main()
