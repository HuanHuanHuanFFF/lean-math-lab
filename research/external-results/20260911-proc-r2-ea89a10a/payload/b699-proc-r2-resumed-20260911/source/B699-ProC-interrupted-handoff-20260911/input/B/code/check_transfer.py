#!/usr/bin/env python3
"""Exact checks for the uniform same-prime transfer, with a real p=i obstruction.
The unrestricted statement follows from factorial identities and Fermat's
permutation proof in PROOFS.md, not from the finite sanity checks here.
"""
from __future__ import annotations
import argparse,json
from math import comb,factorial,gcd,isqrt,prod
from pathlib import Path

if not __debug__:
    raise RuntimeError("Do not run with -O or -OO")

def prime(p:int)->bool:return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def run()->dict:
    identities=0
    for n in range(10,81):
        for i in range(4,min(n,25)+1):
            assert comb(n,i)*comb(i,4)==comb(n,4)*comb(n-4,i-4)
            identities+=1
    assert 2**60%5005==1
    assert 2**62%5005==4
    checks=0
    for m in range(5,31):
        fm=factorial(m)
        for p in range(5,m+1):
            if prime(p):
                assert fm%(p-1)==0 and pow(2,fm,p)==1
                assert pow(2,fm+2,p)==4%p
                checks+=1
    # Dropping the strict p>i condition from the transfer is genuinely false,
    # even for a LEGAL original (n,i,j); this is NOT a B699 counterexample.
    n,i,j,p=16,5,7,5
    assert 1<=i<j<=n//2
    assert comb(n,4)%p==0 and comb(n,j)%p==0 and comb(n,i)%p!=0
    ex={'n':n,'i':i,'j':j,'p':p,'C_n_4':comb(n,4),
        'C_n_i':comb(n,i),'C_n_j':comb(n,j),
        'interpretation':'counterexample only to naive p>=i transfer, not to B699'}
    # n=27: the square p^2, not just p, kills the complete j interval at once.
    assert comb(27,4)==17550 and comb(27,4)%25==0
    assert 27%25==2 and all(j%25>2 for j in range(5,14))
    assert any(j%5<=27%5 for j in range(5,14))
    return {'status':'transfer_constants_and_boundary_checks_passed',
            'factorial_identity_checks':identities,'fermat_period':60,
            'period_modulus':5005,'residue_2_pow_60':1,'residue_2_pow_62':4,
            'finite_factorial_period_checks':checks,'naive_endpoint_failure':ex,
            'full_power_example':{'n':27,'p':5,'e':2,'legal_j':[5,13],
                                  'C_n_4':17550,'n_mod_25':2}}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    out=run();a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
