#!/usr/bin/env python3
from math import gcd,isqrt
from collections import Counter
from pathlib import Path
import json,time

def divs(x):
    lo=[];hi=[]
    for t in range(1,isqrt(x)+1):
        if x%t==0:
            lo.append(t)
            if t*t!=x:hi.append(x//t)
    return lo+hi[::-1]

def norm(n):
    m=(n-2)//2
    lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    mu=3 if m%3==0 and m%9!=0 else 1
    return (n-1)//lam,m//mu

t=time.monotonic();ct=Counter();rows={};before={};canonical=[]
for d in range(1,22,2):
  for A in range(1,3*d):
    C=6*A*(9*d*d-A*A)
    ct['parameters']+=1
    for Q in divs(C):
      ct['divisors']+=1
      n=Q+2
      if n<8 or n%4 or (n-1)%d:continue
      num=A*(n-1)+3*d
      if num%(3*d):continue
      u=num//(3*d)
      if min(u,n-u)<4 or 2*u==n:continue
      j=min(u,n-u);g=gcd(n,u);zeta=u//g
      if gcd(zeta,n-1)!=d:continue
      ct['canonical_rows']+=1
      canonical.append({'n':n,'j':j,'d':d,'A':A,'u':u,'g':g,'zeta':zeta,'alpha':n//g})
      a=n//g
      while a%2==0:a//=2
      if a not in (1,3) or (a==3 and g%3==0):continue
      ct['alpha_rows']+=1
      key=(n,j,d,A)
      rec={'n':n,'j':j,'d':d,'A':A,'u':u,'g':g,'zeta':zeta,'side':'beta' if u==j else 'gamma'}
      before[key]=rec
      N,K=norm(n)
      if j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0:
        ct['exact_projection_rows']+=1
        rows[key]=rec
out={'status':'DISCOVERY_ONLY','d_max':21,'counts':dict(ct),'canonical_records':canonical,'alpha_rows':list(before.values()),'survivors':list(rows.values()),'seconds':time.monotonic()-t}
p=Path(__file__).resolve().parents[1]/'replay'/'probe_small_d.json';p.write_text(json.dumps(out,indent=2))
print(json.dumps({k:v for k,v in out.items() if k not in ('survivors','alpha_rows','canonical_records')},indent=2));print('survivors:',len(rows));print(json.dumps(list(rows.values())[:10],indent=2))
