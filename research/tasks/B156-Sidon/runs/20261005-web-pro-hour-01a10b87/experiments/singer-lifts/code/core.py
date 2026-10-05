"""Exact arithmetic for strong integer Sidon sets and Singer lifts. No Lean claims."""
from __future__ import annotations
from itertools import combinations_with_replacement, product
from collections import Counter
from typing import Iterable
import math

def prime_factors(n:int)->list[int]:
    out=[];d=2
    while d*d<=n:
        if n%d==0:
            out.append(d)
            while n%d==0:n//=d
        d+=1
    if n>1:out.append(n)
    return out

def singer(p:int)->tuple[list[int],dict]:
    """Trace-zero projective Singer set, independently verified by differences."""
    if p<2 or prime_factors(p)!=[p]:raise ValueError('p must be prime')
    order=p**3-1;q=p*p+p+1
    def mul(a,b,poly):
        c=[0]*5
        for i in range(3):
            for j in range(3):c[i+j]+=a[i]*b[j]
        for k in (4,3):
            t=c[k]%p
            for j in range(3):c[k-3+j]-=t*poly[j]
        return tuple(x%p for x in c[:3])
    def power(a,n,poly):
        z=(1,0,0)
        while n:
            if n&1:z=mul(z,a,poly)
            a=mul(a,a,poly);n//=2
        return z
    alpha=(0,1,0);poly=None
    for c2,c1,c0 in product(range(p),range(p),range(1,p)):
        pp=(c0,c1,c2)
        if any((x**3+c2*x*x+c1*x+c0)%p==0 for x in range(p)):continue
        if all(power(alpha,order//r,pp)!=(1,0,0) for r in prime_factors(order)):
            poly=pp;break
    if poly is None:raise RuntimeError('primitive cubic not found')
    B=[];a=(1,0,0)
    for i in range(q):
        ap=power(a,p,poly);app=power(ap,p,poly)
        tr=tuple((a[j]+ap[j]+app[j])%p for j in range(3))
        assert tr[1:]==(0,0)
        if tr[0]==0:B.append(i+1) # common translation +1
        a=mul(a,alpha,poly)
    assert len(B)==p+1
    counts=Counter((a-b)%q for a in B for b in B if a!=b)
    assert len(counts)==q-1 and set(counts.values())=={1}
    assert is_sidon(B,q)
    return B,{'p':p,'q':q,'primitive_cubic_low_to_high':list(poly),'B':B}

def is_sidon(A:Iterable[int],mod:int|None=None)->bool:
    A=sorted(set(A));seen=set()
    for a,b in combinations_with_replacement(A,2):
        s=a+b if mod is None else (a+b)%mod
        if s in seen:return False
        seen.add(s)
    return True

def collision(A:Iterable[int],mod:int|None=None):
    seen={}
    for a,b in combinations_with_replacement(sorted(set(A)),2):
        s=a+b if mod is None else (a+b)%mod
        if s in seen:return [list(seen[s]),[a,b],s]
        seen[s]=(a,b)
    return None

def forbidden(A:Iterable[int],N:int)->set[int]:
    A=tuple(sorted(set(A)))
    sums={a+b for a,b in combinations_with_replacement(A,2)}
    F={s-a for s in sums for a in A if 1<=s-a<=N}
    F.update(s//2 for s in sums if s%2==0 and 1<=s//2<=N)
    F.update(A)
    return F

def residual(A:Iterable[int],N:int)->set[int]:
    return set(range(1,N+1))-forbidden(A,N)

def new_forbidden(A:Iterable[int],y:int,N:int)->set[int]:
    A=tuple(A);F={y}
    for a in A:
        for b in A:
            F.add(y+a-b);F.add(a+b-y)
        F.add(2*y-a)
        if (y+a)%2==0:F.add((y+a)//2)
    return {x for x in F if 1<=x<=N}

def verify_maximal(A:Iterable[int],N:int)->dict:
    A=sorted(set(A))
    assert all(1<=x<=N for x in A)
    assert is_sidon(A)
    # Independent direct addition test, intentionally distinct from forbidden() formulas.
    sums={a+b for a,b in combinations_with_replacement(A,2)}
    remaining=[]
    for x in range(1,N+1):
        if x in A:continue
        new=[x+a for a in A]+[2*x]
        if len(new)==len(set(new)) and not(sums & set(new)):remaining.append(x)
    return {'N':N,'size':len(A),'sidon':True,'maximal':not remaining,'remaining_count':len(remaining),'first_remaining':remaining[:20]}

def greedy_complete(A,N,seed=0,sample=None,max_steps=10000):
    import random
    rng=random.Random(seed);S=set(A);R=residual(S,N);steps=[]
    for step in range(max_steps):
        if not R:break
        choices=sorted(R)
        if sample is not None and len(choices)>sample:choices=rng.sample(choices,sample)
        scores=[(len(new_forbidden(S,y,N)&R),-y) for y in choices]
        gain,ny=max(scores);y=-ny
        actual=new_forbidden(S,y,N)&R
        assert gain==len(actual) and y in R
        steps.append({'step':step,'size_before':len(S),'residual_before':len(R),'y':y,'gain':gain,'candidates_tested':len(choices)})
        S.add(y);R-=actual
    assert not R,'max_steps bound exhausted'
    assert is_sidon(S) and not residual(S,N)
    return sorted(S),steps
