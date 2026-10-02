"""TAIL13 + MIX12: exact current-round certificates, frozen FRONTIER28.
Only standard-library integer/rational arithmetic. No Lean or repository operation.
The geometric proof additionally uses the explicitly cited genus theorem, after
row-wise Galois divisibility has PROVED absolute irreducibility in these profiles.
"""
from __future__ import annotations
from pathlib import Path
from itertools import product
from collections import Counter
from functools import lru_cache
from math import gcd
import hashlib,json
from frozen_capacity import all_states
from resource_core import load_sigs,multisets,parse_cpp
from exact_minors import integer_columns,jet,bareiss
A=(13,0,0,0,0,0,4)
B=(12,0,0,0,0,2,2)
T=(4,0,0,2,1,0,0)
EXPECTED_GATES=(3,119,89060,9,1017)
EXPECTED_REMOVED=(1814,)

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):
 p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
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
  mp.append({'old_index':ix,'new_indices':list(range(start,len(new))),'changed':a==target})
 assert len(new)==len(raw)+6 and new.count(T)==raw.count(T)
 return new,mp

def check_input(root,cd):
 for name,h in json.loads((root/'INPUT_SHA256.json').read_text()).items():assert sha(root/name)==h,('changed input',name)
 st=all_states();ids=[]
 for l in(root/'inputs/frontier28.tsv').read_text().splitlines()[1:]:
  i,h,E,v=l.split();i=int(i)
  assert st[i]['h']==int(h)and st[i]['E']==int(E)==0 and st[i]['v']==list(map(int,v.split(',')))
  ids.append(i)
 assert len(ids)==len(set(ids))==28 and min(st[i]['h']for i in ids)==127
 raw=load_sigs(root/'inputs/signatures661.txt');assert len(raw)==661
 cases=json.loads((root/'inputs/cases.json').read_text())
 assert sorted((a['q'],tuple(a['d']),tuple(a['k']))for a in cases)==sorted(splits(13,A[1:])+splits(12,B[1:]))
 assert len(cases)==5
 component_records=[]
 for a in cases:
  assert a['c']==[2*d+k for d,k in zip(a['d'],a['k'])]
  divs=[d for d in range(1,a['q']+1)if a['q']%d==0 and all(x%d==0 for x in a['d']+a['k'])]
  assert divs==[1]
  component_records.append({'profile':a['name'],'q':a['q'],'deltas':a['d'],'kappas':a['k'],'all_divisors_compatible_with_rational_source_orders':divs,'absolute_irreducibility_deduced_not_assumed':True})
 one,mp1=strengthen(raw,A);two,mp2=strengthen(one,B)
 assert(len(one),len(two))==(667,673)
 write_sigs(cd/'signatures667.txt',one);write_sigs(cd/'signatures673.txt',two)
 dump(cd/'A_seven_way_mapping.json',mp1);dump(cd/'B_seven_way_mapping.json',mp2)
 write_queries(cd/'queries28.txt',ids,st)
 write_queries(cd/'main1814.query.txt',[1814],st)
 write_queries(cd/'stage1_1814.query.txt',[1814],st)
 write_queries(cd/'final_low.query.txt',[1814,1825],st)
 dump(cd/'input_reconstruction.json',{'input_states':[st[i]for i in ids],'global_signature_counts':[661,667,673],'state_specific_T_permissions':[]})
 dump(cd/'component_divisibility.json',{'lemma':'Every absolute component orbit size divides q, every Delta_r and every kappa_r.','profiles':component_records,'genus_applied_only_after_d_equals_one':True})
 return st,ids,(raw,one,two),cases

def geometry(gd,cases,out):
 profiles=[];total=0;negatives=0;fractional=0
 for a,nexpected in zip(cases,EXPECTED_GATES):
  name=a['name'];g=(gd/f'{name}.gates').read_text().splitlines();alt=(gd/f'{name}.alt').read_text().splitlines()
  assert len(g)==len(set(g))==nexpected and sorted(g)==sorted(alt)
  neg=frac=0;genus_values=[];negative_example=None
  for ix,line in enumerate(g):
   z=list(map(int,line.split()));assert len(z)==46 and (z[0],z[1:7],z[7:13])==(a['q'],a['d'],a['k'])
   assert all(x%120==0 for x in z[13:25]) # follows from consecutive saturated anchors for these five profiles
   pt=25;gcost=0
   for ri in range(6):
    r=ri+3;m=z[pt:pt+r//2+1];pt+=r//2+1
    assert sum(m)==a['q']-a['d'][ri]
    gcost+=sum(v*(v-1)//2 for v in m)
    if r%2==0:
     t=m[-1]-a['k'][ri];assert t>=0;gcost+=t*(t-1)//2
    if a['d'][ri]==2:
     frac+=z[19+ri]%120!=0
     disc=z[13+ri]**2-480*z[19+ri]
     if disc<0:
      neg+=1
      if negative_example is None:negative_example={'gate':ix,'L':z[13+ri]//120,'B':z[19+ri]//120,'discriminant':disc//14400,'full_gate':z}
   assert gcost<=(a['q']-1)**2;genus_values.append(gcost)
  for p in(32749,32719):
   ms=(gd/f'{name}.{p}.minors').read_text().splitlines();ex=(gd/f'{name}.{p}.exceptions').read_text().splitlines()
   assert len(ms)==len(g)and not ex
   for ix,line in enumerate(ms):
    z=list(map(int,line.split()));assert z[0]==ix and z[1]==(a['q']-2)**2+1 and len(z)==z[1]+3 and 0<z[2]<p
  profiles.append({**a,'gate_count':len(g),'both_anchor_sets_equal':True,'columns':(a['q']-2)**2+1,'nonzero_modular_minors_received':2*len(g),'residual_kernels':0,'genus_lower_bound_min':min(genus_values),'genus_lower_bound_max':max(genus_values),'virtual_genus':(a['q']-1)**2,'negative_quadratic_discriminants':neg,'nonintegral_quadratic_constants':frac,'negative_quadratic_example':negative_example})
  total+=len(g);negatives+=neg;fractional+=frac
 assert total==90208 and fractional==0
 ans={'profiles':profiles,'new_exact_cost_pairs':2,'complete_profiles':5,'root_configurations':total,'TAIL13_configurations':sum(x['gate_count']for x in profiles if x['q']==13),'MIX12_configurations':sum(x['gate_count']for x in profiles if x['q']==12),'modular_nonzero_minors_received':2*total,'residual_kernels':0,'skipped_systems':0,'genus_filter':True,'absolute_irreducibility_assumed':False,'absolute_irreducibility_proved_by_rowwise_component_gcd':True,'quadratic_remainder_retained':True,'nonintegral_quadratic_constants':fractional,'negative_quadratic_discriminants_retained':negatives,'all_remainder_coefficients_integral_by_consecutive_anchor_proof':True}
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
    r,s,i,j,pt=labels[rid];assert i+j<m[pt]or(2*s==r and i+2*j<2*m[pt]-k[r-3]);matrix.append([jet(f,r,s,i,j)for f in cols])
   det,divisions=bareiss(matrix);assert det and det%32719==14400*record%32719
   records.append({'profile':n,'gate_index':ix,'size':size,'jet_rows':rows,'exact_integer_determinant':str(det),'exact_divisions_checked':divisions,'mod32719':det%32719})
 assert len(records)==10
 dump(out,{'integer_minors_completely_evaluated':10,'selection':'First and last gate in all five nonempty profiles.','not_a_substitute_for_full_modular_certificates':True,'records':records})

def fee_receipts(path,raw,st):
 out=[]
 for l in path.read_text().splitlines():
  i,h,e,*seq=map(int,l.split());assert h==st[i]['h']and len(seq)==8
  selected=[raw[x]for x in seq];used=tuple(sum(x[j+1]for x in selected)for j in range(6))
  assert sum(x[0]for x in selected)==e and all(x<=y for x,y in zip(used,st[i]['cap']))
  out.append({'state':i,'h':h,'minimum_degree':e,'selected_signature_indices':seq,'weak_resource_witness':selected,'used_cost':used,'actual_factors_claimed':False})
 return out

def read_cells(path,st):
 grids={};count=0
 with path.open()as f:
  assert next(f).strip()=='state n c3 c4 c5 c6 c7 c8 minimum'
  for l in f:
   i,n,*v=map(int,l.split());cap=tuple(v[:6]);e=v[6]
   assert 0<=n<=8 and all(0<=a<=b for a,b in zip(cap,st[i]['cap']))
   key=n,cap;tab=grids.setdefault(i,{});assert key not in tab;tab[key]=e;count+=1
 for i,tab in grids.items():
  expected=9
  for x in st[i]['cap']:expected*=x+1
  assert len(tab)==expected
 return grids,count

def finish_ledger(root,st,ids,tables,cd):
 receipts=[];counts=[]
 for tag,raw in zip(('baseline','tail667','final'),tables):
  rec=fee_receipts(cd/f'{tag}.fees.txt',raw,st);assert[a['state']for a in rec]==ids
  cells,n=read_cells(cd/f'{tag}.cells.tsv',st);assert set(cells)==set(ids)
  for a in rec:assert cells[a['state']][8,tuple(st[a['state']]['cap'])]==a['minimum_degree']
  ss=(cd/f'{tag}.grid_summary.tsv').read_text().splitlines()[1:];assert len(ss)==len(ids)
  for l,a in zip(ss,rec):
   i,h,e,g,c,*_=map(int,l.split());assert(i,h,e)==(a['state'],a['h'],a['minimum_degree'])and c==9*g
  receipts.append(rec);counts.append(n)
 assert all(a['minimum_degree']<=a['h']for rec in receipts[:2]for a in rec)
 removed=[a['state']for a in receipts[2]if a['minimum_degree']>a['h']];assert removed==[1814]
 assert next(a['minimum_degree']for a in receipts[2]if a['state']==1814)==128
 rem=[i for i in ids if i not in removed];assert len(rem)==27
 lines=(root/'inputs/frontier28.tsv').read_text().splitlines()
 (cd/'frontier27.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])in rem)+'\n')
 dump(cd/'all_stage_state_receipts.json',dict(zip(('baseline661','after_TAIL667','final673'),receipts)))
 return {'input_frontier':28,'remaining_frontier':27,'removed_states':removed,'global_signature_counts':[661,667,673],'deletions':[{**a,'v':st[a['state']]['v'],'capacity':st[a['state']]['cap']}for a in receipts[2]if a['state']in removed],'minimum_equality_h':min(st[i]['h']for i in rem),'maximum_V':max(sum(st[i]['v'])for i in rem),'lowest_states':[i for i in rem if st[i]['h']==127],'complete_DP_cells_compared_by_stage':counts,'complete_DP_cells_compared':sum(counts),'all_27_remaining_states_use_global673_only':True,'state_specific_T_permissions':[],'COVER8_retained':True,'COVER7_proved':False}

def full_groups(root,st,tables,cd):
 raw,one,two=tables
 old=parse_cpp(root/'inputs/old_h127.complete.txt');main=parse_cpp(cd/'main1814.complete.txt')
 g=multisets(raw,st[1814]['cap'],127);assert g==main[1814]==old[1814]and len(g)==27
 audit=[]
 for seq in g:
  used=tuple(sum(x[j+1]for x in seq)for j in range(6));assert used==tuple(st[1814]['cap'])
  e=sum(x[0]for x in seq);a=seq.count(A);b=seq.count(B);assert e+a+b>127
  audit.append({'full_group':seq,'base_degree':e,'A_occurrences':a,'B_occurrences':b,'after_A_only':e+a,'proved_joint_lower_bound':e+a+b,'used_cost':used})
 assert min(x['proved_joint_lower_bound']for x in audit)==128
 noA=[x for x in audit if not x['A_occurrences']];assert len(noA)==1 and noA[0]['base_degree']==127
 stage1=parse_cpp(cd/'stage1_1814.complete.txt');sg=multisets(one,st[1814]['cap'],127)
 assert sg==stage1[1814]and len(sg)==1 and sg[0]==tuple(tuple(x)for x in noA[0]['full_group'])
 dump(cd/'1814_complete_elimination.json',{'state':1814,'all_27_groups':audit,'same_set_as_frozen_input_and_second_enumerator':True,'no_A_exception':noA,'stage1_complete_set':sg,'minimum_actual_degree':128,'only_A13_is_insufficient':True,'only_B12_survivors':[x for x in audit if x['base_degree']+x['B_occurrences']<=127],'no_T_permission_used':True})
 final=parse_cpp(cd/'final_low.complete.txt');assert 1814 not in final
 gg=multisets(two,st[1825]['cap'],127);assert gg==final[1825]and len(gg)==30439
 sat=sum(tuple(sum(x[j+1]for x in seq)for j in range(6))==tuple(st[1825]['cap'])for seq in gg)
 assert sat==23867 and all(T in seq for seq in gg)
 summary={'state':1825,'h':127,'v':st[1825]['v'],'capacity':st[1825]['cap'],'complete_multisets':len(gg),'saturated':sat,'unsaturated':len(gg)-sat,'minimum_degree':min(sum(x[0]for x in seq)for seq in gg),'T_occurrence_distribution':dict(Counter(seq.count(T)for seq in gg)),'two_complete_enumerators_equal':True,'only_global673_used':True}
 dump(cd/'final_low_complete_summary.json',summary)
 # Complete individual low-degree T preimages, not simultaneous realizations.
 pairs=set()
 for seq in gg:
  slack=127-sum(x[0]for x in seq);R=[st[1825]['cap'][j]-sum(x[j+1]for x in seq)for j in range(6)]
  for inc in product(*(range(0,v+1,2 if j%2==0 else 1)for j,v in enumerate(R))):
   cc=tuple(a+b for a,b in zip(T[1:],inc))
   for q in range(4,min(10,4+slack)+1):pairs.add((q,cc))
 C=tuple(st[1825]['cap']);items=sorted(set(two))
 @lru_cache(None)
 def cost(n,c):
  if not n:return 0
  best=10**6
  for x in items:
   rem=tuple(a-b for a,b in zip(c,x[1:]))
   if min(rem)>=0:best=min(best,x[0]+cost(n-1,rem))
  return best
 byM7=set()
 for c in product(*(range(T[j+1],C[j]+1,2 if j%2==0 else 1)for j in range(6))):
  e7=cost(7,tuple(a-b for a,b in zip(C,c)))
  for q in range(4,11):
   if q+e7<=127:byM7.add((q,c))
 assert pairs==byM7 and len(pairs)==46
 cover_json=json.loads((root/'inputs/LOW_T50_cover_DIAGNOSTIC_ONLY.json').read_text());known={(q,tuple(c))for q,c in cover_json['pairs']}
 missing=sorted(pairs-known);assert len(missing)==13
 vals=[]
 for floor in (9,10,11):
  costs=[sum(x[0]for x in seq)+(floor-4)*seq.count(T)for seq in gg]
  vals.append({'counterfactual_T_floor':floor,'minimum_degree':min(costs),'remaining_groups_at_most127':sum(v<=127 for v in costs)})
 assert vals==[{'counterfactual_T_floor':9,'minimum_degree':122,'remaining_groups_at_most127':477},{'counterfactual_T_floor':10,'minimum_degree':125,'remaining_groups_at_most127':62},{'counterfactual_T_floor':11,'minimum_degree':128,'remaining_groups_at_most127':0}]
 dump(cd/'next1825_preimages_and_counterfactual.json',{'state':1825,'complete_groups':len(gg),'unsaturated':len(gg)-sat,'low_T_individual_preimages':sorted(pairs),'complete_preimage_methods_equal':True,'covered_in_adopted_LOW_T50_catalog':sorted(pairs&known),'not_covered_in_catalog':missing,'counterfactuals':vals,'T_floor_proved_for_this_state':False,'own_quotient_system_tested':False,'new_geometry_for_1825_tested':False,'individual_not_simultaneous_preimages':True,'warning':'All unsaturated groups retain coordinatewise actual cost increases. Catalog lookup is not a new classification proof or a cofactor license.'})
 return {'main1814_groups':27,'minimum_actual_degree_main':128,'stage1_remaining_groups':1,'final_low_state':summary,'next1825_low_individual_pairs':46,'next1825_catalog_gaps':13,'next1825_T_permission':False}
