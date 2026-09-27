"""Exact numerical preimages and state-specific use of the new classification.
The conditional e(T)=10 list is NOT a global safe signature update.
"""
from pathlib import Path
from itertools import product
from collections import Counter
import json
from resource_core import load_sigs,multisets,parse_cpp
from frozen_capacity import all_states,OFF,DIAG
T=(4,0,0,2,1,0,0)
EXPECTED_REMOVED=[1679,1702,1708,1751,1769,1775,1795,1842,1857,1875,1901,1903,1909,1914,1927,1947,1949,1989,1998,2016,2031]

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def write_sigs(p,rows):p.write_text(''.join(' '.join(map(str,r))+'\n'for r in rows))
def write_queries(p,ids,st):p.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
def init(root,fd):
 st=all_states();ids=[]
 for l in(root/'inputs/frontier77.tsv').read_text().splitlines()[1:]:
  i,h,E,v=l.split();i,h,E=int(i),int(h),int(E);v=list(map(int,v.split(',')))
  assert st[i]['h']==h and st[i]['v']==v and st[i]['E']==E==0;ids.append(i)
 assert len(ids)==len(set(ids))==77 and min(st[i]['h']for i in ids)==115
 raw=load_sigs(root/'inputs/signatures619.txt');assert len(raw)==619 and raw.count(T)==1
 conditional=[(10,*r[1:])if r==T else r for r in raw]
 write_sigs(fd/'CONDITIONAL_T10_NOT_GLOBAL.txt',conditional)
 dump(fd/'conditional_table_contract.json',{'global_safe_table_changed':False,'global_safe_table':'inputs/signatures619.txt','changed_index':raw.index(T),'old':T,'conditional_new':[10,*T[1:]],'activation_requires':'complete low-q cost domain check AND S5 quotient exclusion for the SAME state','state1679_all_T_degree_ge10_is_a_conclusion_not_assumption':True})
 write_queries(fd/'queries77.txt',ids,st);write_queries(fd/'query1679.txt',[1679],st)
 return st,ids,raw,conditional

def main_preimages(root,fd,st,raw):
 ss=multisets(raw,st[1679]['cap'],115)
 supplied=parse_cpp(root/'inputs/next1679_cpp.txt')[1679];cpp=parse_cpp(fd/'main1679_cpp.txt')[1679]
 assert ss==supplied==cpp and len(ss)==7170
 C=tuple(st[1679]['cap']);patterns=set();rows=[];allpre=set()
 for ix,s in enumerate(ss):
  e=sum(x[0]for x in s);used=tuple(sum(x[j+1]for x in s)for j in range(6));rem=tuple(a-b for a,b in zip(C,used));a=s.count(T)
  assert min(rem)>=0 and a>=2 and e<=115
  patterns.add((115-e,rem));bound=e+6*a
  assert bound>=117
  rows.append({'index':ix,'degree':e,'T_count':a,'degree_slack':115-e,'cost_slack':rem,'saturated':not any(rem),'if_all_actual_T_degrees_ge10':bound})
 for ds,rem in patterns:
  for inc in product(*(range(0,v+1,2 if j%2==0 else 1)for j,v in enumerate(rem))):
   c=tuple(a+b for a,b in zip(T[1:],inc))
   for q in range(4,5+ds):allpre.add((q,c))
 old=json.loads((root/'inputs/next1679_complete_individual_preimages.json').read_text())
 assert allpre=={(q,tuple(c))for q,c in old['union']} and len(allpre)==57
 sat=sum(r['saturated']for r in rows);assert sat==5567
 assert Counter(r['T_count']for r in rows)==Counter({3:4052,2:3118})
 counts=[sum(r['degree']+(q-4)*r['T_count']<=115 for r in rows)for q in(9,10)];assert counts==[39,0]
 dump(fd/'main1679_all_7170_checks.json',rows)
 dump(fd/'main1679_complete_preimages.json',{'all_pairs':sorted(allpre),'low_pairs':[x for x in sorted(allpre)if x[0]<10],'individual_not_simultaneous':True,'unsaturated_increments_retained':True})
 summary={'state':1679,'complete_multisets':7170,'python_cpp_frozen_sets_equal':True,'saturated':sat,'unsaturated':7170-sat,'T_count_distribution':dict(Counter(r['T_count']for r in rows)),'individual_pairs':57,'low_q_pairs':34,'low_to_high_q':[4,20],'degree_ge10_lower_bound':min(r['if_all_actual_T_degrees_ge10']for r in rows),'floor9_survivors':39,'floor10_survivors':0}
 dump(fd/'main1679_summary.json',summary)
 return {x for x in allpre if x[0]<10},summary

def check_profile_registry(root,fd,low_pairs):
 pp=set(low_pairs)|{(4,(0,0,2,3,0,0))};allprof=set()
 for q,c in pp:
  for d in product(*(range(v//2+1)for v in c)):
   k=tuple(v-2*a for v,a in zip(c,d))
   if any(k[j]for j in(0,2,4)):continue
   assert sum(d)<=2;allprof.add((q,tuple(d),k))
 reg=json.loads((root/'inputs/profiles.json').read_text())
 known={(q,tuple(d),tuple(k)):name for name,q,d,k in reg['adopted']}
 new={(q,tuple(d),tuple(k)):name for name,q,d,k in reg['new']}
 assert not(set(known)&set(new)) and set(known)|set(new)==allprof
 assert len(known)==15 and len(new)==33 and len(pp)==35
 frozen={ (q,tuple(d),tuple(k)):name for name,q,d,k in json.loads((root/'inputs/adopted_early2/low_case_profiles.json').read_text())}
 assert all(frozen[p]==name for p,name in known.items())
 classifications=[]
 for p in sorted(allprof):
  classifications.append({'q':p[0],'delta':p[1],'kappa':p[2],'profile':known.get(p,new.get(p)),'provenance':'adopted EARLY2-S5 geometric conclusion only; no old state-zero-kernel adopted'if p in known else'new profile generated and certified in this round'})
 dump(fd/'complete_profile_cover.json',{'pairs':sorted(pp),'profile_count':len(allprof),'adopted_profiles':15,'new_profiles':33,'profiles':classifications,'scope':'on the listed pairs every irreducible completion is either impossible or an S5 quartic; not a claim about all q<=9 factors'})
 return pp,reg

def read_fees(p,raw,st,ids):
 records=[]
 for l in p.read_text().splitlines():
  i,h,e,*seq=map(int,l.split());assert i in ids and h==st[i]['h'] and len(seq)==8
  witness=[raw[j]for j in seq];assert sum(x[0]for x in witness)==e
  used=[sum(x[j+1]for x in witness)for j in range(6)]
  assert all(a<=b for a,b in zip(used,st[i]['cap']))
  records.append({'state':i,'h':h,'minimum':e,'indices':seq,'weak_witness':witness,'cost':used,'actual_realization_claimed':False})
 assert [r['state']for r in records]==ids
 return records

def select_states(fd,st,ids,conditional):
 rec=read_fees(fd/'conditional_fees77.txt',conditional,st,ids)
 selected=[r['state']for r in rec if r['minimum']>r['h']]
 assert selected==EXPECTED_REMOVED
 write_queries(fd/'selected_queries.txt',selected,st)
 dump(fd/'conditional_fee_diagnostic.json',{'activated_as_proof_yet':False,'conditional_candidates':selected,'all77':rec})
 return selected

def load_grid_summary(p):
 out={};total=0
 for line in p.read_text().splitlines()[1:]:
  i,h,e,grid,cells,active,unique=map(int,line.split());assert cells==9*grid
  out[i]=(h,e,grid,cells);total+=cells
 return out,total

def low_domains(fd,st,selected,paircover):
 table={}
 for line in(fd/'original_selected_full_cells.tsv').read_text().splitlines()[1:]:
  i,n,*rest=map(int,line.split())
  if n==7:table[i,tuple(rest[:6])]=rest[6]
 records=[];allcount=0
 for i in selected:
  C=st[i]['cap'];h=st[i]['h'];rows=[];admitted=[]
  for c in product(*(range(T[j+1],C[j]+1,2 if j%2==0 else 1)for j in range(6))):
   remainder=tuple(a-b for a,b in zip(C,c));minimum=table[i,remainder]
   allowed=list(range(4,min(9,h-minimum)+1))
   rows.append({'actual_cost':c,'other7_minimum_proxy_degree':minimum,'allowed_q_below10':allowed})
   for q in allowed:
    assert(q,c)in paircover,(i,q,c);admitted.append((q,c))
  records.append({'state':i,'h':h,'capacity':C,'all_possible_low_q_pairs':sorted(admitted),'pair_count':len(admitted),'all_cost_tests':rows,'covered_by_geometric_pair_registry':True})
  allcount+=len(admitted)
 assert next(r['pair_count']for r in records if r['state']==1679)==34
 dump(fd/'all_selected_complete_low_domains.json',records)
 return records,allcount

def make_cofactor_cases(st,selected,cd):
 U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0);records=[]
 for i in selected:
  s=st[i];e=s['h']-4;ls=[str(e)];rr=[]
  for ri,r in enumerate(range(3,9)):
   for a in range(r//2+1):
    diag=r==2*a;original=max(0,(DIAG[ri]if diag else OFF[ri][a])-s['v'][ri]);upper=WU[ri]if diag else U[ri][a];order=max(0,original-upper)
    ls.append(f'{r} {a} {order}');rr.append({'r':r,'s':a,'type':'weighted'if diag else'ordinary','Gbar_lower':original,'S5_uniform_upper':upper,'quotient_lower':order})
  (cd/f'{i}.case').write_text('\n'.join(ls)+'\n')
  records.append({'state':i,'h':s['h'],'v':s['v'],'e_quotient':e,'D_quotient':2*e,'source_orders':rr,'t_nonzero_and_same_state_required':True})
 dump(cd/'all_current_state_quotient_inputs.json',records);return records

def finish(root,fd,st,ids,raw,conditional,selected):
 orig=read_fees(fd/'original_fees77.txt',raw,st,ids);cond=read_fees(fd/'conditional_fees77.txt',conditional,st,ids)
 summary,total=load_grid_summary(fd/'conditional_full_DP_summary.tsv');assert set(summary)==set(ids)
 assert all(summary[r['state']][1]==r['minimum']for r in cond)
 sm0,total0=load_grid_summary(fd/'original_selected_DP_summary.tsv');assert set(sm0)==set(selected)
 assert all(sm0[r['state']][1]==r['minimum']for r in orig if r['state']in sm0)
 keep=[i for i in ids if i not in selected];assert len(keep)==56
 assert min(st[i]['h']for i in keep)==117
 low=[i for i in keep if st[i]['h']==117];assert low==[1699,1701,1704]
 rows=(root/'inputs/frontier77.tsv').read_text().splitlines()
 (fd/'frontier56.tsv').write_text(rows[0]+'\n'+'\n'.join(l for l in rows[1:]if int(l.split()[0])in keep)+'\n')
 dump(fd/'remaining56_original_table_weak_witnesses.json',[r for r in orig if r['state']in keep])
 assert all(r['minimum']<=r['h']for r in orig)
 dump(fd/'activated_state_specific_T10_proofs.json',{'global_signature_table':'unchanged 619','activation_states':selected,'all_current_S5_quotient_modules_zero_required':True,'all_low_domains_covered_required':True,'exact_conditional_minima':[r for r in cond if r['state']in selected]})
 write_queries(fd/'next_h117_queries.txt',low,st)
 return {'input_frontier':77,'remaining_frontier':56,'net_removed':21,'removed_states':selected,'COVER8':True,'COVER7_proved':False,'minimum_equality_h':117,'maximum_vertical_sum':71,'lowest_h_states':low,'global_signature_count':619,'global_table_strengthened':False,'conditional_DP_cells':total,'original_selected_DP_cells':total0,'R7_unchanged':[3,4,5,6,7,8,9],'original_n_absolute_bound':None,'Lean':False,'strict_NC_descent':False,'repository_operations':False}

def next_frontier(fd,st,raw):
 cpp=parse_cpp(fd/'next_h117_cpp.txt');summary=[]
 for i in(1699,1701,1704):
  ss=multisets(raw,st[i]['cap'],117);assert ss==cpp[i]
  C=tuple(st[i]['cap']);counts=Counter(s.count(T)for s in ss)
  sat=sum(tuple(sum(x[j+1]for x in s)for j in range(6))==C for s in ss)
  conditional={f:sum(sum(x[0]for x in s)+(f-4)*s.count(T)<=117 for s in ss)for f in (9,10,11)}
  rec={'state':i,'h':117,'v':st[i]['v'],'capacity':C,'complete_multisets':len(ss),'minimum_proxy_degree':min(sum(x[0]for x in s)for s in ss),'saturated':sat,'unsaturated':len(ss)-sat,'T_count_distribution':dict(counts),'survivors_under_counterfactual_T_floor':conditional,'complete_python_cpp_sets_equal':True,'states_still_open':True}
  rec['counterfactual_T_floor_minima']={f:min(sum(x[0]for x in g)+(f-4)*g.count(T)for g in ss)for f in(10,11)}
  if i==1704:
   survivors=[g for g in ss if sum(x[0]for x in g)+6*g.count(T)<=117]
   assert len(survivors)==6 and conditional[11]==0 and rec['counterfactual_T_floor_minima'][11]==119
   dump(fd/'next1704_six_T10_counterfactual_survivors.json',{'state':1704,'assumption_T_floor10_not_proved_for_this_state':True,'six_complete_multisets':survivors,'all_original_degree105':all(sum(x[0]for x in g)==105 for g in survivors),'all_two_T':all(g.count(T)==2 for g in survivors),'floor11_would_close_all3128':True,'floor11_minimum119':True,'neither_floor_is_a_proved_geometric_result':True})
  summary.append(rec)
 dump(fd/'next_h117_complete_summary.json',summary)
 return summary
