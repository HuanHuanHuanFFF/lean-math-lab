"""Exponent-block exclusion for near prime powers with cube-small cofactors.
Exact only. A block certificate has P=p^K, Q=q^B,
Q^3 <= (P-D)^2, inverse v mod Q, and
(min positive residue of d*v mod Q, |d|<=D)^2 > p^(K+3L).
It excludes every exponent a in [K,K+L], independently of b and both cofactors.
"""
from pathlib import Path
from math import isqrt
from itertools import combinations
import json,time
ROOT=Path(__file__).resolve().parents[1]
PS=[2,3,5,7,11,13,17,19,23]
HEIGHT_BITS=11001
D=24

def ilog(n,p):
    assert n>=1 and p>=2
    lo=0;hi=n.bit_length()+1
    while hi-lo>1:
        m=(hi+lo)//2
        if p**m<=n:lo=m
        else:hi=m
    return lo

def pair_certificate(p,q):
    bound=ilog((1<<HEIGHT_BITS)-1,p);K=32;start=K;blocks=[];failures=[];attempts=0
    while K<=bound:
        attempts+=1;P=p**K
        assert P>D
        B=ilog((P-D)**2,q)//3;Q=q**B
        assert B>0 and Q**3<=(P-D)**2<q**(3*(B+1))
        v=pow(P,-1,Q)
        vals=[((dd*v)%Q or Q,dd) for dd in range(-D,D+1)]
        r,dd=min(vals)
        maxpow=ilog(r*r-1,p) if r>1 else -1
        L=(maxpow-K)//3
        if L<0:
            failures.append(K);K+=1;start=K;blocks=[]
            continue
        assert r*r>p**(K+3*L)
        L=min(L,bound-K)
        blocks.append(dict(K=K,L=L,B=B,inverse_hex=hex(v),minimizing_difference=dd))
        K+=L+1
    # a<start implies min(N1,N2) <= N1 <= p^(3a/2).
    # Choose global n-height 2^h with (2^h-D)^2 > p^(3(start-1)).
    h=(pow(p,3*(start-1)).bit_length()+1)//2+1
    while ((1<<h)-D)**2<=p**(3*(start-1)):h+=1
    return dict(p=p,q=q,D=D,source_height_bits=HEIGHT_BITS,max_exponent=bound,
        first_exponent=start,blocks=blocks,small_exponent_height_bits=h,
        construction_attempts=attempts,discarded_failure_exponents=failures)

if __name__=='__main__':
    ts=time.monotonic();rows=[]
    for p,q in combinations(PS,2):
        t=time.monotonic();row=pair_certificate(p,q);rows.append(row)
        print(json.dumps(dict(pair=[p,q],start=row['first_exponent'],blocks=len(row['blocks']),h=row['small_exponent_height_bits'],seconds=time.monotonic()-t)),flush=True)
    newH=max([49]+[r['small_exponent_height_bits'] for r in rows])
    out=dict(status='all exponent blocks generated and arithmetic checked',source_height_bits=HEIGHT_BITS,
      destination_height_bits=newH,D=D,primes=PS,rows=rows)
    (ROOT/'outputs/block_certificate.json').write_text(json.dumps(out,separators=(',',':')))
    print(json.dumps(dict(status='complete',blocks=sum(len(r['blocks']) for r in rows),destination_height_bits=newH,seconds=time.monotonic()-ts)),flush=True)
