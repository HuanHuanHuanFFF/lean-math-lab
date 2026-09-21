import sympy as s
from math import prod
import time,json
out=[]
for e in [31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127]:
 X=2**e
 Fm=s.factorint(X-1,limit=20000);Fp=s.factorint(X+1,limit=20000)
 if not all(s.isprime(p) for p in list(Fm)+list(Fp)):continue
 d=3 if Fm.get(3,0)==1 else 1
 wc=len(Fm)-(1 if d==3 else 0)
 for p,h in Fp.items():
  P=int(p**h);m=(X+1)//P
  if P>=64*d*m**3 and wc<=2:
   row={'e':e,'m':m,'P':P,'Fm':{str(k):v for k,v in Fm.items()},'Fp':{str(k):v for k,v in Fp.items()}}
   out.append(row);print(row,flush=True)
print('done',out,flush=True)
open('/mnt/data/B699-ProE-i3-mixed-slot-20260920/logs/row_probe.json','w').write(json.dumps(out,indent=2))
