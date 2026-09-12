"""Finite regressions of universal lemmas. These tests do not replace their proofs."""
from pathlib import Path
from math import comb,factorial,prod,isqrt
import json,time
R=Path(__file__).resolve().parents[1]
PS=(2,3,5,7,11,13)
def primes(n):return [p for p in range(2,n+1) if all(p%d for d in range(2,isqrt(p)+1))]
def main():
    t0=time.monotonic();carry=shift=0
    # Arbitrary modulus layers (not just primes): actual no-carry implication.
    for q in range(2,33):
        for a in range(q):
            for b in range(q):
                for c in range(max(0,2*q-1-a-b),q):
                    for rho in range(q):
                        assert ((a-rho)%q+c>=q) or b+rho>=q;carry+=1
                for c in range(max(0,2*q+1-a-b),q):
                    for delta in (0,1):
                        aa=(a-delta)%q;bb=(b-1+delta)%q;cc=(c-delta)%q
                        assert aa+bb+cc>=2*q-1;shift+=1
    # The contribution threshold 2q+1 cannot in general be weakened to 2q.
    assert 2+2+2==2*3 and comb(1+1,1)*comb(2,0)==2
    weights=0
    for a in range(14):
        for b in range(a+1):
            assert max(0,a-4)+max(0,9-b)+max(0,9-(a-b))>=14;weights+=1
    K=2**90*prod(factorial(h)**3 for h in range(1,10));C0=2*factorial(13)
    assert K*6**70>C0**14
    ps=primes(120);transfer_cases=nontrivial_D=full_prime_power_terms=0
    for n in range(30,121):
        first=comb(n,14);fac=[];rem=first
        for p in ps:
            e=0
            while rem%p==0:rem//=p;e+=1
            if p>=14 and e:fac.append((p,e))
        assert rem==1
        pre=prod(comb(n-14+h,h) for h in range(1,10))
        for j in range(15,n//2+1):
            second=comb(n,j);D=1
            for p,e in fac:
                if second%p:
                    D*=p**e;full_prime_power_terms+=1
                    q=p**e;a=n%q;b=j%q;c=(n-j)%q
                    assert a<=13 and b+c==a
            T=pre*prod(comb(j,h)*comb(n-j,h) for h in range(1,10))
            assert T%(D**14)==0 and K*T<=n**135
            transfer_cases+=1;nontrivial_D+=D>1
    out={'status':'PASS_NEW_LEMMA_EXACT_REGRESSIONS_NOT_A_UNIVERSAL_FORMAL_PROOF','carry_layer_cases':carry,'shift_cases':shift,'weight_cases':weights,'avoiding_part_transfer_cases':transfer_cases,'nontrivial_avoiding_parts':nontrivial_D,'full_prime_power_transfer_terms':full_prime_power_terms,'threshold_weakening_counterexample':{'e':2,'d':2,'f':2,'m':1,'delta':1,'prime':3,'Q_constant_coefficient':2},'seconds':round(time.monotonic()-t0,3)}
    (R/'evidence/new_math_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
if __name__=='__main__':main()
