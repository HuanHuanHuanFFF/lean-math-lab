import json,math
from pathlib import Path
D=Path('/mnt/data/B699-ProD-next-work')
def val(n,p):
 e=0
 while n%p==0:n//=p;e+=1
 return e
out=[]
for row in json.loads((D/'exploration/four_full_lp.json').read_text())['certificates']:
 H=row['H'];w={int(k):v for k,v in row['w'].items()};W=sum(w.values());polys=row['polynomials']
 exps={p:max(sum(v*val(abs(r-h),p) for r,v in w.items() if v) for h in H) for p in [2,3,5,7]}
 K=W+sum(e*(p-1).bit_length() for p,e in exps.items())+sum(f['weight']*(sum(abs(a) for a in f['coeffs'])-1).bit_length() for f in polys)
 E=K//row['delta']+1
 row.update({'W':W,'small_exponents':exps,'K':K,'height_exponent':E})
 out.append(row);print('H',H,'E',E,'W',W,'small',exps,'poly',polys,flush=True)
(D/'exploration/four_full_bounds.json').write_text(json.dumps(out,indent=2))
