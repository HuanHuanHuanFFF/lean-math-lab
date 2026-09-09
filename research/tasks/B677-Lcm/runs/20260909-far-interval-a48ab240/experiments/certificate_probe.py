#!/usr/bin/env python3
"""Deterministic structure experiments in the far region.
No enumeration of potential collision pairs and no old finite-range scan.
Only Python's standard library. Run from any directory.
"""
from __future__ import annotations
from pathlib import Path
from math import isqrt, gcd, lcm, prod
from functools import reduce
from itertools import combinations
from time import perf_counter
import json, sys
OUT=Path(__file__).resolve().parent

def primes_upto(n: int) -> list[int]:
    flag=bytearray(b'\x01')*(n+1)
    flag[:2]=b'\x00\x00'
    for p in range(2,isqrt(n)+1):
        if flag[p]: flag[p*p:n+1:p]=b'\x00'*((n-p*p)//p+1)
    return [p for p in range(2,n+1) if flag[p]]

def factor_window(n: int,k: int,primes: list[int]) -> list[dict[int,int]]:
    """Trial divide a short segment by every prime <= sqrt(n+k).
    A leftover >1 is prime: a composite leftover would have a tested factor.
    """
    rem=list(range(n+1,n+k+1)); factors=[{} for _ in range(k)]
    for p in primes:
        if p*p>n+k: break
        start=(-(n+1))%p
        for idx in range(start,k,p):
            e=0
            while rem[idx]%p==0:
                rem[idx]//=p; e+=1
            if e: factors[idx][p]=e
    for idx,r in enumerate(rem):
        if r>1: factors[idx][r]=factors[idx].get(r,0)+1
        assert prod(p**e for p,e in factors[idx].items())==n+idx+1
    return factors

def data(n: int,k: int,primes: list[int]) -> dict:
    f=factor_window(n,k,primes)
    selected=[max(((p**e,p,e) for p,e in v.items()), default=(1,1,0)) for v in f]
    Q=[v[0] for v in selected]; F=5*(k-1)*(n+k)
    square=[i for i,q in enumerate(Q,1) if q*q>=F]
    root=1+max(range(k),key=lambda i:Q[i])
    anchored=[i for i,q in enumerate(Q,1) if i==root or q*Q[root-1]>=F]
    def shape(S):
        c=reduce(gcd,(n+i for i in S),0)
        s=S[-1]-S[0] if S else 0
        return {'positions':S,'gcd':c,'span':s,
                'passed':len(S)>=2 and s*(c+1)>c*(k-1)}
    cert=None
    # Small two-point certificates are preferred over a long list.
    for i,j in combinations(range(1,k+1),2):
        c=gcd(n+i,n+j); s=j-i
        if Q[i-1]*Q[j-1]>=F and s*(c+1)>c*(k-1):
            cert={'anchor':i,'positions':[i,j]}; break
    if cert is None and shape(anchored)['passed']:
        cert={'anchor':root,'positions':anchored}
    if cert is not None:
        cert['prime_power_witnesses']=[{'offset':i,'p':selected[i-1][1],
                                      'e':selected[i-1][2],'q':Q[i-1]}
                                      for i in cert['positions']]
    return {'n':n,'k':k,'F':F,'factorizations':[{str(p):e for p,e in v.items()} for v in f],
            'Q':Q,'square':shape(square),'anchor':root,'anchored':shape(anchored),
            'majority_passed':len(square)>(k+1)//2,
            'endpoint_passed':Q[0]*Q[-1]>=F,'certificate':cert}

def main():
    started=perf_counter()
    # 5 scales x 5 lengths x 3 deterministic offsets = 75 windows.
    cases=[(b+delta,k) for b in (10**5,10**6,10**8,10**10,10**12)
           for k in (8,16,32,64,128) for delta in (0,137,1009)]
    # A prime-free old-filter-surviving illustration, plus one diagnostic failure.
    cases += [(370261,100),(100002,3)]
    assert len(cases)==len(set(cases))==77
    assert all(n>369*k and n>=100000 for n,k in cases)
    primes=primes_upto(isqrt(max(n+k for n,k in cases)))
    rows=[data(n,k,primes) for n,k in cases]
    example=next(r for r in rows if (r['n'],r['k'])==(370261,100))
    m=492113;k=100;n=370261
    later=factor_window(m,k,primes)
    is_prime_factorization=lambda f:len(f)==1 and next(iter(f.values()))==1
    assert all(not is_prime_factorization({int(p):e for p,e in f.items()}) for f in example['factorizations'])
    assert all(not is_prime_factorization(f) for f in later)
    L0=lcm(*range(n+1,n+k+1)); L1=lcm(*range(m+1,m+k+1))
    assert L0!=L1 and m-n>8*k and m+1<4*(n+k)
    special={'n':n,'m':m,'k':k,'d':m-n,'n_gt_369k':n>369*k,'d_gt_8k':m-n>8*k,
             'm_ge_89693':m>=89693,'old_height_bound_passed':m+1<4*(n+k),
             'first_interval_has_no_prime':True,'second_interval_has_no_prime':True,
             'later_factorizations':[{str(p):e for p,e in f.items()} for f in later],
             'LCM_n':str(L0),'LCM_m':str(L1),'unequal':L0!=L1,
             'certificate':example['certificate']}
    summary={'window_count':len(rows),'factored_first_interval_elements':sum(r['k'] for r in rows),
             'square_gcd_span_certified':sum(r['square']['passed'] for r in rows),
             'anchored_gcd_span_certified':sum(r['anchored']['passed'] for r in rows),
             'two_point_or_anchored_certified':sum(r['certificate'] is not None for r in rows),
             'majority_certified':sum(r['majority_passed'] for r in rows),
             'endpoint_certified':sum(r['endpoint_passed'] for r in rows),
             'uncertified':[(r['n'],r['k']) for r in rows if r['certificate'] is None],
             'max_sieved_prime_bound':isqrt(max(n+k for n,k in cases)),
             'elapsed_seconds':perf_counter()-started}
    obj={'scope':{'bases':[10**5,10**6,10**8,10**10,10**12],
                  'lengths':[8,16,32,64,128],'offsets':[0,137,1009],
                  'extra_cases':[[370261,100],[100002,3]],
                  'method':'Deterministic segmented trial factorization, exact integer certificates. No m-range scan.',
                  'interpretation':'Diagnostic sample only. Counts are not a global density estimate. The all-m conclusion comes from the paper theorem.'},
         'summary':summary,'rows':rows,'prime_free_example':special}
    (OUT/'certificate_results.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(summary,ensure_ascii=False,indent=2))
    print('PRIME-FREE EXAMPLE CERTIFICATE:',json.dumps(example['certificate'],ensure_ascii=False))
if __name__=='__main__':main()
