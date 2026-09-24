#!/usr/bin/env python3
"""Deterministic integer replay for B699 new session C, 2026-09-22.

This checks only the finite arithmetic attached to the paper proof:
- residue classes forcing r >= 7 when d4 = 1;
- the strengthened GAP-SF constant;
- exact exponent gates and one CRT representative;
- finite sanity examples for the local p-adic no-go lemma.

It does not search for NC6 inputs, prove the reverse NC implication,
or constitute Lean / external review.
"""
from __future__ import annotations

import json
from math import gcd
from pathlib import Path

OUT = Path(__file__).resolve().parents[1] / "outputs" / "replay.json"


def vp(n: int, p: int) -> int:
    if n == 0:
        raise ValueError("vp(0) is not used")
    n = abs(n)
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def min_exp(base: int, stride: int, multiplier: int, rhs: int) -> int:
    e = 0
    while multiplier * pow(base, stride * e) <= rhs:
        e += 1
    return e


def crt_pair(a: int, m: int, b: int, n: int) -> tuple[int, int]:
    assert gcd(m, n) == 1
    t = ((b - a) * pow(m, -1, n)) % n
    x = (a + m * t) % (m * n)
    return x, m * n


def crt3(A: int, B: int, E: int) -> tuple[int, int]:
    x, m = crt_pair(0, 3**A, 2, 2**B)
    return crt_pair(x, m, 5, 5**E)


def legendre10_positive(p: int) -> bool:
    return pow(10, (p - 1) // 2, p) == 1


def root_mod_prime_10(p: int) -> int:
    for x in range(1, p):
        if (10 * x * x - 1) % p == 0:
            return x
    raise AssertionError(f"no root for p={p}")


def hensel_root_10(p: int, m: int) -> int:
    """Return r mod p^m with 10 r^2 == 1 mod p^m."""
    r = root_mod_prime_10(p)
    mod = p
    for _ in range(1, m):
        # lift r -> r + t*mod modulo mod*p
        found = None
        for t in range(p):
            cand = r + t * mod
            if (10 * cand * cand - 1) % (mod * p) == 0:
                found = cand
                break
        assert found is not None
        r = found
        mod *= p
    return r % mod


def exact_valuation_example(p: int, m: int) -> int:
    """Find x with vp(10*x^2-1)=m, using the unique-lift property."""
    r = hensel_root_10(p, m)
    mod = p**m
    for t in range(p):
        x = r + t * mod
        val = 10 * x * x - 1
        if vp(val, p) == m:
            return x
    raise AssertionError((p, m))


def main() -> None:
    # If d4=1, the paper proof gives r odd, r=1 mod 3,
    # and r mod 5 in {2,3}; solve the complete period modulo 30.
    r_classes = [
        r for r in range(30)
        if r % 2 == 1 and r % 3 == 1 and r % 5 in (2, 3)
    ]
    assert r_classes == [7, 13]

    old_gap_min = 7990 * 10**6 * 7**2 * 7**3 * 7**2 * 31**3
    new_gap_min = 7 * old_gap_min
    assert old_gap_min == 196_028_014_408_870_000_000
    assert new_gap_min == 1_372_196_100_862_090_000_000
    n0 = new_gap_min + 1

    # Constants frozen in C6 §5. The new q4 lemma multiplies only GAP terms by 7.
    K_AD = 3_052_638_603_000
    K_AG = 196_028_014_408_870
    K_AL = 500_665_292_370_432
    K_BD = 88_998_210_000_000_000
    K_BG = 571_510_246_090_000_000
    K_ED = 31_765_230_000_000_000
    K_EG = 6_580_108_570_000_000
    K_EL = 5_421_265_920_000

    a_components = {
        "D25_SF": min_exp(3, 7, 1, K_AD * n0**6),
        "RGAP7_SF": min_exp(3, 6, 1, 7 * K_AG * n0**5),
        "LR_SF": min_exp(3, 4, 5, K_AL * n0**3),
    }

    def min_b(K: int) -> int:
        b = 0
        while n0 * 2 ** (3 * b) <= K * (n0 - 2) ** 3:
            b += 1
        return b

    b_components = {
        "D25_SF": min_b(K_BD),
        "RGAP7_SF": min_b(7 * K_BG),
    }

    def min_E_D(K: int) -> int:
        e = 0
        while n0 * 5 ** (2 * e) <= K * (n0 - 5) ** 2:
            e += 1
        return e

    def min_E_G(K: int) -> int:
        e = 0
        while n0 * 5 ** (3 * e) <= K * (n0 - 5) ** 3:
            e += 1
        return e

    def min_E_L(K: int) -> int:
        e = 0
        while 80 * 5 ** (4 * e) <= K * n0**3:
            e += 1
        return e

    E_components = {
        "D25_SF": min_E_D(K_ED),
        "RGAP7_SF": min_E_G(7 * K_EG),
        "LR_SF": min_E_L(K_EL),
    }

    gates = {
        "a": max(a_components.values()),
        "b": max(b_components.values()),
        "E": max(E_components.values()),
    }
    assert a_components == {"D25_SF": 42, "RGAP7_SF": 43, "LR_SF": 41}
    assert b_components == {"D25_SF": 66, "RGAP7_SF": 68}
    assert E_components == {"D25_SF": 27, "RGAP7_SF": 29, "LR_SF": 27}
    assert gates == {"a": 43, "b": 68, "E": 29}

    residue, modulus = crt3(gates["a"], gates["b"], gates["E"])
    assert residue % 3**43 == 0
    assert residue % 2**68 == 2
    assert residue % 5**29 == 5

    # Finite examples for the theorem: local p-adic data alone allows arbitrary
    # exact vp(10*x^2-1). This is only a diagnostic against a local-only route.
    primes = [31, 37, 43, 53, 59, 67, 71, 73, 79, 83, 89, 97]
    p_examples = {}
    for p in primes:
        if legendre10_positive(p):
            vals = {}
            for m in range(1, 7):
                x = exact_valuation_example(p, m)
                assert vp(10 * x * x - 1, p) == m
                vals[str(m)] = x
            p_examples[str(p)] = vals
    assert p_examples

    result = {
        "status": "PASS",
        "r_classes_mod_30_when_d4_eq_1": r_classes,
        "uniform_r_times_d4_lower_bound": 7,
        "old_gap_min_strict_lower_rhs": old_gap_min,
        "new_gap7_min_strict_lower_rhs": new_gap_min,
        "new_minimum_integer_n": n0,
        "a_gate_components": a_components,
        "b_gate_components": b_components,
        "E_gate_components": E_components,
        "new_gates": gates,
        "crt_residue": residue,
        "crt_modulus": modulus,
        "p_adic_local_examples": p_examples,
        "claims_not_checked_by_replay": [
            "NC6 sufficiency in reverse",
            "the inherited C6 source contracts",
            "an absolute upper bound or finite terminal",
            "Lean or independent external review",
        ],
    }
    OUT.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, sort_keys=True))


if __name__ == "__main__":
    main()
