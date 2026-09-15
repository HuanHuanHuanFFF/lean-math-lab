"""Exact integer polynomial helpers for the discovery/record generator only."""
from __future__ import annotations
from math import gcd
from typing import Iterable

def trim(p:list[int])->list[int]:
    p=p[:]
    while len(p)>1 and p[-1]==0:p.pop()
    return p or [0]

def add(p:list[int],q:list[int])->list[int]:
    r=[0]*max(len(p),len(q))
    for i,x in enumerate(p):r[i]+=x
    for i,x in enumerate(q):r[i]+=x
    return trim(r)

def mul(p:list[int],q:list[int])->list[int]:
    r=[0]*(len(p)+len(q)-1)
    for i,x in enumerate(p):
        for j,y in enumerate(q):r[i+j]+=x*y
    return trim(r)

def scale(p:list[int],a:int)->list[int]:return trim([a*x for x in p])
def ev(p:list[int],x:int)->int:
    r=0
    for a in reversed(p):r=r*x+a
    return r

def folded(p:list[int],A:int,D:int,k:int,r:int,q:int)->list[int]:
    if min(A,D,k)<1 or r not in (1,2) or q not in (2,3):raise ValueError('invalid fold')
    if len(trim(p))-1>q*k:raise ValueError('degree exceeds cleared denominator')
    out=[0]*k
    for e,c in enumerate(p):
        h,s=divmod(e,k);out[s]+=c*pow(A,q-h)*pow(r*D,h)
    return trim(out)

def remainders(P:list[int],d:int,A:int,D:int,k:int)->tuple[list[int],list[int]]:
    f1=scale(mul(P,add(P,[-d])),3)
    f2=scale(mul(mul(P,add(P,[-d])),add(P,[-2*d])),6)
    return folded(f1,A,D,k,1,2),folded(f2,A,D,k,2,3)

def expected_template(P:list[int],d:int,A:int,D:int,k:int)->bool:
    from fractions import Fraction
    P=trim(P)
    if any(P[i] for i in range(1,min(k,len(P)))):return False
    c0=Fraction(P[0],d);ck=Fraction(P[k] if len(P)>k else 0,d)
    s=ck*D/A+c0;r=2*ck*D/A+c0
    return s in (0,1) and r in (0,1,2)

def one_run_expected(v:int,a:int,b:int)->bool:
    return (v==2*b and a==b-1 and b>=2) or (v==6 and a==0 and b in (3,4))

def vp_choose(n:int,j:int,p:int)->int:
    q=p;e=0
    while q<=n:
        e+=j%q>n%q;q*=p
    return e

def hash_int(n:int)->str:
    import hashlib
    return hashlib.sha256(n.to_bytes(max(1,(n.bit_length()+7)//8),'big')).hexdigest()
