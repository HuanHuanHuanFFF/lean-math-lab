"""Current round only: genus-free low-cost classification and scoped cofactor fees.
All arithmetic here is integer/rational. No repository, Lean, network, or CAS.
"""
from pathlib import Path
from itertools import product
from collections import Counter
from fractions import Fraction
import json,hashlib
from frozen_capacity import all_states,OFF,DIAG
from resource_core import load_sigs,multisets,parse_cpp
from exact_minors import integer_columns,jet,bareiss
from s5_source_bounds import source_bounds
T=(4,0,0,2,1,0,0)
LICENSED=(1794,2017)
NEXT=(1814,1816,1819,1825)
EXPECTED_GATES=[104,874,0,0,15,4370,11,53,12996]

def dump(p,x):
 p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def writesigs(p,raw):p.write_text(''.join(' '.join(map(str,x))+'\n'for x in raw))
def writequeries(p,ids,st):p.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
def splits(q,c):
 return [[q,list(d),[a-2*b for a,b in zip(c,d)]]for d in product(*(range(x//2+1)for x in c))if not any((c[j]-2*d[j]) for j in (0,2,4))]

def load(root,cd):
 st=all_states();ids=[]
 for l in(root/'inputs/frontier34.tsv').read_text().splitlines()[1:]:
  i,h,E,v=l.split();i=int(i);assert st[i]['h']==int(h) and st[i]['E']==int(E)==0 and st[i]['v']==list(map(int,v.split(',')));ids.append(i)
 assert len(ids)==len(set(ids))==34 and min(st[i]['h']for i in ids)==125
 raw=load_sigs(root/'inputs/signatures649.txt');assert len(raw)==649 and raw.count(T)==1
 old=json.loads((root/'inputs/LOW_T43_cover.json').read_text());cover={(q,tuple(c))for q,c in old['pairs']};assert len(cover)==43
 cases=json.loads((root/'inputs/new_cases.json').read_text());new={(x['q'],tuple(x['c']))for x in cases}
 assert len(new)==7 and not new&cover
 want=sorted((q,tuple(d),tuple(k))for q,c in new for _,d,k in splits(q,c))
 actual=sorted((a['q'],tuple(a['d']),tuple(a['k']))for a in cases);assert want==actual and len(cases)==9
 writequeries(cd/'queries34.txt',ids,st);writequeries(cd/'licensed_queries.txt',LICENSED,st);writequeries(cd/'next_queries.txt',NEXT,st)
 writesigs(cd/'conditional_T11.txt',[(11,*x[1:])if x==T else x for x in raw])
 dump(cd/'inputs_checked.json',{'states':34,'global_signatures':649,'licensed_states':list(LICENSED),'new_pairs':sorted(new),'new_profiles':actual,'source_states':[st[i]for i in ids]})
 dump(cd/'LOW_T50_cover.json',{'pairs':sorted(cover|new),'total_pairs':50,'adopted_pairs':43,'new_excluded_pairs':sorted(new),'adopted_profiles':sum(len(splits(q,c))for q,c in cover),'new_profiles':9,'total_profiles':sum(len(splits(q,c))for q,c in cover|new),'classification':'Only the adopted S5 family or the adopted F_star; each of the seven new pairs is empty even without a genus hypothesis, if no source-line factor is present.','F_star_only_possible_pair':old['F_star_only_possible_pair'],'not_a_complete_classification_of_all_low_degrees':True})
 return st,ids,raw,cover|new,cases

def geometry_stats(gd,cases,out):
 rec=[];rational=0;negative=0;total=0
 for a,nexpected in zip(cases,EXPECTED_GATES):
  n=a['name'];g=(gd/f'{n}.gates').read_text().splitlines();alt=(gd/f'{n}.alt').read_text().splitlines()
  assert len(g)==len(set(g))==nexpected and sorted(g)==sorted(alt)
  nr=nd=0
  for line in g:
   v=list(map(int,line.split()));assert len(v)==46 and v[0]==a['q'] and v[1:7]==a['d'] and v[7:13]==a['k']
   for ri in range(6):
    if a['d'][ri]==2:
     nr+=(v[19+ri]%120!=0);nd+=(v[13+ri]**2-480*v[19+ri]<0)
  for prime in(32749,32719):
   m=(gd/f'{n}.{prime}.minors').read_text().splitlines();ex=(gd/f'{n}.{prime}.exceptions').read_text().splitlines();assert len(m)==len(g) and not ex
   assert [int(x.split()[0])for x in m]==list(range(len(g)))
  rec.append({**a,'complete_gate_count':len(g),'columns':(a['q']-2)**2+1,'both_anchor_sets_equal':True,'rational_quadratic_constants':nr,'negative_quadratic_discriminants':nd,'modular_nonzero_minors':2*len(g),'exception_count':0,'genus_filter_used':False})
  total+=len(g);rational+=nr;negative+=nd
 assert total==18423
 result={'new_profiles':9,'total_gates':total,'total_nonzero_modular_minors':2*total,'residual_kernels':0,'genus_used':False,'absolute_irreducibility_assumed':False,'rational_quadratic_constants':rational,'negative_quadratic_discriminants':negative,'profiles':rec}
 dump(out,result);return result

def exact_supplement(gd,cases,out):
 records=[]
 for a in cases:
  n=a['name'];g=(gd/f'{n}.gates').read_text().splitlines();ms=(gd/f'{n}.32719.minors').read_text().splitlines()
  if not g:continue
  indices=range(len(g))if a['q']==4 else [0]
  for ix in indices:
   num,size,record,*ids=map(int,ms[ix].split());assert num==ix
   cols,labels,m,k=integer_columns(g[ix]);assert size==len(cols)==len(ids)
   matrix=[]
   for rid in ids:
    r,s,i,j,pt=labels[rid];assert i+j<m[pt]or(2*s==r and i+2*j<2*m[pt]-k[r-3]);matrix.append([jet(f,r,s,i,j)for f in cols])
   det,checks=bareiss(matrix);assert det and det%32719==14400*record%32719
   records.append({'profile':n,'gate':ix,'size':size,'jet_rows':ids,'integer_determinant':str(det),'exact_divisions':checks,'mod32719':det%32719})
 assert len(records)==110
 dump(out,{'count':len(records),'all_q4_gates_checked':104,'records':records})

def cofactor_cases(st,cd):
 bounds=source_bounds(cd);cases=[]
 for i in LICENSED:
  s=st[i];e=s['h']-4;lines=[str(e)];pts=[];n=0
  for b in bounds:
   r,t=b['r'],b['s'];center=2*t==r;lo=max(0,(DIAG[r-3]if center else OFF[r-3][t])-s['v'][r-3]);m=max(0,lo-b['upper']);lines.append(f'{r} {t} {m}')
   n+=sum(max(m-(2 if center else 1)*j,0)for j in range(m));pts.append({'r':r,'s':t,'Gbar_lower':lo,'S5_upper':b['upper'],'Q_lower':m})
  (cd/f'{i}.case').write_text('\n'.join(lines)+'\n');cases.append({'state':i,'h':s['h'],'v':s['v'],'e':e,'D':2*e,'constraints':n,'points':pts})
 assert cases[0]['constraints']==14936 and cases[1]['constraints']==21334
 dump(cd/'cofactor_cases.json',cases);return cases

def cofactor_summary(cd,cases,out):
 rec=[]
 for a in cases:
  jobs=[(257,0),(257,1),(263,0),(263,1)]if a['state']==1794 else [(257,0)]
  for p,r in jobs:
   path=cd/f"{a['state']}.p{p}.r{r}.trace";ls=path.read_text().splitlines();weights=list(map(int,ls[-1].split()[1:]));assert ls[-1].startswith('weights ')
   assert len(weights)==a['e']+1 and min(weights)>a['D'];assert len(ls)==a['constraints']+2
   rec.append({'state':a['state'],'prime':p,'reverse_sources':r,'constraints':a['constraints'],'basis_count':len(weights),'minimum_weight':min(weights),'maximum_weight':max(weights),'bounded_nullity':sum(max(0,a['D']-x+1)for x in weights),'trace_sha256':sha(path)})
 dump(out,{'different_systems':2,'generated_and_received_traces':5,'records':rec})
 return rec

def grids(p):
 M={};count=0
 for line in p.read_text().splitlines()[1:]:
  i,n,*x=map(int,line.split());count+=1
  if n==7:M[i,tuple(x[:6])]=x[6]
 return M,count

def preimages(root,st,raw,cover,cd):
 M,_=grids(cd/'baseline.cells.tsv');new={(a['q'],tuple(a['c']))for a in json.loads((root/'inputs/new_cases.json').read_text())};old=cover-new;records=[]
 for i in LICENSED:
  s=st[i];c=s['cap'];tests=[];pairs=set()
  for co in product(*(range(T[j+1],c[j]+1,2 if j%2==0 else 1)for j in range(6))):
   mm=M[i,tuple(a-b for a,b in zip(c,co))];qs=list(range(4,min(10,s['h']-mm)+1));pairs.update((q,co)for q in qs);tests.append({'actual_cost':co,'M7':mm,'all_q_below11':qs})
  assert pairs<=cover and (4,(0,2,2,1,0,0))not in pairs
  assert len(pairs)==(36 if i==1794 else 19)
  records.append({'state':i,'floor':11,'all_cost_tests':tests,'pairs':sorted(pairs),'pair_count':len(pairs),'new_excluded_pairs_used':sorted(pairs&new),'adopted_pairs_used':sorted(pairs&old),'profiles':[x for q,co in sorted(pairs)for x in splits(q,co)],'F_star_absent':True,'S5_cofactor_required_for_this_state':True})
 dump(cd/'complete_licensed_preimages.json',records);return records

def main_groups(root,st,raw,cd):
 gs=multisets(raw,st[1794]['cap'],125);cpp=parse_cpp(cd/'1794.complete.txt').get(1794,[]);frozen=parse_cpp(root/'inputs/baseline1794_complete.txt')[1794]
 assert gs==cpp==frozen and len(gs)==3778
 cap=st[1794]['cap'];rows=[];pre=set()
 for ix,g in enumerate(gs):
  e=sum(x[0]for x in g);r=tuple(v-sum(x[j+1]for x in g)for j,v in enumerate(cap));nt=g.count(T);assert nt>=1
  rows.append({'index':ix,'proxy_degree':e,'T_occurrences':nt,'cost_slack':r,'under_T10':e+6*nt,'under_proved_T11':e+7*nt})
  for inc in product(*(range(0,x+1,2 if j%2==0 else 1)for j,x in enumerate(r))):
   co=tuple(x+y for x,y in zip(T[1:],inc));pre.update((q,co)for q in range(4,min(10,4+125-e)+1))
 expected={(q,tuple(c))for q,c in json.loads((cd/'complete_licensed_preimages.json').read_text())[0]['pairs']};assert pre==expected
 assert sum(not any(r['cost_slack'])for r in rows)==2990 and Counter(r['T_occurrences']for r in rows)==Counter({3:2049,2:1729})
 assert min(r['under_proved_T11']for r in rows)==128
 surv=[g for g,r in zip(gs,rows)if r['under_T10']<=125];assert len(surv)==1
 dump(cd/'1794_all3778_budget_checks.json',rows);dump(cd/'1794_T10_boundary.json',{'counterfactual_only':True,'surviving_groups':surv,'T10_is_insufficient':True})
 return {'state':1794,'groups':3778,'saturated':2990,'unsaturated':788,'minimum_proxy_degree':107,'T_multiplicities':{3:2049,2:1729},'minimum_after_proved_T11':128,'preimage_slack_union_equals_full_M7_enumeration':True}

def fee_receipts(path,raw,st):
 rec=[]
 for line in path.read_text().splitlines():
  i,h,e,*seq=map(int,line.split());assert h==st[i]['h']and len(seq)==8;sel=[raw[x]for x in seq];used=[sum(x[j+1]for x in sel)for j in range(6)]
  assert sum(x[0]for x in sel)==e and all(x<=c for x,c in zip(used,st[i]['cap']))
  rec.append({'state':i,'h':h,'minimum_degree':e,'signature_indices':seq,'weak_resource_witness':sel,'used_cost':used,'actual_factors_claimed':False})
 return rec

def finish_ledger(root,st,ids,raw,cd):
 base=fee_receipts(cd/'baseline.fees.txt',raw,st);rr=[(11,*x[1:])if x==T else x for x in raw];cond=fee_receipts(cd/'licensed.fees.txt',rr,st)
 assert [a['state']for a in base]==ids and [a['state']for a in cond]==list(LICENSED)
 assert all(a['minimum_degree']<=a['h']for a in base)
 lookup={a['state']:a for a in cond};final=[dict(lookup.get(a['state'],a),fee_scope=('state-specific T11'if a['state']in LICENSED else'global649 only'))for a in base]
 removed=[a['state']for a in final if a['minimum_degree']>a['h']];assert removed==[1794,2017]
 assert lookup[1794]['minimum_degree']==128 and lookup[2017]['minimum_degree']==150
 for path,rec in [(cd/'baseline.grid_summary.tsv',base),(cd/'licensed.grid_summary.tsv',cond)]:
  lines=path.read_text().splitlines()[1:];assert len(lines)==len(rec)
  for l,a in zip(lines,rec):
   i,h,e,g,c,*_=map(int,l.split());assert(i,h,e)==(a['state'],a['h'],a['minimum_degree'])and c==9*g
 _,c0=grids(cd/'baseline.cells.tsv');_,c1=grids(cd/'licensed.cells.tsv');assert c0==335565 and c1==15066
 rem=[i for i in ids if i not in removed];assert len(rem)==32 and min(st[i]['h']for i in rem)==127
 lines=(root/'inputs/frontier34.tsv').read_text().splitlines();(cd/'frontier32.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])in rem)+'\n')
 dump(cd/'state_receipts.json',final)
 return {'input_states':34,'remaining_states':32,'removed_states':removed,'global_signature_count':649,'global_signature_table_changed':False,'state_specific_floors_used':{str(i):11 for i in LICENSED},'remaining_states_with_T_license':[],'minimum_equality_h':127,'maximum_vertical_sum':51,'minimum_h_states':[i for i in rem if st[i]['h']==127],'full_integer_DP_cells_compared':c0+c1,'baseline_cells':c0,'licensed_cells':c1,'COVER8_retained':True,'COVER7_proved':False,'R7':[3,4,5,6,7,8,9]}

def next_groups(st,raw,cd):
 cpp=parse_cpp(cd/'next_h127.complete.txt');rec=[]
 for i,expected in zip(NEXT,(47,56,3,29830)):
  gs=multisets(raw,st[i]['cap'],127);assert gs==cpp[i]and len(gs)==expected
  sat=sum(tuple(sum(x[j+1]for x in g)for j in range(6))==tuple(st[i]['cap'])for g in gs)
  rec.append({'state':i,'h':127,'v':st[i]['v'],'capacity':st[i]['cap'],'complete_groups':len(gs),'saturated':sat,'unsaturated':len(gs)-sat,'minimum_degree':min(sum(x[0]for x in g)for g in gs),'T_count_distribution':dict(Counter(g.count(T)for g in gs)),'own_S5_quotient_tested_this_round':False})
 target=(10,0,0,0,2,0,2);g=cpp[1819];checks=[]
 for seq in g:
  assert seq.count(target)==3 and sum(x[0]for x in seq)==127
  checks.append({'group':seq,'target_occurrences':3,'old_total':127,'counterfactual_target_floor11_total':130})
 dks=splits(10,target[1:]);assert len(dks)==4
 dump(cd/'next_h127_complete_summary.json',rec)
 dump(cd/'next1819_counterfactual_only.json',{'state':1819,'all_three_complete_groups':checks,'target':target,'all_true_delta_kappa_splits':dks,'target_exclusion_proved':False,'any_geometry_tests_executed_for_this_target':False,'all_groups_saturated':True,'no_T_proxy_in_any_group':all(T not in seq for seq in g),'warning':'Fee gain only. Must test all four q10 geometric profiles; no transfer of q8/9 or other-state kernels.'})
 return rec
