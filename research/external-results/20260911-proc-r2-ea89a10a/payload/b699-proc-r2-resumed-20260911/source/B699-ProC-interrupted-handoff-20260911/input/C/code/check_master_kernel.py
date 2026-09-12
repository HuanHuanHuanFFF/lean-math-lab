#!/usr/bin/env python3
"""Nonvacuous tests of the master theorem's unconditional and primewise parts."""
from pathlib import Path
from math import gcd,prod
import json,random,time
from central_kernel import factor,prime
from linear_kernel import parameters,product_constant
ROOT=Path(__file__).resolve().parents[1]

def vp(n,p):
    e=0
    while n%p==0:n//=p;e+=1
    return e

def vf(n,p):
    e=0
    while n:n//=p;e+=n
    return e

def smallpart(N,i):
    S=1
    for p in range(2,i):
        if prime(p):S*=p**vp(N,p)
    return S

def check_support(n,i,A,B,h,q):
    pos=[a for a in range(i) if (h-A*a)%q]
    r,F=product_constant(i,pos,q)
    ps=[p for p in range(2,i) if prime(p) and p!=q]
    deleted={max(pos,key=lambda a:vp(n-a,p)) for p in ps}
    rest=[a for a in pos if a not in deleted]
    assert len(rest)>=r>0
    parts=[smallpart(n-a,i) for a in rest]
    assert F%prod(parts)==0 and min(parts)**r<=F
    return pos,r,F

def main():
    t=time.monotonic();rng=random.Random(699314159)
    slopes=[(A,B) for B in range(2,13) for A in range(1,B//2+1) if gcd(A,B)==1]
    count={'small_inputs':0,'large_integer_support_inputs':0,'q_instances':0,
           'negative_defects':0,'avoided_prime_transfers':0,'endpoint_allowances':0}
    for _ in range(500):
        i=rng.randrange(2,31);n=rng.randrange(2*i+2,241);j=rng.randrange(i+1,n//2+1)
        A,B=rng.choice(slopes);h=A*n-B*j
        count['small_inputs']+=1;count['negative_defects']+=h<0
        for q in factor(B):
            count['q_instances']+=1
            pos,r,F=check_support(n,i,A,B,h,q)
            par=parameters(i,A,B,h,q,refine=False)
            assert pos==par['positions']
            # The selected minimum row can be checked against W as well.
            ps=[p for p in range(2,i) if prime(p) and p!=q]
            deleted={max(pos,key=lambda a:vp(n-a,p)) for p in ps}
            survivor=min((a for a in pos if a not in deleted),key=lambda a:smallpart(n-a,i))
            assert par['W']%smallpart(n-survivor,i)==0
            for a in pos:
                for p,v in factor(n-a).items():
                    if p<i:continue
                    if p==i and v==1:
                        assert par['K']%p==0;count['endpoint_allowances']+=1
                    elif vf(n,p)-vf(j,p)-vf(n-j,p)==0:
                        assert par['K']%(p**v)==0
                        count['avoided_prime_transfers']+=1
    for _ in range(512):
        i=rng.randrange(2,101);n=rng.getrandbits(rng.randrange(40,257))+3*i
        A,B=rng.choice(slopes);j=rng.randrange(i+1,n//2+1);h=A*n-B*j
        for q in factor(B):
            check_support(n,i,A,B,h,q)
            count['large_integer_support_inputs']+=1
    out={'status':'PASS_UNCONDITIONAL_AND_PRIMEWISE_NOT_LEAN','counts':count,
         'seed':699314159,'scope':'500 small legal triples over 2<=B<=12 and 512 large integer triples up to 256 bits',
         'seconds':time.monotonic()-t}
    (ROOT/'evidence/master-kernel-tests.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
