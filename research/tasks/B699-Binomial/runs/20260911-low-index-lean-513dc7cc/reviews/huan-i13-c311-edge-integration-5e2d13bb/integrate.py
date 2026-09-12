from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,re
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
src=run/'experiments/huan-i13-c311-actual-edge-5e2d13bb';review=run/'reviews/huan-i13-c311-edge-integration-5e2d13bb'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
fr=json.loads((src/'FREEZE.json').read_text());mp=json.loads((src/'SOURCE_MAP.json').read_text())
for name,rec in fr['files'].items():assert sha(src/name)==rec['sha256'],name
mapped={}
for rec in mp['candidate_sources']:
 q=src/rec['candidate'];p=repo/rec['future_target'];assert p.resolve().is_relative_to((run/'lean').resolve())
 assert sha(q)==rec['sha256']
 data=q.read_bytes();assert not re.search(rb'\b(sorry|admit|sorryAx|native_decide|ofReduceBool)\b',data)
 assert not re.search(rb'(?m)^\s*axiom\s',data)
 p.parent.mkdir(parents=True,exist_ok=True)
 if p.exists():assert p.read_bytes()==data
 else:p.write_bytes(data)
 mapped[p.relative_to(repo).as_posix()]={'source':rec['candidate'],'target':p.relative_to(run).as_posix(),'sha256':sha(p)}
assert len(mapped)==14
imports={}
for rel in mapped:
 imports[rel]=[]
 for line in (repo/rel).read_text().splitlines():
  if line.startswith('import '):
   for mod in line[7:].split():
    imp=mod.replace('«','').replace('»','').replace('.','/')+'.lean'
    if imp in mapped:imports[rel].append(imp)
ordered=[];vis=set()
def visit(x):
 if x in vis:return
 vis.add(x)
 for y in imports[x]:visit(y)
 ordered.append(x)
for x in mapped:visit(x)
audited={x for x in mapped if '#print axioms ' in (repo/x).read_text()}
names={x:'i13-c311-edge-'+Path(x).stem.lower() for x in audited}
assert len(names)==len(set(names.values()))
rp=(rr/'verification/huan-prerequisites').as_posix()+'/'
base=[rp+n+'.json' for n in ['i11-initial-full-audit','i13-c311-actual-qe-full-audit','i13-g75-separate-tail-bounds']]
def direct_receipts(x):
 out=set()
 for y in imports[x]:
  if y in audited:out.add(rp+names[y]+'.json')
  else:out.update(direct_receipts(y))
 return out
jobs=[{'name':names[x],'root':mapped[x]['target'],'source_sha256':mapped[x]['sha256'],'reuse':base+sorted(direct_receipts(x)),'memory_mb':1536} for x in ordered if x in audited]
now=datetime.now(timezone.utc).isoformat()
plan={'kind':'source_bound_b_prerequisite_queue','created_utc':now,'status':'prepared_not_running','new_B_original_results':0,'jobs':jobs,'mathematical_scope':'Actual fixed(3,11)c7d5 cofactor edge for all naturalY>=2^15359; not the originali13 theorem'}
pp=run/'notes/huan-i13-c311-actual-edge-plan.json';pp.write_text(json.dumps(plan,indent=2)+'\n',encoding='utf-8',newline='\n')
record={'utc':now,'status':'source_integrated_not_Lean_accepted','freeze_sha256':sha(src/'FREEZE.json'),'files':list(mapped.values()),'primary_rechecks':{'candidate':{'exit_code':0,'log_sha256':sha(review/'verify_candidate.log')},'sources':{'exit_code':0,'log_sha256':sha(review/'verify_sources.log')}},'source_mutations':'none; exactbytecopy tofuturetargets','final_external_inputs':'NaturalYheight,positiveA/B,twoactualprimepowerwindows,difference<=24; no selector/capacity/G/QE/eta premise','audit_roots':43,'plan':pp.relative_to(run).as_posix(),'jobs':len(jobs),'new_B_original_results':0}
(review/'adoption.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8',newline='\n')
oldp=run/'notes/huan-after-crt-combined-plan-v34.json';old=json.loads(oldp.read_text())
combined={'kind':'source_bound_b_prerequisite_queue','created_utc':now,'status':'prepared_not_running','new_B_original_results':0,'source_plans':[{'path':oldp.relative_to(run).as_posix(),'sha256':sha(oldp)},{'path':pp.relative_to(run).as_posix(),'sha256':sha(pp)}],'jobs':old['jobs']+jobs}
assert len({j['name'] for j in combined['jobs']})==len(combined['jobs'])
available={p.name for p in (run/'verification/huan-prerequisites').glob('*.json')}
available.update(j['name']+'.json' for j in json.loads((run/'notes/huan-crt-retry-and-consumers-plan-v35.json').read_text())['jobs'])
for j in combined['jobs']:
 assert sha(run/j['root'])==j['source_sha256']
 assert all(Path(d).name in available for d in j['reuse']),j['name']
 available.add(j['name']+'.json')
out=run/'notes/huan-after-crt-combined-plan-v36.json';out.write_text(json.dumps(combined,indent=2)+'\n',encoding='utf-8',newline='\n')
sp=run/'notes/huan-current-state-v35.json';st=json.loads(sp.read_text());st.update(after_crt_plan=out.relative_to(run).as_posix(),compression_user_authorization='User explicitly approved these256cacheentities; sameidentity set only; recheckallaliasesafteractiveLeanends',i13_actual_edge='14byte-identicalsources integrated;43auditroots;pendingLean');sp.write_text(json.dumps(st,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
with (run/'notes/huan-resumed-checkpoint-20260912.md').open('a',encoding='utf-8',newline='\n') as f:
 f.write('\n## '+now+' — explicit cache authorization and actual c311 edge integration\n\nUser explicitly authorized compression of the reviewed256 cache identities. Wait for activev35 Lean to finish; retain exactlythoseidentityobjects, recheckanynewownedaliases and currentbyte/source/evidence bindings before execution. No compression yet.\n\nActualc311edge14frozenfiles copied byte-identically; primary2readonlyverifiers passed,43finalauditroots. No m/capacity/G/QE/eta premise remains in the claimed final type; it is still uncompiled. NewpostCRT planv36 has'+str(len(combined['jobs']))+'jobs. CounterremainsA151plusunified,B0/19. New5/7c11d7fixed65536paperprobe is positive; 20basisC2factorialminorantLP has exactdualnegativeimprovement result. Both separate fromLeanacceptance; see respective frozen experiment reports.\n')
print(json.dumps({'edge_files':14,'edge_jobs':len(jobs),'future_jobs':len(combined['jobs']),'future_plan':out.relative_to(run).as_posix(),'sha256':sha(out),'Lean_started':False}))

