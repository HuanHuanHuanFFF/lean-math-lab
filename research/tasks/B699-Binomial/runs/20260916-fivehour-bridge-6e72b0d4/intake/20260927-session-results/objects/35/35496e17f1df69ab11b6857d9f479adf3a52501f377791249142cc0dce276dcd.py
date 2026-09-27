"""New state-specific S5 cofactor inputs, complete resource domains and ledger.
Uses only Python standard library; no network or repository operation.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from collections import Counter
from itertools import product
import hashlib,json
from frozen_capacity import all_states,OFF,DIAG
from resource_core import load_sigs,multisets,parse_cpp
from exact_minors import poly_mul,poly_add,jet
T=(4,0,0,2,1,0,0)
A=(18,0,0,0,0,0,3)
FLOORS={1785:11,1787:8,1856:10,1900:11,1965:9,1984:11,2015:11}
REMOVED=[1785,1787,1856,1865,1900,1929,1965,1984,2015]
CASES=[('tail18_sat',[0]*6,[0,0,0,0,0,3]),('tail18_near',[0,0,0,0,0,1],[0,0,0,0,0,1])]

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def sigs(p,raw):p.write_text(''.join(' '.join(map(str,x))+'\n'for x in raw))
def queries(p,ids,st):p.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
def conditional(raw,f):return [(f,*x[1:])if x==T else x for x in raw]

def load(root,out):
 st=all_states();ids=[]
 for l in (root/'inputs/frontier43.tsv').read_text().splitlines()[1:]:
  ix,h,e,v=l.split();i=int(ix);v=list(map(int,v.split(',')))
  assert st[i]['h']==int(h) and st[i]['E']==int(e)==0 and st[i]['v']==v
  ids.append(i)
 assert len(ids)==len(set(ids))==43 and [i for i in ids if st[i]['h']==125]==[1785,1787,1794]
 raw=load_sigs(root/'inputs/signatures643.txt');assert len(raw)==643 and raw.count(T)==raw.count(A)==1
 cv=json.loads((root/'inputs/LOW_T43_cover.json').read_text());cover={(q,tuple(c))for q,c in cv['pairs']};assert len(cover)==43
 queries(out/'queries43.txt',ids,st)
 dump(out/'input_states.json',[st[i]for i in ids]);dump(out/'state_specific_floors.json',FLOORS)
 return st,ids,raw,cover

def local_expand(f,r,s):
 """Literal polynomial substitution, not the binomial jet evaluator."""
 v=s*(r-s);shear=s if 2*s==r else 0
 n={(0,0):r,(1,0):1};x={(0,0):v,(1,0):shear,(0,1):1}
 maxa=max(a for a,b in f);maxb=max(b for a,b in f)
 np=[{(0,0):1}];xp=[{(0,0):1}]
 for i in range(maxa):np.append(poly_mul(np[-1],n))
 for i in range(maxb):xp.append(poly_mul(xp[-1],x))
 z={}
 for(a,b),c in f.items():z=poly_add(z,{k:c*w for k,w in poly_mul(np[a],xp[b]).items()})
 return z

def source_bounds(out):
 p0={(0,0):1};W={(0,0):1}
 for a in range(4):p0=poly_mul(p0,{(0,1):1,(1,0):-a,(0,0):a*a})
 for r in range(3,9):W=poly_mul(W,{(1,0):1,(0,0):-r})
 B=poly_mul(poly_mul(W,{(1,0):1,(0,0):-3}),{(1,0):1,(0,0):-4})
 U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0)
 result=[]
 for r in range(3,9):
  for s in range(r//2+1):
   dg=r==2*s;upper=WU[r-3]if dg else U[r-3][s]
   if(r,s)==(5,2)or(dg and r==6):ij=(1,0);mode='nonzero lambda coefficient'
   elif dg and r==4:ij=(0,1);mode='nonzero parameter-independent coefficient'
   elif dg:ij=(0,0);mode='nonzero parameter-independent coefficient'
   else:ij=(0,upper);mode='nonzero parameter-independent coefficient'
   p,b=jet(p0,r,s,*ij),jet(B,r,s,*ij)
   assert p==local_expand(p0,r,s).get(ij,0) and b==local_expand(B,r,s).get(ij,0)
   if mode=='nonzero lambda coefficient':assert p==0 and b!=0
   else:assert p!=0 and b==0
   assert ij[0]+(2 if dg else 1)*ij[1]==upper
   result.append({'r':r,'s':s,'upper':upper,'kind':'weighted'if dg else'ordinary','jet':ij,'P0_coefficient':p,'B_coefficient':b,'reason':mode})
 dump(out/'S5_uniform_source_bounds.json',{'lambda':'arbitrary nonzero rational','P0':[[*k,v]for k,v in sorted(p0.items())],'B':[[*k,v]for k,v in sorted(B.items())],'bounds':result,'all_21_literal_substitutions_match_binomial_jets':True})
 return result

def quotient_cases(st,bounds,out):
 cases=[]
 for i in sorted(FLOORS):
  s=st[i];e=s['h']-4;pts=[];lines=[str(e)];n=0
  for b in bounds:
   r,t=b['r'],b['s'];dg=r==2*t
   lo=max(0,(DIAG[r-3]if dg else OFF[r-3][t])-s['v'][r-3]);m=max(0,lo-b['upper'])
   n+=sum(max(m-(2 if dg else 1)*j,0)for j in range(m))
   pts.append({'r':r,'s':t,'Gbar_lower':lo,'factor_upper':b['upper'],'quotient_lower':m,'kind':b['kind']});lines.append(f'{r} {t} {m}')
  (out/f'{i}_S5.case').write_text('\n'.join(lines)+'\n')
  cases.append({'state':i,'e':e,'D':2*e,'h':s['h'],'v':s['v'],'constraints':n,'points':pts})
 assert next(c for c in cases if c['state']==1787)['constraints']==14936
 assert next(c for c in cases if c['state']==1785)['constraints']==14941
 dump(out/'state_specific_quotient_cases.json',cases)
 return cases

def read_fees(p,raw,st,ids):
 result=[]
 for l in p.read_text().splitlines():
  i,h,m,*seq=map(int,l.split());assert h==st[i]['h']and len(seq)==8
  selected=[raw[a]for a in seq];used=[sum(x[j+1]for x in selected)for j in range(6)]
  assert sum(x[0]for x in selected)==m and all(a<=b for a,b in zip(used,st[i]['cap']))
  result.append({'state':i,'h':h,'minimum_degree':m,'signature_indices':seq,'weak_signatures':selected,'used_cost':used,'actual_realization_claimed':False})
 assert [x['state']for x in result]==list(ids)
 return result

def read_grid_summary(p,records):
 data=[]
 for l in p.read_text().splitlines()[1:]:
  i,h,m,g,c,*rest=map(int,l.split());assert c==9*g;data.append((i,h,m,c))
 assert len(data)==len(records)
 for x,y in zip(data,records):assert x[:3]==(y['state'],y['h'],y['minimum_degree'])
 return sum(x[3]for x in data)

def complete_active_domains(root,st,cover,cells,out):
 M={}
 with cells.open()as f:
  next(f)
  for l in f:
   i,n,*x=map(int,l.split())
   if i in FLOORS and n==7:M[i,tuple(x[:6])]=x[6]
 records=[]
 for i in sorted(FLOORS):
  cap=st[i]['cap'];h=st[i]['h'];f=FLOORS[i];tests=[];pairs=[]
  for c in product(*(range(T[j+1],cap[j]+1,2 if j%2==0 else 1)for j in range(6))):
   m=M[i,tuple(a-b for a,b in zip(cap,c))];qs=list(range(4,min(f-1,h-m)+1))
   tests.append({'true_cost':c,'M7':m,'allowed_q_below_floor':qs});pairs.extend((q,c)for q in qs)
  assert set(pairs)<=cover and (4,(0,2,2,1,0,0))not in pairs
  profiles=[]
  for q,c in pairs:
   for d in product(*(range(x//2+1)for x in c)):
    k=tuple(x-2*y for x,y in zip(c,d))
    if not any(k[j]for j in(0,2,4)):profiles.append([q,d,k])
  records.append({'state':i,'floor':f,'complete_cost_tests':tests,'complete_low_pairs':pairs,'count':len(pairs),'all_delta_kappa_splits':profiles,'Fstar_not_in_domain':True,'LOW_T43_cover_verified':True})
 assert sum(x['count']for x in records)==67
 dump(out/'complete_active_low_preimages.json',records)
 return records

def main_groups(root,raw,st,cpp,out):
 actual=parse_cpp(cpp);old=parse_cpp(root/'inputs/baseline_h125_complete.txt');summaries=[]
 for i,expected in((1785,1062),(1787,1962),(1794,3823)):
  gs=multisets(raw,st[i]['cap'],125);assert gs==actual[i]==old[i]and len(gs)==expected
  rows=[]
  for z,g in enumerate(gs):
   e=sum(x[0]for x in g);rem=[v-sum(x[j+1]for x in g)for j,v in enumerate(st[i]['cap'])];a=g.count(T)
   rows.append({'index':z,'proxy_degree':e,'T_count':a,'cost_slack':rem,'under_T7':e+3*a,'under_T8':e+4*a})
  sat=sum(not any(x['cost_slack'])for x in rows)
  summaries.append({'state':i,'groups':len(gs),'saturated':sat,'unsaturated':len(gs)-sat,'minimum':min(x['proxy_degree']for x in rows)})
  if i==1787:
   assert all(x['T_count']==1 and not any(x['cost_slack'])for x in rows)
   assert sum(x['under_T7']<=125 for x in rows)==71 and min(x['under_T8']for x in rows)==126
   dump(out/'1787_all1962_budget_checks.json',rows)
   dump(out/'1787_T7_surviving71.json',[g for g,r in zip(gs,rows)if r['under_T7']<=125])
 dump(out/'input_h125_complete_summary.json',summaries)
 return summaries

def stage1_1785(raw,st,cpp,out):
 rr=conditional(raw,11);gs=multisets(rr,st[1785]['cap'],125);cc=parse_cpp(cpp)
 assert gs==cc[1785]and len(gs)==13
 rows=[]
 for i,g in enumerate(gs):
  e=sum(x[0]for x in g);rem=[v-sum(x[j+1]for x in g)for j,v in enumerate(st[1785]['cap'])]
  assert not any(rem) and A in g
  rows.append({'index':i,'proxy_degree':e,'A_count':g.count(A),'cost_slack':rem,'under_new_q18_exclusion':e+g.count(A)})
 assert min(r['under_new_q18_exclusion']for r in rows)==127
 dump(out/'1785_all13_budget_checks.json',rows)
 dump(out/'1785_new_geometric_target.json',{'target':A,'all13_contain_target':True,'multiplicities':sorted({g.count(A)for g in gs}),'new_minimum':127,'current_h':125,'not_a_quartic_factor_assumption':True})
 return gs

def strengthened(raw,out):
 new=[];mapping=[]
 for ix,x in enumerate(raw):
  start=len(new)
  if x==A:
   new.append((19,*x[1:]))
   for j in range(6):
    c=list(x[1:]);c[j]+=2 if j%2==0 else 1;new.append((18,*c))
  else:new.append(x)
  mapping.append({'old_index':ix,'old_signature':x,'new_indices':list(range(start,len(new)))})
 assert len(new)==649 and raw.count(A)==1
 sigs(out/'global649.txt',new);dump(out/'global643_to649_seven_fork.json',{'target_exact_cost':A[1:],'excluded_actual_degree':18,'mapping':mapping,'global_safety':True,'does_not_globally_raise_T':True})
 return new

def geometry_stats(gd,out):
 cases=[]
 for name,d,k in CASES:
  gs=(gd/f'{name}.gates').read_text().splitlines(); alt=(gd/f'{name}.alt').read_text().splitlines()
  assert sorted(gs)==sorted(alt) and len(gs)==len(set(gs))
  only_conjugate=0;divcounts=Counter()
  for l in gs:
   a=list(map(int,l.split()));q=a[0];D=a[1:7];K=a[7:13];m=a[25:];assert q==18 and D==d and K==k and len(a)==46
   ds=[]
   for div in range(1,q+1):
    if q%div or any(x%div for x in m+K):continue
    g=0;pos=0
    for r in range(3,9):
     mm=m[pos:pos+r//2+1];pos+=len(mm)
     g+=sum((x//div)*(x//div-1)//2 for x in mm)
     if r%2==0:
      v=max((mm[-1]-K[r-3])//div,0);g+=v*(v-1)//2
    if g<=(q//div-1)**2:ds.append(div)
   assert ds
   if 1 not in ds:only_conjugate+=1
   divcounts[','.join(map(str,ds))]+=1
  expected=34 if name=='tail18_sat'else 656;assert len(gs)==expected
  counts=[]
  for p in(32749,32719):
   mi=(gd/f'{name}.{p}.minors').read_text().splitlines();er=(gd/f'{name}.{p}.exceptions').read_text().splitlines()
   assert len(mi)==len(gs)and not er
   counts.append({'prime':p,'nonzero_minors':len(mi),'exceptions':0,'minor_sha256':sha(gd/f'{name}.{p}.minors')})
  cases.append({'name':name,'degree':18,'delta':d,'kappa':k,'root_configurations':len(gs),'homogeneous_columns':257,'both_complete_anchor_sets_equal':True,'possible_divisor_sets':dict(divcounts),'only_d_greater_than_one':only_conjugate,'prime_checks':counts})
 assert sum(c['root_configurations']for c in cases)==690
 dump(out/'geometry_summary.json',{'profiles':cases,'total_gates':690,'total_nonzero_modular_minors':1380,'residual_kernels':0,'all_rational_coefficients_retained':True})
 return cases

def next_1794(root,st,new,cpp,cells,out):
 cap=st[1794]['cap'];gs=multisets(new,cap,125);assert gs==parse_cpp(cpp)[1794]and len(gs)==3778
 rows=[];pre=set()
 for ix,g in enumerate(gs):
  e=sum(x[0]for x in g);a=g.count(T);rem=tuple(v-sum(x[j+1]for x in g)for j,v in enumerate(cap));ds=125-e
  assert a>=1
  rows.append({'index':ix,'proxy_degree':e,'T_count':a,'cost_slack':rem,'under_T10':e+6*a,'under_T11':e+7*a})
  for inc in product(*(range(0,x+1,2 if j%2==0 else 1)for j,x in enumerate(rem))):
   c=tuple(x+y for x,y in zip(T[1:],inc));pre.update((q,c)for q in range(4,min(10,4+ds)+1))
 cover={(q,tuple(c))for q,c in json.loads((root/'inputs/LOW_T43_cover.json').read_text())['pairs']}
 M={}
 with cells.open()as f:
  next(f)
  for l in f:
   i,n,*x=map(int,l.split())
   if i==1794 and n==7:M[tuple(x[:6])]=x[6]
 byM=set();tests=[]
 for c in product(*(range(T[j+1],cap[j]+1,2 if j%2==0 else 1)for j in range(6))):
  m=M[tuple(a-b for a,b in zip(cap,c))];qs=list(range(4,min(10,125-m)+1))
  byM.update((q,c)for q in qs);tests.append({'cost':c,'M7':m,'q':qs})
 assert pre==byM and len(pre)==36 and len(pre-cover)==7
 sat=sum(not any(r['cost_slack'])for r in rows);assert sat==2990
 assert Counter(r['T_count']for r in rows)==Counter({3:2049,2:1729})
 remain=[g for g,r in zip(gs,rows)if r['under_T10']<=125];assert len(remain)==1
 assert min(r['under_T11']for r in rows)==128
 summary={'state':1794,'h':125,'v':st[1794]['v'],'capacity':cap,'groups':len(gs),'saturated':sat,'unsaturated':len(gs)-sat,'minimum_proxy_degree':min(r['proxy_degree']for r in rows),'T_count_distribution':dict(Counter(r['T_count']for r in rows)),'complete_q_le10_pairs':sorted(pre),'already_covered_pairs':sorted(pre&cover),'missing_pairs':sorted(pre-cover),'remaining_under_counterfactual_T10':remain,'under_counterfactual_T11_minimum':128,'T11_proved':False,'own_S5_quotient_tested':False,'individual_pairs_not_joint_realizations':True,'preimages_by_slack_union_equal_M7_test':True,'all_cost_tests':tests}
 dump(out/'next1794_complete_budget_checks.json',rows);dump(out/'next1794_complete_preimages_and_missing_bridge.json',summary)
 return summary
