#!/usr/bin/env python3
"""Deterministic arithmetic replay for B699 Pro D / C6.

Checks only exact modular/arithmetic certificates used by the paper proof.
It is not an NC6 search, not a proof by scanning n,j, and not a finite endpoint.
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

# Uniform minima in the current exact domain.
G0, D0, Q20, S20, Q50, D40 = 10, 7, 7, 7, 31, 1

# Structural constants after substituting only uniform minima.
K_AD = 27000 * D0**2 * Q20**3 * S20 * Q50**2
K_AG = 7990 * D0**2 * D40 * Q20**3 * S20**2 * Q50**3
K_AL = 4608 * Q50**4 * D0**2 * Q20**2 * S20**2
K_BD = 27000 * G0**7 * D0**2 * S20 * Q50**2
K_BG = 7990 * G0**6 * D0**2 * D40 * S20**2 * Q50**3
K_EL = 4608 * G0**4 * D0**2 * Q20**2 * S20**2
K_EG = 7990 * G0**6 * D0**2 * D40 * Q20**3 * S20**2
K_ED = 27000 * G0**7 * D0**2 * Q20**3 * S20


def crt_pair(a: int, m: int, b: int, n: int) -> tuple[int, int]:
    g = math.gcd(m, n)
    assert (b - a) % g == 0
    m1, n1 = m // g, n // g
    t = ((b - a) // g * pow(m1, -1, n1)) % n1
    mod = m * n1
    return (a + m * t) % mod, mod


def crt(congruences: Iterable[tuple[int, int]]) -> tuple[int, int]:
    rows = list(congruences)
    x, m = rows[0]
    for a, n in rows[1:]:
        x, m = crt_pair(x, m, a, n)
    return x, m


def min_exp(base: int, scale: int, multiplier: int, rhs: int) -> int:
    """Smallest e with multiplier*base^(scale*e)>rhs."""
    lo, hi = 0, 1
    while multiplier * pow(base, scale * hi) <= rhs:
        hi *= 2
    while lo < hi:
        mid = (lo + hi) // 2
        if multiplier * pow(base, scale * mid) > rhs:
            hi = mid
        else:
            lo = mid + 1
    return lo


def gate_components(n: int) -> dict[str, int]:
    assert n > 5
    return {
        "A_D25": min_exp(3, 7, 1, K_AD * n**6),
        "A_GAP": min_exp(3, 6, 1, K_AG * n**5),
        "A_LR": min_exp(3, 4, 5, K_AL * n**3),
        "B_D25": min_exp(2, 3, n, K_BD * (n - 2) ** 3),
        "B_GAP": min_exp(2, 3, n, K_BG * (n - 2) ** 3),
        "E_D25": min_exp(5, 2, n, K_ED * (n - 5) ** 2),
        "E_GAP": min_exp(5, 3, n, K_EG * (n - 5) ** 3),
        "E_LR": min_exp(5, 4, 80, K_EL * n**3),
    }


def gates(n: int) -> tuple[int, int, int]:
    c = gate_components(n)
    return (
        max(c["A_D25"], c["A_GAP"], c["A_LR"]),
        max(c["B_D25"], c["B_GAP"]),
        max(c["E_D25"], c["E_GAP"], c["E_LR"]),
    )


def bootstrap_step(A: int, B: int, E: int) -> dict[str, object]:
    R, M = crt(((0, 3**A), (2, 2**B), (5, 5**E)))
    assert 0 < R < M
    assert R % 3**A == 0 and R % 2**B == 2 and R % 5**E == 5
    comp = gate_components(R)
    nxt = gates(R)
    out = tuple(max(x, y) for x, y in zip((A, B, E), nxt))
    s = str(R)
    return {
        "input": [A, B, E],
        "output": list(out),
        "components": comp,
        "least_positive_residue": s if len(s) <= 160 else None,
        "least_positive_residue_digits": len(s),
        "least_positive_residue_sha256": hashlib.sha256(s.encode("ascii")).hexdigest(),
        "modulus_digits": len(str(M)),
        "modulus_factorization": f"2^{B} * 3^{A} * 5^{E}",
    }


def main() -> None:
    # Exact nonsquare obstructions in the current congruence n=5130 mod9000.
    square_obstructions = {
        "q2": {
            "mod3_forces_b_even": True,
            "then_n_minus_2_mod5": 3,
            "square_residues_mod5": [0, 1, 4],
        },
        "q3_mod8": ((5130 - 3) * pow(3, -1, 8)) % 8,
        "q4_mod5": ((5130 - 4) * pow(2, -1, 5)) % 5,
        "q5": {
            "mod3_forces_E_even": True,
            "n_minus_5_mod8": (5130 - 5) % 8,
            "five_even_power_times_odd_square_mod8": 1,
        },
    }
    assert square_obstructions["q3_mod8"] == 5
    assert square_obstructions["q4_mod5"] == 3
    assert square_obstructions["q5"]["n_minus_5_mod8"] == 5

    # Finite implementation regression of the exponent inequalities in §2.3.
    parity_checks = 0
    for e in range(1, 65):
        eps_e = e & 1
        for m in range(1, 65):
            eps_m = m & 1
            # D25^2*v^2 >= q2^3*sf(q2)*q5^2, endpoint/center exponents.
            assert 3 * (e + eps_e) >= 3 * e + eps_e
            assert 4 * m >= 3 * m + eps_m
            # v^4*eta^3 >= q2^2*sf(q2)^2.
            assert 2 * (e + eps_e) >= 2 * e + 2 * eps_e
            assert 6 * m >= 2 * m + 2 * eps_m
            # D25*v^4*eta^2 >= q2^3*sf(q2)^2*q5.
            assert 3 * (e + eps_e) >= 3 * e + 2 * eps_e
            assert 6 * m >= 3 * m + 2 * eps_m
            parity_checks += 1

    # The 799 threshold is exact from n^3-4800n^2+7200n-3200.
    def gap_poly(n: int) -> int:
        return n**3 - 4800 * n**2 + 7200 * n - 3200

    assert gap_poly(4798) <= 0 < gap_poly(4799)
    assert 3 * 4799**2 - 9600 * 4799 + 7200 > 0

    # Exact constants and strict uniform floors.
    n_floor_d25 = 27000 * G0**7 * D0**2 * Q20**3 * S20 * Q50**2
    n_floor_gap = 7990 * G0**6 * D0**2 * D40 * Q20**3 * S20**2 * Q50**3
    assert n_floor_d25 == 30_526_386_030_000_000_000
    assert n_floor_gap == 196_028_014_408_870_000_000
    n0 = n_floor_gap + 1

    comps0 = gate_components(n0)
    assert comps0 == {
        "A_D25": 41,
        "A_GAP": 41,
        "A_LR": 40,
        "B_D25": 64,
        "B_GAP": 65,
        "E_D25": 27,
        "E_GAP": 27,
        "E_LR": 26,
    }
    base = gates(n0)
    assert base == (41, 65, 27)

    base_R, base_M = crt(((0, 3**base[0]), (2, 2**base[1]), (5, 5**base[2])))
    assert base_R == 2_418_804_729_360_800_542_200_273_801_248_140_067_823_231_220_245_361_328_130
    assert base_M == 10_025_620_904_132_800_550_879_134_482_432_000_000_000_000_000_000_000_000_000

    triple = base
    bootstrap = []
    for _ in range(6):
        row = bootstrap_step(*triple)
        bootstrap.append(row)
        triple = tuple(row["output"])  # type: ignore[assignment]

    expected = [
        [107, 147, 66],
        [258, 333, 156],
        [600, 755, 360],
        [1379, 1715, 825],
        [3149, 3897, 1883],
        [7175, 8860, 4287],
    ]
    assert [r["output"] for r in bootstrap] == expected

    result = {
        "status": "PASS",
        "scope": "exact arithmetic replay; not NC6 search or finite endpoint",
        "square_obstructions": square_obstructions,
        "parity_exponent_checks": parity_checks,
        "constants": {
            "K_AD": K_AD,
            "K_AG": K_AG,
            "K_AL": K_AL,
            "K_BD": K_BD,
            "K_BG": K_BG,
            "K_ED": K_ED,
            "K_EG": K_EG,
            "K_EL": K_EL,
            "strict_n_floor_D25_SF": n_floor_d25,
            "strict_n_floor_GAP_SF": n_floor_gap,
            "integer_n_min": n0,
        },
        "base_gates": {
            "components": comps0,
            "triple": list(base),
            "crt_residue": base_R,
            "crt_modulus": base_M,
        },
        "bootstrap": bootstrap,
    }
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": "PASS",
        "parity_checks": parity_checks,
        "base_gates": list(base),
        "bootstrap_last": expected[-1],
        "output": str(OUT),
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
