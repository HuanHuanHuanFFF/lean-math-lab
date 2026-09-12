#!/usr/bin/env python3
"""Tests the unconditional maximum-valuation deletion lemma, with huge n too."""
from pathlib import Path
from math import lcm
import json,random,time
from verify_certificates import is_prime
ROOT=Path(__file__).resolve().parents[1]

def valuation(n,p):
    assert n>0
    e=0
    while n%p==0:n//=p;e+=1
    return e

def check(n,i):
    m=i//2;R=2*(m-1)
    rows=[N for N in range(n-i+1,n+1) if N%2][:m]
    ps=[p for p in range(3,i) if is_prime(p)]
    assert len(rows)==m and len(ps)<m
    deleted={max(range(m),key=lambda a:valuation(rows[a],p)) for p in ps}
    survivor=next(a for a in range(m) if a not in deleted)
    small=1
    for p in ps:small*=p**valuation(rows[survivor],p)
    W=1
    for x in range(1,R+1,2):W=lcm(W,x)
    assert W%small==0
    return n.bit_length()

def main():
    ts=time.monotonic();count=0;largest=0
    for n in range(2,251):
        for i in range(2,min(n,40)+1):
            largest=max(largest,check(n,i));count+=1
    rng=random.Random(69920260911)
    for k in range(512):
        i=rng.randrange(2,101);n=rng.getrandbits(rng.randrange(20,257))+2*i
        largest=max(largest,check(n,i));count+=1
    out={'status':'PASS_UNCONDITIONAL_REGRESSIONS_NOT_A_UNIVERSAL_PROOF',
         'inputs':count,'max_n_bit_length':largest,'random_seed':69920260911,
         'scope':'all 2<=n<=250, 2<=i<=min(n,40), plus 512 seeded large integer inputs',
         'seconds':time.monotonic()-ts}
    (ROOT/'evidence/universal-support-tests.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
