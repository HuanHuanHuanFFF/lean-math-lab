from sympy import primerange,n_order
from math import lcm
import json
for M in (180,360,1260,2520,27720,55440):
 survivors={a for a in range(M) if a%3!=1}
 used=[]
 for p in primerange(3,12000):
  if pow(4,M,p)!=1:continue
  q=int(n_order(4,p))
  vals={(5*h*h*h+3*h)%p for h in range(p)}
  bad={a for a in range(q) if (2*pow(4,3*a,p)-pow(4,a,p))%p not in vals}
  rem={a for a in survivors if a%q in bad}
  if rem:
   survivors-=rem;used.append((p,q,len(rem)))
  if not survivors:break
 print('M',M,'left',len(survivors),'sample',sorted(survivors)[:30],'used',used,flush=True)
 if not survivors:
  open('/mnt/data/B699-ProE-allocation-coupling-20260916/verification/cubic_period_discovery.json','w').write(json.dumps({'M':M,'used':used},indent=2))
  break
