"""Next-state diagnostic only. The all-family license is deliberately hypothetical."""
from common import *
import sys
TARGET=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT
(TARGET/"certificates").mkdir(parents=True,exist_ok=True)
cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog102.json').read_text())}|{(19,0,0,0,0,0,3):0,(25,0,0,0,0,0,2):0}
z=STATES[1964];C=z['C'];h=z['h'];old=calc(C,RAW);out=[]
for license in [0,31]:
 ty=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  f=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not f:continue
  q0=min(f);u=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  while q<=u and (q,*c) in cat and not cat[q,*c]&~license:q+=1
  if q<=u:ty.append((q,*c))
 arr=calc(C,ty);B=C;val=int(arr[8][C]);w=[]
 for k in range(8,0,-1):
  for row in sorted(ty):
   e,*c=row
   if all(a<=b for a,b in zip(c,B)):
    rem=tuple(b-a for a,b in zip(c,B))
    if e+int(arr[k-1][rem])==val:w.append(row);B=rem;val-=e;break
  else:raise AssertionError('no witness')
 out.append({'license_mask':license,'license_is_hypothetical':bool(license),'M8':int(arr[8][C]),'weak_witness':w,'unused_capacity':B,'not_a_factorization_or_original_input':True})
rec={'state':1964,'h':h,'v':z['v'],'C':C,'all_five_families_not_licensed_in_this_state':True,'cases':out};(TARGET/'certificates/NEXT_1964.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
