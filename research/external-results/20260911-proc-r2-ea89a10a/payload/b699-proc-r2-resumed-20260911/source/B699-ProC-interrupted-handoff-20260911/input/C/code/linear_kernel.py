#!/usr/bin/env python3
"""Master rational-linear defect kernel; exact integer constants only."""
from math import gcd,lcm
from central_kernel import factor,prime,c

def parameters(i,A,B,h,q,refine=True):
    assert i>=2 and A>=1 and B>=2 and gcd(A,B)==1 and prime(q) and B%q==0
    positions=[a for a in range(i) if (h-A*a)%q]
    assert positions
    diameter=max(positions)-min(positions)
    W=1
    for v in range(1,diameter+1):W=lcm(W,v)
    while W%q==0:W//=q
    if refine and q==2 and i<=14:W=c(i)
    M=i if prime(i) else 1
    for a in positions:
        for b in range(a+1):
            delta=h-A*a+B*b
            assert delta and delta%q
            M=lcm(M,abs(delta))
    K=1
    for p,e in factor(M).items():
        if p>=i:K*=p**e
    return {'q':q,'positions':positions,'diameter':diameter,'W':W,'K':K,'modulus':W*K}

def exact_ratio_kernels(i,A,B):
    return [parameters(i,A,B,0,q) for q in factor(B)]

def admissible(n,kernels):
    return all(any(r['modulus']%(n-a)==0 for a in r['positions']) for r in kernels)

def product_constant(i,positions,q):
    """Product-of-small-parts bound after maximum-valuation deletions."""
    ps=[p for p in range(2,i) if prime(p) and p!=q]
    r=len(positions)-len(ps)
    assert r>0
    D=max(positions)-min(positions)
    F=1
    for p in ps:
        power=p;e=0
        while power<=D:
            counts={}
            for a in positions:counts[a%power]=counts.get(a%power,0)+1
            e+=max(counts.values())-1
            power*=p
        F*=p**e
    return r,F

def strong_ratio_kernels(i,A,B):
    out=exact_ratio_kernels(i,A,B)
    for row in out:
        row['r'],row['F']=product_constant(i,row['positions'],row['q'])
    return out

def strong_admissible(n,i,kernels):
    ps=[p for p in range(2,i) if prime(p)]
    for row in kernels:
        found=False
        for a in row['positions']:
            N=n-a
            if row['modulus']%N:continue
            T=N
            for p in ps:
                while T%p==0:T//=p
            S=N//T
            if S**row['r']<=row['F']:
                assert row['K']%T==0
                found=True;break
        if not found:return False
    return True
