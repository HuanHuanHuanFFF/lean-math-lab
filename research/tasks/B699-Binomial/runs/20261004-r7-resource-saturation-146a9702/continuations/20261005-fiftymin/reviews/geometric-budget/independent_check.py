from pathlib import Path
from fractions import Fraction as Q
import json,hashlib,itertools
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin';out=cont/'reviews/geometric-budget';exp=cont/'experiments/a'
expected={'02-geometric-deformation-budget.md':'14dfdbf7a49255ec804cd1616ce9d7d63c7526a337bb1c87dac54ae0b79d43ae','03-source-flag-dimension-bound.md':'984d7c69cbfef4c3fd5c082d40a899470d764625fb495832d8098c0aa1554c77','04-specialization-factor-bound.md':'f202d3b770d63b6169cbfb9734ab86a53e1fc8541421075fd4c0a0b1d2a9e976'}
for name,h in expected.items():assert hashlib.sha256((cont/'notes/a'/name).read_bytes()).hexdigest()==h
points=[tuple(map(int,line.split())) for line in (cont/'experiments/main/kernel107/input.txt').read_text().splitlines()[1:]]
author=json.loads((exp/'source-flag-bounds.json').read_text());rows=[];dim=1
for h in range(107,153):
 bs=[];ats=[];prev=[]
 for r in range(3,9):
  pp=[(w,m) for rr,s,w,m in points if rr==r]
  def cost(v):return sum(max(m-v,0) if w==1 else (max(m-v,0)+1)//2 for w,m in pp)
  b=next(v for v in range(max(m for w,m in pp)+1) if cost(v)<=h);bs.append(b);ats.append(cost(b));prev.append(cost(b-1) if b else None)
  assert b==0 or cost(b-1)>h
 inc=max(0,306-2*h-sum(bs))
 if h>107:dim+=inc
 row={'h':h,'min_vertical':bs,'min_vertical_sum':sum(bs),'row_sums_at_minimum':ats,'row_sums_previous':prev,'coefficient_degree':305-2*h,'increment_upper':inc,'Q_dimension_upper':dim,'geometric_split_component_budget':dim-1};rows.append(row)
assert rows==author['rows'] and dim==86 and rows[1]['min_vertical']==[22,18,15,13,11,10] and rows[1]['Q_dimension_upper']==2
# Small independent integer/Fraction controls for dimensions and sharpness.
sharp=[]
for d in range(2,8):
 for e in range(1,4):
  sums={sum(s) for s in itertools.combinations_with_replacement(range(d+1),e)};assert sums==set(range(d*e+1))
 sharp.append({'d':d,'W_dimension':d+1,'U_dimension':2,'eisenstein_prime2':True,'e1_to3_product_dimensions':[d*e+1 for e in range(1,4)]})
def multiply(a,b):
 r={}
 for e,x in a.items():
  for f,y in b.items():v=(e[0]+f[0],e[1]+f[1]);r[v]=r.get(v,0)+x*y
 return {e:v for e,v in r.items() if v}
def rank(polys):
 mons=sorted(set().union(*(set(p) for p in polys)));mat=[[Q(poly.get(e,0)) for poly in polys] for e in mons];r=0
 for c in range(len(polys)):
  z=next((j for j in range(r,len(mat)) if mat[j][c]),None)
  if z is None:continue
  mat[z],mat[r]=mat[r],mat[z];v=mat[r][c];mat[r]=[x/v for x in mat[r]]
  for j in range(r+1,len(mat)):
   v=mat[j][c];mat[j]=[x-v*y for x,y in zip(mat[j],mat[r])]
  r+=1
 return r
A=[{(1,0):1,(0,1):1},{(2,0):1,(0,1):1},{(0,2):1,(1,0):1}];B=[{(1,0):1,(0,0):1},{(0,1):1,(0,0):1},{(1,1):1,(0,0):1},{(0,2):1,(1,0):1}]
ra,rb,rab=rank(A),rank(B),rank([multiply(a,b) for a in A for b in B]);assert rab>=ra+rb-1
square_basis=[{(0,0):1},{(1,0):1},{(2,0):1}];symdim=rank([multiply(a,b) for a,b in itertools.combinations_with_replacement(square_basis,2)]);assert symdim==5<6
controls=json.loads((exp/'geometric-budget-check.json').read_text());assert controls['product_space_control']=={'A_dimension':ra,'B_dimension':rb,'product_dimension':rab,'lower_bound':ra+rb-1}
assert controls['nonrational_source_counterexample']['dimension']==1 and controls['nonrational_source_counterexample']['rational_constraint_matrix']==[[1,0,2],[0,1,0]]
sp=json.loads((exp/'specialization-factor-check.json').read_text());assert all(z['bound']==z['e']+1 and z['h']==z['e']+1 and z['omega']==1 and z['degree']==1 for z in sp['sharp_degree_drop_examples']);assert sp['collision_counterexample']['omega']==2 and sp['collision_counterexample']['distinct_modular_factors']==1
counts=[(p,r,(p**r-1)//(p-1)) for p,r in [(257,1),(257,2),(11,4)]];assert [z[2] for z in counts]==[1,258,1464]
result={'verifier':'/root/verify_reg3_module','fixed_candidate_hashes':expected,'all46_flag_rows_exact':True,'flag_rows':rows,'h108_dimension_upper':2,'last_h152_dimension_upper':86,'sharp_control_d2_to7':sharp,'product_space_control':{'A_dimension':ra,'B_dimension':rb,'product_dimension':rab,'lower_bound':ra+rb-1},'full_symmetric_power_not_injective_dimension':symdim,'nonrational_source_counterexample_checked':True,'factor_degree_loss_controls_checked':True,'projective_counts':counts,'scope':'Exact controls support but do not replace general paper proofs; 05 not read or accepted.'}
(out/'independent-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps({'flag_rows':46,'h108_upper':2,'h152_upper':86,'product_dims':[ra,rb,rab],'all_exact_controls':True}))
