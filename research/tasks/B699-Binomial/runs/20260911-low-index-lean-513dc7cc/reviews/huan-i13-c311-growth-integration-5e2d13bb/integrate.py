from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,re
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
src=run/'experiments/huan-i13-c311-actual-growth-5e2d13bb';review=run/'reviews/huan-i13-c311-growth-integration-5e2d13bb'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
fr=json.loads((src/'FREEZE.json').read_text());mp=json.loads((src/'SOURCE_MAP.json').read_text())
for name,rec in fr['files'].items():assert sha(src/name)==rec['sha256'],name
files=[]
for rec in mp['candidate_sources']:
 p=repo/rec['future_target'];assert p.resolve().is_relative_to((run/'lean').resolve())
 q=src/rec['candidate'];assert sha(q)==rec['sha256']
 data=q.read_bytes()
 assert not re.search(rb'\b(sorry|admit|sorryAx|native_decide|ofReduceBool)\b',data),str(q)
 assert not re.search(rb'(?m)^\s*axiom\s',data),str(q)
 p.parent.mkdir(parents=True,exist_ok=True)
 if p.exists():assert p.read_bytes()==data
 else:p.write_bytes(data)
 assert sha(p)==rec['sha256']
 files.append({'source':rec['candidate'],'target':p.relative_to(run).as_posix(),'sha256':sha(p)})
assert len(files)==16
rp=(rr/'verification/huan-prerequisites').as_posix()+'/'
rc=lambda n:rp+n+'.json'
base=rc('i11-initial-full-audit')
rows=[
('i13-c311-factorial','lean/Factorial/Factorial7D5.lean',[base]),
('i13-c311-initial-numeric','lean/I13C311QE/Numeric.lean',[base]),
('i13-c311-first-q-leaf','lean/Growth/I13C311Leaves/QLeaf000.lean',[base]),
('i13-c311-all-growth-trees','lean/Growth/I13C311Tree.lean',[base,rc('i13-c311-first-q-leaf')]),
('i13-c311-actual-qe-bounds','lean/I13C311QE/Bounds.lean',[rc('i13-c311-factorial'),rc('i13-c311-initial-numeric'),rc('i13-c311-all-growth-trees')]),
('i13-c311-actual-qe-full-audit','lean/I13C311QE/Audit.lean',[rc('i13-c311-actual-qe-bounds')])]
now=datetime.now(timezone.utc).isoformat()
jobs=[]
for n,r,deps in rows:
 assert '#print axioms ' in (run/r).read_text(),r
 jobs.append({'name':n,'root':r,'source_sha256':sha(run/r),'reuse':deps,'memory_mb':1536})
plan={'kind':'source_bound_b_prerequisite_queue','created_utc':now,'status':'prepared_not_running','new_B_original_results':0,'jobs':jobs,'layout':'One initial leaf probe; then Tree closure compiles each remaining leaf in a separate serial 1536MiB Lean invocation. Whole-root receipt only after all dependencies and tree complete. No simultaneous Leaf Lean processes.'}
p=run/'notes/huan-i13-c311-actual-growth-plan.json';p.write_text(json.dumps(plan,indent=2)+'\n',encoding='utf-8',newline='\n')
record={'utc':now,'status':'source_integrated_not_Lean_accepted','frozen_package_sha256':sha(src/'FREEZE.json'),'frozen_files_checked':len(fr['files']),'files':files,'mutations':'byte-identical copying to explicit future targets only','read_only_primary_rechecks':{'verify_candidate':{'exit_code':0,'log_sha256':sha(review/'verify_candidate.log')},'verify_sources':{'exit_code':0,'log_sha256':sha(review/'verify_sources.log')}},'candidate_scope':'Actual c7d5 Q/E full m>=1 and delta0/1, no final BFT/G/tree hypothesis; actual Padé edge separate.','audit_roots':19,'plan':p.relative_to(run).as_posix(),'plan_sha256':sha(p),'new_B_original_results':0}
(review/'adoption.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8',newline='\n')
previous=run/'notes/huan-after-crt-combined-plan-v33.json';oldplan=json.loads(previous.read_text())
combined={'kind':'source_bound_b_prerequisite_queue','created_utc':now,'status':'prepared_not_running','new_B_original_results':0,'source_plans':[{'path':previous.relative_to(run).as_posix(),'sha256':sha(previous),'jobs':len(oldplan['jobs'])},{'path':p.relative_to(run).as_posix(),'sha256':sha(p),'jobs':len(jobs)}],'jobs':oldplan['jobs']+jobs}
assert len(combined['jobs'])==50 and len({j['name'] for j in combined['jobs']})==50
future={j['name']+'.json' for j in json.loads((run/'notes/huan-g75-and-all-crt-plan-v31.json').read_text())['jobs']}
available={q.name for q in (run/'verification/huan-prerequisites').glob('*.json')}|future
for j in combined['jobs']:
 assert sha(run/j['root'])==j['source_sha256']
 assert all(Path(x).name in available for x in j['reuse']),j['name']
 available.add(j['name']+'.json')
nextplan=run/'notes/huan-after-crt-combined-plan-v34.json'
nextplan.write_text(json.dumps(combined,indent=2)+'\n',encoding='utf-8',newline='\n')
statepath=run/'notes/huan-current-state-v31.json';s=json.loads(statepath.read_text());s.update(after_crt_plan=nextplan.relative_to(run).as_posix(),i13_actual_qe_candidate='16 byte-identical source files,8 leaves,4 trees,19finalroots; primary static/arithmetic rechecks pass; notLeanaccepted',i13_actual_qe_plan=p.relative_to(run).as_posix());statepath.write_text(json.dumps(s,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
with (run/'notes/huan-resumed-checkpoint-20260912.md').open('a',encoding='utf-8',newline='\n') as f:
 f.write('\n## '+now+' — actual c311 Q/E candidate source adopted\n\nSixteen frozen sources copied by exact future-target mapping, no byte edits. Primary independent104gap coefficient/interval and source-binding checks all exit0. Six fresh jobs prepared: factorial, numeric, first leaf, all tree closure, actual bounds,19root audit. Each leaf remains its own serial1536MiB Lean invocation inside the verifier; complete roots alone produce reuse receipts. No Q/E acceptance or originali13 counted yet. Combined after-CRT plan is now v34 with50jobs; currentv31 unchanged. Actual edge candidate preparation continues in a disjoint experiment directory.\n')
print(json.dumps({'files':len(files),'checks':'primary read-only arithmetic/static/source pass','jobs':len(jobs),'after_crt_jobs':50,'after_crt_plan':nextplan.relative_to(run).as_posix(),'plan_sha256':sha(nextplan),'Lean_started':False}))

