from pathlib import Path
import json,hashlib,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-actual-growth-probe-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def ent(p):return {'path':p.relative_to(ROOT).as_posix(),'sha256':sha(p),'bytes':p.stat().st_size}
def run():
 accepted=[];closure=set()
 names=['growth-partition','growth-affine','actual-kernel-growth','growth-normalization','factorial-bound','i13-g75-full-audit']
 for n in names:
  rp=RUN/f'verification/huan-prerequisites/{n}.json';r=json.loads(rp.read_text());ep=ROOT/r['evidence'];e=json.loads(ep.read_text())
  assert e['success'] and e['exit_code']==0
  roots=[r['root']] if 'root' in r else e['root_sources']
  if 'root' in r:assert sha(ROOT/r['root'])==r['source_sha256']
  actual=[]
  for d in e['source_closure']:
   p=ROOT/d['source'];assert sha(p)==d['source_sha256_before']==d['source_sha256_after']
   actual.append(ent(p));closure.add(d['source'])
  for rootname in roots:
   records=[d for d in e['compile_records']+e['reuse_records'] if d['source']==rootname]
   assert len(records)==1;rec=records[0]
   assert sha(ROOT/rec['output'])==rec['output_sha256']
   if 'root' in r:assert rec['output_sha256']==r['output_sha256']
  audit=r.get('public_axiom_audit',r.get('axiom_prints',[]));assert audit
  assert all(set(x['axioms'])<={'propext','Classical.choice','Quot.sound'} for x in audit)
  accepted.append({'name':n,'receipt':ent(rp),'evidence':ent(ep),'roots':[ent(ROOT/rootname) for rootname in roots],'root_object_hash_matches':True,'audited_roots':len(audit),'source_closure':actual,'toolchain':e['toolchain'],'source_commit':e['source_commit']})
 direct=[RUN/'lean/Growth'/x for x in ['ActualKernel.lean','Normalization.lean','ElementaryRate.lean','Partition.lean','Affine.lean']]
 direct+=[RUN/'lean/Factorial/FactorialCommon.lean',RUN/'lean/Factorial/Factorial5D3.lean']
 for p in direct:assert p.relative_to(ROOT).as_posix() in closure or p.name=='Factorial5D3.lean'
 old=RUN/'experiments/huan-i13-c311-high-height-5e2d13bb';f=json.loads((old/'FREEZE.json').read_text())
 for n,v in f['files'].items():assert sha(old/n)==v['sha256']
 check=json.loads((OUT/'independent-check.json').read_text())
 assert check['probe_sha256']==sha(OUT/'probe.py') and check['results_sha256']==sha(OUT/'probe-results.json')
 if (OUT/'FREEZE.json').exists():
  for n,v in json.loads((OUT/'FREEZE.json').read_text())['files'].items():assert sha(OUT/n)==v['sha256']
 result={'status':'PASS_ACTUAL_FRAMEWORK_SOURCE_BINDING','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'accepted_inputs':accepted,'direct_sources':[ent(p) for p in direct],
  'old_high_height_freeze':ent(old/'FREEZE.json'),'old_high_height_files_unchanged':len(f['files']),'current_probe_sha256':sha(OUT/'probe.py'),'result_sha256':sha(OUT/'probe-results.json'),
  'independent_check_sha256':sha(OUT/'independent-check.json'),'BFT_QE_input_used':False,'boundary':'only generic actual growth and G75 inputs are adopted as Lean accepted; c7d5 factorial instance, four GrowthTrees, rate and selector connection remain uncompiled','new_Lean_invocations':0}
 if not (OUT/'FREEZE.json').exists():(OUT/'SOURCE_MAP.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'receipts':[{'name':x['name'],'audit_roots':x['audited_roots'],'current_source_matches':len(x['source_closure'])} for x in accepted],'prior_frozen_files_unchanged':len(f['files']),'Lean_invocations':0},ensure_ascii=False,indent=2))
if __name__=='__main__':run()
