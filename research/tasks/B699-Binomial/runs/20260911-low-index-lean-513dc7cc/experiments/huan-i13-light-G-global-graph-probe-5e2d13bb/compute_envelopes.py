"""Reuse1561 frozen records; compute only missing six fixedseed grids.
No old output or interval code is modified. No Lean or finiteheight certificate.
"""
from pathlib import Path
from fractions import Fraction as F
from math import gcd
import json,hashlib,time,sys,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent;PRIOR=RUN/'experiments/huan-i13-fixed-seed-ratio-probe-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
freeze=json.loads((PRIOR/'FREEZE.json').read_text())
for n,x in freeze['files'].items():assert hashlib.sha256((PRIOR/n).read_bytes()).hexdigest()==x['sha256']
sys.path.insert(0,str(PRIOR));import intervals as I
seeds=json.loads((ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery/input/i13_cuts.json').read_text())['cuts']
REUSE={2,3,4,9,10}
def readiv(x):return F(x['exact_lower']),F(x['exact_upper'])
def outiv(x):return [str(y) for y in I.rnd(x)]
def ks(seed):
 P=seed['p']**seed['k0'];Q=seed['q']**seed['l0']
 return I.miniv(I.div(I.iv(F(1000-seed['wp'],1000)),I.lnf(P)),I.div(I.iv(F(1000-seed['wq'],1000)),I.lnf(Q)))
def compact(c,d,q,E,g):
 if g[1]<0:qeff=I.sub(q,g);Eeff=I.sub(E,I.mul(I.iv(F(1,c)),g))
 else:qeff,Eeff=q,E
 return {'c':c,'d':d,'logAQ':outiv(q),'T_over_c':outiv(E),'gamma':outiv(g),'effective_logAQ':outiv(qeff),'effective_T_over_c':outiv(Eeff)}
start=time.perf_counter();summary=[];newcount=0;reusecount=0
for idx,seed in enumerate(seeds):
 z=F(seed['D0'],seed['a']*seed['p']**seed['k0'])
 domain={(c,d)for c in range(2,33)for d in range(1,c)if gcd(c,d)==1 and z<F(d,c)}
 if idx in REUSE:
  old=json.loads((PRIOR/f'grid-{idx:02d}.json').read_text());assert old['fixed_source_parameters']==seed
  k=ks(seed);rows=[]
  for r in old['grid']:
   # old slack=(k/c)*T-1,so T/c=(1+slack)/k exactly.
   E=I.div(I.add(I.iv(1),readiv(r['slack'])),k)
   rows.append(compact(r['c'],r['d'],readiv(r['logAQ']),E,readiv(r['gamma'])))
  reusecount+=len(rows)
  provenance={'mode':'reused_frozen_exact_grid_no_recomputation','path':str(PRIOR/f'grid-{idx:02d}.json'),'sha256':hashlib.sha256((PRIOR/f'grid-{idx:02d}.json').read_bytes()).hexdigest(),'T_over_c_recovery':'(1+old_slack)/min((1-oldwp/1000)/logP,(1-oldwq/1000)/logQ)'}
 else:
  dest=OUT/f'new-grid-{idx:02d}.json'
  if dest.exists():
   saved=json.loads(dest.read_text());assert saved['source_index']==idx and saved['seed']==seed
   rows=saved['grid']
  else:
   rows=[]
   for n,(c,d) in enumerate(sorted(domain),1):
    inp={k:v for k,v in seed.items()if k not in ['L1','m0']};inp.update(c=c,d=d)
    r=I.compute(inp)
    rows.append(compact(c,d,readiv(r['logAQ']),I.mul(I.iv(F(1,c)),readiv(r['logAE'])),readiv(r['gamma_logG_per_m'])))
    if n%60==0:print(json.dumps({'seed':idx,'exact':n,'total':len(domain),'elapsed':round(time.perf_counter()-start,1)}),flush=True)
   dest.write_bytes((json.dumps({'source_index':idx,'seed':seed,'grid':rows,'count':len(rows),'interval_code_sha256':hashlib.sha256((PRIOR/'intervals.py').read_bytes()).hexdigest()},indent=2)+'\n').encode('utf-8'))
  newcount+=len(rows);provenance={'mode':'new_only_missing_seed','path':str(dest),'sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}
 assert {(r['c'],r['d'])for r in rows}==domain and len(rows)==len(domain)
 # Grant freeG>=1 whenever directgamma<0. This onlystrengthens the upperbound.
 possible=[r for r in rows if F(r['effective_logAQ'][1])>0]
 eligible=[r for r in rows if F(r['effective_logAQ'][0])>0]
 best=max(eligible,key=lambda x:F(x['effective_T_over_c'][0]))
 for r in possible:
  if (r['c'],r['d'])!=(best['c'],best['d']):assert F(r['effective_T_over_c'][1])<F(best['effective_T_over_c'][0])
 assert F(best['gamma'][0])>0 # winningrateactuallyusesthedirectDinput
 E=tuple(map(F,best['effective_T_over_c']));P=seed['p']**seed['k0'];Q=seed['q']**seed['l0']
 caps=[];floors=[];ceilings=[]
 for a in [P,Q]:
  cap=I.mul(I.iv(1000),I.sub(I.iv(1),I.div(I.lnf(a),E)))
  lo,hi=cap
  flo=lo.numerator//lo.denominator;fhi=hi.numerator//hi.denominator
  assert flo==fhi and F(flo)<lo
  caps.append(I.show(cap));floors.append(max(0,flo));ceilings.append(max(0,-((-hi.numerator)//hi.denominator)))
 candidate_valid=all(x>0 for x in floors)
 strict=None
 if candidate_valid:
  kc=I.miniv(I.div(I.iv(F(1000-floors[0],1000)),I.lnf(P)),I.div(I.iv(F(1000-floors[1],1000)),I.lnf(Q)))
  strict=I.sub(I.mul(kc,E),I.iv(1));assert strict[0]>0
 rec={'source_index':idx,'seed':seed,'legal_count':len(rows),'possible_Q_count':len(possible),'strict_Q_count':len(eligible),'best':best,'caps':caps,
 'asymptotic_integer_weights':floors,'optimistic_outer_integer_caps':ceilings,'both_weights_positive':candidate_valid,'strict_capacity_margin':I.show(strict) if strict else None,
 'row_interpretation':'asymptoticallyfeasibleintegercut;finiteconstantsandheightpending' if candidate_valid else'no positiveqweightcanbeprovided;zeroarmisatautology',
 'all_other_parameters_strictly_below_best_Tc':True,'best_same_when_free_G1_allowed':True,'provenance':provenance}
 summary.append(rec)
 print(json.dumps({'seed':idx,'best':[best['c'],best['d']],'weights':floors,'optimistic':ceilings,'reused':idx in REUSE,'elapsed':round(time.perf_counter()-start,1)}),flush=True)
assert reusecount==1561
out={'status':'EXACT_MAXIMAL_WEIGHT_ENVELOPES_ALL_FIXED_SEEDS','rows':summary,'c_max':32,'fixed_seed_count':11,'reused_configurations':reusecount,'new_configurations':newcount,'total_configurations':reusecount+newcount,
 'extra_optimism':'G>=1 allowed when directgamma<0; samewinningpositivegamma inall11seeds','interval_source':str(PRIOR/'intervals.py'),'interval_sha256':hashlib.sha256((PRIOR/'intervals.py').read_bytes()).hexdigest(),
 'no_finite_m_or_height_certificate':True,'Lean_invocations':0,'seconds':time.perf_counter()-start,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
(OUT/'exact-envelopes.json').write_bytes((json.dumps(out,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
print(json.dumps({'status':out['status'],'reused':reusecount,'new':newcount,'seconds':out['seconds']},ensure_ascii=False),flush=True)
