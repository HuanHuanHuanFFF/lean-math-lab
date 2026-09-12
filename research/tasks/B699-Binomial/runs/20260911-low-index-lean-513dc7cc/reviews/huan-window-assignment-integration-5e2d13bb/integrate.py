from pathlib import Path
import json,hashlib,re
from datetime import datetime,timezone
repo=Path.cwd()
rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
run=repo/rr
src=run/'experiments/huan-window-prime-assignment-5e2d13bb'
review=run/'reviews/huan-window-assignment-integration-5e2d13bb'
review.mkdir(exist_ok=True)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
freeze=json.loads((src/'FREEZE.json').read_text())
for name,info in freeze['files'].items():
    assert sha(src/name)==info['sha256'],name
mapping=json.loads((src/'SOURCE_MAP.json').read_text())
for item in mapping['sources']:
    assert sha(Path(item['path']))==item['sha256'],item['path']
old='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-window-prime-assignment-5e2d13bb»'.encode()
new='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WinAssign'.encode()
adopted=[]
for name,dest in {**mapping['module_mapping'],**mapping['audit_mapping']}.items():
    p=run/dest
    data=(src/name).read_bytes().replace(old,new)
    assert not re.search(rb'\b(sorryAx|native_decide|admit|sorry)\b',data),name
    assert not re.search(rb'(?m)^\s*(axiom|constant)\s',data),name
    p.parent.mkdir(exist_ok=True)
    if p.exists():assert p.read_bytes()==data
    else:p.write_bytes(data)
    adopted.append({'source':name,'source_sha256':sha(src/name),'target':dest,'target_sha256':sha(p)})
prefix=(rr/'verification/huan-prerequisites').as_posix()+'/'
receipt=lambda name:prefix+name+'.json'
base=receipt('i11-initial-full-audit')
roots=[
('window-assignment-products','PAudit.lean',[base]),
('window-assignment-actual','AAudit.lean',[base]),
('window-assignment-blocks','BAudit.lean',[receipt('window-assignment-products'),receipt('window-assignment-actual')]),
('window-assignment-remainders','RAudit.lean',[receipt('window-assignment-blocks')]),
('window-assignment-weighted','WAudit.lean',[receipt('window-assignment-remainders')]),
('window-assignment-full-audit','Audit.lean',[receipt('window-assignment-weighted')])]
jobs=[dict(name=name,root='lean/WinAssign/'+root,source_sha256=sha(run/'lean/WinAssign'/root),reuse=reuse,memory_mb=1536) for name,root,reuse in roots]
now=datetime.now(timezone.utc).isoformat()
plan=dict(kind='source_bound_b_prerequisite_queue',created_utc=now,status='prepared_not_running',jobs=jobs,new_B_original_results=0,purpose='Actual all-parameter window prime assignment and factorial remainder bridge; not an original B result.')
(run/'notes/huan-window-assignment-plan.json').write_text(json.dumps(plan,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
record=dict(utc=now,status='source_integrated_not_Lean_accepted',frozen_source_sha256=sha(src/'FREEZE.json'),source_files_checked=len(freeze['files']),dependency_sources_checked=len(mapping['sources']),adopted=adopted,only_mutation='own import prefix remapping',mathematical_domain='1 <= k <= n',expected_frontier='Unlock actual weighted window factorization for i13; no original index counted',new_B_original_results=0)
(review/'adoption.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
statepath=run/'notes/huan-current-state-v31.json'
state=json.loads(statepath.read_text())
qs=json.loads((run/'verification/huan-b-queue-20260912T030958206763Z/state.json').read_text())
accepted=[j['name'] for j in qs['jobs'] if j['status'] in ['accepted_prerequisite','existing_complete_receipt_validated']]
state.update(utc=now,completed_CRT_rectangles=[x for x in accepted if x.startswith('crt-stage') and x.endswith('-rectangle')],coverage_first_aggregate='Accepted complete interval 24..4010; i11-terminal-coverage-first receipt',i13='c7d5 actual uniform rational divisor and qContent lower bounds accepted in 47-root full audit; no new i13 height or original result',i13_window_assignment='11 files integrated,6-job plan ready; uncompiled candidate only',active_job=next((j['name'] for j in qs['jobs'] if j['status']=='running'),None))
statepath.write_text(json.dumps(state,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
with (run/'notes/huan-resumed-checkpoint-20260912.md').open('a',encoding='utf-8',newline='\n') as f:
    f.write('\n## '+now+' — actual window assignment candidate adopted\n\n22 frozen files and all referenced dependency source hashes checked. 11 Lean module/audit files copied into lean/WinAssign by import-prefix-only substitution; six fresh checks prepared in notes/huan-window-assignment-plan.json. No new Lean process started. This bridge targets actual product of remainders = k! and bounded weighted loss for all 1 <= k <= n, preserving p=k localization. It remains uncompiled; A=151 plus unified, B=0/19. Current v31 accepted i13 G75 full audit and four complete CRT rectangles; current job '+str(state['active_job'])+'.\n')
print(json.dumps({'adopted':len(adopted),'freeze_files':len(freeze['files']),'checked_sources':len(mapping['sources']),'jobs':len(jobs),'rectangles':len(state['completed_CRT_rectangles']),'active':state['active_job']},ensure_ascii=False))

