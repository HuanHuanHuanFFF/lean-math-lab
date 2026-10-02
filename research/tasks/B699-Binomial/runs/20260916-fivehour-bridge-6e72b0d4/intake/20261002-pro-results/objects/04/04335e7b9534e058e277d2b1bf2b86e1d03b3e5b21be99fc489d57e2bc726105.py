"""Exact U10/LATE11 research certificates; only Python standard library.
The source-frontier and old safe-signature coverage are explicitly adopted.
This file never invokes Lean, a repository command, or the network.
"""
from __future__ import annotations
from pathlib import Path
from itertools import product
from collections import Counter
import hashlib,json
from frozen_capacity import all_states
from resource_core import load_sigs,multisets,parse_cpp
from exact_minors import integer_columns,jet,bareiss
U=(10,0,0,0,2,0,2)
V=(11,0,0,0,0,2,2)
T=(4,0,0,2,1,0,0)
EXPECTED_GATES=(16,336,194,6740,375,27390)
EXPECTED_REMOVED=(1816,1819,1939,2007)

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):
 p.parent.mkdir(parents=True,exist_ok=True)
 p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def write_sigs(p,raw):p.write_text(''.join(' '.join(map(str,x))+'\n'for x in raw))
def write_queries(p,ids,st):p.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
def splits(q,c):
 return [(q,tuple(d),tuple(x-2*y for x,y in zip(c,d)))for d in product(*(range(x//2+1)for x in c))if not any(c[j]-2*d[j]for j in (0,2,4))]
def strengthen(raw,target):
 assert raw.count(target)==1
 new=[];mp=[]
 for ix,a in enumerate(raw):
  start=len(new)
  if a==target:
   new.append((a[0]+1,*a[1:]))
   for j in range(6):
    x=list(a);x[j+1]+=1 if j%2 else 2;new.append(tuple(x))
  else:new.append(a)
  mp.append({'old_index':ix,'new_indices':list(range(start,len(new))),
             'changed':a==target})
 assert len(new)==len(raw)+6 and new.count(T)==raw.count(T)
 return new,mp

def check_input(root,cd):
 manifest=json.loads((root/'INPUT_SHA256.json').read_text())
 for name,h in manifest.items():assert sha(root/name)==h,('changed input',name)
 st=all_states();ids=[]
 for l in(root/'inputs/frontier32.tsv').read_text().splitlines()[1:]:
  i,h,E,v=l.split();i=int(i)
  assert st[i]['h']==int(h)and st[i]['E']==int(E)==0 and st[i]['v']==list(map(int,v.split(',')))
  ids.append(i)
 assert len(ids)==len(set(ids))==32 and min(st[i]['h']for i in ids)==127
 raw=load_sigs(root/'inputs/signatures649.txt');assert len(raw)==649
 cases=json.loads((root/'inputs/cases.json').read_text())
 want=sorted(splits(10,U[1:])+splits(11,V[1:]))
 actual=sorted((a['q'],tuple(a['d']),tuple(a['k']))for a in cases)
 assert actual==want and len(cases)==6
 for a in cases:
  assert a['c']==[2*d+k for d,k in zip(a['d'],a['k'])]
  assert max(a['d'])<=1 and sum(a['d'])<=2
 one,mp1=strengthen(raw,U);two,mp2=strengthen(one,V)
 assert(len(one),len(two))==(655,661)
 write_sigs(cd/'signatures655.txt',one);write_sigs(cd/'signatures661.txt',two)
 dump(cd/'U_seven_way_mapping.json',mp1);dump(cd/'V_seven_way_mapping.json',mp2)
 write_queries(cd/'queries32.txt',ids,st)
 write_queries(cd/'main1819.query.txt',[1819],st)
 write_queries(cd/'stage1_low.query.txt',[1814,1816,1825],st)
 write_queries(cd/'final_low.query.txt',[1814,1825],st)
 dump(cd/'input_reconstruction.json',{'input_frontier_count':32,'all_32_states_reconstructed_from_original_OFF_DIAG':[{'id':i,**st[i]}for i in ids],
      'global_signature_counts':[649,655,661],'four_U_splits':splits(10,U[1:]),'two_V_splits':splits(11,V[1:]),
      'state_specific_T_permissions':[],'no_row_has_quadratic_remainder':True})
 return st,ids,(raw,one,two),cases

def geometry(gd,cases,out):
 profiles=[];total=0;all_integral=True;full_gates={}
 for a,nexpected in zip(cases,EXPECTED_GATES):
  name=a['name'];g=(gd/f'{name}.gates').read_text().splitlines();alt=(gd/f'{name}.alt').read_text().splitlines()
  assert len(g)==len(set(g))==nexpected and sorted(g)==sorted(alt)
  rootmin=None;rootmax=None;collisions=0
  for line in g:
   z=list(map(int,line.split()));assert len(z)==46
   assert(z[0],z[1:7],z[7:13])==(a['q'],a['d'],a['k'])and not any(z[19:25])
   assert all(x%120==0 for x in z[13:19])
   ix=25
   for ri in range(6):
    r=ri+3;m=z[ix:ix+r//2+1];ix+=r//2+1
    assert sum(m)==a['q']-a['d'][ri]
    if a['d'][ri]:
     v=z[13+ri]//120;rootmin=v if rootmin is None else min(rootmin,v);rootmax=v if rootmax is None else max(rootmax,v)
     collisions+=any(v==s*(r-s)and m[s]>0 for s in range(len(m)))
  for p in(32749,32719):
   ms=(gd/f'{name}.{p}.minors').read_text().splitlines();ex=(gd/f'{name}.{p}.exceptions').read_text().splitlines()
   assert len(ms)==len(g)and not ex
   for ix,line in enumerate(ms):
    z=list(map(int,line.split()));assert z[0]==ix and z[1]==(a['q']-2)**2+1 and len(z)==z[1]+3 and 0<z[2]<p
  profiles.append({**a,'gate_count':len(g),'both_anchor_sets_equal':True,'columns':(a['q']-2)**2+1,
                   'nonzero_modular_minors_received':2*len(g),'residual_kernels':0,
                   'linear_remainder_values_min':rootmin,'linear_remainder_values_max':rootmax,
                   'permitted_collisions_with_positive_source_multiplicity':collisions})
  total+=len(g);full_gates[name]=g
 assert total==35051
 ans={'profiles':profiles,'new_exact_cost_pairs':2,'complete_delta_kappa_profiles':6,'root_configurations':total,
      'U10_configurations':sum(x['gate_count']for x in profiles if x['q']==10),
      'V11_configurations':sum(x['gate_count']for x in profiles if x['q']==11),
      'modular_nonzero_minors_received':2*total,'residual_kernels':0,'skipped_systems':0,
      'genus_filter':False,'absolute_irreducibility_assumed':False,'conjugate_components_not_filtered':True,
      'all_remainder_roots_integral_by_consecutive_anchor_proof':True,
      'quadratic_remainder_used':False,'reason':'Every row has Delta at most one. Cost2 at row8 does not permit Delta8=2.'}
 dump(out,ans);return ans

def exact_supplement(gd,cases,out):
 records=[]
 for a in cases:
  n=a['name'];g=(gd/f'{n}.gates').read_text().splitlines();ms=(gd/f'{n}.32719.minors').read_text().splitlines()
  for ix in(0,len(g)-1):
   num,size,record,*rows=map(int,ms[ix].split());assert num==ix
   cols,labels,m,k=integer_columns(g[ix]);assert size==len(cols)==len(rows)
   matrix=[]
   for rid in rows:
    r,s,i,j,pt=labels[rid]
    assert i+j<m[pt]or(2*s==r and i+2*j<2*m[pt]-k[r-3])
    matrix.append([jet(f,r,s,i,j)for f in cols])
   determinant,divisions=bareiss(matrix)
   assert determinant and determinant%32719==14400*record%32719
   records.append({'profile':n,'gate_index':ix,'size':size,'jet_rows':rows,
                   'exact_integer_determinant':str(determinant),'exact_divisions_checked':divisions,
                   'mod32719':determinant%32719})
 assert len(records)==12
 dump(out,{'integer_minors_completely_evaluated':12,'selection':'First and last gate in every one of six nonempty profiles.',
           'not_a_substitute_for_all_modular_certificates':True,'records':records})

def fee_receipts(path,raw,st):
 out=[]
 for l in path.read_text().splitlines():
  i,h,e,*seq=map(int,l.split());assert h==st[i]['h']and len(seq)==8
  selected=[raw[x]for x in seq];used=tuple(sum(x[j+1]for x in selected)for j in range(6))
  assert sum(x[0]for x in selected)==e and all(x<=y for x,y in zip(used,st[i]['cap']))
  out.append({'state':i,'h':h,'minimum_degree':e,'selected_signature_indices':seq,
              'weak_resource_witness':selected,'used_cost':used,'actual_factors_claimed':False})
 return out

def read_cells(path,st):
 grids={};count=0
 with path.open()as f:
  assert next(f).strip()=='state n c3 c4 c5 c6 c7 c8 minimum'
  for l in f:
   i,n,*v=map(int,l.split());c=tuple(v[:6]);e=v[6]
   assert 0<=n<=8 and all(0<=a<=b for a,b in zip(c,st[i]['cap']))
   key=(n,c);tab=grids.setdefault(i,{})
   assert key not in tab;tab[key]=e;count+=1
 for i,tab in grids.items():
  expected=9
  for x in st[i]['cap']:expected*=x+1
  assert len(tab)==expected
 return grids,count

def finish_ledger(root,st,ids,tables,cd):
 receipts=[];cell_counts=[]
 for tag,raw in zip(('baseline','U655','final'),tables):
  rec=fee_receipts(cd/f'{tag}.fees.txt',raw,st)
  assert [a['state']for a in rec]==ids
  cells,n=read_cells(cd/f'{tag}.cells.tsv',st);assert set(cells)==set(ids)
  for a in rec:assert cells[a['state']][8,tuple(st[a['state']]['cap'])]==a['minimum_degree']
  summaries=(cd/f'{tag}.grid_summary.tsv').read_text().splitlines()[1:]
  assert len(summaries)==len(ids)
  for l,a in zip(summaries,rec):
   i,h,e,g,c,*_=map(int,l.split());assert(i,h,e)==(a['state'],a['h'],a['minimum_degree'])and c==9*g
  receipts.append(rec);cell_counts.append(n)
 assert all(a['minimum_degree']<=a['h']for a in receipts[0])
 assert [a['state']for a in receipts[1]if a['minimum_degree']>a['h']]==[1819]
 removed=[a['state']for a in receipts[2]if a['minimum_degree']>a['h']]
 assert removed==list(EXPECTED_REMOVED)
 expected_min={1816:128,1819:131,1939:143,2007:149}
 assert all(a['minimum_degree']==expected_min[a['state']]for a in receipts[2]if a['state']in expected_min)
 rem=[i for i in ids if i not in removed];assert len(rem)==28
 lines=(root/'inputs/frontier32.tsv').read_text().splitlines()
 (cd/'frontier28.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])in rem)+'\n')
 dump(cd/'all_stage_state_receipts.json',{'baseline649':receipts[0],'after_U655':receipts[1],'final661':receipts[2]})
 ans={'input_frontier':32,'remaining_frontier':28,'removed_states':removed,'global_signature_counts':[649,655,661],
      'all_state_deletions':[{**a,'v':st[a['state']]['v'],'capacity':st[a['state']]['cap']}for a in receipts[2]if a['state']in removed],
      'minimum_equality_h':min(st[i]['h']for i in rem),'maximum_vertical_sum':max(sum(st[i]['v'])for i in rem),
      'lowest_states':[i for i in rem if st[i]['h']==127],
      'complete_DP_cells_compared_by_stage':cell_counts,'complete_DP_cells_compared':sum(cell_counts),
      'all_28_remaining_states_use_global661_only':True,'state_specific_T_permissions':[],
      'COVER8_retained':True,'COVER7_proved':False,'R7':[3,4,5,6,7,8,9]}
 assert ans['minimum_equality_h']==127 and ans['maximum_vertical_sum']==51 and ans['lowest_states']==[1814,1825]
 return ans

def full_groups(root,st,tables,cd):
 raw,one,two=tables
 old=parse_cpp(root/'inputs/old_h127.complete.txt')
 main=parse_cpp(cd/'main1819.complete.txt')
 g=multisets(raw,st[1819]['cap'],127)
 assert g==main[1819]==old[1819]and len(g)==3
 audit=[]
 for seq in g:
  used=tuple(sum(x[j+1]for x in seq)for j in range(6));assert used==tuple(st[1819]['cap'])
  e=sum(x[0]for x in seq);assert e==127 and seq.count(U)==3 and T not in seq
  audit.append({'full_group':seq,'base_degree':e,'U_occurrences':3,'proved_U11_degree_lower_bound':130,'used_cost':used})
 dump(cd/'1819_complete_elimination.json',{'state':1819,'three_full_groups_match_input_and_two_enumerators':True,'groups':audit,
        'no_T_used':True,'minimum_actual_degree_from_first_theorem':130})
 before=parse_cpp(cd/'stage1_low.complete.txt');before_summary=[]
 for i,nexpected in((1814,47),(1816,56),(1825,29959)):
  gg=multisets(one,st[i]['cap'],127);assert gg==before[i]and len(gg)==nexpected
  sat=sum(tuple(sum(x[j+1]for x in seq)for j in range(6))==tuple(st[i]['cap'])for seq in gg)
  before_summary.append({'state':i,'groups':len(gg),'saturated':sat,'unsaturated':len(gg)-sat,'minimum_degree':min(sum(x[0]for x in seq)for seq in gg)})
 assert before[1816]==old[1816]
 audit=[]
 for seq in before[1816]:
  e=sum(x[0]for x in seq);a=seq.count(V)
  assert a>=1 and tuple(sum(x[j+1]for x in seq)for j in range(6))==tuple(st[1816]['cap'])
  assert e+a>127
  audit.append({'full_group':seq,'base_degree':e,'V_occurrences':a,'proved_V12_lower_bound':e+a})
 assert min(a['proved_V12_lower_bound']for a in audit)==128
 dump(cd/'1816_complete_elimination.json',{'state':1816,'all_56_complete_groups':audit,'minimum_actual_degree':128,
      'occurrence_distribution':dict(Counter(a['V_occurrences']for a in audit))})
 dump(cd/'stage1_leverage_comparison.json',{'stage1_low_states':before_summary,'chosen_state':1816,
     'reason':'A single q11 exact-cost exclusion covers every saturated multiset; no U in its capacity and no T permission.',
     'target':V,'all_complete_groups_contain_target':True,'proof_needed_q':[11],
     'comparison_1814_has_no_single_universal_type':not set.intersection(*(set(g)for g in before[1814]))})
 final=parse_cpp(cd/'final_low.complete.txt');summary=[]
 for i,nexpected in((1814,27),(1825,30270)):
  gg=multisets(two,st[i]['cap'],127);assert gg==final[i]and len(gg)==nexpected
  sat=sum(tuple(sum(x[j+1]for x in seq)for j in range(6))==tuple(st[i]['cap'])for seq in gg)
  summary.append({'state':i,'h':127,'v':st[i]['v'],'capacity':st[i]['cap'],'complete_multisets':len(gg),
    'saturated':sat,'unsaturated':len(gg)-sat,'minimum_degree':min(sum(x[0]for x in seq)for seq in gg),
    'T_occurrence_distribution':dict(Counter(seq.count(T)for seq in gg)),'two_complete_enumerators_equal':True})
 dump(cd/'final_low_complete_summary.json',summary)
 # Explicit next obstruction, not a newly licensed fee.
 A=(13,0,0,0,0,0,4);B=(12,0,0,0,0,2,2);audit=[]
 for seq in final[1814]:
  e=sum(x[0]for x in seq)
  audit.append({'full_group':seq,'base_degree':e,'A_occurrences':seq.count(A),'B_occurrences':seq.count(B),
        'counterfactual_A14_total':e+seq.count(A),'counterfactual_A14_B13_total':e+seq.count(A)+seq.count(B)})
 residual=[a for a in audit if a['counterfactual_A14_total']<=127]
 assert len(residual)==1 and residual[0]['A_occurrences']==0 and residual[0]['base_degree']==127
 assert min(a['counterfactual_A14_B13_total']for a in audit)==128
 nextproofs=splits(13,A[1:])+splits(12,B[1:]);assert len(nextproofs)==5
 dump(cd/'next1814_counterfactual_only.json',{'state':1814,'all_27_groups_audited':audit,'A13_occurs_in_groups':26,
   'remaining_if_only_A13_excluded':residual,'A13_and_B12_exclusions_would_suffice':True,
   'minimum_counterfactual_total':128,'all_five_delta_kappa_splits':nextproofs,'geometric_claims_proved':False,
   'geometric_systems_executed':False,'warning':'The A q13 Delta8=2 branch has a genuine quadratic remainder; do not use the present Delta<=1 theorem for it.'})
 vals=[]
 for floor in(10,11):
  aa=[sum(x[0]for x in seq)+(floor-4)*seq.count(T)for seq in final[1825]]
  vals.append({'counterfactual_T_floor':floor,'minimum_degree':min(aa),'remaining_groups_at_most127':sum(v<=127 for v in aa)})
 assert vals==[{'counterfactual_T_floor':10,'minimum_degree':125,'remaining_groups_at_most127':71},
               {'counterfactual_T_floor':11,'minimum_degree':128,'remaining_groups_at_most127':0}]
 dump(cd/'next1825_counterfactual_only.json',{'state':1825,'complete_groups':30270,'unsaturated':6594,'diagnostics':vals,
      'T_floor_proved_for_this_state':False,'own_quotient_system_tested':False,'preimage_classification_completed_this_round':False,
      'warning':'All 6594 unsaturated groups permit true cost increases. No state-specific T floor is authorized.'})
 return {'1819_groups':3,'1816_groups':56,'both_main_complete_sets_match_frozen_input':True,'final_low_states':summary}
