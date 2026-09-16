from math import gcd
from sympy import factorint
import json,time
from pathlib import Path
out=Path(__file__).resolve().parents[1]/'verification'/'necessary_probe.json'
t0=time.time(); counts={'rows':0,'crt_roots':0,'W1_gcd':0,'W2':0}; hits=[]; W1=[]
for s in range(3,25):
 for c in (1,3):
  al=c*2**s
  for g in range(1,501):
   if g**3>=3*al:break
   if c==3 and g%3==0:continue
   n=g*al;odd=n//(n&-n)
   if n<=3*odd**4:continue
   lam=3 if (n-1)%3==0 and (n-1)%9 else 1
   mu=3 if (n-2)%3==0 and (n-2)%9 else 1
   N=(n-1)//lam; K=(n-2)//(2*mu)
   fac=factorint(N); mods=[int(p)**e for p,e in fac.items()]
   roots=[0]; mod=1
   for M in mods:
    inv=pow(mod,-1,M)
    roots=[r+mod*(((b-r)*inv)%M) for r in roots for b in (0,1)]
    mod*=M
   counts['rows']+=1;counts['crt_roots']+=len(roots)
   for r in roots:
    for h in range(2):
     j=r+h*N
     if not(4<=j<n//2) or gcd(n,j)!=g:continue
     be=j//g;ga=al-be
     counts['W1_gcd']+=1;t=be*ga//N
     if len(W1)<2000:W1.append([n,j,g,t,lam,mu])
     if j*(j-1)*(j-2)%K:continue
     counts['W2']+=1;hits.append([n,j,g,t,lam,mu])
 if s%4==0: print(s,counts,'secs',round(time.time()-t0,1),flush=True)
 data={'range':{'s':[3,24],'c':[1,3],'g_cap':500,'G4':True,'ROW3':True},'counts':counts,'W2_hits':hits,'W1_sample':W1,'seconds':time.time()-t0}
 out.write_text(json.dumps(data,indent=2))
print('FINAL',counts,hits,flush=True)
