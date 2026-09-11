from pathlib import Path
from fractions import Fraction as F
from math import comb,gcd
from functools import reduce
from datetime import datetime,timezone
import json,hashlib
OUT=Path(__file__).resolve().parent
ROOT=OUT.parent.parent
source=ROOT/'lean/PadeInteger.lean'
def cs(u,v):
 N=2*u+v+1
 p=[(-1)**(u+r)*comb(N,r)*comb(2*u-r,u) for r in range(u+1)]
 q=[(-1)**u*comb(2*u-r,u)*comb(v+r,r) for r in range(u+1)]
 e=[(-1)**r*comb(u+r,r)*comb(N,2*u+r+1) for r in range(v+1)]
 return p,q,e
count=0
for u in range(5):
 for v in range(5):
  p,q,e=cs(u,v);G=reduce(gcd,q)
  assert G>0 and all(a%G==0 for a in p+q)
  for x in [-2,-1,0,1,2,3]:
   for y in [-3,-1,1,2,4]:
    pn=sum((a//G)*x**j*y**(u-j) for j,a in enumerate(p))
    qn=sum((a//G)*x**j*y**(u-j) for j,a in enumerate(q))
    ev=sum(a*F(x,y)**j for j,a in enumerate(e))
    assert G*(y**(u+v+1)*pn-(y-x)**(u+v+1)*qn)==y**v*x**(2*u+1)*ev
    count+=1
r=json.loads((OUT/'log-free-selector-results.json').read_text())
small=[]
for row in r['rows']:
 A3=F(row['A3']);M=row['minimum_index_at_Y0'];Z=row['integer_threshold_base_Z'];V=A3**M
 small.append({'cd':[row['seed']['c'],row['seed']['d']],'minimum_index':M,
  'Z_pow_M_bits':(Z**M).bit_length(),'A3_pow_M_numerator_bits':V.numerator.bit_length(),
  'A3_pow_M_denominator_bits':V.denominator.bit_length(),'A3_pow_M_gt_48':V>48})
payload={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded exact rational scaling checks and basis size census; no unrestricted proof',
 'PadeInteger_source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
 'normalized_remainder_cases':count,'domain':{'u':[0,4],'v':[0,4],'x':[-2,-1,0,1,2,3],'y':[-3,-1,1,2,4]},
 'includes_zero_x':True,'does_not_remove_Rows_nonzero_x_requirement':True,'small_basis_sizes':small,
 'worker_lean_invocations':0,'new_original_indices':[]}
(OUT/'scaling-and-small-bases.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
print(json.dumps(payload,indent=2))
