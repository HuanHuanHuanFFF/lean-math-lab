#!/usr/bin/env python3
"""Construct local solutions, not actual solutions, for any chosen fixed modulus.

The universal construction and its scope are proved in PROOFS.md §12. The test
below exercises selected moduli; it does not infer a universal theorem by scan.
"""
from __future__ import annotations
import json
from math import lcm
from check_consumers import factor, require


def phi(n):
    out=n
    for p in factor(n):out=out//p*(p-1)
    return out


def construct(modulus,minimum_v):
    require(modulus>=1 and minimum_v>=3,'input bounds')
    h=modulus;t=0
    while h%2==0:h//=2;t+=1
    period=lcm(36,phi(h))
    target=max(minimum_v,t)
    k=max(1,(target-2+period-1)//period)
    v=2+k*period
    if t==0:
        root=0; u=3%h
    else:
        root=1
        for bits in range(3,t):
            if (3*root*root-11)%(1<<(bits+1)):
                root+=1<<(bits-1)
            require((3*root*root-11)%(1<<(bits+1))==0,'2-adic lift')
        require((3*root*root-11)%(1<<t)==0,'2-adic root')
        u=(3+h*((root-3)*pow(h,-1,1<<t)%(1<<t)))%modulus
    nmod=pow(2,v,modulus)
    require(v>=minimum_v and v%36==2,'large allowed exponent')
    require((3*u*u-4*(nmod-1)*(nmod-2)-3)%modulus==0,'local conic solution')
    require(pow(2,v,9)==4,'the original ell=3 guard is retained')
    return {'modulus':str(modulus),'v':str(v),'u_modulus':str(u),
            'n_modulus':str(nmod),'exponent_period':str(period),
            'is_claimed_integer_solution':False}


def main():
    moduli=[1,2,8,16,27,101,2**12*3**4*5*7*11*13*37,
            2**32*3**5*5**2*7*11*13*17*19,2**100*3**10*11*17*37]
    rows=[construct(mod,10**6) for mod in moduli]
    print(json.dumps({'status':'PASS','constructive_local_witnesses':rows,
                      'claim':'Every fixed finite set of congruence tests of the a=1 conic admits infinitely many v=2 mod36; no statement about adaptive moduli or descent.',
                      'not_B699_counterexamples':True},sort_keys=True))


if __name__=='__main__':main()
