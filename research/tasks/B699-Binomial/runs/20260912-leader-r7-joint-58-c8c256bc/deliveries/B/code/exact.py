"""Small exact helpers; not a proof assistant."""
from math import gcd, isqrt
from pathlib import Path
import json

def require(ok, message):
    if not ok: raise ValueError(message)

def write_json(path, value):
    path=Path(path); path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, sort_keys=True, indent=2)+'\n')

def factors(n):
    require(n>=1,'positive factorization input')
    out=[]; p=2
    while p*p<=n:
        if n%p==0:
            e=0
            while n%p==0:n//=p;e+=1
            out.append((p,e))
        p=3 if p==2 else p+2
    if n>1:out.append((n,1))
    return out

def vp(n,p):
    require(n>0 and p>=2,'positive valuation input')
    e=0
    while n%p==0:n//=p;e+=1
    return e

def vchoose(n,j,p):
    require(0<=j<=n and p>=2,'valuation range')
    q=p; v=0
    while q<=n:
        v+=n//q-j//q-(n-j)//q; q*=p
    return v

def lambdas(n):
    require(n>=8 and n%4==0,'normal-form row')
    M=(n-2)//2
    lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    mu=3 if M%3==0 and M%9!=0 else 1
    return lam,mu,(n-1)//lam,M//mu
