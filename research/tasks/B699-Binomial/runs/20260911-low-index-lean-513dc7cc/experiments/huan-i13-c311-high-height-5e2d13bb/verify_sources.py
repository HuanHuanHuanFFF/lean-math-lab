from pathlib import Path
import json,hashlib,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-high-height-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def entry(p,kind):return {'path':p.relative_to(ROOT).as_posix(),'sha256':sha(p),'bytes':p.stat().st_size,'kind':kind}
def run():
 sources=[entry(OLD/n,'original_i13_source') for n in ['input/i13_cuts.json','notes/PROOFS.md','outputs/i13_cuts_certified.json','code/adopted_asym/verify_pair_intervals.py','code/adopted_asym/rational_intervals.py']]
 sources+=[entry(RUN/'notes/huan-i13-g75-uniform-acceptance.json','adoption_acceptance')]
 prior=RUN/'experiments/huan-i13-route-inventory-5e2d13bb'
 freeze_checks=[]
 for p in [prior/'FREEZE.json',prior/'capacity-probe/FREEZE.json',prior/'capacity-probe/ADDENDUM_FREEZE.json']:
  f=json.loads(p.read_text());count=0
  for name,v in f['files'].items():
   assert sha(p.parent/name)==v['sha256'];count+=1
  freeze_checks.append({'manifest':entry(p,'frozen_prior_manifest'),'checked_files':count})
 for p in [prior/'capacity-probe/REPORT.md',prior/'capacity-probe/probe-results.json',prior/'capacity-probe/independent-check.json',prior/'capacity-probe/NEXT_UNIFORM_BOUND.md']:
  sources.append(entry(p,'old_capacity_negative_control'))
 accepted=[]
 for name in ['i13-g75-actual','i13-g75-certificate','i13-g75-uniform','i13-g75-geometric','i13-g75-full-audit']:
  rp=RUN/f'verification/huan-prerequisites/{name}.json';r=json.loads(rp.read_text())
  ep=ROOT/r['evidence'];ev=json.loads(ep.read_text());root=ROOT/r['root']
  assert ev['success'] is True and ev['exit_code']==0
  assert sha(root)==r['source_sha256']
  closure=[]
  for d in ev['source_closure']:
   p=ROOT/d['source'];assert sha(p)==d['source_sha256_before']==d['source_sha256_after']
   closure.append(entry(p,'accepted_transitive_source'))
  audits=r['public_axiom_audit'];allowed={'propext','Classical.choice','Quot.sound'}
  assert all(set(d['axioms'])<=allowed for d in audits)
  records=[x for x in ev['compile_records']+ev['reuse_records'] if x['source']==r['root']]
  assert len(records)==1
  obj=ROOT/records[0]['output']
  assert sha(obj)==r['output_sha256']==records[0]['output_sha256']
  accepted.append({'name':name,'receipt':entry(rp,'accepted_receipt'),'evidence':entry(ep,'accepted_evidence'),'root':entry(root,'accepted_root'),
   'root_object_sha_verified':True,'public_axiom_roots':len(audits),'allowed_axioms':sorted(allowed),'source_commit':ev['source_commit'],'toolchain':ev['toolchain'],
   'source_closure':closure,'role':'adopted existing successful local acceptance; no new Lean invocation'})
 assert accepted[-1]['public_axiom_roots']==47
 own=json.loads((OUT/'certificate.json').read_text());check=json.loads((OUT/'independent-check.json').read_text())
 assert check['certificate_sha256']==sha(OUT/'certificate.json') and check['generator_sha256']==sha(OUT/'certificate.py')
 if (OUT/'FREEZE.json').exists():
  frozen=json.loads((OUT/'FREEZE.json').read_text())
  for n,v in frozen['files'].items():
   assert sha(OUT/n)==v['sha256']
 result={'status':'PASS_SOURCE_AND_ACCEPTANCE_BINDING','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'checkout_HEAD_at_start':'f0b0cc10fbab9db7133aae9914178caf0b4c587b','old_source_context':'frozen i13 source source-map records main784ec1d26f33fbb303ab0b0c14ac35919f03d902; current local bytes rehashed',
 'input_sources':sources,'prior_freeze_checks':freeze_checks,'accepted_G_inputs':accepted,'certificate_sha256':sha(OUT/'certificate.json'),'independent_check_sha256':sha(OUT/'independent-check.json'),
 'new_Lean_invocations':0,'writes':'this new experiment directory only; no old freeze package, Lean source or shared record edited'}
 if not (OUT/'FREEZE.json').exists():
  (OUT/'SOURCE_MAP.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'receipts':[{'name':r['name'],'roots':r['public_axiom_roots'],'checked_sources':len(r['source_closure'])} for r in accepted],'prior_freeze_files':[r['checked_files'] for r in freeze_checks],'new_Lean_invocations':0},ensure_ascii=False,indent=2))
if __name__=='__main__':run()
