from math import gcd
from sympy import primerange
from sympy.ntheory import n_order
for T in (720,2520,5040,27720,720720):
 ps=[p for p in primerange(5,2000) if T%int(n_order(2,p))==0]
 for rho in (1,2):
  av=[v for v in range(T) if (v%6 in ((2,3) if rho==1 else (4,5)))]
  removed=[]
  for p in ps:
   sq={x*x%p for x in range(p)}
   op=int(n_order(2,p))
   ok=[(12*rho*((pow(2,v,p)**2-3*pow(2,v,p)+2))+9)%p in sq for v in range(op)]
   b=len(av);av=[v for v in av if ok[v%op]]
   if b!=len(av): removed.append((p,b,len(av)))
  print(T,rho,'left',len(av),'odd',sum(v%2 for v in av),'first',av[:8], 'last_screens',removed[-5:],flush=True)
