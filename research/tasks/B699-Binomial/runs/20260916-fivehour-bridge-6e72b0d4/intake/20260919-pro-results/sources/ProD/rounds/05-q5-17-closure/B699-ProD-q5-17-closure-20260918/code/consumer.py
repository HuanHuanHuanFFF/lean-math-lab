"""Native i6 four-window diagnostics. Necessary windows are never labelled NC6.

A returned witness divisor is NOT claimed to be prime. Every one of its prime
factors is a genuine common prime >=7. No factorization of C(n,j) is performed.
"""
from __future__ import annotations
from math import gcd


def vp_positive(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError("positive n and p>=2 required")
    a = 0
    while n % p == 0:
        a += 1
        n //= p
    return a


def small6(n: int) -> int:
    if n < 1:
        raise ValueError("small6 is defined here for positive integers")
    s = 1
    for p in (2, 3, 5):
        while n % p == 0:
            s *= p
            n //= p
    return s


def qig_sides(n: int) -> tuple[int, int, int]:
    if n < 14:
        raise ValueError("native i6 nonempty legal domain requires n>=14")
    T = 1
    for r in range(4):
        T *= small6(n-r)
    lhs = T**6 * (3*n*n-12*n+8)
    rhs = 2**20 * (n-1)**6 * (n-3)**3
    return T, lhs, rhs


def window_witness_divisor(n: int, j: int) -> dict | None:
    if not (7 <= j <= n//2):
        raise ValueError("require 7<=j<=floor(n/2)")
    for r in range(4):
        q = (n-r) // small6(n-r)
        f = 1
        for b in range(r+1):
            f *= j-b
        D = q // gcd(q, f)
        if D > 1:
            return {"source_row": r, "divisor": D,
                    "claim": "Every prime factor is a genuine common prime >=7.",
                    "divisor_is_claimed_prime": False,
                    "same_original_n_j": True}
    return None


def family_witness_divisor(E: int, j: int, max_bits: int = 200000) -> dict:
    """Execute the proven witness-divisor search on a representable family input.

    The bit guard is operational only; it does not restrict the mathematical theorem.
    """
    if E < 7 or E % 6 != 1:
        raise ValueError("require E>=7 and E=1 modulo6")
    # n=17*5**E+5 has fewer than 3E+6 bits.
    if 3*E+6 > max_bits:
        raise ValueError("input exceeds this execution's bit guard; theorem is unbounded")
    n = 17*5**E+5
    answer = window_witness_divisor(n, j)
    if answer is None:
        raise AssertionError("conflicts with Theorem Q17: all four windows passed")
    answer.update({"n": n, "j": j, "E": E})
    return answer
