"""Factorisation-free FULL SOURCE tests for native i=6.
Passing these necessary tests is NEVER reported as NC6.
Only integer arithmetic; no claim about a uniform finite endpoint.
"""
from __future__ import annotations
from math import gcd
from typing import Any
import argparse
import json


def coarse_235(x: int) -> int:
    """Remove all complete 2-, 3-, and 5-powers from a positive integer."""
    if not isinstance(x, int) or x <= 0:
        raise ValueError('coarse_235 requires a positive integer')
    for p in (2, 3, 5):
        while x % p == 0:
            x //= p
    return x


def direct_full_source(n: int, j: int, r: int) -> bool:
    """Equivalent to all full p^e source windows on row n-r, NOT to NC6."""
    q = coarse_235(n-r)
    product = 1
    for b in range(r+1):
        product = product * (j-b) % q if q != 1 else 0
    return product % q == 0


def assess(n: int, j: int) -> dict[str, Any]:
    if not isinstance(n, int) or not isinstance(j, int):
        raise TypeError('n and j must be integers')
    if not (7 <= j <= n//2):
        raise ValueError('Require the original i=6 interval 7 <= j <= floor(n/2)')
    k = n-j
    N = n-1
    J = j*k
    qs = [coarse_235(n-r) for r in range(6)]
    direct = [direct_full_source(n, j, r) for r in range(6)]
    result: dict[str, Any] = {
        'g': gcd(n, j),
        'full_source_pass_by_row': direct,
        'failed_rows': [r for r in range(6) if not direct[r]],
        'status': ('SURVIVES_FULL_SOURCES_NOT_NC6' if all(direct)
                   else 'COMMON6_BY_FAILED_FULL_SOURCE'),
        'q_values': qs,
        'first_N_relation': J % N == 0,
    }
    if J % N:
        return result
    U = J//N
    q2, q3, q4, q5 = qs[2:6]
    Z4 = N*(U-2)+2
    scalar = {
        '2': U*U*(U-1) % (q2*q2) == 0,
        '3': U*(U-1) % q3 == 0,
        '4': U*U*(U-1)*(U-1)*Z4 % (q4*q4) == 0,
        '5': U*(U-1)*(2*U-3) % q5 == 0,
    }
    if any(scalar[str(r)] != direct[r] for r in range(2, 6)):
        raise AssertionError('Scalar/full-source equivalence implementation error')
    E2, M2 = gcd(q2, U), gcd(q2, j-1)
    D2 = q2//(E2*M2)
    scalar_defect = q2*q2//gcd(q2*q2, U*U*(U-1))
    if scalar_defect != D2*D2:
        raise AssertionError('The q2 exact square-defect identity failed')
    result.update(U=U, scalar_pass=scalar, E2=E2, M2=M2, D2=D2,
                  q2_scalar_defect=scalar_defect,
                  q5_all_nearside=(U-1) % q5 == 0,
                  E3=gcd(q3, U), E4=gcd(q4, U),
                  A4=gcd(q4, U-1), C=gcd(q4, j-2))
    return result


def assess_norm_candidate(n: int, g: int, a: int, delta: int, z: int) -> dict[str, Any]:
    """Check an actual recovery candidate, without asserting LROW completeness."""
    if not all(isinstance(x, int) for x in (n, g, a, delta, z)):
        raise TypeError('All candidate fields must be integers')
    if min(n, g, a, delta, z) <= 0:
        raise ValueError('All candidate fields must be positive')
    alpha = 3**a
    if n != g*alpha:
        raise ValueError('n != g*3^a')
    if not (delta < alpha and (alpha-delta) % 2 == 0):
        raise ValueError('Invalid original j recovery')
    if delta*delta + 40*(n-1)*z*z != alpha*alpha:
        raise ValueError('The exact integer norm equation fails')
    if gcd(delta, z) != 1 or delta*z % 3 == 0:
        raise ValueError('The stated primitive norm conditions fail')
    beta = (alpha-delta)//2
    j = g*beta
    if gcd(n, j) != g:
        raise ValueError('The supplied g is not the true gcd')
    result = assess(n, j)
    result.update(a=a, delta=delta, z=z, beta=beta, low_mass=(8*g**4 < n))
    return result


def v_binomial(n: int, j: int, p: int) -> int:
    """Factorial valuation, p is required to be a prime by the caller."""
    if not (0 <= j <= n and p >= 2):
        raise ValueError('Invalid valuation arguments')
    v, power = 0, p
    while power <= n:
        v += n//power-j//power-(n-j)//power
        power *= p
    return v


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--n', type=int, required=True)
    parser.add_argument('--j', type=int, required=True)
    args = parser.parse_args()
    print(json.dumps(assess(args.n, args.j), indent=2))

if __name__ == '__main__':
    main()
