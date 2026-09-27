"""Exact complete scalar-signature enumeration and same-G ledger transfer.
Numerical multisets are necessary resource models, never actual factorizations.
"""
from __future__ import annotations
from pathlib import Path
from functools import lru_cache
from collections import Counter
import hashlib,json
from frozen_capacity import all_states
INPUT_HASHES={'signatures499.txt':'f6ad8aa43194f91f3fceb08d1ce621e9dfbdd4f006a634c7a6a36511594af329',
 'frontier120.tsv':'86db0b9ec805a1e01e6baecbec67ebca8b44980c73c069e451ce88d016976ee8'}
TARGET=(8,0,0,0,0,0,4)
WEIGHTS=(32,27,26,60,26,22)

def dump(p:Path,x:object)->None:p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def text(rows):return ''.join(' '.join(map(str,x))+'\n'for x in rows)

def load(root:Path):
 for n,h in INPUT_HASHES.items():
  if hashlib.sha256((root/'inputs'/n).read_bytes()).hexdigest()!=h:raise ValueError('input identity: '+n)
 for n,h in json.loads((root/'inputs/SOURCE_BYTES.json').read_text()).items():
  if hashlib.sha256((root/'inputs'/n).read_bytes()).hexdigest()!=h:raise ValueError('source byte identity: '+n)
 raw=[tuple(map(int,l.split()))for l in(root/'inputs/signatures499.txt').read_text().splitlines()]
 assert len(raw)==499 and all(len(x)==7 and x[0]>=4 and min(x[1:])>=0 for x in raw)
 assert all(x[1]%2==x[3]%2==x[5]%2==0 for x in raw)
 st=all_states();ids=[]
 for l in(root/'inputs/frontier120.tsv').read_text().splitlines()[1:]:
  i,h,e,v=l.split();i=int(i);s=st[i]
  assert s['h']==int(h) and s['E']==int(e)==0 and s['v']==list(map(int,v.split(',')))
  ids.append(i)
 assert len(ids)==len(set(ids))==120
 return raw,st,ids

def strengthen(raw):
 assert [i for i,x in enumerate(raw)if x==TARGET]==[429]
 fork=[(10,*TARGET[1:])]
 for r in range(6):
  c=list(TARGET[1:]);c[r]+=2 if r in(0,2,4)else 1;fork.append((8,*c))
 new=raw[:429]+fork+raw[430:]
 assert len(new)==505
 return new,{'old_index':429,'old_signature':TARGET,'new_indices':list(range(429,436)),
  'new_signatures':fork,'covers_all_true_cost_preimages':True,
  'cost4_decompositions_delta8_kappa8':[(0,4),(1,2),(2,0)],
  'basis':'COST4(8,9) excludes true c=(0,0,0,0,0,4), not merely Delta8=2.'}

def diagnose(raw,st,sid):
 s=st[sid];cap=tuple(s['cap']);h=s['h']
 items=sorted(set(x for x in raw if all(a<=b for a,b in zip(x[1:],cap))))
 @lru_cache(None)
 def best(n,c):
  if not n:return 0
  ans=10**9
  for x in items:
   rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0:ans=min(ans,x[0]+best(n-1,rem))
  return ans
 minimum=best(8,cap)
 active=[x for x in items if x[0]+best(7,tuple(a-b for a,b in zip(cap,x[1:])))<=h]
 found=[]
 def dfs(n,c,budget,start,seq):
  if n==0:
   found.append({'sequence':seq,'proxy_degree':h-budget,'degree_slack':budget,
    'cost':[a-b for a,b in zip(cap,c)],'capacity_slack':list(c)})
   return
  if best(n,c)>budget:return
  for ix in range(start,len(active)):
   x=active[ix];rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0 and x[0]<=budget:dfs(n-1,rem,budget-x[0],ix,seq+[ix])
 dfs(8,cap,h,0,[])
 frequencies=[]
 for ix,x in enumerate(active):
  counts=[r['sequence'].count(ix)for r in found]
  frequencies.append({'index':ix,'signature':x,'multisets_containing':sum(c>0 for c in counts),
   'minimum_multiplicity':min(counts),'maximum_multiplicity':max(counts)})
 return {'state':sid,'h':h,'capacity':cap,'minimum_proxy_degree':minimum,
  'individual_fitting_numeric_types':len(items),'viable_numeric_types':active,
  'multiset_count':len(found),'degree_histogram':dict(sorted(Counter(r['proxy_degree']for r in found).items())),
  'all_capacity_saturated':all(not any(r['capacity_slack'])for r in found),
  'frequencies':frequencies,'multisets':found,'actual_factorization_claimed':False}

def canonical(d):
 a=d['viable_numeric_types']
 return sorted((d['state'],r['proxy_degree'],tuple(tuple(a[i])for i in r['sequence']))for r in d['multisets'])

def receive_cpp(path:Path,diagnostics):
 expected=sorted(x for d in diagnostics for x in canonical(d));seen=[]
 for l in path.read_text().splitlines():
  v=list(map(int,l.split()));assert len(v)==58
  sid,e=v[:2];seq=tuple(tuple(v[2+7*i:9+7*i])for i in range(8))
  assert seq==tuple(sorted(seq)) and sum(x[0]for x in seq)==e
  seen.append((sid,e,seq))
 assert len(seen)==len(set(seen)) and sorted(seen)==expected
 return {'complete_sets_equal':True,'multisets_checked':len(seen),
  'second_enumerator':'C++ sorted combinations, no Bellman or active-type pruning'}

def route(d):
 assert d['state']==1650 and d['multiset_count']==12 and d['all_capacity_saturated']
 a=d['viable_numeric_types'];ix=a.index(TARGET);rows=[]
 for r in d['multisets']:
  t=r['sequence'].count(ix);assert t>=2
  lb9=r['proxy_degree']+t;lb10=r['proxy_degree']+2*t
  assert lb10>113
  rows.append({'sequence':r['sequence'],'proxy_degree':r['proxy_degree'],'tail8_count':t,
   'degree_bound_if_true_tail8_at_least9':lb9,'degree_bound_if_true_tail8_at_least10':lb10})
 return {'target_state':1650,'target_signature':TARGET,'all_costs_forced_exact':True,
  'candidate_q8_only_remaining_multisets':sum(r['degree_bound_if_true_tail8_at_least9']<=113 for r in rows),
  'candidate_q8_q9_remaining_multisets':0,
  'minimum_degree_if_tail8_at_least10':min(r['degree_bound_if_true_tail8_at_least10']for r in rows),
  'rows':rows,'warning':'Degree-only diagnostic is valid here because all 12 old multisets saturate every capacity.'}

def prepare(root,out):
 raw,st,ids=load(root);new,mapping=strengthen(raw)
 (out/'signatures505.txt').write_text(text(new));dump(out/'signature_mapping.json',mapping)
 (out/'queries120.txt').write_text(text([i,st[i]['h'],*st[i]['cap']]for i in ids))
 for name,sel in [('initial',(1643,1646,1650)),('post',(1643,1646))]:
  (out/(name+'_queries.txt')).write_text(text([i,st[i]['h'],*st[i]['cap']]for i in sel))
 initial=[diagnose(raw,st,i)for i in(1643,1646,1650)]
 post=[diagnose(new,st,i)for i in(1643,1646)]
 assert [d['multiset_count']for d in initial]==[644,1316,12]
 assert [d['multiset_count']for d in post]==[294,829]
 for d in initial:dump(out/f"initial_{d['state']}.json",d)
 for d in post:dump(out/f"post_{d['state']}.json",d)
 dump(out/'route_selection.json',route(initial[-1]))
 return initial,post

def receive_witness(l,raw,st):
 x=list(map(int,l.split()));assert len(x)==11
 sid,h,e,*seq=x;assert st[sid]['h']==h and all(0<=i<len(raw)for i in seq)
 cost=[sum(raw[i][r+1]for i in seq)for r in range(6)]
 assert sum(raw[i][0]for i in seq)==e and all(a<=b for a,b in zip(cost,st[sid]['cap']))
 return {'state':sid,'h':h,'degree':e,'indices':seq,'cost':cost,'capacity':st[sid]['cap'],
  'budget_feasible':e<=h,'actual_factorization_claimed':False}

def finalize(root,out):
 raw,st,ids=load(root);new,_=strengthen(raw)
 checks=[]
 for i,x in enumerate(new):
  lhs=4*x[0]+sum(w*c for w,c in zip(WEIGHTS,x[1:]));assert lhs>=128
  checks.append({'index':i,'lhs':lhs,'rhs':128,'slack':lhs-128})
 C=st[1650]['cap'];lb=8*128-sum(w*c for w,c in zip(WEIGHTS,C));assert lb==454>4*113
 price={'state':1650,'h':113,'capacity':C,'degree_multiplier':4,'weights':WEIGHTS,
  'per_factor_rhs':128,'checks':checks,'four_times_total_degree_lower_bound':454,
  'available_four_times_degree':452,'integer_total_degree_lower_bound':114}
 dump(out/'integer_price.json',price)
 receipts=[receive_witness(l,new,st)for l in(out/'fees120.txt').read_text().splitlines()]
 assert [x['state']for x in receipts]==ids
 removed=[x['state']for x in receipts if not x['budget_feasible']];assert removed==[1650]
 assert next(x['degree']for x in receipts if x['state']==1650)==114
 kept=[i for i in ids if i not in removed]
 lines=(root/'inputs/frontier120.tsv').read_text().splitlines()
 (out/'frontier119.tsv').write_text(lines[0]+'\n'+''.join(l+'\n'for l in lines[1:]if int(l.split()[0])in kept))
 dump(out/'resource_witnesses.json',receipts)
 summary={'input_states':120,'remaining_states':119,'removed':[1650],
  'minimum_h':min(st[i]['h']for i in kept),'minimum_h_states':[i for i in kept if st[i]['h']==113],
  'old_signatures':499,'new_signatures':505,'integer_price_checks':505,
  'fixed_G_cover_before':8,'fixed_G_cover_after':8,'H114_proved':False,'COVER7_proved':False,
  'remaining_weak_resource_witnesses':119,'original_input_finitization':False}
 assert summary['minimum_h_states']==[1643,1646]
 dump(out/'summary.json',summary)
 return summary
