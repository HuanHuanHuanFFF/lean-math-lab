"""Finite falsification/diagnostic tests, NOT substitutes for infinite arguments."""
from pathlib import Path
from fractions import Fraction as F
from math import comb, gcd, prod, isqrt
import json, time
from common import *
ROOT=Path(__file__).resolve().parents[1]

def primes_upto(n):
    return [p for p in range(2,n+1) if all(p%d for d in range(2,isqrt(p)+1))]

def main():
    start=time.perf_counter(); counts={}
    primes=primes_upto(180)
    n_pairs=avoid_checks=rough_zero_checks=0
    for n in range(20,181):
        src=comb(n,9)
        rough_factors={p:p**valuation(src,p) for p in primes if p>=11 and src%p==0}
        Q={p:max(p**valuation(n-r,p) for r in range(9)) for p in P0}
        U=src//prod(rough_factors.values())
        assert 9*U<=prod(Q.values())
        for j in range(10,n//2+1):
            target=comb(n,j)
            D=prod(q for p,q in rough_factors.items() if target%p)
            T=prod(comb(n-9+h,h)*comb(j,h)*comb(n-j,h) for h in range(1,7))
            assert T%D**10==0
            n_pairs+=1;avoid_checks+=1
            for p in primes:
                if p<11 or n%p:continue
                if target%p:
                    q=p**valuation(n,p)
                    assert j%q==0
                    rough_zero_checks+=1
    counts.update({'finite_legal_pairs_20_180':n_pairs,'avoiding_D10_checks':avoid_checks,
                   'row_zero_rough_power_checks':rough_zero_checks,'small_source_bounds':161})
    # Exact normalized coefficient identities at real integers; no NC assumption is made.
    normal=0; profile_n=0
    for n in range(400,12001):
        W=rough7(n)
        if W<11:continue
        H=tuple(p for p in P0 if p**valuation(n,p)>8)
        if not 1<=len(H)<=2:continue
        profile_n+=1
        xi=prod(p**valuation(n,p) for p in H)
        u=n//(W*xi)
        for q in P0:
            if q in H:continue
            Q=max(q**valuation(n-r,q) for r in range(9))
            if Q<=8:continue
            for r in range(1,9):
                if q**valuation(n-r,q)!=Q:continue
                t=valuation(r,q)
                assert valuation(n,q)==t
                delta=F(u//q**t, r//q**t)
                coef=delta*W
                assert coef*xi==F(n,r) and coef*xi!=1
                # Complete W has no common divisor with any cancelled small factor.
                assert coef.numerator>=W and coef.denominator<=8
                cap=prod(M[p] for p in P0 if p not in H and p!=q)
                assert coef.numerator<=W*cap
                assert valuation(abs((coef*xi-1).numerator),q)-valuation((coef*xi-1).denominator,q)+t==valuation(n-r,q)
                normal+=1
    counts.update({'normalization_n_400_12000':profile_n,'exact_normalized_q_slots':normal})
    # Large prime powers: factorial valuation and independent layer carry counts.
    power_cases=avoiding_power_cases=upper_carry_cases=0
    for p in (11,13,37,101):
        for e in range(1,9):
            q=p**e
            for A in (2,7,p+1):
                for r in range(9):
                    n=A*q+r
                    for k in (1,A//2):
                        for b in range(10):
                            j=k*q+b
                            if not 10<=j<=n//2:continue
                            v=vp_choose(n,j,p)
                            assert v==carry_count(n,j,p)
                            assert vp_choose(n,9,p)==e  # A is prime to p and r <= 8 < p.
                            if b<=r:
                                assert v==vp_choose(A,k,p)
                                if v:upper_carry_cases+=1
                            if v==0:
                                assert (j%q)+((n-j)%q)==r
                                avoiding_power_cases+=1
                            power_cases+=1
    counts.update({'full_prime_power_cases':power_cases,'avoiding_complete_power_cases':avoiding_power_cases,
                   'nonzero_upper_carry_cases':upper_carry_cases,'power_exponents':[1,8]})
    # The witness-transport shortcut fails, but the original input still has a common prime.
    small=(23,10); scaled=(989,430)
    descent={'quotient':list(small),'prime_scale':43,'scaled':list(scaled),'lost_witness':11,
             'quotient_source_mod11':comb(23,9)%11,'quotient_target_mod11':comb(23,10)%11,
             'scaled_source_mod11':comb(989,9)%11,'scaled_target_mod11':comb(989,430)%11,
             'scaled_common23':[comb(989,9)%23,comb(989,430)%23],
             'scope':'Only the proposed witness-preserving transport is refuted; this is NOT a counterexample to B699 or to a more elaborate descent.'}
    assert descent['quotient_source_mod11']==descent['quotient_target_mod11']==0
    assert descent['scaled_source_mod11']!=0 and descent['scaled_common23']==[0,0]
    # Failure to bound W: a true integer family that passes the NEW height projection alone.
    # n=1200 W, W=439(1+A s), already lies below W^(2^72), with positions (3,1).
    # It is not claimed to pass all previous constraints. With j=11W, gcd=W and common prime 13.
    M31=prod(primes_upto(31)); A0=147*M31*439
    family_samples=[]
    for s in (0,1,2,7,100):
        W=439*(1+A0*s);n=1200*W
        assert rough7(n)==W and n%9==3 and n%49==1 and valuation(n,439)==1
        j=11*W
        assert gcd(n,j)==W and n<W**3 and n%13==1 and j%13==6
        assert vp_choose(n,9,13)>0 and vp_choose(n,j,13)>0
        family_samples.append({'s':s,'W':str(W),'n':str(n),'j':str(j),'common_prime':13})
    counts['failure_projection_samples']=len(family_samples)
    # Strict arbitrary-support family in the report uses T=K t; evaluate congruences only, no gigantic powers.
    K=1<<72
    closed_samples=[]
    for s in (0,1,2,7,100):
        W=439*(1+A0*s); t=42*((W.bit_length()+41)//42);T=K*t
        assert t>=W.bit_length() and t%42==0 and pow(10,T,147)==1
        assert (1200*pow(10,T,176400)*W)%176400==174000
        closed_samples.append({'s':s,'W':str(W),'t':t,'T':str(T),'a':str(T+4),'b':str(T+2)})
    counts['symbolic_closed_family_samples']=len(closed_samples)
    out={'status':'PASS_NEW_FINITE_DIAGNOSTICS','counts':counts,'descent_probe':descent,
         'failure_projection_samples':family_samples,'symbolic_closed_family_samples':closed_samples,
         'finite_tests_are_not_infinite_proofs':True,'seconds':time.perf_counter()-start}
    (ROOT/'logs/diagnostics.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'counts':counts,'seconds':out['seconds']},ensure_ascii=False))
if __name__=='__main__':main()
