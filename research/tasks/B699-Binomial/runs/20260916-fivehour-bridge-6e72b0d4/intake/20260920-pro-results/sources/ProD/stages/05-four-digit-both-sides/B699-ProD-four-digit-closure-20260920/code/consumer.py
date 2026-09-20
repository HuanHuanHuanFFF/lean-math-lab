#!/usr/bin/env python3
"""S4-BOTH sufficient consumer for the same original (n,j). Standard library only.
A reported composite D1 is a defect cofactor, never a claimed prime witness.
"""
from __future__ import annotations
import argparse,json
from math import gcd,isqrt
from exact import digits3,prime_trial,vchoose

def consume(n:int,j:int,trial_limit:int=10000)->dict:
    if n<1 or not 7<=j<=n//2:
        return {'status':'not_applicable','reason':'outside original legal i6 pair'}
    if n%1800!=1530:
        return {'status':'not_applicable','reason':'not the B tail'}
    g=gcd(n,j);alpha=n//g;tmp=alpha;a=0
    while tmp%3==0 and tmp>1:tmp//=3;a+=1
    if tmp!=1 or a<2:
        return {'status':'not_applicable','reason':'actual alpha is not 3^a, a>=2'}
    beta=j//g;gamma=(n-j)//g
    if min(len(digits3(beta)),len(digits3(gamma)))>4:
        return {'status':'not_applicable','reason':'neither actual component has <=4 digits'}
    W=(n-1)*j*(n-j)
    if W%10 or isqrt(W//10)**2!=W//10:
        return {'status':'not_applicable','reason':'W is not ten times an integer square'}
    D1=(n-1)//gcd(n-1,j*(j-1))
    if D1<=1:
        raise AssertionError('S4-BOTH claim failed on this exact input; preserve the input for review')
    result=dict(status='sufficient_consumer_applies',n=n,j=j,g=g,alpha=alpha,a=a,
                beta=beta,gamma=gamma,beta_weight=len(digits3(beta)),gamma_weight=len(digits3(gamma)),
                theorem='S4-BOTH',D1=D1,D1_role='defect cofactor; every prime divisor is a valid original witness',
                evidence='author paper + same-session replay, not Lean/independent review')
    # Factoring D1 is optional. Only a trial-proved prime is emitted as a prime.
    for p in range(7,min(trial_limit,isqrt(D1))+1,2):
        if D1%p==0 and prime_trial(p):
            vals={str(i):vchoose(n,i,p) for i in (4,5,6,j)}
            assert min(vals.values())>0
            result['prime_witness']={'p':p,'valuations':vals};break
    return result

def main():
    ap=argparse.ArgumentParser();ap.add_argument('n',type=int);ap.add_argument('j',type=int)
    ap.add_argument('--trial-limit',type=int,default=10000);args=ap.parse_args()
    if args.trial_limit<0:ap.error('trial limit must be nonnegative')
    print(json.dumps(consume(args.n,args.j,args.trial_limit),ensure_ascii=False,indent=2))
if __name__=='__main__':main()
