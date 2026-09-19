"""Exact predicates for the Pro D square-class consumer.

The theorem uses frozen author-level mathematical contracts documented in
SOURCE_ADOPTION.md. A False applicability result is NOT a counterexample.
No enumeration over n or over unbounded exponents is performed.
"""
from __future__ import annotations
from math import gcd, isqrt

SQUAREFREE_235 = (1, 2, 3, 5, 6, 10, 15, 30)


def is_square(x: int) -> bool:
    if x < 0:
        return False
    r = isqrt(x)
    return r * r == x


def square_class_235(x: int) -> tuple[int, int] | None:
    """Return (D,y) with x=D*y*y, D squarefree and D|30, or None."""
    if x <= 0:
        return None
    for d in SQUAREFREE_235:
        if x % d == 0 and is_square(x // d):
            return d, isqrt(x // d)
    return None


def pure_three_power_exponent(x: int) -> int | None:
    if x < 1:
        return None
    a = 0
    while x % 3 == 0:
        x //= 3
        a += 1
    return a if x == 1 else None


def applicability(n: int, j: int, i: int = 5) -> dict:
    if not (isinstance(n, int) and isinstance(j, int) and isinstance(i, int)):
        raise TypeError("n, j, i must be integers")
    if i not in (5, 6, 7, 8):
        return {"applies": False, "reason": "unsupported index"}
    if not (i < j and 2 * j <= n):
        return {"applies": False, "reason": "outside the original legal range"}
    if n % 72 not in (18, 56):
        return {"applies": False, "reason": "outside H02+"}
    if i == 6 and n % 1800 not in (1280, 1530):
        return {"applies": False, "reason": "outside the two specified D6 tails"}
    if i in (7, 8) and not (n % 25 >= 5 and n % 7 in (5, 6)):
        return {"applies": False, "reason": "missing the 5/7 witness filters"}
    w = (n - 1) * j * (n - j)
    sc = square_class_235(w)
    if sc is None:
        return {"applies": False, "reason": "W is outside the eight square classes"}
    d, y = sc
    alpha = n // gcd(n, j)
    a = pure_three_power_exponent(alpha)
    if d == 10 and n % 72 == 18 and a is not None and a >= 2:
        return {"applies": False, "reason": "the unclosed D=10, alpha=3^a branch",
                "D": d, "alpha": alpha, "a": a}
    return {"applies": True, "conclusion": f"Common{i}(n,j)",
            "D": d, "square_root": y, "alpha": alpha,
            "witness_lower_bound": 5 if i == 5 else 7 if i == 6 else 11,
            "evidence": "new paper proof + frozen author contracts; not Lean"}


def is_prime_trial(p: int) -> bool:
    """Deterministic; intended for supplied small witness certificates only."""
    if p < 2:
        return False
    if p % 2 == 0:
        return p == 2
    d = 3
    while d * d <= p:
        if p % d == 0:
            return False
        d += 2
    return True


def binomial_valuation(n: int, k: int, p: int) -> int:
    if not (0 <= k <= n and p >= 2):
        raise ValueError("invalid valuation arguments")
    q = p
    total = 0
    while q <= n:
        total += n // q - k // q - (n - k) // q
        q *= p
    return total


def witness_certificate(n: int, j: int, i: int, p: int) -> dict:
    if not (i < j and 2 * j <= n and p >= i and is_prime_trial(p)):
        raise ValueError("illegal input or nonqualifying/nonprime witness")
    v_source = binomial_valuation(n, i, p)
    v_target = binomial_valuation(n, j, p)
    if v_source < 1 or v_target < 1:
        raise ValueError("p is not a common prime divisor")
    q, h = p, 1
    layers = []
    while q <= n:
        if j % q > n % q:
            layers.append({"H": h, "p_power": q, "n_residue": n % q,
                           "j_residue": j % q})
        q *= p
        h += 1
    return {"n": n, "j": j, "i": i, "p": p,
            "source_valuation": v_source, "target_valuation": v_target,
            "target_carry_layers": layers}
