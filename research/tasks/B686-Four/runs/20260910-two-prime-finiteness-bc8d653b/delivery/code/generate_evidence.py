#!/usr/bin/env python3
"""Generate exact diagnostic fixtures and integer height bounds for B686.

Local p-adic roots are NOT integer solutions of B686.  They test the contact
normalization, including p=2,3,5.  No original-domain exhaustive search is run.
Only Python's standard library is used.
"""
from __future__ import annotations
import json
from fractions import Fraction
from math import prod
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'evidence'


def valuation(n: int, p: int) -> int:
    if n == 0:
        raise ValueError('valuation(0) is not finite')
    n = abs(n)
    a = 0
    while n % p == 0:
        n //= p
        a += 1
    return a


def floor_log(k: int, p: int) -> int:
    a, power = 0, 1
    while power * p <= k:
        power *= p
        a += 1
    return a


def integer_height_bound(k: int, p: int, q: int, B: int) -> dict:
    """The theorem assumes p,q are distinct primes and B is the full cofactor.

    Return N with S < 3**N; never construct that astronomically large integer.
    Input primality/coprimality is independently checked in verify_evidence.py.
    """
    if k < 2 or min(p, q) < 2 or p == q or B < 1:
        raise ValueError('invalid parameter tuple')
    coefficient_cap = 250 * k * k * B * B
    low_cap = 1000 * k**3 * B * B
    Hbar = 200_000_000_000 * p.bit_length() * q.bit_length() * coefficient_cap.bit_length()
    high_N = 4 * Hbar * (16 * Hbar).bit_length()
    N = max(low_cap.bit_length(), high_N)
    return dict(k=k, p=p, q=q, B=B, M=coefficient_cap,
                low_cap=low_cap, Hbar=Hbar, N=N,
                S_bound_expression=f'3^{N}',
                exponent_strict_cap=2*N,
                naive_exponent_box_size=(2*N)**2,
                warning='Parameter example only; not an original solution or a global k cutoff.')


def local_fixture(k: int, p: int, i: int, excess: int, unit: int) -> dict:
    eps = 1 if k % 2 == 0 else -1
    c = 4 - eps
    L = floor_log(k, p)
    e = valuation(c, p)
    a = L + e + excess
    S = unit * p**a
    z_power = p**(a-e)
    offsets = [j-i for j in range(1, k+1)]
    other = prod(d for d in offsets if d)
    normalizing_exponent = a + valuation(other, p)
    denom = p**normalizing_exponent
    beta = 2*a-e-L+valuation(4, p)
    precision = max(3, beta-a+3)

    def normalized(w: int) -> int:
        z = z_power*w
        top = prod(S-z-d for d in offsets)
        bot = prod(z+d for d in offsets)
        num = top-4*bot
        assert num % denom == 0
        return num//denom

    w, modulus, trace = 0, 1, []
    for level in range(1, precision+1):
        candidates = [w + digit*modulus for digit in range(p)
                      if normalized(w+digit*modulus) % (modulus*p) == 0]
        assert len(candidates) == 1, (k,p,i,a,unit,level,candidates)
        w = candidates[0]
        modulus *= p
        trace.append(w)
    z = z_power*w
    T = c*z + eps*S
    assert T % p**beta == 0
    return dict(k=k,p=p,i=i,excess=excess,unit=unit,L=L,e=e,a=a,S=S,
                beta=beta,precision=precision,w=w,z=z,T=T,
                normalization_exponent=normalizing_exponent,
                lift_trace=trace,
                T_valuation=None if T == 0 else valuation(T,p),
                role='local_congruence_fixture_not_original_solution')


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    fixtures = []
    for k in (2,3,4,5,6,7,8,11):
        for p in (2,3,5,7,11):
            for i in sorted({1, (k+1)//2, k}):
                for excess in (1,2):
                    for unit in (1,2):
                        if unit % p:
                            fixtures.append(local_fixture(k,p,i,excess,unit))
    (OUT/'local_contacts.json').write_text(json.dumps(
        dict(description='Exact p-adic normalization diagnostics, not a search for original triples.',
             count=len(fixtures), fixtures=fixtures), indent=2)+'\n')
    bounds = [integer_height_bound(*args) for args in
              ((11,2,3,1), (101,2,5,101), (1_000_001,3,7,1))]
    (OUT/'height_bound_examples.json').write_text(json.dumps(bounds, indent=2)+'\n')
    c3_squared = Fraction(49,25)*30**12*3**9
    c2_squared = Fraction(49,25)*30**10*2**9
    constants = dict(C3_squared_numerator=c3_squared.numerator,
                     C3_squared_denominator=c3_squared.denominator,
                     C2_squared_numerator=c2_squared.numerator,
                     C2_squared_denominator=c2_squared.denominator,
                     rounded_constant=200_000_000_000,
                     C3_below_rounded=c3_squared < 200_000_000_000**2,
                     C2_below_rounded=c2_squared < 200_000_000_000**2)
    assert constants['C3_below_rounded'] and constants['C2_below_rounded']
    (OUT/'constants.json').write_text(json.dumps(constants,indent=2)+'\n')
    controls = []
    for k,n,m,multiplier,reason in ((1,0,3,4,'k_is_1'),
        (3,0,1,4,'intervals_overlap'), (6,1,2,4,'intervals_overlap'),
        (15,4,5,4,'intervals_overlap'), (33,10,11,4,'intervals_overlap'),
        (2,1,4,5,'multiplier_is_5_not_4')):
        lower = prod(n+r for r in range(1,k+1))
        upper = prod(m+r for r in range(1,k+1))
        assert upper == multiplier*lower
        controls.append(dict(k=k,n=n,m=m,multiplier=multiplier,lower=lower,
                             upper=upper,S=m+n+k+1,invalid_reason=reason,
                             original_solution=False))
    (OUT/'negative_controls.json').write_text(json.dumps(controls,indent=2)+'\n')
    print('Generated 6 exact out-of-domain controls; NONE is an original B686 solution.')
    print(f'Generated {len(fixtures)} local contact fixtures; NONE labelled as B686 solutions.')
    print('Generated 3 integer height enclosures; no 3^N integer was materialized.')
    print('Matveev constants checked by exact squared integer/rational comparisons.')
    for row in bounds:
        print(f"k={row['k']}, p={row['p']}, q={row['q']}, B={row['B']}: N={row['N']}; exponent box={row['naive_exponent_box_size']}")

if __name__ == '__main__':
    main()
