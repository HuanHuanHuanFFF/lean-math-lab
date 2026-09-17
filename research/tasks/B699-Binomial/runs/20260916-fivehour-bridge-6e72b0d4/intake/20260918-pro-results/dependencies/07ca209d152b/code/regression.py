"""Bounded implementation regression, not evidence for unrestricted quantifiers."""
from __future__ import annotations
import json
from collections import Counter
from math import gcd
from pathlib import Path
from consumer import (TARGETS, verify_prime, make_row_certificate,
                      make_point_certificate, verify_point_certificate,
                      force_exit_point)
ROOT=Path(__file__).resolve().parents[1]


def distinct_factors(n):
    out=[];p=2
    while p*p<=n:
        if n%p==0:
            out.append(p)
            while n%p==0:n//=p
        p=3 if p==2 else p+2
    if n>1:out.append(n)
    return out


def main():
    primes=[p for p in range(5,98) if verify_prime(p)]
    rows=0;points=0;parameters=0;odd_rows=0
    branches=Counter();exit_tests=Counter();by_i=Counter()
    empty_examples=[]
    for n in range(10,385):
        row_binomials=[1]
        for j in range(1,n//2+1):row_binomials.append(row_binomials[-1]*(n-j+1)//j)
        for i in TARGETS:
            if n<2*(i+1):continue
            cert=None
            for p in primes:
                if p<i:continue
                X=p;H=1
                while X<n:
                    found=make_row_certificate(i,n,p,H)
                    if found:
                        parameters+=1
                        if cert is None:cert=found
                    H+=1;X*=p
            if cert is None:continue
            rows+=1;by_i[i]+=1;odd_rows+=n%2
            src=row_binomials[i]
            for j in range(i+1,n//2+1):
                point=make_point_certificate(cert,j)
                assert verify_point_certificate(cert,point)
                points+=1;branches[point['branch']]+=1
                target=row_binomials[j]
                gg=gcd(src,target)
                assert any(p>=i for p in distinct_factors(gg))
                if point['branch']=='high_carry':
                    p=point['prime']
                    assert p>=i and src%p==0 and target%p==0
                else:
                    # Only the prime factors are claimed, NOT the whole power d.
                    for p in distinct_factors(point['witness_divisor']):
                        assert p>=i and src%p==0 and target%p==0
                u,v=divmod(j,cert['X'])
                Z=cert['A']*v-u*(cert['C']-1)
                if v<=cert['C'] and Z in (0,cert['A']):
                    for exit_name in cert['exits']:
                        data=force_exit_point(cert,j,exit_name)
                        for p in distinct_factors(data['witness_divisor']):
                            assert p>=i and src%p==0 and target%p==0
                        exit_tests[exit_name]+=1
    out={"status":"PASS_BOUNDED_BINOMIAL_REGRESSION",
         "scope":{"n_min":10,"n_max":384,"targets":list(TARGETS),
                  "source_primes_at_most":97,
                  "quantifiers":"all legal j for one verified parameter choice per accepted (n,i); all listed parameter choices were screened"},
         "accepted_parameter_choices":parameters,"accepted_rows":rows,
         "accepted_odd_rows":odd_rows,"checked_legal_pairs":points,
         "rows_by_target":dict(by_i),"point_branches":dict(branches),
         "separate_zero_exit_checks":dict(exit_tests),
         "not_a_global_finite_reduction":True,
         "unbounded_claim_basis":"PROOFS.md, not this box"}
    (ROOT/'evidence'/'regression.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False))

if __name__=='__main__':main()
