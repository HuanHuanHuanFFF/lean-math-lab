from pathlib import Path
import hashlib,json,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-actual-growth-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def ent(p):return {'path':p.relative_to(ROOT).as_posix(),'sha256':sha(p),'bytes':p.stat().st_size}
def run():
 prior=RUN/'experiments/huan-i13-c311-actual-growth-probe-5e2d13bb'
 oldmap=json.loads((prior/'SOURCE_MAP.json').read_text());accepted=[]
 for old in oldmap['accepted_inputs']:
  rp=ROOT/old['receipt']['path'];assert sha(rp)==old['receipt']['sha256']
  r=json.loads(rp.read_text());ep=ROOT/r['evidence'];e=json.loads(ep.read_text())
  assert e['success'] and e['exit_code']==0
  for x in e['source_closure']:
   assert sha(ROOT/x['source'])==x['source_sha256_before']==x['source_sha256_after']
  roots=[r['root']] if 'root' in r else e['root_sources']
  for name in roots:
   rec=next(x for x in e['compile_records']+e['reuse_records'] if x['source']==name)
   assert sha(ROOT/rec['output'])==rec['output_sha256']
  accepted.append({'name':old['name'],'receipt':ent(rp),'evidence':ent(ep),'source_closure':[{'path':x['source'],'sha256':x['source_sha256_after']} for x in e['source_closure']],
   'root_objects_current_sha_matched':True,'audited_roots':old['audited_roots'],'toolchain':e['toolchain'],'source_commit':e['source_commit']})
 frozen=[]
 for pkg in [prior,RUN/'experiments/huan-i13-c311-high-height-5e2d13bb']:
  f=json.loads((pkg/'FREEZE.json').read_text())
  for n,v in f['files'].items():assert sha(pkg/n)==v['sha256']
  frozen.append({'manifest':ent(pkg/'FREEZE.json'),'checked_files':len(f['files'])})
 checks=json.loads((OUT/'independent-check.json').read_text())
 candidates=[]
 for x in checks['candidate_modules']:
  p=OUT/x['candidate'];assert sha(p)==x['sha256']
  candidates.append({**x,'current_status':'candidate_uncompiled','source_exists_in_candidate':True})
 templates=[RUN/'experiments/huan-i11-remaining-growth-numeric-5e2d13bb/row04/generate_growth.py',RUN/'lean/Factorial/Factorial5D3.lean',RUN/'lean/I11Scaled/GrowthInputs.lean',RUN/'lean/I11Scaled/SmallCertificates.lean']
 if (OUT/'FREEZE.json').exists():
  f=json.loads((OUT/'FREEZE.json').read_text())
  for n,v in f['files'].items():assert sha(OUT/n)==v['sha256']
 result={'status':'SOURCE_COMPLETE_UNCOMPILED_WITH_EXACT_STATIC_CHECKS','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
  'candidate_module_count':len(candidates),'candidate_sources':candidates,'serial_order':checks['serial_order'],'final_audit_roots':19,
  'accepted_dependency_inputs':accepted,'source_templates':[ent(p) for p in templates],'frozen_prior_packages':frozen,
  'exact_data':ent(OUT/'tree-data.json'),'independent_check':ent(OUT/'independent-check.json'),
  'owner':'/root/i13_high_height','owned_write_scope':OUT.relative_to(ROOT).as_posix(),
  'main_run_lean_written':False,'new_Lean_invocations':0,'original_i13_acceptance_added':False,
  'intended_statement':'actualQ/E(7,5,delta,m,1/243) for alldelta0/1,m>=1 with exact m1 constants and coarse caps1/2,11/100,1/2; actual Padé edge and original problem separate',
  'validation_boundary':'Python exact arithmetic, literal source checks and import graph are not Lean compilation or transitive axiom acceptance of new candidates',
  'integration':'copy bytes to future_target paths; compile each leaf in a separate1536MiB serial job, then Tree/Bounds/Audit; verify source hashes and standard transitive axioms before adopting'}
 if not (OUT/'FREEZE.json').exists():(OUT/'SOURCE_MAP.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'candidate_modules':len(candidates),'accepted_input_receipts':len(accepted),'old_frozen_files':sum(x['checked_files'] for x in frozen),'new_Lean_invocations':0},ensure_ascii=False,indent=2))
if __name__=='__main__':run()
