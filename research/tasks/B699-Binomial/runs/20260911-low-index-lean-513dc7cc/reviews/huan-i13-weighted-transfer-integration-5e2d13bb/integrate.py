from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,re
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
src=run/'experiments/huan-i13-weighted-transfer-5e2d13bb';review=run/'reviews/huan-i13-weighted-transfer-integration-5e2d13bb'
review.mkdir(exist_ok=True);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
fr=json.loads((src/'FREEZE.json').read_text());mp=json.loads((src/'SOURCE_MAP.json').read_text())
for name,rec in fr['files'].items():assert sha(src/name)==rec['sha256'],name
for rec in mp['sources']:assert sha(Path(rec['path']))==rec['sha256'],rec['path']
ad=mp['transfer_source_acceptance_check'];assert sha(Path(ad['receipt']))==ad['receipt_sha256'];assert sha(Path(ad['evidence']))==ad['evidence_sha256']
e=json.loads(Path(ad['evidence']).read_text());assert e['success'] and e['exit_code']==0
old='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i13-weighted-transfer-5e2d13bb»'.encode()
new='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Weight'.encode()
files=[]
for name,dest in {**mp['modules'],**mp['audits']}.items():
 p=run/dest;data=(src/name).read_bytes().replace(old,new)
 assert not re.search(rb'\b(sorry|admit|sorryAx|native_decide|ofReduceBool)\b',data),name
 assert not re.search(rb'(?m)^\s*axiom\s',data),name
 p.parent.mkdir(exist_ok=True)
 if p.exists():assert p.read_bytes()==data
 else:p.write_bytes(data)
 files.append({'source':name,'source_sha256':sha(src/name),'target':dest,'target_sha256':sha(p)})
rp=(rr/'verification/huan-prerequisites').as_posix()+'/'
rc=lambda s:rp+s+'.json'
rows=[
('i13-weighted-window-generic','GAudit.lean',[rc('window-assignment-full-audit')]),
('i13-weighted-two-windows','WAudit.lean',[rc('i11-actual-cubic-bridge')]),
('i13-weighted-actual-positions','PAudit.lean',[rc('window-assignment-full-audit'),rc('i11-actual-cubic-bridge')]),
('i13-weighted-actual-transfer','TAudit.lean',[rc('i13-weighted-window-generic'),rc('i13-weighted-two-windows'),rc('i13-weighted-actual-positions')]),
('i13-weighted-full-audit','Audit.lean',[rc('i13-weighted-actual-transfer')])]
now=datetime.now(timezone.utc).isoformat()
plan={'kind':'source_bound_b_prerequisite_queue','created_utc':now,'status':'prepared_not_running','jobs':[{'name':n,'root':'lean/I13Weight/'+r,'source_sha256':sha(run/'lean/I13Weight'/r),'reuse':deps,'memory_mb':1536} for n,r,deps in rows],'new_B_original_results':0}
(run/'notes/huan-i13-weighted-transfer-plan.json').write_text(json.dumps(plan,indent=2)+'\n',encoding='utf-8',newline='\n')
record={'utc':now,'status':'source_integrated_not_Lean_accepted','freeze_sha256':sha(src/'FREEZE.json'),'frozen_files_checked':len(fr['files']),'referenced_sources_checked':len(mp['sources']),'files':files,'only_source_edit':'own import prefix remapping','mathematical_boundary':'Actual full p>=13 weighted product under original legal domain and noCommon; no additional n-2j gap premise. Generic weighted numerator loss uses actual window assignment.','prerequisite':'WinAssign pending Lean acceptance','audit_roots':25,'new_B_original_results':0}
(review/'adoption.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8',newline='\n')
probe=run/'experiments/huan-i13-c311-actual-growth-probe-5e2d13bb'
pr=run/'reviews/huan-i13-actual-growth-primary-recheck-5e2d13bb'
pf=json.loads((probe/'FREEZE.json').read_text())
for name,rec in pf['files'].items():assert sha(probe/name)==rec['sha256']
logs={}
for name in ['probe','verify_independent','verify_sources']:
 p=pr/(name+'.log');data=json.loads(p.read_text(encoding='utf-8-sig'))
 assert data['status'].startswith('PASS')
 logs[name]={'status':data['status'],'log':p.relative_to(run).as_posix(),'log_sha256':sha(p),'exit_code':0}
res={'utc':now,'status':'fixed_actual_growth_arithmetic_and_source_pass_not_Lean','source_freeze_sha256':sha(probe/'FREEZE.json'),'logs':logs,'lambda_q':'451/100000','lambda_e':'973/1000000','uniform_paper_eta_caps':['21/100','41/100'],'only_fixed_original_seed':True,'Lean_acceptance_added':False,'next':'Actual Factorial7D5 and four GrowthTree terms are being prepared in separate experiment directory.'}
(pr/'result.json').write_text(json.dumps(res,indent=2)+'\n',encoding='utf-8',newline='\n')
with (run/'notes/huan-resumed-checkpoint-20260912.md').open('a',encoding='utf-8',newline='\n') as f:
 f.write('\n## '+now+' — actual weighted transfer adoption and route feasibility checkpoint\n\nI13Weight:20 frozen files, all referenced sources and accepted PrimePowerTransfer source evidence checked;9 module/audit files integrated by own-prefix substitution only. Five fresh jobs prepared. No added gap hypothesis, p=13 retained; WinAssign and this transfer remain uncompiled candidates. Actual-growth fixed c311 probe independently rerun at all3 frozen read-only entry points; all passed, complete paper eta bounds21/100 and41/100 using existing framework constants. A new8-edge floating probe flags4 negative naive-D sufficient rates; exact review and stronger existing-parameter comparison delegated before expanding whole graph. This does not refute the original edges or B699. B remains0/19.\n')
print(json.dumps({'weighted_files':len(files),'weighted_jobs':len(rows),'weighted_candidate_only':True,'actual_growth_probe_checks':len(logs),'B_originals':0}))

