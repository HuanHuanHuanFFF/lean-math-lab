"""Exact coefficient cutoffs for the finite low-index part of H4."""
from math import factorial,prod,isqrt
from bisect import bisect_left
from fractions import Fraction
from pathlib import Path
import json,sys
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parent

def trial_prime(n):
    return n>=2 and all(n%d for d in range(2,isqrt(n)+1))

def k4(i,ps):
    fs=[p for p in ps if p>i and ((p%3==2 and p<=3*i-7) or
                                  (p%3==1 and p<=3*i-11))]
    return fs,prod(fs)

def run():
    ps=[p for p in range(2,3070) if trial_prime(p)]
    rows=[]
    for i in range(3,1024):
        s=bisect_left(ps,i); z=(i+3)//4; E=i-s-z
        fs,K=k4(i,ps); A=3**i*factorial(z); R=K*4**s*factorial(i)
        B=1024*i
        assert E>=1 and A*B**E>=R,('linear_bound_failed',i)
        lo,hi=0,B
        while lo<hi:
            mid=(lo+hi+1)//2
            if A*mid**E<R: lo=mid
            else: hi=mid-1
        J=lo
        assert A*J**E<R and A*(J+1)**E>=R
        rows.append(dict(i=i,s=s,z=z,E=E,K_factors=fs,K=str(K),
                         j_max=J,n_max=4*J,linear_test_j=B,
                         candidate_count=max(0,J-i)))
    # Fixed rational checks for the analytic tail. No numerical logs.
    delta=Fraction(112,27)-Fraction(12403,3000)
    margin=1024*delta-Fraction(224,27)-2
    assert delta>0 and margin>0
    assert Fraction(3*36261,36260)<Fraction(3001,1000)
    assert Fraction(12762,10000)<Fraction(13,10)
    assert Fraction(73,360)<Fraction(1,4)
    assert 3**6<1024
    assert Fraction(56,81)*12==Fraction(224,27)
    # Baseline log(396738)>64/5 certificate, re-evaluated as fixed integers.
    lhs=5*68**13; rhs=6*396738*25**13
    assert lhs<rhs
    rational=dict(tail_margin_at_i1024=str(margin),positive_slope=str(delta),
                  log_certificate_lhs=str(lhs),log_certificate_rhs=str(rhs),
                  log_certificate_difference=str(rhs-lhs))
    out=dict(status='all exact checks passed',i_range=[3,1023],count=len(rows),
             original_B699_pairs_tested=0,
             maximum_n=max(r['n_max'] for r in rows),
             maximum_n_over_i=str(max(Fraction(r['n_max'],r['i']) for r in rows)),
             empty_indices=[r['i'] for r in rows if r['candidate_count']==0],
             rational_checks=rational,rows=rows)
    (ROOT/'height-certificate.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='rows'},indent=2))
if __name__=='__main__': run()
