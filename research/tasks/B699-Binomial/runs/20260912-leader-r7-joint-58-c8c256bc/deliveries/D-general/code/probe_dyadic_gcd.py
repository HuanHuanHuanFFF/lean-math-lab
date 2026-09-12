from math import gcd
from fractions import Fraction
from pathlib import Path
from sympy import factorint
import time,json

def vpbin(n,j,p):
 a=n;b=j;c=n-j;v=0
 while a:
  a//=p;b//=p;c//=p;v+=a-b-c
 return v
start=time.monotonic(); num=0;best=Fraction(1);bad=[];rows=0
for s in range(3,57):
 n=1<<s
 fac={2:s}
 for z in [n-1,(n-2)//2]:
  for p,a in factorint(z).items():fac[int(p)]=fac.get(int(p),0)+int(a)
 fac[3]=fac.get(3,0)-1
 if fac[3]==0:del fac[3]
 rows+=1
 for t in range(max(0,s-12),s):
  for m in range(1,1<<(s-1-t),2):
   j=m<<t
   if j<4:continue
   num+=1;G=1<<(s-t)
   for p,a in fac.items():
    if p!=2:G*=p**min(a,vpbin(n,j,p))
   if 3*G<2*(n-1):
    bad.append({'n':n,'j':j,'gcd':G,'s':s,'t':t,'m':m,'source_factors':fac});break
   best=min(best,Fraction(G,n))
  if bad:break
 if bad:break
out={'range':'n=2^s,3<=s<=56; j=m2^t, odd m, t>=max(0,s-12); j<n/2','rows':rows,'pairs':num,'counterexample_to_linear_bound':bad,'min_ratio':str(best),'seconds':time.monotonic()-start}
Path(__file__).resolve().parents[1].joinpath('outputs/probe-dyadic-gcd.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
