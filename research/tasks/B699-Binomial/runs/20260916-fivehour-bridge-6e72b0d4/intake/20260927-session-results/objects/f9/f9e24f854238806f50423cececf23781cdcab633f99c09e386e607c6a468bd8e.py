"""Exact current-round resource arithmetic and complete numerical preimages.
No external optimizer is used in replay. No assertion of actual factorizations.
"""
from __future__ import annotations
import json,itertools
from pathlib import Path
from collections import Counter
from functools import lru_cache
from frozen_capacity import all_states
PAIRS=((4,5),(4,7),(4,8),(5,7),(7,8))
INF=10**6

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def load_sigs(p):
 a=[tuple(map(int,l.split()))for l in p.read_text().splitlines()if l.strip()]
 assert all(len(x)==7 and x[0]>=4 and min(x[1:])>=0 and not any(x[i]%2 for i in (1,3,5))for x in a)
 return a

def costs():
 ans=[]
 for a,b in PAIRS:
  c=[0]*6;c[a-3]=c[b-3]=2;ans.append(tuple(c))
 return ans

def profiles():
 ans=[]
 for q in(8,9):
  for a,b in PAIRS:
   for da,db in itertools.product(([0,1]if a%2==0 else[1]),([0,1]if b%2==0 else[1])):
    d=[0]*6;k=[0]*6;d[a-3]=da;d[b-3]=db;k[a-3]=2-2*da;k[b-3]=2-2*db
    ans.append((f'q{q}_{a}{b}_{da}{db}',q,d,k))
 assert len(ans)==22
 # Enumerate all solutions of c=2*delta+kappa without assuming a named branch.
 actual=set()
 for q in(8,9):
  for c in costs():
   for d in itertools.product(*(range(v//2+1)for v in c)):
    k=tuple(v-2*w for v,w in zip(c,d))
    if any(k[j]for j in(0,2,4)):continue
    actual.add((q,tuple(d),k))
 assert actual=={(q,tuple(d),tuple(k))for n,q,d,k in ans}
 return ans

def states_and_queries(root,out):
 st=all_states();ls=(root/'inputs/frontier106.tsv').read_text().splitlines();ids=[]
 for line in ls[1:]:
  i,h,E,v=line.split();i,h,E=int(i),int(h),int(E);v=list(map(int,v.split(',')))
  assert st[i]['h']==h and st[i]['v']==v and E==st[i]['E']==0;ids.append(i)
 assert len(ids)==len(set(ids))==106 and min(st[i]['h']for i in ids)==113
 assert [i for i in ids if st[i]['h']==113]==[1643]
 (out/'queries106.txt').write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
 (out/'query1643.txt').write_text(' '.join(map(str,[1643,113,*st[1643]['cap']]))+'\n')
 low=[i for i in ids if st[i]['h']==115];assert low==[1670,1672,1679]
 (out/'queries115.txt').write_text(''.join(' '.join(map(str,[i,115,*st[i]['cap']]))+'\n'for i in low))
 return st,ids

def multisets(raw,cap,h):
 # Complete sorted multisets, no Pareto deletion. Bellman merely prunes.
 items=sorted({x for x in raw if all(a<=b for a,b in zip(x[1:],cap))})
 @lru_cache(None)
 def lb(n,c):
  if not n:return 0
  ans=INF
  for x in items:
   rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0:ans=min(ans,x[0]+lb(n-1,rem))
  return ans
 result=[]
 def go(start,n,e,c,seq):
  if n==0:result.append(tuple(seq));return
  if e+lb(n,c)>h:return
  for i in range(start,len(items)):
   x=items[i]
   if e+n*x[0]>h:break
   rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0:go(i,n-1,e+x[0],rem,seq+[x])
 go(0,8,0,tuple(cap),[])
 assert len(result)==len(set(result));return sorted(result)

def parse_cpp(p):
 ans={}
 for line in p.read_text().splitlines():
  v=list(map(int,line.split()));assert len(v)==58
  sid,deg=v[:2];seq=tuple(tuple(v[2+7*k:9+7*k])for k in range(8))
  assert seq==tuple(sorted(seq)) and sum(x[0]for x in seq)==deg
  ans.setdefault(sid,[]).append(seq)
 for k in ans:assert len(ans[k])==len(set(ans[k]));ans[k].sort()
 return ans

def initial_diagnosis(root,out):
 old=load_sigs(root/'inputs/signatures517.txt');assert len(old)==517
 supplied=json.loads((root/'inputs/post_1643_517.json').read_text())
 C=tuple(supplied['capacity']);assert C==(0,2,2,0,8,14)
 seqs=multisets(old,C,113);other=parse_cpp(out/'old_1643_cpp.txt')[1643]
 want=sorted(tuple(map(tuple,r['sequence']))for r in supplied['multisets'])
 assert seqs==other==want and len(seqs)==168
 targets={(8,*c)for c in costs()};T=(8,0,0,0,0,2,2)
 records=[];preimages=set();preimage_records=[]
 for i,s in enumerate(seqs):
  e=sum(x[0]for x in s);used=tuple(sum(x[j+1]for x in s)for j in range(6));assert used==C
  a=sum(x in targets for x in s);assert a>=1 and e+2*a>113
  rec={'index':i,'sequence':s,'old_proxy_total_degree':e,'degree_slack':113-e,'cost':used,'saturates_capacity':True,'number_of_changed_proxies':a,'new_actual_degree_lower_bound':e+2*a,'contains_tail78_proxy':T in s}
  records.append(rec)
  local=[]
  for x in set(s):
   if x not in targets:continue
   for q in range(x[0],x[0]+113-e+1):
    preimages.add((q,x[1:]));local.append((q,x[1:]))
  preimage_records.append({'multiset_index':i,'all_distinguished_numerical_preimages':sorted(local)})
 assert min(r['new_actual_degree_lower_bound']for r in records)==114
 no=[r for r in records if not r['contains_tail78_proxy']];assert len(no)==9
 counter=[]
 for increase in(0,1,2):
  survives=[r['index']for r in records if r['old_proxy_total_degree']+increase*r['number_of_changed_proxies']<=113]
  counter.append({'uniform_new_proxy_floor':8+increase,'survivors':survives,'count':len(survives),'is_counterfactual_unless_geometric_theorem_verified':True})
 assert [r['count']for r in counter]==[168,28,0]
 tail=[{'floor':q,'survivor_count':sum(r['old_proxy_total_degree']+(q-8)*r['sequence'].count(T)<=113 for r in records)}for q in(9,10,11)]
 assert [r['survivor_count']for r in tail]==[49,18,9]
 stats={'state':1643,'count':168,'minimum_proxy_degree':106,'all_capacity_saturated':True,'degree_slack_histogram':dict(sorted(Counter(r['degree_slack']for r in records).items())),
 'distinct_appearing_numeric_types':len({x for s in seqs for x in s}), 'with_tail78_proxy':159,'without_tail78_proxy':9,
 'minimum_after_new_proved_floor':114,'new_floor_distribution':dict(sorted(Counter(r['new_actual_degree_lower_bound']for r in records).items())),
 'old_517_set_equality':'Python = C++ = frozen supplied set','parameter_box_used':False}
 dump(out/'all_168_exact_budget_checks.json',records);dump(out/'nine_no_tail78.json',no)
 dump(out/'complete_distinguished_preimages.json',{'pairs':sorted(preimages),'by_multiset':preimage_records,'cost_equals_proxy_because_all_capacity_saturated':True,'unexcluded_higher_q_are_retained':True})
 dump(out/'cheap_diagnostics.json',{'all_five_cost_types':counter,'only_tail78_raised':tail})
 dump(out/'old_1643_summary.json',stats)
 return old,stats

def strengthen(old,out):
 target={(8,*c)for c in costs()};ans=[];mapping=[];changed=[]
 for i,x in enumerate(old):
  start=len(ans)
  if x in target:
   changed.append(i);ans.append((10,*x[1:]))
   for j in range(6):
    new=list(x);new[j+1]+=2 if j%2==0 else 1;ans.append(tuple(new))
  else:ans.append(x)
  mapping.append({'old_index':i,'old_signature':x,'new_indices':list(range(start,len(ans))),'changed':x in target})
 assert changed==[436,448,453,454,456] and len(ans)==547
 (out/'signatures547.txt').write_text(''.join(' '.join(map(str,a))+'\n'for a in ans));dump(out/'signature_mapping.json',mapping)
 return ans

def price1726(raw,state,out):
 den=16;weights=(178,146,219,126,124,124);rhs=628
 rows=[]
 for ix,x in enumerate(raw):
  left=den*x[0]+sum(a*b for a,b in zip(weights,x[1:]));assert left>=rhs
  rows.append({'index':ix,'lhs':left,'rhs':rhs,'slack':left-rhs})
 numerator=8*rhs-sum(a*b for a,b in zip(weights,state['cap']))
 assert numerator==1890>den*state['h']==1888
 dump(out/'integer_price_1726.json',{'state':1726,'degree_multiplier':den,'cost_weights':weights,'per_factor_rhs':rhs,'all_547_checks':rows,'eight_factor_degree_lower_numerator':numerator,'denominator':den,'available_degree':state['h'],'integer_degree_lower_bound':119,'scope':'all 547 raw signatures, including those individually not fitting the state'})

def full_dp1643(raw,out):
 C=(0,2,2,0,8,14);grid=list(itertools.product(*(range(v+1)for v in C)));items=[x for x in raw if all(a<=b for a,b in zip(x[1:],C))];unique=sorted(set(items));zero=(0,)*6
 exact={zero:0};previous={c:0 for c in grid};rows=[]
 for n in range(9):
  pref={c:exact.get(c,INF)for c in grid}
  for j in range(6):
   for c in grid:
    if c[j]:
     pred=list(c);pred[j]-=1;pref[c]=min(pref[c],pref[tuple(pred)])
  if n==0:capacity=previous
  else:
   capacity={}
   for c in grid:
    best=INF
    for x in reversed(items):
     rem=tuple(a-b for a,b in zip(c,x[1:]))
     if min(rem)>=0:best=min(best,x[0]+previous[rem])
    capacity[c]=best
  assert pref==capacity,('DP disagreement',n)
  rows.extend((n,*c,capacity[c])for c in grid);previous=capacity
  nxt={}
  if n<8:
   for c,e in exact.items():
    for x in unique:
     t=tuple(a+b for a,b in zip(c,x[1:]))
     if all(a<=b for a,b in zip(t,C)):nxt[t]=min(nxt.get(t,INF),e+x[0])
  exact=nxt
 assert len(grid)==1215 and len(rows)==10935 and previous[C]==114
 (out/'state1643_full_dp.tsv').write_text('n c3 c4 c5 c6 c7 c8 minimum_degree\n'+''.join(' '.join(map(str,r))+'\n'for r in rows))
 dump(out/'state1643_dp_receipt.json',{'full_subcapacities':len(grid),'cells':len(rows),'all_raw_signatures_retained':True,'two_tables_equal':True,'min_eight_degree':114,'available_degree':113,'continuous_relaxation_bound':'223/2','continuous_relaxation_not_sufficient':True})

def finish(root,out,states,ids,raw):
 lines=(out/'fees106.txt').read_text().splitlines();assert len(lines)==106
 records=[];removed=[]
 for line in lines:
  sid,h,e,*index=map(int,line.split());assert len(index)==8 and h==states[sid]['h']
  seq=[raw[j]for j in index];assert sum(x[0]for x in seq)==e
  cost=[sum(x[j+1]for x in seq)for j in range(6)];assert all(a<=b for a,b in zip(cost,states[sid]['cap']))
  if e>h:removed.append(sid)
  records.append({'state':sid,'h':h,'degree':e,'indices':index,'signatures':seq,'total_cost':cost,'weak_resource_witness_only':True})
 assert removed==[1643,1726]
 rem=[i for i in ids if i not in removed];assert len(rem)==104
 assert min(states[i]['h']for i in rem)==115
 assert [i for i in rem if states[i]['h']==115]==[1670,1672,1679]
 ls=(root/'inputs/frontier106.tsv').read_text().splitlines()
 (out/'frontier104.tsv').write_text(ls[0]+'\n'+'\n'.join(l for l in ls[1:]if int(l.split()[0])in rem)+'\n')
 dump(out/'all106_fee_witnesses.json',records);dump(out/'remaining104_weak_witnesses.json',[r for r in records if r['state']in rem])
 dump(out/'next_h115_witnesses.json',[r for r in records if r['h']==115])
 # Exact set equality for the NEW table: no eight-factor realization at 1643.
 a=multisets(raw,states[1643]['cap'],113);b=parse_cpp(out/'new_1643_cpp.txt').get(1643,[]);assert a==b==[]
 dump(out/'new_1643_empty_set_receipt.json',{'state':1643,'new_signature_count':547,'Python_count':0,'Cplusplus_count':0,'full_sets_equal':True})
 return {'status':'PASS_MIXED_COST4_H115_FRONTIER104','input_states':106,'remaining_states':104,'removed_states':removed,'net_removed':2,'COVER8':True,'COVER7_proved':False,'minimum_equality_h':115,'maximum_vertical_sum':75,'minimum_h_states':[1670,1672,1679],'old_1643_complete_multisets':168,'new_1643_complete_multisets':0,'new_1643_minimum_proxy_degree':114,'new_1726_minimum_proxy_degree':119,'safe_signatures':547,'original_input_absolute_bound':False,'actual_G_or_factors_recovered':False,'R7':[3,4,5,6,7,8,9],'Lean':False,'repository_operations':False}

def next_low_frontier(out,states,raw):
 cpp=parse_cpp(out/'next_h115_cpp.txt');summaries=[]
 for sid in(1670,1672,1679):
  py=multisets(raw,states[sid]['cap'],115);assert py==cpp[sid]
  expected={1670:2993,1672:75,1679:12379}[sid];assert len(py)==expected
  used=[tuple(sum(a[j+1]for a in s)for j in range(6))for s in py]
  summaries.append({'state':sid,'h':115,'v':states[sid]['v'],'capacity':states[sid]['cap'],'complete_multiset_count':len(py),'minimum_proxy_degree':min(sum(a[0]for a in s)for s in py),'all_capacity_saturated':all(c==tuple(states[sid]['cap'])for c in used),'two_complete_sets_equal':True,'actual_factorizations':False})
  if sid==1672:
   target={(8,0,0,0,2,0,2),(8,0,0,0,2,2,0),(8,0,0,0,4,0,0)};checks=[]
   for i,s in enumerate(py):
    e=sum(a[0]for a in s);n=sum(a in target for a in s);assert e+2*n>115
    checks.append({'index':i,'sequence':s,'proxy_degree':e,'target_count':n,'counterfactual_lower_degree':e+2*n})
   dump(out/'next_1672_counterfactual.json',{'state':sid,'status':'NOT_A_PROVED_GEOMETRIC_THEOREM','target_true_costs':sorted(x[1:]for x in target),'proposed_degrees_to_check':[8,9],'surviving_groups_if_floor9':sum(r['proxy_degree']+r['target_count']<=115 for r in checks),'surviving_groups_if_floor10':0,'all_75_checks':checks,'do_not_remove_state_on_this_basis':True})
 dump(out/'next_h115_full_enumeration_summary.json',summaries)
 return summaries
