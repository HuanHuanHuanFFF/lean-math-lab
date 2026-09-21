#!/usr/bin/env python3
"""Deterministic replay for B699 Pro D / C5.

This program checks only exact arithmetic certificates used in the paper proof:
Dirichlet-character residue classes, numerical thresholds, CRT classes, and a
finite number of applications of the exact bootstrap operator.  It does not
search for NC6 inputs and is not a finite endpoint for the original problem.
"""

from __future__ import annotations

import hashlib
import json
import math
import sys
from pathlib import Path
from typing import Iterable

sys.set_int_max_str_digits(0)

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "outputs" / "replay.json"

SUPPORT_CLOSED = {13, 17, 23, 61}

# Exact constants in the three structural inequalities.
C_A = 4608 * 31**4 * 49**2
C_B = 27000 * 10**7 * 49 * 31**2
C_E = 4608 * 10**4 * 49**2


def is_prime(n: int) -> bool:
    if n < 2:
        return False
    if n % 2 == 0:
        return n == 2
    d = 3
    while d * d <= n:
        if n % d == 0:
            return False
        d += 2
    return True


def chi10_mod_prime(p: int) -> int:
    assert is_prime(p) and p not in (2, 5)
    x = pow(10, (p - 1) // 2, p)
    if x == 1:
        return 1
    if x == p - 1:
        return -1
    raise AssertionError((p, x))


def crt_pair(a: int, m: int, b: int, n: int) -> tuple[int, int]:
    g = math.gcd(m, n)
    assert (b - a) % g == 0
    m1, n1 = m // g, n // g
    t = ((b - a) // g * pow(m1, -1, n1)) % n1
    modulus = m * n1
    return (a + m * t) % modulus, modulus


def crt(congruences: Iterable[tuple[int, int]]) -> tuple[int, int]:
    items = list(congruences)
    x, m = items[0]
    for a, n in items[1:]:
        x, m = crt_pair(x, m, a, n)
    return x, m


def min_exp(base: int, multiplier: int, exponent_scale: int, rhs: int) -> int:
    """Smallest e with multiplier * base^(exponent_scale*e) > rhs."""
    lo, hi = 0, 1
    while multiplier * pow(base, exponent_scale * hi) <= rhs:
        hi *= 2
    while lo < hi:
        mid = (lo + hi) // 2
        if multiplier * pow(base, exponent_scale * mid) > rhs:
            hi = mid
        else:
            lo = mid + 1
    return lo


def bootstrap_step(A: int, B: int, E: int) -> dict[str, object]:
    R, M = crt(((0, 3**A), (2, 2**B), (5, 5**E)))
    assert 0 < R < M
    assert R % (3**A) == 0
    assert R % (2**B) == 2
    assert R % (5**E) == 5

    next_A = min_exp(3, 5, 4, C_A * R**3)
    next_B = min_exp(2, R, 3, C_B * (R - 2) ** 3)
    next_E = min_exp(5, 80, 4, C_E * R**3)

    text = str(R).encode("ascii")
    return {
        "input": [A, B, E],
        "output": [max(A, next_A), max(B, next_B), max(E, next_E)],
        "least_positive_residue": str(R) if len(str(R)) <= 160 else None,
        "least_positive_residue_digits": len(str(R)),
        "least_positive_residue_sha256": hashlib.sha256(text).hexdigest(),
        "modulus_digits": len(str(M)),
        "modulus_factorization": f"2^{B} * 3^{A} * 5^{E}",
    }


def main() -> None:
    kernel = []
    for r in range(1, 40, 2):
        if math.gcd(r, 10) != 1:
            continue
        # chi_10(r) = chi_2(r) chi_5(r).
        chi2 = 1 if r % 8 in (1, 7) else -1
        chi5 = 1 if r % 5 in (1, 4) else -1
        if chi2 * chi5 == 1:
            kernel.append(r)
    assert kernel == [1, 3, 9, 13, 27, 31, 37, 39]

    primes_under_31 = [p for p in range(7, 31) if is_prime(p)]
    prime_chars = {str(p): chi10_mod_prime(p) for p in primes_under_31 + [31]}
    allowed_under_31 = [p for p in primes_under_31 if chi10_mod_prime(p) == 1]
    assert allowed_under_31 == [13]
    assert chi10_mod_prime(31) == 1

    # q3 == 29 mod 40 in the exact RES10 congruence n == 90 mod 120.
    q3_mod_40 = ((90 - 3) // 3) % 40
    assert q3_mod_40 == 29
    # 29 is outside the character kernel.
    assert q3_mod_40 not in kernel

    # Direct D25/defect lower bound:
    # n > 27000*g^7*d^2*q2^3*q5^2, with minima 10,7,7,31.
    n_floor_strict = C_B * 7**3
    n_min = n_floor_strict + 1
    assert n_floor_strict == 4_360_912_290_000_000_000

    # Base exponent gates.  The inequalities are monotone in n for n>2.
    # A: 5*3^(4a) > C_A*n^3.
    assert 5 * 3 ** (4 * 35) <= C_A * n_min**3
    base_A = 36

    # B: n*2^(3b) > C_B*(n-2)^3.
    assert n_min * 2 ** (3 * 59) <= C_B * (n_min - 2) ** 3
    base_B = 60

    # E: 80*5^(4E) > C_E*n^3.
    assert 80 * 5 ** (4 * 23) <= C_E * n_min**3
    base_E = 24

    base_R, base_M = crt(((0, 3**base_A), (2, 2**base_B), (5, 5**base_E)))
    assert base_R == 10_227_565_979_013_409_674_715_921_804_067_823_231_220_245_361_328_130
    assert base_M == 10_314_424_798_490_535_546_171_949_056_000_000_000_000_000_000_000_000

    # Finite replay of the exact amplifier.  These iterations are auxiliary:
    # no claim is made that the sequence diverges for all time.
    triple = (base_A, base_B, base_E)
    bootstrap = []
    for _ in range(6):
        row = bootstrap_step(*triple)
        bootstrap.append(row)
        triple = tuple(row["output"])  # type: ignore[assignment]

    expected_outputs = [
        [89, 134, 60],
        [202, 294, 137],
        [447, 638, 304],
        [978, 1387, 667],
        [2129, 3008, 1453],
        [4623, 6522, 3155],
    ]
    assert [row["output"] for row in bootstrap] == expected_outputs

    result = {
        "status": "PASS",
        "scope": "exact arithmetic replay; not NC6 search or finite endpoint",
        "character": {
            "kernel_mod_40": kernel,
            "prime_characters": prime_chars,
            "allowed_primes_7_to_30": allowed_under_31,
            "first_allowed_prime_outside_closed_support": 31,
            "q3_mod_40": q3_mod_40,
        },
        "constants": {
            "C_A": C_A,
            "C_B": C_B,
            "C_E": C_E,
            "strict_n_floor": n_floor_strict,
            "integer_n_min": n_min,
        },
        "base_gates": {
            "a_min": base_A,
            "b_min": base_B,
            "E_min": base_E,
            "crt_residue": base_R,
            "crt_modulus": base_M,
        },
        "bootstrap": bootstrap,
    }
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": "PASS",
        "base_gates": [base_A, base_B, base_E],
        "bootstrap_last": bootstrap[-1]["output"],
        "output": str(OUT),
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
