from math import comb,gcd
from fractions import Fraction
from random import Random
from sympy import factorint
import json,time
from pathlib import Path
r=Random(69920260912);t=time.monotonic();best=(Fraction(1),0,0,0);bad=[];num=0
def vpbin(n,j,p):
 a=n;b=j;c=n-j;v=0
 while a:
  a//=p;b//=p;c//=p;v+=a-b-c
 return v
rows=list(range(8,2001,4))+[r.randrange(2001,100000000)//4*4 for _ in range(500)]
for n in rows:
 fac=dict(factorint(n*(n-1)*(n-2)//6))
 js=set([n//2,n//2-1,4,5]+[r.randrange(4,n//2+1) for _ in range(120)])
 for j in sorted(js):
  G=1
  for p,a in fac.items():G*=int(p)**min(a,vpbin(n,j,int(p)))
  num+=1
  rat=Fraction(G,n)
  if rat<best[0]:best=(rat,n,j,G)
  if 3*G<2*(n-1):
   bad.append({'n':n,'j':j,'gcd':int(G),'source_factorization':{str(p):int(a) for p,a in fac.items()}})
   break
 if bad:break
out={'new_conjecture':'gcd(C(n,3),C(n,j)) >= 2(n-1)/3','tested':num,'best':[str(best[0]),*best[1:]],'counterexamples':bad,'seconds':time.monotonic()-t}
Path(__file__).resolve().parents[1].joinpath('outputs/probe-gcd-bound.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
