"""Exact replay of the already reviewed fixed weak H02 model.

This is not an NC counterexample: the prime 8647 violates its r=2 NC window.
Uses only the Python standard library; no search or new research is performed.
"""
from math import gcd, isqrt
from pathlib import Path
import json


def main():
    n=155648
    j=65303
    g=gcd(n,j)
    alpha=n//g
    beta=j//g
    u=491
    v=317
    b=7
    c=15
    t=b*c
    s=1
    U=s*u-g*c
    V=s*v-g*b
    p=8647
    prime=p>=2 and all(p%d for d in range(2,isqrt(p)+1))
    out={
        'g':g,
        'alpha':alpha,
        'beta':beta,
        'q1':(n-1)//s,
        'split_ok':u*v==(n-1)//s and u*b==beta and v*c==alpha-beta,
        'U':U,
        'V':V,
        'uv_identity':U*V==g*g*t-s,
        'g5':8*g**5<625*n,
        'g7':g**7<2**22*n,
        't':t,
        'n_prime':g*g*t,
        'alpha_prime':g*t,
        'prime8647':prime,
        'n_mod_p':n%p,
        'j_mod_p':j%p,
        'source_factor':(n-2)//p,
        'common_prime_test':n%p<j%p,
    }
    Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(out))


if __name__=='__main__':
    main()
