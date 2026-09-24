#!/usr/bin/env python3
"""Deterministic finite replay for B699 C8.

Checks:
- UF7 residue classification;
- RGAP7 constants, exponent gates and CRT;
- exact rational exponent comparisons for the S-part bridge;
- effective kappa threshold and the cheap c1 diagnostic.

Does not prove BEG Theorem 2.1/2.2, inherited NC6 source contracts,
or an effective terminal.
"""
from __future__ import annotations

import json
import math
from fractions import Fraction
from pathlib import Path

OUT = Path(__file__).resolve().parents[1] / "outputs" / "replay.json"


def min_exp(base: int, stride: int, multiplier: int, rhs: int) -> int:
    e = 0
    while multiplier * pow(base, stride * e) <= rhs:
        e += 1
    return e


def crt_pair(a: int, m: int, b: int, n: int) -> tuple[int, int]:
    assert math.gcd(m, n) == 1
    t = ((b - a) * pow(m, -1, n)) % n
    return (a + m * t) % (m * n), m * n


def crt3(A: int, B: int, E: int) -> tuple[int, int]:
    x, m = crt_pair(0, 3**A, 2, 2**B)
    return crt_pair(x, m, 5, 5**E)


def vpart(n: int, primes: tuple[int, ...]) -> int:
    out = 1
    for p in primes:
        while n % p == 0:
            out *= p
            n //= p
    return out


def main() -> None:
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

    residue, modulus = crt3(43, 68, 29)
    assert residue % 3**43 == 0
    assert residue % 2**68 == 2
    assert residue % 5**29 == 5

    # S-part exponent ledger.
    beg_eps = Fraction(1, 6)
    beg_upper_n_exp = 3 * (Fraction(1, 3) + beg_eps)
    center_lower_n_exp = Fraction(5, 2)
    rgap_lower_n_exp = Fraction(8, 3)
    assert beg_upper_n_exp == Fraction(3, 2)
    assert center_lower_n_exp > beg_upper_n_exp
    assert rgap_lower_n_exp > beg_upper_n_exp

    center_effective_threshold = 1 - center_lower_n_exp / 3
    rgap_effective_threshold = 1 - rgap_lower_n_exp / 3
    assert center_effective_threshold == Fraction(1, 6)
    assert rgap_effective_threshold == Fraction(1, 9)

    # Exact S-part sanity on the frozen residue class. This is not the proof.
    sanity = []
    for t in range(20):
        n = 5130 + 9000 * t
        F = n * (n - 2) * (n - 5)
        s_part = vpart(F, (2, 3, 5))
        b2 = (n - 2) & -(n - 2)
        # exact 5-adic part of n-5
        x = n - 5
        p5 = 1
        while x % 5 == 0:
            p5 *= 5
            x //= 5
        assert (n - 2) % 3 != 0 and (n - 2) % 5 != 0
        assert (n - 5) % 2 != 0 and (n - 5) % 3 != 0
        assert s_part % (b2 * p5) == 0
        sanity.append({"n": n, "S_part": s_part, "two_part_n_minus_2": b2, "five_part_n_minus_5": p5})

    # Cheap Theorem 2.2 formula diagnostic.
    c1_lower = 3.0 / (4.0 * math.log(2.0))
    kappa_upper = 64.0 * math.log(2.0) ** 2 / (135.0 * math.log(3.0) * math.log(5.0))
    assert kappa_upper > 1.0 / 9.0

    result = {
        "status": "PASS_C8_UF7_AND_NON_EFFECTIVE_S_PART_FINITENESS",
        "r_classes_mod_30_when_d4_eq_1": r_classes,
        "uniform_r_times_d4_lower_bound": 7,
        "RGAP7_min_strict_rhs": new_gap_min,
        "new_gates": gates,
        "gate_components": {"a": a_components, "b": b_components, "E": E_components},
        "crt_residue": residue,
        "crt_modulus": modulus,
        "S_part_exponents": {
            "BEG_upper_with_epsilon_1_6": str(beg_upper_n_exp),
            "CENTER_lower": str(center_lower_n_exp),
            "RGAP7_lower": str(rgap_lower_n_exp),
        },
        "effective_kappa_thresholds": {
            "CENTER_only": str(center_effective_threshold),
            "RGAP7": str(rgap_effective_threshold),
        },
        "theorem_2_2_cheap_diagnostic": {
            "c1_lower_from_S0_2": c1_lower,
            "kappa1_upper_for_S_2_3_5": kappa_upper,
            "threshold_1_over_9_not_ruled_out": True,
        },
        "residue_class_S_part_sanity": sanity,
        "claims_not_checked_by_replay": [
            "BEG Theorem 2.1(i) itself",
            "the inherited NC6 source contracts",
            "the reverse implication from necessary conditions to NC6",
            "an effective numerical upper bound",
            "completion of the finite terminal",
            "Lean or independent external review",
        ],
    }
    OUT.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, sort_keys=True))


if __name__ == "__main__":
    main()
