#!/usr/bin/env python3
"""Exact discovery only. Certificate verification does not trust LLL."""
from fractions import Fraction as F
from pathlib import Path
import json, math, time
ROOT=Path(__file__).resolve().parents[1]

def dot(a,b): return sum(x*y for x,y in zip(a,b))
def gs(B):
    stars=[]; norms=[]; mus=[]
    for i,b in enumerate(B):
        s=list(map(F,b)); row=[]
        for j in range(i):
            mu=F(dot(b,stars[j]),norms[j]); row.append(mu)
            s=[x-mu*y for x,y in zip(s,stars[j])]
        stars.append(s); norms.append(dot(s,s)); mus.append(row)
    return stars,norms,mus

def nearest(x): return (2*x.numerator+x.denominator)//(2*x.denominator)
def lll(B):
    B=[list(b) for b in B]; k=1; steps=0
    while k<len(B):
        steps+=1
        if steps>10000: raise RuntimeError('LLL steps')
        for j in reversed(range(k)):
            _,N,mu=gs(B); q=nearest(mu[k][j])
            if q:B[k]=[a-q*b for a,b in zip(B[k],B[j])]
        _,N,mu=gs(B)
        if N[k]>=(F(3,4)-mu[k][k-1]**2)*N[k-1]: k+=1
        else: B[k],B[k-1]=B[k-1],B[k]; k=max(1,k-1)
    return B,steps

def dlog25(p,h,a_num,a_den=1):
    start=3 if p==2 else 1
    if h<start:raise ValueError('h')
    r=0; per=1
    assert (a_num-a_den)%p**start==0
    for k in range(start+1,h+1):
        mod=p**k
        cand=[r+t*per for t in range(p) if (a_den*pow(25,r+t*per,mod)-a_num)%mod==0]
        if len(cand)!=1:raise RuntimeError((p,k,cand))
        r=cand[0]; per*=p
    return r,per

def make_cert(p,h,bound,case):
    a,M=dlog25(p,h,289)
    b,M2=dlog25(p,h,529)
    targ=((-5,51) if case=='A' else (-3,85)) if p==2 else (-1,17)
    T,M3=dlog25(p,h,*targ)
    assert M==M2==M3
    rows,steps=lll([[1,a,b],[0,M,0],[0,0,M]])
    best=None
    # A single small dual vector separating the affine target is enough.
    for coeff in [(1,0,0),(0,1,0),(0,0,1),(1,1,0),(1,-1,0),(1,0,1),(1,0,-1),(0,1,1),(0,1,-1)]:
        row=[sum(coeff[j]*rows[j][i] for j in range(3)) for i in range(3)]
        res=(row[0]*T)%M
        gap=min(res,M-res); cost=bound*sum(abs(x) for x in row)
        ratio=F(gap,max(cost,1))
        if best is None or ratio>best[0]:best=(ratio,row,gap,cost)
    ratio,row,gap,cost=best
    if gap<=cost:raise RuntimeError(f'no separation p={p}, h={h}, ratio={float(ratio)}')
    return {'case':case,'p':p,'h':h,'coordinate_bound':bound,'modulus':str(p**h),'period':str(M),'log289':str(a),'log529':str(b),'target':str(T),'target_numerator':targ[0],'target_denominator':targ[1],'dual_vector':list(map(str,row)),'target_distance':str(gap),'box_cost':str(cost)}
