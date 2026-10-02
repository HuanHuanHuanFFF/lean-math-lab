#!/usr/bin/env python3
"""Build acyclic member/provenance manifests. Adapted from parent R06 format."""
from pathlib import Path
import importlib.util,json,hashlib
R=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('audit_utils',R/'replay.py');mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)

def source(path):
 if path=='dependencies/D-R06-evidence.zip':return ['S1'],'Original frozen parent archive bytes, unchanged.'
 if path=='sources/OVERVIEW-2026-09-22-original.md.txt':return ['S0'],'Original mounted historical project file, unchanged.'
 if path=='logs/PARENT_R06_REPLAY.json':return ['S1','S4'],'Actual this-machine execution receipt of parent R06 own finite replay.'
 if path=='sources/CURRENT_OVERVIEW_STATUS.md':return ['S2','S4'],'This-session summary of read-only connector text; not original current Overview bytes.'
 if path=='sources/KUMMER_ADOPTION.md':return ['S3','S4'],'This-session primary-reference adoption note, not publisher file.'
 if path in ('scripts/build_certificate.py','scripts/verify_certificate.py','certificates/certificate.json'):return ['S4','S5'],'New generator/independent receiver/output; local equations or seeds adapted from nested R05, explicitly labeled non-global.'
 if path in ('replay.py','scripts/refresh_manifest.py'):return ['S1','S4'],'Archive integrity utility adapted from frozen R06; new finite mathematics only.'
 return ['S4'],'New author document, exact certificate record, or actual execution log for this round.'

members=[]
for p in sorted(R.rglob('*')):
 if not p.is_file():continue
 name=p.relative_to(R).as_posix()
 if name in ('MEMBERS.json','SHA256SUMS.txt'):continue
 ids,note=source(name);b=p.read_bytes()
 members.append({'path':name,'size':len(b),'sha256':hashlib.sha256(b).hexdigest(),'source_ids':ids,'origin_note':note})
par=(R/'dependencies/D-R06-evidence.zip').read_bytes()
obj={'schema':'B699-D-R07-member-provenance-v1','members':members,'recursive_parent_members':mod.audit_archive(par),
 'manifest_self_reference_rule':'MEMBERS excludes itself and SHA256SUMS. SHA256SUMS covers MEMBERS and every other file except itself; external archive SHA binds SHA256SUMS.',
 'payload_receipt_rule':'Replay payload hash excludes MEMBERS.json, SHA256SUMS.txt and logs/CLEAN_REPLAY_RECEIPT.json to avoid circularity; all are still bound by archive/member checks.'}
(R/'MEMBERS.json').write_bytes(mod.canon(obj))
lines=[]
for p in sorted(R.rglob('*')):
 if p.is_file() and p.name!='SHA256SUMS.txt':lines.append(hashlib.sha256(p.read_bytes()).hexdigest()+'  '+p.relative_to(R).as_posix())
(R/'SHA256SUMS.txt').write_text('\n'.join(lines)+'\n')
print(json.dumps({'members':len(members)+2,'recursive_parent_members':len(obj['recursive_parent_members'])}))
