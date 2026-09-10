#!/usr/bin/env python3
"""Independent exact checker. Does NOT import the generator.

The generator uses literal products; this checker expands integer polynomials
and uses Horner evaluation. It checks recorded local fixtures, constants and
finite-height arithmetic. It does NOT certify the external analytic theorems,
prove the new paper theorem, or exhaust all B686 solutions.
"""
from __future__ import annotations
import json
import platform
from collections import Counter
from datetime import datetime, timezone
from math import factorial, gcd, isqrt
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EVIDENCE = ROOT / 'evidence'


def prime(p: int) -> bool:
    return p >= 2 and all(p % d for d in range(2,isqrt(p)+1))


def order(value: int, prime_base: int) -> int | None:
    if not value:
        return None
    value = abs(value)
    exponent = 0
    while True:
        quotient, remainder = divmod(value, prime_base)
        if remainder:
            return exponent
        exponent += 1
        value = quotient


def expand_linear_factors(factors: list[tuple[int,int]]) -> list[int]:
    coeffs = [1]
    for constant, slope in factors:
        result = [0] * (len(coeffs)+1)
        for j, old in enumerate(coeffs):
            result[j] += constant*old
            result[j+1] += slope*old
        coeffs = result
    return coeffs


def horner(coeffs: list[int], x: int) -> int:
    answer = 0
    for coefficient in reversed(coeffs):
        answer = answer*x + coefficient
    return answer


def binary_length(x: int) -> int:
    assert x > 0
    digits = 0
    while x:
        x //= 2
        digits += 1
    return digits


def verify_contact(row: dict) -> None:
    k,p,i,a,S,w,z,T = (row[key] for key in ('k','p','i','a','S','w','z','T'))
    assert k >= 2 and prime(p) and 1 <= i <= k
    eps = (-1)**k
    c = 4-eps
    L,e,beta = (row[key] for key in ('L','e','beta'))
    assert p**L <= k < p**(L+1)
    assert e == order(c,p)
    assert a > L+e and a == L+e+row['excess']
    assert S == row['unit']*p**a and order(S,p) == a
    assert z == w*p**(a-e) and order(w,p) == 0
    assert order(z,p) == a-e
    assert beta == 2*a-e-L+order(4,p)
    assert beta > a
    top = expand_linear_factors([(S-(j-i),-1) for j in range(1,k+1)])
    bot = expand_linear_factors([(j-i,1) for j in range(1,k+1)])
    residual = [x-4*y for x,y in zip(top,bot)]
    # Independent denominator: factorials rather than the generator's offsets.
    normalize_exp = a + order(factorial(i-1)*factorial(k-i),p)
    assert normalize_exp == row['normalization_exponent']
    divisor = p**normalize_exp
    G = []
    for j, coefficient in enumerate(residual):
        quotient,remainder = divmod(coefficient*p**((a-e)*j),divisor)
        assert remainder == 0
        G.append(quotient)
    # Unit derivative modulo p and a genuinely affine normalized polynomial.
    assert G[1] % p != 0
    assert all(coefficient % p == 0 for coefficient in G[2:])
    assert G[0] % p != 0
    for level, lifted in enumerate(row['lift_trace'],start=1):
        assert 0 <= lifted < p**level
        assert horner(G,lifted) % p**level == 0
        if level > 1:
            assert lifted % p**(level-1) == row['lift_trace'][level-2]
    assert row['precision'] == len(row['lift_trace'])
    assert w == row['lift_trace'][-1]
    assert horner(residual,z) % p**(normalize_exp+row['precision']) == 0
    assert T == c*z+eps*S and T % p**beta == 0
    assert row['T_valuation'] == order(T,p)
    assert row['role'] == 'local_congruence_fixture_not_original_solution'
    # Common slope identity, checked at every possible second position.
    n = z-i
    for j in range(1,k+1):
        Tj = c*(n+j)+eps*S
        assert T-Tj == c*(i-j)


def verify_height(row: dict) -> None:
    k,p,q,B = (row[x] for x in ('k','p','q','B'))
    assert k >= 2 and prime(p) and prime(q) and p != q
    assert B >= 1 and gcd(B,p*q) == 1
    M = 250*k*k*B*B
    low = 1000*k*k*k*B*B
    H = 200000000000*binary_length(p)*binary_length(q)*binary_length(M)
    N = max(binary_length(low),4*H*binary_length(16*H))
    assert (M,low,H,N) == (row['M'],row['low_cap'],row['Hbar'],row['N'])
    assert row['exponent_strict_cap'] == 2*N
    assert row['naive_exponent_box_size'] == 4*N*N
    assert row['S_bound_expression'] == '3^'+str(N)


def main() -> None:
    contacts = json.loads((EVIDENCE/'local_contacts.json').read_text())
    for row in contacts['fixtures']:
        verify_contact(row)
    assert contacts['count'] == len(contacts['fixtures'])
    bounds = json.loads((EVIDENCE/'height_bound_examples.json').read_text())
    for row in bounds:
        verify_height(row)
    constants = json.loads((EVIDENCE/'constants.json').read_text())
    R = constants['rounded_constant']
    # Avoid square roots: square both sides, then clear the rational denominator.
    assert 49*30**12*3**9 < 25*R**2
    assert 49*30**10*2**9 < 25*R**2
    assert constants['C3_squared_numerator']*25 == 49*30**12*3**9*constants['C3_squared_denominator']
    assert constants['C2_squared_numerator']*25 == 49*30**10*2**9*constants['C2_squared_denominator']
    # Core arithmetic constant checks. These support (not replace) the proof.
    assert 20*50 == 1000 and 50 > 25
    assert 2*1000*2 > 125   # high-S branch contradicts S < (125/2) k^2 B^2
    assert 5*5*20 == 2*250 # coefficient estimate (5/2)*c*20 <= 250
    controls = json.loads((EVIDENCE/'negative_controls.json').read_text())
    for row in controls:
        k,n,m = (row[x] for x in ('k','n','m'))
        # Factorial quotients: different from the generator's literal products.
        lower = factorial(n+k)//factorial(n)
        upper = factorial(m+k)//factorial(m)
        assert (lower,upper) == (row['lower'],row['upper'])
        assert upper == row['multiplier']*lower
        assert row['S'] == m+n+k+1
        assert not (k>=2 and n>=0 and m>=n+k and upper==4*lower)
        assert row['original_solution'] is False
    by_prime = Counter(row['p'] for row in contacts['fixtures'])
    by_parity = Counter('even' if row['k']%2 == 0 else 'odd' for row in contacts['fixtures'])
    report = dict(status='PASS',scope='Exact diagnostic fixtures, not a formal proof or exhaustive solution search',
                  utc=datetime.now(timezone.utc).isoformat(),python=platform.python_version(),
                  local_contact_fixtures=contacts['count'],by_prime=dict(by_prime),
                  by_parity=dict(by_parity),
                  exceptional_e_one=sum(row['e']==1 for row in contacts['fixtures']),
                  L_zero=sum(row['L']==0 for row in contacts['fixtures']),
                  contact_bound_strict=sum(row['T_valuation'] is not None and row['T_valuation']>row['beta'] for row in contacts['fixtures']),
                  T_zero=sum(row['T']==0 for row in contacts['fixtures']),
                  integer_height_examples=len(bounds),negative_controls=len(controls),
                  external_theorems_verified_by_code=False,
                  new_Lean_proof_executed=False,
                  full_candidate_search_executed=False)
    (EVIDENCE/'verification.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))

if __name__ == '__main__':
    main()
