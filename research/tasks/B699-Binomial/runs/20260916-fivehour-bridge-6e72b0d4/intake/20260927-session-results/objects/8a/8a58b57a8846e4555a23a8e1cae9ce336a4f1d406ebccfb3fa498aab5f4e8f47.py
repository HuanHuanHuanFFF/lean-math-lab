"""Exact safe-signature transfer, integer prices, resource witness receiver.
The old 493-signature coverage theorem is an adopted dependency, not re-proved
by this numerical file. No resource witness is asserted to be an actual factor.
"""
from __future__ import annotations
import hashlib,json
from pathlib import Path
from functools import lru_cache
from frozen_capacity import all_states
EXPECTED_INPUT_HASHES={
 'OVERVIEW-2026-09-22.md.txt':'4ad5a387242d834c57d08cebf011ed82507bd5f9bf661589a323f98b480c56c5',
 'R12_HANDOFF.md':'da7aad45ff3b66573bfc3a7198c67552c2270ec4a9cee67e86694b7db11b3190',
 'frontier123.tsv':'ac88800fa96afc72bd476c6dcdc18c744c456fe3cc5ff0c39695bc455411c11d',
 'signatures493.txt':'c5a8d15c74554710d72b2afce222310a96b41eef96108c51120f9364f6c0d585'}
PRICES={1644:([80,19,19,80,14,16],76),1868:([80,21,80,18,15,80],80),1940:([23,80,80,18,15,80],80)}

def dump(path:Path,obj:object)->None:path.write_text(json.dumps(obj,indent=2,ensure_ascii=False)+'\n')
def load_inputs(root:Path):
 for name,expected in EXPECTED_INPUT_HASHES.items():
  if hashlib.sha256((root/'inputs'/name).read_bytes()).hexdigest()!=expected:raise ValueError('input hash mismatch: '+name)
 raw=[tuple(map(int,l.split()))for l in(root/'inputs/signatures493.txt').read_text().splitlines()]
 assert len(raw)==493 and all(len(x)==7 and x[0]>=4 and min(x[1:])>=0 for x in raw)
 states=all_states();ids=[]
 for line in(root/'inputs/frontier123.tsv').read_text().splitlines()[1:]:
  a,h,e,v=line.split();sid=int(a);s=states[sid]
  assert s['h']==int(h)and s['E']==int(e)==0 and s['v']==list(map(int,v.split(',')))
  ids.append(sid)
 assert len(ids)==len(set(ids))==123
 return raw,states,ids

def strengthen(raw):
 assert raw[431]==(8,0,0,0,0,4,0)
 # Conservative preimage-complete replacement: it does not assume that a safe
 # proxy's cost equals the actual cost. Any strict cost excess is represented.
 old=raw[431];fork=[(10,*old[1:])]
 for j in range(6):
  c=list(old[1:]);c[j]+=2 if j in(0,2,4)else 1;fork.append((8,*c))
 new=raw[:431]+fork+raw[432:]
 assert len(new)==499
 return new,{'old_zero_based_index':431,'old':old,'new_zero_based_indices':list(range(431,438)),'fork':fork,'proof':'TAIL7-DOUBLE(8,9); true c >= proxy c, odd-row cost even'}

def prepare(root:Path,out:Path):
 raw,states,ids=load_inputs(root);new,mapping=strengthen(raw)
 (out/'signatures499.txt').write_text(''.join(' '.join(map(str,x))+'\n'for x in new))
 (out/'queries123.txt').write_text(''.join(' '.join(map(str,[i,states[i]['h'],*states[i]['cap']]))+'\n'for i in ids))
 dump(out/'signature_mapping.json',mapping)
 return new,states,ids

def receive_witness(line:str,raw,states):
 a=list(map(int,line.split()));assert len(a)==11
 sid,h,e,*seq=a;s=states[sid];assert h==s['h'] and len(seq)==8
 assert all(0<=ix<len(raw)for ix in seq)
 total_e=sum(raw[ix][0]for ix in seq);total_c=[sum(raw[ix][r+1]for ix in seq)for r in range(6)]
 assert total_e==e and all(x<=y for x,y in zip(total_c,s['cap']))
 return dict(state=sid,h=h,degree=e,signature_indices=seq,cost=total_c,capacity=s['cap'],is_actual_factorization=False)

def finalize(root:Path,out:Path):
 raw,states,ids=load_inputs(root);new,mapping=strengthen(raw)
 receipts=[receive_witness(l,new,states)for l in(out/'fees123.txt').read_text().splitlines()]
 assert [x['state']for x in receipts]==ids
 audit=[]
 for sid,(w,b)in PRICES.items():
  checks=[]
  for ix,x in enumerate(new):
   lhs=2*x[0]+sum(a*c for a,c in zip(w,x[1:]));assert lhs>=b,(sid,ix,lhs,b)
   checks.append(dict(signature_index=ix,lhs=lhs,rhs=b,slack=lhs-b))
  st=states[sid];twice=8*b-sum(a*c for a,c in zip(w,st['cap']))
  assert twice>2*st['h']
  audit.append(dict(state=sid,h=st['h'],capacity=st['cap'],weights=w,per_factor_rhs=b,checks=checks,twice_degree_bound=twice,degree_lower_bound=(twice+1)//2))
 removed=[x['state']for x in receipts if x['degree']>x['h']]
 assert removed==[1644,1868,1940] and removed==sorted(PRICES)
 for x in receipts:
  if x['state'] in removed:
   a=next(a for a in audit if a['state']==x['state']);assert x['degree']==a['degree_lower_bound']
  else:assert x['degree']<=x['h']
 kept=[x for x in ids if x not in removed]
 lines=(root/'inputs/frontier123.tsv').read_text().splitlines()
 (out/'frontier120.tsv').write_text(lines[0]+'\n'+''.join(l+'\n'for l in lines[1:]if int(l.split()[0])in kept))
 dump(out/'integer_prices.json',audit);dump(out/'resource_witnesses.json',receipts)
 summary=dict(input_states=123,remaining_states=len(kept),removed=removed,old_signatures=493,new_signatures=499,price_checks=len(audit)*len(new),remaining_weak_resource_witnesses=len(kept),minimum_h=min(states[i]['h']for i in kept),minimum_h_states=[i for i in kept if states[i]['h']==113],fixed_G_cover_before=8,fixed_G_cover_after=8,H114_proved=False,COVER7_proved=False)
 assert summary['remaining_states']==120 and summary['minimum_h_states']==[1643,1646,1650]
 dump(out/'summary.json',summary)
 return summary

def diagnostic1644(root:Path,out:Path):
 raw,states,_=load_inputs(root);cap=tuple(states[1644]['cap']);h=113
 items=sorted(set(x for x in raw if all(a<=b for a,b in zip(x[1:],cap))))
 @lru_cache(None)
 def best(n,c):
  if n==0:return 0
  ans=10**9
  for x in items:
   d=tuple(a-b for a,b in zip(c,x[1:]))
   if min(d)>=0:ans=min(ans,x[0]+best(n-1,d))
  return ans
 active=[x for x in items if x[0]+best(7,tuple(a-b for a,b in zip(cap,x[1:])))<=h]
 found=[]
 def enumerate_all(n,c,budget,start,seq):
  if n==0:found.append(seq);return
  if best(n,c)>budget:return
  for i in range(start,len(active)):
   x=active[i];d=tuple(a-b for a,b in zip(c,x[1:]))
   if min(d)>=0 and x[0]<=budget:enumerate_all(n-1,d,budget-x[0],i,seq+[i])
 enumerate_all(8,cap,h,0,[])
 records=[]
 for seq in found:
  degree=sum(active[i][0]for i in seq);cost=[sum(active[i][r+1]for i in seq)for r in range(6)]
  target_count=sum(active[i]==raw[431]for i in seq)
  assert cost==list(cap)and target_count>=2 and degree+2*target_count>h
  records.append(dict(sequence=seq,proxy_degree=degree,cost=cost,tail7_double_count=target_count,degree_if_tail7_at_least10=degree+2*target_count))
 assert best(8,cap)==110 and len(active)==10 and len(records)==9
 result=dict(state=1644,initial_active_cost_types=len(items),viable_cost_types=active,cost_multisets=records,minimum_degree=110,interpretation='Nine numerical cost multisets, not nine actual factors/curves/input candidates')
 dump(out/'cheap_diagnostic1644.json',result);return result
