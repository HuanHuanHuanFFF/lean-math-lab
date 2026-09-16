from math import prod
from sympy import primerange,isprime

def rough(x,m):
 x=abs(x)
 if x==0:return 0
 for p in primerange(2,m):
  while x%p==0:x//=p
 if isprime(m) and x%m==0 and x%(m*m)!=0:x//=m
 return x

def branch(m,c,r,a,b):
 for t in range(m):
  if t==r:continue
  ds=[c*(b-d)+a*(t-r) for d in range(t+1)]
  v=prod(ds)
  if v and rough(v,m)==1:return t
 return None

def test(m,c,r):
 return [(a,b) for a in range(1,c//2+1) for b in range(r+1) if (2*a<c or 2*b<=r) and branch(m,c,r,a,b) is None]
for m in range(4,10):
 goods=[];bads=[]
 for c in range(1,31):
  rr=[r for r in range(m) if not test(m,c,r)]
  if len(rr)==m:goods.append(c)
  if c<=12:bads.append((c,rr))
 print(m,'all offsets c=',goods,'first rows=',bads)
