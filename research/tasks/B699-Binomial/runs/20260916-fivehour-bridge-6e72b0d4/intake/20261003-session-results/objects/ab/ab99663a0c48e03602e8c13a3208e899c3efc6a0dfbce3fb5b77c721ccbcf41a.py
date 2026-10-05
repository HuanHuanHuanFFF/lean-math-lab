#!/usr/bin/env python3
"""Local artifact manifest. No repository or library mutation."""
import hashlib,importlib.util,json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('local_r11_replay',root/'replay.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
def digest(b):return hashlib.sha256(b).hexdigest()
def canon(o):return (json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
rows=[]
for p in sorted(root.rglob('*')):
    if not p.is_file():continue
    name=p.relative_to(root).as_posix()
    if name in ('SHA256SUMS.txt','MEMBERS.json'):continue
    source=['R11'];note='New R11 author text, exact computation, or local receipt'
    if name=='dependencies/D-R10-evidence.zip':source=['S1'];note='Unchanged mounted original parent ZIP'
    elif name=='sources/OVERVIEW-2026-09-22-original.md.txt':source=['S2'];note='Unchanged mounted original old Overview, protocol only'
    elif name=='sources/CURRENT_OVERVIEW_STATUS.md':source=['S3','R11'];note='Current connector read note, not original full Overview bytes'
    elif name=='sources/METHOD_REFERENCE.md':source=['S4','R11'];note='Primary abstract method note; no theorem adopted'
    elif name.startswith('logs/PARENT'):source=['S1','R11'];note='Actual local parent byte audit or own finite replay receipt'
    elif name in ('replay.py','scripts/refresh_manifest.py'):source=['S1','R11'];note='R11 replay/audit code; archive audit structure adapted from R10'
    rows.append({'path':name,'size':p.stat().st_size,'sha256':digest(p.read_bytes()),'source_ids':source,'origin_note':note})
parent=m.audit_archive((root/'dependencies/D-R10-evidence.zip').read_bytes())
(root/'MEMBERS.json').write_bytes(canon({'schema':'B699-D-R11-member-provenance-v1','members':rows,'recursive_parent_members':parent}))
checks=[]
for p in sorted(root.rglob('*')):
    if p.is_file() and p.name!='SHA256SUMS.txt':
        checks.append(digest(p.read_bytes())+'  '+p.relative_to(root).as_posix())
(root/'SHA256SUMS.txt').write_text('\n'.join(checks)+'\n')
print(json.dumps({'status':'PASS','files_hashed':len(checks),'recursive_parent_members':len(parent)}))
