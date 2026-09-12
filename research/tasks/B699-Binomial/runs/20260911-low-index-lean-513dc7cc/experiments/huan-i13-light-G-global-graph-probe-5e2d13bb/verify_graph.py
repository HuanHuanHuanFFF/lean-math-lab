"""Independent record/cap/graph checker. Reuses frozen scalar intervals;
does not rerun1561cores or regenerate new exact core grids.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import product,permutations,combinations
from math import gcd
import json,hashlib,sys,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent;OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery';PRIOR=RUN/'experiments/huan-i13-fixed-seed-ratio-probe-5e2d13bb'
sys.path.insert(0,str(PRIOR));import intervals as I
PS=[2,3,5,7,11]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def orig_iv(x):return F(x['exact_lower']),F(x['exact_upper'])
def graph_verify(record):
 cuts=record['cuts'];corners=set()
 for bits in product([False,True],repeat=11):
  v={p:0 for p in PS}
  for cut,bit in zip(cuts,bits):
   p,w=(cut['q'],cut['wq']) if bit else (cut['p'],cut['wp']);v[p]=max(v[p],w)
  corners.add(tuple(v[p]for p in PS))
 # Every realfeasiblepointliesinoneoftheseorthants;positivecostsminimizeatcorner.
 recorded={tuple(x['position_weights']):x['value']for x in record['all120_position_minima']}
 assert len(recorded)==120
 by_position={w:min(sum(x*y for x,y in zip(w,v))for v in corners)for w in permutations([12,13,14,15,16])}
 assert recorded==by_position
 assert record['tau']==min(by_position.values())
 assert record['sigma']==min(map(sum,corners))
 coll={}
 for i,j in combinations(range(5),2):
  coll[PS[i],PS[j]]=min(max(sum(v),1000+sum(v[k]for k in range(5)if k not in [i,j]))for v in corners)
 assert {(x['p'],x['q']):x['value']for x in record['all10_collision_minima']}==coll
 assert record['chi']==min(coll.values())
 w=record['weighted_attainer'];v=w['lower_components']
 assert all(v[PS.index(c['p'])]>=c['wp'] or v[PS.index(c['q'])]>=c['wq']for c in cuts)
 assert sum(a*b for a,b in zip(v,w['position_weights']))==record['tau']
 for x in record['all10_collision_minima']:
  v=x['components_after_collision'];i=PS.index(x['p']);j=PS.index(x['q'])
  assert v[i]+v[j]>=1000 and sum(v)==x['value']
  assert all(v[PS.index(c['p'])]>=c['wp'] or v[PS.index(c['q'])]>=c['wq']for c in cuts)
 assert record['orientations']==2048 and record['position_permutations']==120
 return {'tau':record['tau'],'sigma':record['sigma'],'chi':record['chi'],'unique_corners':len(corners),'all2048orientations':True,'all120positions':True,'all10collisions':True}
def run():
 t0=time.perf_counter();en=json.loads((OUT/'exact-envelopes.json').read_text());gr=json.loads((OUT/'graph-results.json').read_text());seeds=json.loads((OLD/'input/i13_cuts.json').read_text())['cuts']
 f=json.loads((PRIOR/'FREEZE.json').read_text())
 for n,x in f['files'].items():assert sha(PRIOR/n)==x['sha256']
 assert en['interval_sha256']==sha(PRIOR/'intervals.py')
 checks=[];reused=new=0
 for index,(seed,rec) in enumerate(zip(seeds,en['rows'])):
  assert rec['source_index']==index and rec['seed']==seed
  P,Q=seed['p']**seed['k0'],seed['q']**seed['l0'];z=F(seed['D0'],seed['a']*P)
  assert seed['a']*P-seed['b']*Q==seed['D0']
  domain={(c,d)for c in range(2,33)for d in range(1,c)if gcd(c,d)==1 and z<F(d,c)}
  path=Path(rec['provenance']['path']);assert sha(path)==rec['provenance']['sha256']
  doc=json.loads(path.read_text());rebuilt=[]
  if index in [2,3,4,9,10]:
   reused+=len(doc['grid'])
   k=I.miniv(I.div(I.iv(F(1000-seed['wp'],1000)),I.lnf(P)),I.div(I.iv(F(1000-seed['wq'],1000)),I.lnf(Q)))
   for r in doc['grid']:
    rebuilt.append((r['c'],r['d'],orig_iv(r['logAQ']),I.div(I.add(I.iv(1),orig_iv(r['slack'])),k),orig_iv(r['gamma'])))
  else:
   new+=len(doc['grid'])
   for r in doc['grid']:rebuilt.append((r['c'],r['d'],tuple(map(F,r['logAQ'])),tuple(map(F,r['T_over_c'])),tuple(map(F,r['gamma']))))
  assert {(c,d)for c,d,*_ in rebuilt}==domain and len(rebuilt)==len(domain)==rec['legal_count']
  eff=[]
  for c,d,q,E,gamma in rebuilt:
   if gamma[1]<0:q=I.sub(q,gamma);E=I.sub(E,I.mul(I.iv(F(1,c)),gamma))
   else:assert gamma[0]>=0
   eff.append((c,d,q,E,gamma))
  c,d=rec['best']['c'],rec['best']['d'];best=next(x for x in eff if x[:2]==(c,d));assert best[2][0]>0 and best[4][0]>0
  for x in eff:
   if x[:2]!=(c,d) and x[2][1]>0:assert x[3][1]<best[3][0]
  floors=[];ceilings=[]
  for p in [P,Q]:
   bound=I.mul(I.iv(1000),I.sub(I.iv(1),I.div(I.lnf(p),best[3])))
   a,b=bound;fa=a.numerator//a.denominator;fb=b.numerator//b.denominator
   assert fa==fb and F(fa)<a
   floors.append(max(0,fa));ceilings.append(max(0,-((-b.numerator)//b.denominator)))
  assert floors==rec['asymptotic_integer_weights'] and ceilings==rec['optimistic_outer_integer_caps']
  if min(floors)>0:
   k=I.miniv(I.div(I.iv(F(1000-floors[0],1000)),I.lnf(P)),I.div(I.iv(F(1000-floors[1],1000)),I.lnf(Q)))
   margin=I.sub(I.mul(k,best[3]),I.iv(1));assert margin[0]>0
  else:
   assert index==5 and ceilings[1]==0
  assert [gr['integer_cap_graph']['cuts'][index][k]for k in ['wp','wq']]==floors
  assert [gr['optimistic_outer_cap_graph']['cuts'][index][k]for k in ['wp','wq']]==ceilings
  checks.append({'seed':index,'c':c,'d':d,'legal_count':len(domain),'integer_caps':floors,'optimistic_caps':ceilings,'maximal_T_over_c_verified':True})
 assert reused==1561 and new==1903 and en['total_configurations']==3464
 control=graph_verify(gr['old_positive_control']);assert(control['tau'],control['sigma'],control['chi'])==(12183,934,1309)
 regular=graph_verify(gr['integer_cap_graph']);optimistic=graph_verify(gr['optimistic_outer_cap_graph'])
 assert optimistic['tau']<=12000 and optimistic['chi']>1000
 if (OUT/'FREEZE.json').exists():
  for n,x in json.loads((OUT/'FREEZE.json').read_text())['files'].items():assert sha(OUT/n)==x['sha256']
 result={'status':'PASS_INDEPENDENT_EXACT_ENVELOPE_AND_COMPLETE_GRAPH_NEGATIVE_CHECK','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'seconds':time.perf_counter()-t0,
 'seed_checks':checks,'reused_old_grid_records':reused,'new_grid_records':new,'total_records':3464,'old_control':control,'integer_graph':regular,'optimistic_graph':optimistic,
 'monotonicity_argument':'nontrivialadmissibleweightsarestrictlybelowthecoordinatecaps; roundingbothUPonlystrengthenscuts; maxT/csimultaneouslymaximizesbothendweights;theonezerocapisatautology',
 'failure_scope':'fixed11seeds,coprime1<=d<c<=32,z<d/c,directDidealrateplusfreeG1,truecoremaxima,oldweightedgraphcriterion; notanactualB699counterexample',
 'finite_height_or_m0_proved':False,'Lean_invocations':0,'old_frozen_package_files_checked':len(f['files'])}
 if not (OUT/'FREEZE.json').exists():(OUT/'independent-check.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'records':3464,'old':control,'integer':regular,'optimistic':optimistic,'seconds':result['seconds'],'Lean_invocations':0},ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
