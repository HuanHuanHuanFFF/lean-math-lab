"""Exact research ledger: current profiles, numerical preimages, and integer audits.
All finite resource models are NECESSARY, not actual factors or NC9 candidates.
"""
from __future__ import annotations
import json,itertools,math
from pathlib import Path
from collections import Counter
from fractions import Fraction
from resource_core import load_sigs,multisets,parse_cpp
from frozen_capacity import all_states
COST_A=((0,0,0,2,2,0),(0,0,0,2,0,2),(0,0,0,4,0,0))
COST_B=((0,0,0,0,0,3),(0,0,0,0,2,1),(0,0,0,1,0,2),
        (0,0,0,1,2,0),(0,0,0,2,0,1),(0,0,0,3,0,0),
        (0,1,0,0,0,2),(0,1,0,0,2,0),(0,1,0,2,0,0))
EXPECTED_REMOVED=[1670,1672,1709,1744,1788,1790,1799,1820,1824,1828,1834,1840,1849,1859,1867,1870,1911,1922,1930,1942,1966,1978,1979,1987,1992,2008,2023]
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def write_sigs(p,a):p.write_text(''.join(' '.join(map(str,x))+'\n'for x in a))
def profiles(stage):
 costs,qs=(COST_A,(8,9))if stage=='A'else(COST_B,(16,17))
 cases=[]
 for q in qs:
  for c in costs:
   for d in itertools.product(*(range(x//2+1)for x in c)):
    k=tuple(c[i]-2*d[i]for i in range(6))
    if any(k[i]for i in(0,2,4)):continue
    assert all(x>=0 for x in k) and sum(d)<=2
    name=f'q{q}_'+''.join(map(str,c))+'_'+''.join(map(str,d))
    cases.append((name,q,list(d),list(k)))
 assert len(cases)==(18 if stage=='A'else 30)
 return cases

def states_and_queries(root,out):
 st=all_states();ids=[];lines=(root/'inputs/frontier104.tsv').read_text().splitlines()
 for line in lines[1:]:
  i,h,E,v=line.split();i,h,E=int(i),int(h),int(E);v=list(map(int,v.split(',')))
  assert st[i]['h']==h and st[i]['v']==v and E==st[i]['E']==0;ids.append(i)
 assert len(ids)==len(set(ids))==104 and min(st[i]['h']for i in ids)==115
 assert [i for i in ids if st[i]['h']==115]==[1670,1672,1679]
 for name,sel in [('queries104.txt',ids),('query1672.txt',[1672]),('queries115.txt',[1670,1672,1679]),('query1670.txt',[1670]),('query1679.txt',[1679])]:
  (out/name).write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in sel))
 return st,ids

def strengthen(old,costs,base,newfloor,out,filename):
 target={(base,*c)for c in costs};new=[];mapping=[];changed=[]
 for i,x in enumerate(old):
  start=len(new)
  if x in target:
   changed.append(i);new.append((newfloor,*x[1:]))
   for j in range(6):
    y=list(x);y[j+1]+=2 if j%2==0 else 1;new.append(tuple(y))
  else:new.append(x)
  mapping.append({'old_index':i,'old_signature':x,'new_indices':list(range(start,len(new))),'changed':x in target})
 assert len(changed)==len(costs) and len(new)==len(old)+6*len(costs)
 write_sigs(out/filename,new);dump(out/(filename+'.mapping.json'),mapping)
 return new

def initial75(root,out,st):
 raw=load_sigs(root/'inputs/signatures547.txt');assert len(raw)==547
 ss=multisets(raw,st[1672]['cap'],115);other=parse_cpp(out/'initial1672_cpp.txt')[1672]
 supplied=json.loads((root/'inputs/previous_1672_checks.json').read_text())
 frozen=sorted(tuple(map(tuple,a['sequence']))for a in supplied['all_75_checks'])
 assert ss==other==frozen and len(ss)==75
 rows,pre=budget_records(ss,st[1672],COST_A,8,10)
 assert min(x['actual_degree_lower_bound']for x in rows)==116
 assert Counter(x['actual_degree_lower_bound']for x in rows)==Counter({116:46,119:29})
 dump(out/'all75_budget_checks.json',rows);dump(out/'all75_distinguished_preimages.json',pre)
 diag={'state':1672,'complete_count':75,'minimum_proxy_degree':112,'all_saturated':True,'Python_CPP_previous_complete_sets_equal':True,
       'proxy_degree_distribution':dict(Counter(x['proxy_degree']for x in rows)),
       'lower_distribution':dict(Counter(x['actual_degree_lower_bound']for x in rows)),
       'survivors_if_floor9':sum(x['proxy_degree']+x['number_of_targets']<=115 for x in rows),'survivors_if_floor10':0}
 assert diag['survivors_if_floor9']==46;dump(out/'initial75_summary.json',diag)
 return raw,diag

def budget_records(ss,state,costs,base,floor):
 rows=[];all_pre=set();pre=[];targets={(base,*c)for c in costs};C=tuple(state['cap']);h=state['h']
 for i,s in enumerate(ss):
  e=sum(x[0]for x in s);used=tuple(sum(x[j+1]for x in s)for j in range(6));assert used==C
  n=sum(x in targets for x in s);assert n>0
  bound=e+(floor-base)*n;assert bound>h
  rows.append({'index':i,'sequence':s,'proxy_degree':e,'used_capacity':used,'degree_slack':h-e,
               'number_of_targets':n,'actual_degree_lower_bound':bound,'saturated':True})
  local=sorted({(q,x[1:])for x in s if x in targets for q in range(base,base+h-e+1)})
  all_pre.update(local);pre.append({'multiset_index':i,'complete_distinguished_numerical_preimages':local})
 return rows,{'union':sorted(all_pre),'by_multiset':pre,'actual_cost_equal_proxy_proved_by_saturation':True,
              'actual_degree_not_assumed_equal_proxy':True,'higher_q_retained_and_charged':True}

def read_fee_results(p,raw,states,ids):
 records=[]
 for line in p.read_text().splitlines():
  sid,h,e,*ix=map(int,line.split());assert sid in ids and h==states[sid]['h'] and len(ix)==8
  seq=[raw[j]for j in ix];assert sum(x[0]for x in seq)==e
  C=[sum(x[j+1]for x in seq)for j in range(6)];assert all(a<=b for a,b in zip(C,states[sid]['cap']))
  records.append({'state':sid,'h':h,'minimum_proxy_degree':e,'capacity':states[sid]['cap'],
                  'v':states[sid]['v'],'witness_indices':ix,'weak_witness':seq,'witness_cost':C,
                  'removed_by_fee_bound':e>h,'actual_factorization_claimed':False})
 assert [x['state']for x in records]==ids
 return records

def stageA_finish(out,st,ids,raw):
 rec=read_fee_results(out/'stageA_fees104.txt',raw,st,ids)
 assert [x['state']for x in rec if x['removed_by_fee_bound']]==[1672]
 dump(out/'stageA_all104_receipts.json',rec)
 cpp=parse_cpp(out/'stageA_next115_cpp.txt');summaries=[]
 for sid,count in [(1670,2145),(1679,12108)]:
  ss=multisets(raw,st[sid]['cap'],115);assert ss==cpp[sid] and len(ss)==count
  sat=sum(tuple(sum(x[j+1]for x in s)for j in range(6))==tuple(st[sid]['cap'])for s in ss)
  summaries.append({'state':sid,'full_count':count,'saturated_count':sat,'minimum_proxy_degree':min(sum(x[0]for x in s)for s in ss),'complete_sets_equal':True})
  if sid==1670:
   rows,pre=budget_records(ss,st[sid],COST_B,16,18)
   assert sat==2145 and min(x['actual_degree_lower_bound']for x in rows)==118
   assert sum(x['proxy_degree']+x['number_of_targets']<=115 for x in rows)==85
   dump(out/'all2145_budget_checks.json',rows);dump(out/'all2145_distinguished_preimages.json',pre)
   diag={'state':sid,'complete_count':2145,'all_saturated':True,'minimum_proxy_degree':110,
         'degree16_types':COST_B,'survivors_if_floor17':85,'survivors_if_floor18':0,
         'actual_degree_lower_bound':118,'lower_distribution':dict(Counter(x['actual_degree_lower_bound']for x in rows)),
         'all_groups_have_a_selected_degree16_proxy':True,'proof_conditional_on_COST3_theorem':True}
   dump(out/'stageB_selection_diagnosis.json',diag)
 dump(out/'stageA_remaining_h115_summary.json',summaries)


def prices(root,out,raw,st,removed):
 specs=json.loads((root/'inputs/discovered_price_coefficients.json').read_text());receipts=[]
 for sp in specs:
  i=sp['state'];D=sp['degree_multiplier'];W=sp['weights'];rhs=sp['rhs']
  assert D>0 and all(isinstance(x,int)and x>=0 for x in W)and i in removed
  checks=[]
  for ix,x in enumerate(raw):
   lhs=D*x[0]+sum(a*b for a,b in zip(W,x[1:]));assert lhs>=rhs
   checks.append({'signature_index':ix,'lhs':lhs,'rhs':rhs,'slack':lhs-rhs})
  N=8*rhs-sum(a*b for a,b in zip(W,st[i]['cap']));assert N>D*st[i]['h']
  assert N==sp['eight_factor_numerator'] and (N+D-1)//D==sp['ceil_lower_bound']
  receipts.append({**sp,'capacity':st[i]['cap'],'checked_all_raw_signatures':len(raw),'checks':checks})
 assert len(receipts)==20 and len(raw)==619
 dump(out/'integer_prices_20_states.json',receipts)
 no_price=sorted(set(removed)-{x['state']for x in specs})
 assert no_price==[1670,1788,1790,1859,1930,1978,1992]
 dump(out/'integer_DP_required_states.json',{'states':no_price,'continuous_prices_do_not_establish_the_needed_strict_bound':True,'formal_certificates':'all104_full_integer_cells.tsv + full_grid_dp.cpp'})
 return len(raw)*len(specs)


def finish(root,out,st,ids,raw):
 rec=read_fee_results(out/'final_fees104.txt',raw,st,ids);removed=[x['state']for x in rec if x['removed_by_fee_bound']]
 assert removed==EXPECTED_REMOVED
 # Independent all-cell DP validates every raw-signature minimum, without Pareto pruning.
 dp={};totalcells=0
 for line in(out/'full_DP_summary.tsv').read_text().splitlines()[1:]:
  i,h,e,grid,n,active,unique=map(int,line.split());assert n==9*grid and h==st[i]['h'];dp[i]=e;totalcells+=n
 assert set(dp)==set(ids) and totalcells==1203003
 assert all(dp[x['state']]==x['minimum_proxy_degree']for x in rec)
 remaining=[x for x in rec if not x['removed_by_fee_bound']]
 assert len(remaining)==77 and min(x['h']for x in remaining)==115
 assert [x['state']for x in remaining if x['h']==115]==[1679]
 dump(out/'all104_final_fee_receipts.json',rec);dump(out/'remaining77_weak_witnesses.json',remaining)
 keep={x['state']for x in remaining};ls=(root/'inputs/frontier104.tsv').read_text().splitlines()
 (out/'frontier77.tsv').write_text(ls[0]+'\n'+'\n'.join(l for l in ls[1:]if int(l.split()[0])in keep)+'\n')
 return {'input_frontier':104,'remaining_frontier':77,'removed_states':removed,'net_removed_states':27,
         'minimum_equality_h':115,'maximum_vertical_sum':75,'lowest_h_states':[1679],
         'raw_signature_count':619,'full_integer_DP_cells_checked':totalcells,'COVER8':True,'COVER7_proved':False,
         'H116_proved':False,'R7_unchanged':[3,4,5,6,7,8,9],'Lean':False,'repository_operations':False}


def next1679(out,st,raw):
 ss=multisets(raw,st[1679]['cap'],115);cpp=parse_cpp(out/'next1679_cpp.txt')[1679]
 assert ss==cpp and len(ss)==7170
 C=tuple(st[1679]['cap']);T=(4,0,0,2,1,0,0);records=[];patterns=set();denote=[]
 for i,s in enumerate(ss):
  used=tuple(sum(x[j+1]for x in s)for j in range(6));rem=tuple(a-b for a,b in zip(C,used))
  assert min(rem)>=0 and s.count(T)>=2
  e=sum(x[0]for x in s);patterns.add((115-e,rem))
  records.append({'index':i,'proxy_degree':e,'common_numerical_type_count':s.count(T),'cost_slack':rem,
                  'degree_slack':115-e,'capacity_saturated':not any(rem),
                  'if_all_common_type_preimages_have_degree_at_least10':e+6*s.count(T)})
 union=set();pre_patterns=[]
 for eslack,rem in sorted(patterns):
  local=[]
  for inc in itertools.product(*(range(0,v+1,2 if j%2==0 else 1)for j,v in enumerate(rem))):
   c=tuple(a+b for a,b in zip(T[1:],inc))
   for q in range(4,5+eslack):union.add((q,c));local.append((q,c))
  pre_patterns.append({'degree_slack':eslack,'cost_slack':rem,'all_individual_numerical_preimages':local})
 # These are full budget-allowed numerical preimages, not an existence classification.
 assert min(sum(x[0]for x in s)for s in ss)==99
 saturated=sum(x['capacity_saturated']for x in records);assert saturated==5567
 diag={'state':1679,'capacity':C,'h':115,'v':st[1679]['v'],'complete_multisets':7170,'complete_python_cpp_sets_equal':True,
       'minimum_proxy_degree':99,'saturated_multisets':5567,'unsaturated_multisets':1603,
       'common_numerical_type':T,'common_type_count_distribution':dict(Counter(x['common_numerical_type_count']for x in records)),
       'all_actual_factors_are_quartic_or_S5_claimed':False,
       'survivors_when_common_floor_is_5_through10':[sum(sum(x[0]for x in s)+(f-4)*s.count(T)<=115 for s in ss)for f in range(5,11)],
       'minimum_conditional_degree_at_floor10':min(x['if_all_common_type_preimages_have_degree_at_least10']for x in records),
       'distinct_individual_numerical_preimages':len(union),'preimage_max_degree':max(q for q,c in union),
       'status':'OPEN; counterfactual floor10 not proved; unsaturated cost increments retained'}
 assert diag['survivors_when_common_floor_is_5_through10']==[3548,1547,709,209,39,0]
 assert diag['minimum_conditional_degree_at_floor10']==117
 dump(out/'next1679_summary.json',diag);dump(out/'next1679_all_budget_records.json',records)
 dump(out/'next1679_complete_individual_preimages.json',{'union':sorted(union),'budget_patterns':pre_patterns,
      'only_numerical_necessary_preimages':True,'for_a_selected_occurrence_of_the_common_type':True,
      'simultaneous_factor_coexistence_not_asserted':True})
 return diag


def quadratic_statistics(gd,cases,out):
 ans=[]
 for name,q,d,k in cases:
  if 2 not in d:continue
  ri=d.index(2);ds=Counter();disc=Counter()
  for line in(gd/f'{name}.gates').read_text().splitlines():
   a=list(map(int,line.split()));assert len(a)==46
   L=a[13+ri];B=a[19+ri];assert L%120==0
   ds[120//math.gcd(B,120)]+=1;v=L*L-480*B
   cat='negative'if v<0 else'square'if math.isqrt(v)**2==v else'positive_nonsquare';disc[cat]+=1
  ans.append({'profile':name,'constant_denominator_histogram':dict(sorted(ds.items())),
              'discriminant_histogram':dict(disc),'no_real_root_or_split_requirement_used':True})
 assert len(ans)==2 and sum(sum(x['constant_denominator_histogram'].values())for x in ans)==9350
 dump(out,ans)
