#!/usr/bin/env python3
"""Independent verifier: no import of certificate finder or its sieve.
Certificate primality is checked by deterministic odd-integer trial division.
All theorem hypotheses and inequalities are recomputed with integers.
"""
from __future__ import annotations
from pathlib import Path
from math import gcd,lcm,prod,isqrt
from functools import lru_cache,reduce
from fractions import Fraction as F
from time import perf_counter
import json
HERE=Path(__file__).resolve().parent
@lru_cache(None)
def prime(n:int)->bool:
    if n<2:return False
    if n%2==0:return n==2
    for d in range(3,isqrt(n)+1,2):
        if n%d==0:return False
    return True

def verify_cert(n:int,k:int,cert:dict)->None:
    assert k>=2 and n>=0
    positions=cert['positions']; a=cert['anchor']
    assert len(set(positions))==len(positions)>=2 and a in positions
    witnesses=cert['prime_power_witnesses']
    assert {w['offset'] for w in witnesses}==set(positions)
    Q={}
    for w in witnesses:
        i,p,e,q=(w[t] for t in ('offset','p','e','q'))
        assert 1<=i<=k and e>=1 and prime(p) and q==p**e and (n+i)%q==0
        Q[i]=q
    bound=5*(k-1)*(n+k)
    assert all(Q[a]*Q[i]>=bound for i in positions if i!=a)
    c=reduce(gcd,(n+i for i in positions)); s=max(positions)-min(positions)
    assert s*(c+1)>c*(k-1)

def validate_factors(n:int,k:int,rows:list)->None:
    assert len(rows)==k
    for i,row in enumerate(rows,1):
        ff={int(p):int(e) for p,e in row.items()}
        assert all(e>=1 and prime(p) for p,e in ff.items())
        assert prod(p**e for p,e in ff.items())==n+i

def main():
    start=perf_counter()
    obj=json.loads((HERE/'certificate_results.json').read_text())
    count=0
    # Validate full factorizations independently, not just selected certificates.
    for row in obj['rows']:
        validate_factors(row['n'],row['k'],row['factorizations'])
        if row['certificate'] is not None:
            verify_cert(row['n'],row['k'],row['certificate']);count+=1
    assert count==obj['summary']['two_point_or_anchored_certified']==77
    p=obj['prime_free_example'];n,m,k=p['n'],p['m'],p['k']
    validate_factors(m,k,p['later_factorizations'])
    assert k>0 and n+k<=m and n>369*k and m-n>8*k and m>=89693
    assert not any(prime(t) for t in range(n+1,n+k+1))
    assert not any(prime(t) for t in range(m+1,m+k+1))
    # LCM recomputed both by gcd recurrence and by prime-valuation maxima.
    def lcm_by_vals(rows):
        maxima={}
        for row in rows:
            for pp,ee in row.items():
                pp,ee=int(pp),int(ee);maxima[pp]=max(maxima.get(pp,0),ee)
        return prod(pp**ee for pp,ee in maxima.items())
    first=next(row for row in obj['rows'] if (row['n'],row['k'])==(n,k))
    Ln=lcm(*range(n+1,n+k+1));Lm=lcm(*range(m+1,m+k+1))
    assert Ln==lcm_by_vals(first['factorizations'])==int(p['LCM_n'])
    assert Lm==lcm_by_vals(p['later_factorizations'])==int(p['LCM_m'])
    assert Ln!=Lm
    failures=json.loads((HERE/'automatic_shape_failures.json').read_text())
    for search in failures:
        r=search['first_failure']
        if r is None:continue
        validate_factors(r['n'],r['k'],r['factorizations'])
        qs=[max(int(p)**e for p,e in row.items()) for row in r['factorizations']]
        assert qs==r['Q'] and r['n']>369*r['k']
        # Check ALL possible anchors, so failure is not a poor anchor choice.
        for a in range(r['k']):
            S=[i+1 for i,q in enumerate(qs) if i==a or qs[a]*q>=r['F']]
            c=reduce(gcd,(r['n']+i for i in S));s=max(S)-min(S)
            assert len(S)<2 or s*(c+1)<=c*(r['k']-1)
    # Rational comparisons used in the abundance proof (no floating point).
    t=F(11,39)
    log_lower=2*t+F(2,3)*t**3
    count_lower=F(23,40)-F(24,11*1024)-F(8,10*1024)-F(1,1024)
    assert log_lower==F(103048,177957)>F(23,40)
    assert count_lower==F(6433,11264)>F(9,16)
    constants={'log_25_over_14_lower':str(log_lower),'comparison_target':'23/40',
               'large_prime_multiple_density_lower':str(count_lower),
               'comparison_density':'9/16','K_sufficient':'2^2048'}
    (HERE/'abundance_constants.json').write_text(json.dumps(constants,indent=2)+'\n')
    result={'status':'PASS','certificate_count':count,
            'verified_first_elements':sum(r['k'] for r in obj['rows']),
            'verified_later_elements':k,
            'primality_algorithm':'Independent exact odd-integer trial division, cached.',
            'prime_free_pair_LCM_recomputed_two_ways':True,
            'automatic_shape_failures_all_anchors_checked':True,
            'rational_abundance_constants':constants,
            'prime_tests_cached':prime.cache_info()._asdict(),
            'elapsed_seconds':perf_counter()-start,
            'scope':'Arithmetic certificate verification only; not Lean and not an independent proof assistant verification of the paper theorem.'}
    (HERE/'verification.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
