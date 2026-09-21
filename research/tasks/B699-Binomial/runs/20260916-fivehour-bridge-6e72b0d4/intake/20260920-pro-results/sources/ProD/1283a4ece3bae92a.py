#!/usr/bin/env python3
"""Compute a complete first-source defect under proved S3/S4gap conditions.
A composite returned factor is NOT called a prime witness. No factorization is needed.
"""
from __future__ import annotations
import argparse
import json
from math import gcd, isqrt

def digits3(x: int) -> list[tuple[int,int]]:
    if x<1:raise ValueError('Positive integer required')
    out=[];i=0
    while x:
        x,r=divmod(x,3)
        if r:out.append((i,r))
        i+=1
    return out

def analyze(n: int,j: int) -> dict:
    if not 7<=j<=n//2 or n%1800!=1530:
        return {'status':'not_applicable','reason':'native B-tail / legal interval'}
    g=gcd(n,j);alpha=n//g;beta=j//g
    a=0;x=alpha
    while x%3==0:x//=3;a+=1
    if x!=1 or a<2:
        return {'status':'not_applicable','reason':'actual alpha is not 3^a, a>=2'}
    ds=digits3(beta);dg=digits3(alpha-beta);component='beta'
    if len(ds)<=3:kind='S3'
    elif len(dg)<=3:kind='S3';ds=dg;component='gamma'
    elif len(ds)==4 and all(ds[i+1][0]-ds[i][0]>=3 for i in range(3)):
        W=(n-1)*j*(n-j)
        if W%10 or isqrt(W//10)**2!=W//10:
            return {'status':'not_applicable','reason':'S4gap requires original W=10Y^2'}
        kind='S4gap'
    else:return {'status':'not_applicable','reason':'support outside proved region'}
    N=n-1;D=N//gcd(N,j*(j-1))
    if D<=1:
        raise ArithmeticError('Input contradicts the proved first-source theorem; preserve it for audit')
    return {'status':'proved_source_defect','consumer':kind,'n':n,'j':j,'g':g,'a':a,'beta':beta,
            'ternary_nonzero_positions':ds,'support_component':component,'D1':D,
            'conclusion':'Every prime divisor of D1 is >=7 and divides C(n,4), C(n,5), C(n,6), C(n,j)',
            'D1_is_asserted_prime':False}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('n',type=int);p.add_argument('j',type=int)
    args=p.parse_args();print(json.dumps(analyze(args.n,args.j),ensure_ascii=False,indent=2))
