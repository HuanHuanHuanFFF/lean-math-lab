#!/usr/bin/env python3
"""Acyclic member/source manifests; bookkeeping adapted from frozen R08."""
from pathlib import Path
import importlib.util,json,hashlib
R=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('audit_utils',R/'replay.py')
mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)

def source(path):
 if path=='dependencies/D-R08-evidence.zip':return ['S1'],'Original frozen parent archive bytes, unchanged.'
 if path=='sources/OVERVIEW-2026-09-22-original.md.txt':return ['S0'],'Original mounted historical project source, unchanged; not current full Overview.'
 if path=='logs/PARENT_R08_REPLAY.json':return ['S1','S3'],'Actual this-machine execution receipt for parent R08 own finite replay.'
 if path in ('sources/CURRENT_OVERVIEW_STATUS.md','logs/SOURCE_ACCESS.json'):return ['S2','S3'],'Read-only connector status; not full original Overview bytes.'
 if path in ('scripts/build_certificate.py','scripts/verify_certificate.py','certificates/certificate.json'):return ['S3'],'New exact Laurent/digit generator and separate interpolation/carry receiver; weak models explicitly labeled.'
 if path in ('replay.py','scripts/refresh_manifest.py'):return ['S1','S3'],'Archive bookkeeping adapted from frozen R08; executes only new finite mathematics.'
 return ['S3'],'New author document, source record or actual execution log.'

members=[]
for p in sorted(R.rglob('*')):
 if not p.is_file():continue
 name=p.relative_to(R).as_posix()
 if name in ('MEMBERS.json','SHA256SUMS.txt'):continue
 ids,note=source(name);b=p.read_bytes()
 members.append({'path':name,'size':len(b),'sha256':hashlib.sha256(b).hexdigest(),'source_ids':ids,'origin_note':note})
par=(R/'dependencies/D-R08-evidence.zip').read_bytes()
obj={'schema':'B699-D-R09-member-provenance-v1','members':members,'recursive_parent_members':mod.audit_archive(par),
 'manifest_self_reference_rule':'MEMBERS excludes itself and SHA256SUMS; SHA256SUMS covers every file except itself; archive SHA binds SHA256SUMS.',
 'payload_receipt_rule':'Payload hash excludes MEMBERS.json, SHA256SUMS.txt and logs/CLEAN_REPLAY_RECEIPT.json to avoid circularity; all remain archive/member checked.'}
(R/'MEMBERS.json').write_bytes(mod.canon(obj))
lines=[]
for p in sorted(R.rglob('*')):
 if p.is_file() and p.name!='SHA256SUMS.txt':lines.append(hashlib.sha256(p.read_bytes()).hexdigest()+'  '+p.relative_to(R).as_posix())
(R/'SHA256SUMS.txt').write_text('\n'.join(lines)+'\n')
print(json.dumps({'members':len(members)+2,'recursive_parent_members':len(obj['recursive_parent_members'])}))
