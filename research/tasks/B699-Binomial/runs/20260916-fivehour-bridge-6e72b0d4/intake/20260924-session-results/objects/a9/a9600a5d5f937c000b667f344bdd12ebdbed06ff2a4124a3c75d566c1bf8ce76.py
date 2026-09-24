"""Exact sufficient predicate. It is not a decision procedure for B699.

Coefficients are in ascending order. Only the integer degree is factored.
Paper proof: ../PROOFS.md; the even-row extension adopts NC3 => 4|n.
"""
from math import gcd, isqrt


def factor_integer(n: int) -> dict[int, int]:
    if type(n) is not int or n < 1:
        raise ValueError('positive integer required')
    result = {}
    p = 2
    while p * p <= n:
        while n % p == 0:
            result[p] = result.get(p, 0) + 1
            n //= p
        p = 3 if p == 2 else p + 2
    if n > 1:
        result[n] = result.get(n, 0) + 1
    return result


def delta_max(A: int, d: int) -> int:
    """Largest D with D|d and D^2|A; every eligible delta divides D."""
    if type(A) is not int or A < 1 or type(d) is not int or d < 1:
        raise ValueError('A,d must be positive integers')
    D = 1
    for p, e in factor_integer(d).items():
        q, f = A, 0
        while q % p == 0:
            q //= p
            f += 1
        D *= p ** min(e, f // 2)
    return D


def evaluate(coeffs: list[int], T: int) -> int:
    z = 0
    for a in reversed(coeffs):
        z = z * T + a
    return z


def row_predicate(coeffs: list[int], p: int, e: int) -> dict:
    if (not isinstance(coeffs, list) or len(coeffs) < 2
            or any(type(a) is not int or a < 0 for a in coeffs)
            or coeffs[0] != 2 or coeffs[-1] < 1):
        raise ValueError('nonnegative integer polynomial, f(0)=2, degree>=1 required')
    if type(p) is not int or p < 3 or p % 2 == 0 or any(p % q == 0 for q in range(3, isqrt(p) + 1, 2)):
        raise ValueError('odd prime required; primality test is exact trial division')
    if type(e) is not int or e < 1:
        raise ValueError('positive exponent required')
    d, A, H = len(coeffs) - 1, coeffs[-1], sum(coeffs)
    T = p ** e
    gate = (2 * (H + 2)) ** (2 * d + 4)
    n = evaluate(coeffs, T)
    D = delta_max(A, d)
    ok = T >= gate and n % 2 == 0 and D == 1
    return {
        'status': 'SUFFICIENT_PREDICATE_PASS' if ok else 'INCONCLUSIVE',
        'degree': d, 'leading_coefficient': A, 'digit_sum': H,
        'D': D, 'gate_met': T >= gate, 'n_mod4': n % 4,
        'n_bits': n.bit_length(), 'T_bits': T.bit_length(),
        'uses_frozen_NC3_implies_4_divides_n': bool(ok and n % 4 != 0),
        'lean': False, 'general_i3_solution': False,
    }


def beta_bound(D: int):
    """Necessary minimum fractional size of either complete first-source block.

    This function supplies a bound, not a factorization or a Common3 decision.
    """
    from fractions import Fraction
    if type(D) is not int or D < 2:
        raise ValueError('D>=2 required; D=1 has already been excluded')
    if D % 3 == 0:
        return Fraction(1, 3)
    if D % 3 == 1:
        return Fraction(2 * D + 1, 6 * D)
    return Fraction(4 * D + 1, 12 * D)
