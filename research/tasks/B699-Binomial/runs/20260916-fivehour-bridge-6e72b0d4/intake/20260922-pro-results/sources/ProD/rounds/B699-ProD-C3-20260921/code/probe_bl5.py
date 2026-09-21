"""Route falsification only. No finite terminal or global empty-domain inference."""
from math import isqrt,gcd
import json,time

def divisors(x):
 for d in range(1,isqrt(x)+1):
  if x%d==0:
   yield d
   if d*d!=x:yield x//d
models=[];trials=0;t0=time.time()
for T in range(3,1002,2):
 for A in range(3,T,2):
  for g in divisors(A-1):
   if g<2 or g%2:continue
   c=(A-1)//g
   if (T*T+c)%(2*A):continue
   b=(T*T+c)//(2*A)
   if not 0<b<T or gcd(b,T)!=1:continue
   trials+=1
   if T*(T*T-A*A)==g*b*b-b+1:
    tt=c*T**3+b*b;z=isqrt(tt//10)
    models.append(dict(T=T,A=A,b=b,g=g,c=c,t=tt,W10=10*z*z==tt))
print(json.dumps(dict(purpose='bounded falsification; no empty-domain theorem',trials=trials,models=models,elapsed=time.time()-t0)))
