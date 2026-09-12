"""Exploration only; not a coverage argument."""
from sympy import primerange,factorint
from math import gcd
import json
from pathlib import Path
ps=list(primerange(1000,1200));out=[]
for a in (5,7):
 for ix,p in enumerate(ps):
  for q in ps[ix+1:]:
   K=a*p*q;n=2*K+2
   if n%4:continue
   M=(n-2)//2
   if M%3==0 and M%9:continue
   lam=3 if (n-1)%3==0 and (n-1)%9 else 1
   N=(n-1)//lam; fN=factorint(N)
   if len(fN)<2:continue
   fac=[factorint(n-r) for r in range(3)]
   if any(max(int(P**e) for P,e in f.items())**3>=(n-r)**2 for r,f in enumerate(fac)):continue
   if any(int(P**e)**2>=6*n for P,e in fac[2].items() if P%2):continue
   out.append({'a':a,'P':p,'Q':q,'n':n,'lambda':lam,'N':N,'K':K,'factor_N':{str(x):int(y) for x,y in fN.items()},'factor_n_minus_r':[{str(x):int(y) for x,y in f.items()} for f in fac]})
   break
  if any(r['a']==a for r in out):break
print(json.dumps(out,indent=2));(Path(__file__).resolve().parents[1]/'outputs/row-examples.json').write_text(json.dumps(out,indent=2)+'\n')
