#!/usr/bin/env python3
"""A one-sided original-input consumer. 'UNRESOLVED' never means NC6."""
from __future__ import annotations
import argparse, json, math

def rough(x:int)->int:
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def vp(x:int,p:int)->int:
    e=0
    while x%p==0:x//=p;e+=1
    return e

def cv(n:int,j:int,p:int)->int:
    ans=0;Q=p
    while Q<=n:ans+=n//Q-j//Q-(n-j)//Q;Q*=p
    return ans

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('n',type=int);ap.add_argument('j',type=int);ap.add_argument('--small-prime-limit',type=int,default=10000);args=ap.parse_args()
    n,j=args.n,args.j
    if not(7<=j<=n//2):ap.error('requires 7<=j<=floor(n/2)')
    if args.small_prime_limit<7:ap.error('small-prime-limit must be >=7')
    out=dict(n=n,j=j,gap=n-2*j,status='UNRESOLVED',meaning='not a claim of NC6')
    for r in range(6):
        q=rough(n-r);rem=q
        for b in range(r+1):rem//=math.gcd(rem,j-b)
        if rem>1:
            out.update(status='COMMON6_PROVED',reason='an original complete source window fails',failed_source=r,q_r=q,missing_factor=rem)
            # A prime divisor of rem is sufficient. Limited trial search is optional;
            # proof of existence does not depend on finishing a large factorization.
            for p in range(7,args.small_prime_limit+1):
                if rem%p==0 and all(p%u for u in range(2,math.isqrt(p)+1)):
                    e=vp(n-r,p)
                    assert cv(n,6,p)==e and cv(n,j,p)>0
                    out['explicit_witness']=dict(p=p,e=e,choose6_valuation=e,choosej_valuation=cv(n,j,p));break
            break
    print(json.dumps(out,ensure_ascii=False,indent=2,sort_keys=True))
if __name__=='__main__':main()
