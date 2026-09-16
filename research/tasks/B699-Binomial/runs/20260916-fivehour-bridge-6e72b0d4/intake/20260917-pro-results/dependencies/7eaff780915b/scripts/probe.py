from math import gcd,isqrt
from sympy import factorint
import json,time
out=[]; rows=0
for s in range(3,16):
 for c in (1,3):
  al=c*2**s
  # g^3 <3 alpha suffices as necessary G4
  for g in range(1,int((3*al)**(1/3))+2):
   n=g*al
   if g**3>=3*al: continue
   if c==3 and g%3==0:continue
   lam=3 if (n-1)%3==0 and (n-1)%9 else 1
   mu=3 if ((n-2)//2)%3==0 and ((n-2)//2)%9 else 1
   N=(n-1)//lam; K=(n-2)//(2*mu)
   fac=factorint(N)
   if len(fac)>2:continue
   mods=[int(p)**e for p,e in fac.items()]
   roots=[0]; mod=1
   for M in mods:
    roots=[r+mod*(((b-r)*pow(mod,-1,M))%M) for r in roots for b in (0,1)]
    mod*=M
   for r in roots:
    for h in range(2):
     j=r+h*N
     if not(4<=j<n//2) or gcd(n,j)!=g:continue
     be=j//g;ga=al-be
     if gcd(be,al)!=1:continue
     rows+=1
     t=be*ga//N
     if be*ga%N: raise ValueError()
     if isqrt(lam*t)**2!=lam*t:
      out.append((n,j,g,N,fac,t,lam,mu,not(j*(j-1)*(j-2)%K)))
print('W1 candidates',rows,'non-square examples',len(out))
print(out[:12])
