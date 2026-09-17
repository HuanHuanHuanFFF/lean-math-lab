"""Exact HG row and point certificates for B699, targets 4..8.

Only Python's standard library is used.  Large primality inputs require a
complete Lucas certificate; a probable-prime result is never accepted.
The theorem's mathematical range is not limited by the trial-division cap.
"""
from __future__ import annotations

from functools import lru_cache
from math import gcd, isqrt
from typing import Any, Mapping

SMALL_PRIMES = (2, 3, 5, 7)
TARGETS = (4, 5, 6, 7, 8)


def valuation(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError("valuation requires n>0 and p>=2")
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def vp_factorial(n: int, p: int) -> int:
    if n < 0 or p < 2:
        raise ValueError("invalid factorial valuation input")
    out = 0
    while n:
        n //= p
        out += n
    return out


def vp_binomial(n: int, k: int, p: int) -> int:
    if not 0 <= k <= n:
        raise ValueError("invalid binomial range")
    return vp_factorial(n, p) - vp_factorial(k, p) - vp_factorial(n-k, p)


def small_part(x: int, i: int) -> int:
    if x <= 0 or i not in TARGETS:
        raise ValueError("small_part supports x>0 and targets 4..8")
    out = 1
    for p in SMALL_PRIMES:
        if p < i:
            out *= p ** valuation(x, p)
        elif p == i and valuation(x, p) == 1:
            out *= p  # Delete ONLY the isolated endpoint prime.
    return out


def rough(x: int, i: int) -> int:
    return x // small_part(x, i)


@lru_cache(maxsize=4096)
def _trial_prime(p: int) -> bool:
    if p < 2:
        return False
    if p == 2:
        return True
    if p % 2 == 0:
        return False
    root = isqrt(p)
    if root > 100_000:
        raise ValueError("large prime needs a complete Lucas certificate")
    return all(p % d for d in range(3, root + 1, 2))


def verify_prime(p: int, certificates: Mapping[str, Any] | None = None,
                 _seen: frozenset[int] = frozenset()) -> bool:
    """Verify primality by trial division or the complete p-1 Lucas test."""
    if p in _seen:
        return False
    if p == 2:
        return True
    cert = certificates.get(str(p)) if certificates else None
    if cert is None:
        return _trial_prime(p)
    if p < 3 or p % 2 == 0 or not isinstance(cert, dict):
        return False
    factors = cert.get("factors", [])
    a = int(cert.get("a", 0))
    product = 1
    keys = set()
    for pair in factors:
        if not isinstance(pair, (list, tuple)) or len(pair) != 2:
            return False
        q, e = map(int, pair)
        if q in keys or e < 1 or e > (p-1).bit_length() or q >= p:
            return False
        keys.add(q)
        if not verify_prime(q, certificates, _seen | {p}):
            return False
        product *= q ** e
    if product != p - 1 or not 1 < a < p:
        return False
    if pow(a, p - 1, p) != 1:
        return False
    return all(gcd(pow(a, (p - 1) // q, p) - 1, p) == 1 for q in keys)


def _exit_conditions(n: int, A: int, qs: list[int]) -> list[str]:
    out = []
    if qs[0] >= A:
        out.append("Z0")
    if 2 * qs[2] >= A ** 3:
        out.append("Z2")
    if n % 2 == 0 and qs[3] > A ** 4:
        out.append("Z3")
    return out


def make_row_certificate(i: int, n: int, p: int, H: int,
                         prime_certificates: Mapping[str, Any] | None = None
                         ) -> dict[str, Any] | None:
    """Return an exact whole-row HG certificate, or None when HG does not apply.

    None never means that the input is a B699 counterexample.
    """
    if i not in TARGETS or n < 2 * (i + 1) or H < 1:
        raise ValueError("invalid target, row, or high-layer exponent")
    if p < i or not verify_prime(p, prime_certificates):
        raise ValueError("p must be a certified prime at least i")
    if vp_binomial(n, i, p) == 0:
        return None
    if H > n.bit_length():
        return None  # Avoid constructing a power that cannot be <= n.
    X = p ** H
    A, C = divmod(n, X)
    if A < 1 or C < 1:
        return None
    qs = [rough(n-r, i) for r in range(4)]
    exits = _exit_conditions(n, A, qs)
    if qs[1] < A * A * C * C or not exits:
        return None
    return {"schema": "B699-HG-row-v1", "i": i, "n": n, "p": p,
            "H": H, "X": X, "A": A, "C": C, "q": qs,
            "source_valuation": vp_binomial(n, i, p), "exits": exits}


def verify_row_certificate(cert: Mapping[str, Any],
                           prime_certificates: Mapping[str, Any] | None = None
                           ) -> bool:
    try:
        if cert.get("schema") != "B699-HG-row-v1":
            return False
        result = make_row_certificate(int(cert["i"]), int(cert["n"]),
                                      int(cert["p"]), int(cert["H"]),
                                      prime_certificates)
        return result is not None and dict(cert) == result
    except (ValueError, KeyError, TypeError, OverflowError):
        return False


def falling_product(j: int, r: int) -> int:
    out = 1
    for b in range(r + 1):
        out *= j-b
    return out


def make_point_certificate(row: Mapping[str, Any], j: int,
                           prime_certificates: Mapping[str, Any] | None = None
                           ) -> dict[str, Any]:
    if not verify_row_certificate(row, prime_certificates):
        raise ValueError("invalid row certificate")
    i, n, p, X, A, C = (int(row[k]) for k in ("i", "n", "p", "X", "A", "C"))
    if not i < j <= n // 2:
        raise ValueError("j is not in the original target's legal range")
    u, v = divmod(j, X)
    if v > C:
        assert vp_binomial(n, j, p) > 0
        return {"schema": "B699-HG-point-v1", "j": j, "branch": "high_carry",
                "u": u, "v": v, "prime": p,
                "source_valuation": vp_binomial(n, i, p),
                "target_valuation": vp_binomial(n, j, p)}
    assert 2 * u <= A
    Z = A*v-u*(C-1)
    if Z not in (0, A):
        r, branch = 1, "nonzero_norm"
    else:
        assert u > 0
        exit_name = row["exits"][0]
        r = {"Z0": 0, "Z2": 2, "Z3": 3}[exit_name]
        branch = "zero_" + exit_name
    q = rough(n-r, i)
    d = q // gcd(q, falling_product(j, r))
    if d <= 1:
        raise ArithmeticError("the HG proof outlet failed its exact witness check")
    return {"schema": "B699-HG-point-v1", "j": j, "branch": branch,
            "u": u, "v": v, "Z": Z, "row": r,
            "witness_divisor": d,
            "claim": "every prime divisor is a common prime at least i"}


def verify_point_certificate(row: Mapping[str, Any], point: Mapping[str, Any],
                             prime_certificates: Mapping[str, Any] | None = None
                             ) -> bool:
    try:
        return dict(point) == make_point_certificate(row, int(point["j"]),
                                                     prime_certificates)
    except (ValueError, KeyError, TypeError, ArithmeticError):
        return False


def force_exit_point(row: Mapping[str, Any], j: int, exit_name: str) -> dict[str, Any]:
    """Diagnostic of a specific valid zero outlet; does not modify row premises."""
    if not verify_row_certificate(row) or exit_name not in row["exits"]:
        raise ValueError("unavailable exit")
    n, A, C, X, i = (row[k] for k in ("n", "A", "C", "X", "i"))
    if not i < j <= n // 2:
        raise ValueError("invalid j")
    u, v = divmod(j, X)
    Z = A*v-u*(C-1)
    if v > C or Z not in (0, A):
        raise ValueError("not a zero branch")
    r = {"Z0": 0, "Z2": 2, "Z3": 3}[exit_name]
    q = rough(n-r, i)
    d = q // gcd(q, falling_product(j, r))
    if d <= 1:
        raise ArithmeticError("claimed zero exit failed")
    return {"j": j, "exit": exit_name, "Z": Z, "q": q,
            "witness_divisor": d, "row": r}
