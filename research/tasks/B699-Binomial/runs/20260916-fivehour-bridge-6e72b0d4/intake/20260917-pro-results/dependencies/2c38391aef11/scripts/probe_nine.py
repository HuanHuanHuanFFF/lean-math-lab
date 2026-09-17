from math import gcd,isqrt
import numpy as np,time,json
from pathlib import Path
M=22680
ps=[p for p in range(5,1500,2) if all(p%d for d in range(3,isqrt(p)+1,2)) and pow(2,M,p)==1]
pow2={p:np.array([pow(2,v,p) for v in range(M)],dtype=np.int64) for p in ps}
v=np.arange(M)
outs=[];t0=time.time()
for r in range(1,9):
 if r%3==0:continue
 mods=81;nr=2+9*(2*pow(r,-1,9)%9)
 for m in range(1,r+1,2):
  if r%m or gcd(m,9)!=1:continue
  mask=np.array([m*pow(2,int(x),81)%81==nr for x in v])
  n0=int(mask.sum())
  if n0==0:continue
  for p in ps:
   n=m*pow2[p]%p
   ss=(9*(4*r*n*n-12*r*n+8*r+9))%p
   mask &= np.isin(ss,[x*x%p for x in range(p)])
   if not mask.any():break
  row={'r':r,'m':m,'side':'L' if 4*r>9 else 'R','before':n0,'after':int(mask.sum()),'v':v[mask].tolist()}
  outs.append(row)
print('cases',len(outs),'survivors',sum(x['after'] for x in outs),'seconds',time.time()-t0)
for x in outs:
 if x['after']:print(x['r'],x['m'],x['side'],x['after'],x['v'][:30])
(Path(__file__).resolve().parents[1]/'verification'/'nine_probe.json').write_text(json.dumps({'period':M,'moduli':ps,'cases':outs},indent=2))
