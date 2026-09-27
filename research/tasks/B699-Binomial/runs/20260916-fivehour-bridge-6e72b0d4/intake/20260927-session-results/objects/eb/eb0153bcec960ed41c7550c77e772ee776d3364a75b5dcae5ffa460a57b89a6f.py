"""Exact resource enumeration, numerical-preimage accounting, and prices.
All numbers in this file are exact integers or fractions. No optimizer at replay.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
from collections import Counter
from itertools import product
import json
from frozen_capacity import all_states,OFF,DIAG

def dump(p,v):p.write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
def read_sigs(p):
 s=[tuple(map(int,l.split()))for l in p.read_text().splitlines()if l.strip()]
 assert all(len(x)==7 and x[0]>=4 and min(x[1:])>=0 and all(x[i]%2==0 for i in (1,3,5)) for x in s)
 return s

def state_inputs(root,out):
 s=all_states(); lines=(root/'inputs/frontier119.tsv').read_text().splitlines(); ids=[]
 for line in lines[1:]:
  i,h,E,v=line.split();i,h,E=int(i),int(h),int(E);v=list(map(int,v.split(',')))
  assert s[i]['h']==h and s[i]['E']==E==0 and s[i]['v']==v;ids.append(i)
 assert len(ids)==len(set(ids))==119
 (out/'queries119.txt').write_text(''.join(' '.join(map(str,[i,s[i]['h'],*s[i]['cap']]))+'\n'for i in ids))
 (out/'queries_low.txt').write_text(''.join(' '.join(map(str,[i,s[i]['h'],*s[i]['cap']]))+'\n'for i in (1643,1646)))
 (out/'query1643.txt').write_text(' '.join(map(str,[1643,s[1643]['h'],*s[1643]['cap']]))+'\n')
 return s,ids

def multisets(raw,cap,h):
 """Enumeration by multiplicity counts, with an independent Bellman bound."""
 items=sorted({x for x in raw if all(a<=b for a,b in zip(x[1:],cap))})
 @lru_cache(None)
 def lower(n,c):
  if not n:return 0
  ans=10**6
  for x in items:
   d=tuple(a-b for a,b in zip(c,x[1:]))
   if min(d)>=0:ans=min(ans,x[0]+lower(n-1,d))
  return ans
 result=[]
 def visit(start,n,degree,c,seq):
  if not n:
   result.append(tuple(seq));return
  if degree+lower(n,c)>h:return
  for i in range(start,len(items)):
   x=items[i]
   if degree+n*x[0]>h:break
   d=tuple(a-b for a,b in zip(c,x[1:]))
   if min(d)>=0:visit(i,n-1,degree+x[0],d,seq+[x])
 visit(0,8,0,tuple(cap),[])
 assert len(result)==len(set(result));return sorted(result)

def parse_enum(p):
 sets={}
 for line in p.read_text().splitlines():
  v=list(map(int,line.split()));assert len(v)==58;i,e=v[:2];seq=tuple(tuple(v[2+7*k:9+7*k])for k in range(8));assert seq==tuple(sorted(seq)) and sum(x[0]for x in seq)==e
  sets.setdefault(i,[]).append(seq)
 for i in sets:assert len(sets[i])==len(set(sets[i]));sets[i].sort()
 return sets

def diagnose(root,out):
 raw=read_sigs(root/'inputs/signatures505.txt');assert len(raw)==505
 s=all_states(); cpp=parse_enum(out/'old_multisets_cpp.txt');result={};quart=(4,0,0,2,1,0,0)
 for i,N in ((1643,294),(1646,829)):
  seqs=multisets(raw,s[i]['cap'],s[i]['h']);src=json.loads((root/f'inputs/post_{i}.json').read_text());types=src['viable_numeric_types']
  supplied=sorted(tuple(sorted(tuple(types[j])for j in a['sequence']))for a in src['multisets'])
  assert seqs==supplied==cpp[i] and len(seqs)==N
  result[i]=seqs
 exceptions=[a for a in result[1646]if quart not in a];assert len(exceptions)==15
 arr=[]
 for seq in exceptions:
  e=sum(x[0]for x in seq);C=[sum(x[j+1]for x in seq)for j in range(6)];assert C==s[1646]['cap']
  n=sum(x in ((19,0,2,0,0,0,0),(19,0,0,2,0,0,0))for x in seq);assert n in (1,2) and e+2*n>113
  arr.append(dict(sequence=seq,degree=e,slack=113-e,early_cost2_count=n,new_degree_lower=e+2*n,exact_capacity=C))
 assert dict(Counter(x['degree']for x in arr))=={110:1,112:4,113:10}
 dump(out/'fifteen_exceptions.json',arr)
 # Complete numerical preimages of the distinguished quartic proxy.
 pairs=set();entries=[]
 for seq in result[1646]:
  if quart not in seq:continue
  assert seq.count(quart)==1
  e=sum(x[0]for x in seq);rem=[s[1646]['cap'][j]-sum(x[j+1]for x in seq)for j in range(6)]
  local=[]
  for q in range(4,4+113-e+1):
   for inc in product(*(range(z+1)for z in rem)):
    c=tuple(a+b for a,b in zip(quart[1:],inc))
    if any(c[j]%2 for j in (0,2,4)):continue
    pairs.add((q,c));local.append([q,c])
  entries.append(dict(sequence=seq,proxy_degree=e,unused_capacity=rem,true_preimages=local))
 assert len(entries)==814 and len(pairs)==17
 expected={(q,(0,0,2,1,0,0))for q in range(4,15)}|{(q,c)for q in (4,5,6)for c in ((0,0,2,1,0,1),(0,0,2,2,0,0))}
 assert pairs==expected
 profiles=set()
 for q,c in pairs:
  for D in product(*(range(v//2+1)for v in c)):
   K=tuple(v-2*d for v,d in zip(c,D))
   if any(K[j]for j in (0,2,4)):continue
   profiles.add((q,tuple(D),K))
 assert len(profiles)==20
 dump(out/'quartic_proxy_actual_preimages.json',{'numerical_pair_count':17,'profile_count':20,'pairs':sorted(pairs),'profiles':sorted(profiles),'all_814_preimage_checks':entries})
 dump(out/'old_enumeration_summary.json',{'counts':{'1643':294,'1646':829},'complete_set_equality':'Python Bellman-pruned enumeration = C++ elementary enumeration = adopted input sets','1646_with_proxy':814,'1646_without_proxy':15,'no_actual_quartic_assumed':True})
 return profiles

def strengthen(root,out):
 old=read_sigs(root/'inputs/signatures505.txt');new=[];mapping=[];changed=[]
 targets={(19,0,0,2,0,0,0),(19,0,2,0,0,0,0)}
 for i,x in enumerate(old):
  start=len(new)
  if x in targets:
   changed.append(i);new.append((21,*x[1:]))
   for j in range(6):
    v=list(x);v[j+1]+=2 if j in (0,2,4)else 1;new.append(tuple(v))
  else:new.append(x)
  mapping.append({'old_index':i,'old':x,'new_indices':list(range(start,len(new)))})
 assert changed==[474,481] and len(new)==517
 (out/'signatures517.txt').write_text(''.join(' '.join(map(str,x))+'\n'for x in new));dump(out/'signature_mapping.json',mapping)
 return new

def prices(raw,states,out):
 # [denominator, six integer weights, integer per-factor bound].
 # e + rational_weight.cost >= bound, cleared here with positive denominator.
 spec={1734:(2,[23,19,19,34,16,16],80),1826:(12,[114,93,90,204,88,80],432),1829:(4,[42,34,51,34,28,32],152),1831:(2,[20,16,16,34,15,14],74),1892:(2,[20,16,16,34,15,14],74),1915:(2,[23,19,19,34,15,18],80),1932:(12,[114,93,90,204,88,80],432),1933:(2,[20,16,16,34,15,14],74),1988:(1,[23//2,0,0,0,0,0],0)}
 spec[1988]=(2,[23,19,28,16,16,16],80);spec[2009]=spec[1988];spec[2010]=(2,[21,17,17,34,14,16],76)
 cert=[]
 for sid,(den,w,b)in sorted(spec.items()):
  rows=[]
  for ix,x in enumerate(raw):
   lhs=den*x[0]+sum(a*c for a,c in zip(w,x[1:]));assert lhs>=b,(sid,ix,x,lhs,b)
   rows.append({'index':ix,'lhs':lhs,'rhs':b,'slack':lhs-b})
  lower=8*b-sum(a*c for a,c in zip(w,states[sid]['cap']));assert lower>den*states[sid]['h']
  cert.append({'state':sid,'degree_multiplier':den,'cost_weights':w,'per_factor_rhs':b,'checks':rows,'eight_factor_degree_lower_numerator':lower,'denominator':den,'available_degree':states[sid]['h']})
 assert len(cert)==11
 dump(out/'integer_prices_11_states.json',cert)


def exact_1713(raw,state,out):
 """Two full tables: exact-used convolution+prefix minima versus capacity DP.
No LP or Pareto filter is used in either implementation.
"""
 cap=tuple(state['cap']);grid=list(product(*(range(c+1)for c in cap)));items=[x for x in raw if all(a<=b for a,b in zip(x[1:],cap))];unique=sorted(set(items));zero=(0,)*6;INF=10**6;exact={zero:0};previous={c:0 for c in grid};tables=[]
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
    ans=INF
    for x in reversed(items):
     d=tuple(a-b for a,b in zip(c,x[1:]))
     if min(d)>=0:ans=min(ans,x[0]+previous[d])
    capacity[c]=ans
  assert pref==capacity,(n,'table disagreement')
  tables.extend([n,*c,capacity[c]]for c in grid);previous=capacity
  nxt={}
  if n<8:
   for c,e in exact.items():
    for x in unique:
     t=tuple(a+b for a,b in zip(c,x[1:]))
     if all(a<=b for a,b in zip(t,cap)):nxt[t]=min(nxt.get(t,INF),e+x[0])
  exact=nxt
 assert previous[cap]==118>state['h']==117 and len(tables)==7560
 (out/'state1713_full_dp.tsv').write_text('n c3 c4 c5 c6 c7 c8 minimum_degree\n'+''.join(' '.join(map(str,t))+'\n'for t in tables))
 dump(out/'state1713_dp_receipt.json',{'state':1713,'capacity':cap,'raw_active_signatures':len(items),'unique_active_signatures':len(unique),'subcapacities':len(grid),'table_cells':len(tables),'minimum_eight_degree':118,'available_degree':117,'two_full_tables_equal':True,'continuous_price_only_bound':116,'continuous_price_not_used_as_exclusion':True})

def cofactor_case(states,p):
 st=states[1646];assert st['h']==113
 U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0)
 lines=['109'];orders=[]
 for ri,r in enumerate(range(3,9)):
  for s in range(r//2+1):
   dg=2*s==r
   M=max(0,(DIAG[ri]-st['v'][ri]-WU[ri])if dg else OFF[ri][s]-st['v'][ri]-U[ri][s]);orders.append([r,s,M]);lines.append(f'{r} {s} {M}')
 p.write_text('\n'.join(lines)+'\n');return orders

def finish(root,out,states,ids,raw):
 vals=[list(map(int,l.split()))for l in(out/'fees119.txt').read_text().splitlines()];assert len(vals)==119
 removed=[];witnesses=[]
 for i,h,e,*seq in vals:
  assert h==states[i]['h']and len(seq)==8
  choices=[raw[j]for j in seq];assert sum(x[0]for x in choices)==e
  C=[sum(x[k+1]for x in choices)for k in range(6)];assert all(a<=b for a,b in zip(C,states[i]['cap']))
  if e>h:removed.append(i)
  witnesses.append({'state':i,'h':h,'degree':e,'indices':seq,'signatures':choices,'total_cost':C,'necessary_resource_only':True})
 expected=[1713,1734,1826,1829,1831,1892,1915,1932,1933,1988,2009,2010]
 assert removed==expected
 removed=sorted(removed+[1646]);rem=[i for i in ids if i not in removed];assert len(rem)==106
 lines=(root/'inputs/frontier119.tsv').read_text().splitlines();(out/'frontier106.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])in rem)+'\n')
 dump(out/'remaining106_weak_witnesses.json',[x for x in witnesses if x['state']in rem]);dump(out/'all119_fee_witnesses.json',witnesses)
 cpp=parse_enum(out/'new_1643_cpp.txt');seqs=multisets(raw,states[1643]['cap'],113);assert seqs==cpp[1643]
 post={'state':1643,'h':113,'capacity':states[1643]['cap'],'count':len(seqs),'minimum_proxy_degree':min(sum(x[0]for x in a)for a in seqs),'multisets':[{'sequence':a,'proxy_degree':sum(x[0]for x in a),'degree_slack':113-sum(x[0]for x in a),'cost':[sum(x[j+1]for x in a)for j in range(6)]}for a in seqs],'not_actual_factorizations':True}
 dump(out/'post_1643_517.json',post)
 assert min(states[i]['h']for i in rem)==113 and [i for i in rem if states[i]['h']==113]==[1643]
 return {'input_states':119,'output_states':106,'net_removed':13,'removed_states':removed,'scalar_removed':expected,'structurally_removed':[1646],'minimum_h':113,'minimum_h_states':[1643],'maximum_vertical_sum':79,'COVER8':True,'COVER7_proved':False,'H114_proved':False,'remaining1643_numeric_multisets':len(seqs),'remaining1643_proxy_minimum':post['minimum_proxy_degree'],'actual_G_recovered':False,'original_input_absolute_bound':False}
