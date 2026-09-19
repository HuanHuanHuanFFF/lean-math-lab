"""Exact witnesses for the *reflected* binomial pair, not the original pair.

No assertion that a source pair is NC3 is made by this module.
Python standard library only.  Prime testing is deterministic trial division.
"""
from __future__ import annotations
from math import gcd, isqrt

def prime(p: int) -> bool:
    if p < 2: return False
    if p == 2: return True
    if p % 2 == 0: return False
    return all(p % d for d in range(3, isqrt(p) + 1, 2))

def valuation(a: int, p: int) -> int:
    if a <= 0 or p < 2: raise ValueError('positive integer and p>=2 required')
    v = 0
    while a % p == 0:
        a //= p; v += 1
    return v

def binomial_valuation(n: int, j: int, p: int) -> int:
    if not (0 <= j <= n): raise ValueError('invalid binomial indices')
    q = p; v = 0
    while q <= n:
        v += n // q - j // q - (n-j) // q
        q *= p
    return v

def witness(n: int, j: int, p: int) -> dict:
    if not (4 <= j <= n // 2): raise ValueError('source pair not in legal i3 range')
    if not prime(p) or p == 2: raise ValueError('p must be an odd prime')
    k = n-j
    numerator = (j-1)*(j-2)
    if numerator % k: raise ValueError('reflection is not integral')
    r = numerator // k
    if r < 4: raise ValueError('reflected pair not in legal i3 range')
    if (j-1) % p or (k-1) % p:
        raise ValueError('p is not a middle-support prime')
    a = valuation(n-2, p)
    e = valuation(j-1, p)
    N = j+r
    J = min(j, r)
    rows = []
    for h in range(e+1, e+a+1):
        q = p**h
        rows.append({'exponent':h, 'power':q, 'N_residue':N%q, 'fixed_j_residue':j%q})
    return {
        'source_n':n, 'source_j':j, 'source_k':k,
        'target_n':N, 'target_j':J, 'fixed_coordinate':j, 'other_coordinate':r,
        'prime':p, 'old_source_exponent':a, 'fixed_j_minus_one_exponent':e,
        'new_source_exponent':valuation(N-1,p),
        'guaranteed_common_prime_power':p**a,
        'target_v_choose3':binomial_valuation(N,3,p),
        'target_v_chooseJ':binomial_valuation(N,J,p),
        'carry_layers_using_fixed_coordinate':rows,
        'claim_scope':'REFLECTED_PAIR_ONLY',
        'original_NC3_status':'NOT_ASSERTED'
    }

if __name__ == '__main__':
    import argparse,json
    a=argparse.ArgumentParser(description=__doc__)
    a.add_argument('n',type=int);a.add_argument('j',type=int);a.add_argument('p',type=int)
    args=a.parse_args()
    print(json.dumps(witness(args.n,args.j,args.p),indent=2))
