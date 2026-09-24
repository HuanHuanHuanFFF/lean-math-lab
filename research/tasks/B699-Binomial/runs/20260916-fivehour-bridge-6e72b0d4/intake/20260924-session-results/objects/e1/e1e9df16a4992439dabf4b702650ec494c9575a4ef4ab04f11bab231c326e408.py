#!/usr/bin/env python3
from __future__ import annotations

import hashlib
import itertools
import json
import math
from fractions import Fraction
from pathlib import Path
from typing import Dict, List, Optional, Tuple

BASE = Path(__file__).resolve().parents[1]

# Each target entry is [root x = 3 ± sqrt(5), discrete log e or null].
# If e is null, replay checks (x/c)^ord != 1, hence x/c is not in <2>.
RECORDS = [
    {
        "r": 5, "p": 181, "sqrt5": 27, "order2": 180,
        "pminus1_factor": {2: 2, 3: 2, 5: 1},
        "targets": {"1": [[30, 33], [157, 149]], "3": [[30, 157], [157, 93]]},
    },
    {
        "r": 7, "p": 2521, "sqrt5": 643, "order2": 1260,
        "pminus1_factor": {2: 3, 3: 2, 5: 1, 7: 1},
        "targets": {"1": [[646, 1240], [1881, 22]], "3": [[646, 690], [1881, 732]]},
    },
    {
        "r": 11, "p": 489061, "sqrt5": 192187, "order2": 163020,
        "pminus1_factor": {2: 2, 3: 2, 5: 1, 11: 1, 13: 1, 19: 1},
        "targets": {"1": [[192190, 8015], [296877, 155007]], "3": [[192190, None], [296877, None]]},
    },
    {
        "r": 13, "p": 6811741, "sqrt5": 1659906, "order2": 756860,
        "pminus1_factor": {2: 2, 3: 2, 5: 1, 13: 1, 41: 1, 71: 1},
        "targets": {"1": [[1659909, 212179], [5151838, 544683]], "3": [[1659909, None], [5151838, None]]},
    },
    {
        "r": 17, "p": 1321442641, "sqrt5": 622148273, "order2": 66072132,
        "pminus1_factor": {2: 4, 3: 3, 5: 1, 7: 1, 17: 1, 53: 1, 97: 1},
        "targets": {"1": [[622148276, None], [699294371, None]], "3": [[622148276, None], [699294371, None]]},
    },
    {
        "r": 19, "p": 18405321661, "sqrt5": 7818193714, "order2": 18405321660,
        "pminus1_factor": {2: 2, 3: 3, 5: 1, 11: 1, 17: 1, 19: 1, 53: 1, 181: 1},
        "targets": {"1": [[7818193717, 4384699429], [10587127950, 14020622233]],
                    "3": [[7818193717, 8445060409], [10587127950, 18080983213]]},
    },
    {
        "r": 29, "p": 349, "sqrt5": 62, "order2": 348,
        "pminus1_factor": {2: 2, 3: 1, 29: 1},
        "targets": {"1": [[65, 237], [290, 113]], "3": [[65, 211], [290, 87]]},
    },
    {
        "r": 29, "p": 6961, "sqrt5": 2376, "order2": 1160,
        "pminus1_factor": {2: 4, 3: 1, 5: 1, 29: 1},
        "targets": {"1": [[2379, None], [4588, None]], "3": [[2379, 926], [4588, None]]},
    },
    {
        "r": 37, "p": 2221, "sqrt5": 362, "order2": 2220,
        "pminus1_factor": {2: 2, 3: 1, 5: 1, 37: 1},
        "targets": {"1": [[365, 1231], [1862, 991]], "3": [[365, 703], [1862, 463]]},
    },
    {
        "r": 37, "p": 99901, "sqrt5": 44832, "order2": 99900,
        "pminus1_factor": {2: 2, 3: 3, 5: 2, 37: 1},
        "targets": {"1": [[44835, 85099], [55072, 14803]], "3": [[44835, 95303], [55072, 25007]]},
    },
    {
        "r": 49, "p": 2521, "sqrt5": 643, "order2": 1260,
        "pminus1_factor": {2: 3, 3: 2, 5: 1, 7: 1},
        "targets": {"1": [[646, 1240], [1881, 22]], "3": [[646, 690], [1881, 732]]},
    },
    {
        "r": 49, "p": 197569, "sqrt5": 65560, "order2": 49392,
        "pminus1_factor": {2: 6, 3: 2, 7: 3},
        "targets": {"1": [[65563, None], [132012, None]], "3": [[65563, 474], [132012, 37997]]},
    },
]

ANTICHAIN_RANKS = [5, 7, 11, 13, 19]
INDIVIDUAL_FORBIDDEN = [17, 29, 37, 49]
PRIOR_RANKS = [23, 31, 47, 59, 61, 67, 71, 101]


def is_prime_trial(n: int) -> bool:
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


def factor_product(fac: Dict[int, int]) -> int:
    z = 1
    for p, e in fac.items():
        assert is_prime_trial(int(p))
        z *= int(p) ** int(e)
    return z


def mul_pair(x: Tuple[int, int], y: Tuple[int, int], mod: int) -> Tuple[int, int]:
    a, b = x
    c, d = y
    return ((a * c + 3 * b * d) % mod, (a * d + b * c) % mod)


def pow_pair(n: int, mod: int) -> Tuple[int, int]:
    out = (1, 0)
    base = (2 % mod, 1 % mod)
    while n:
        if n & 1:
            out = mul_pair(out, base, mod)
        base = mul_pair(base, base, mod)
        n >>= 1
    return out


def exact_order_check(p: int, order: int) -> None:
    assert (p - 1) % order == 0
    assert pow(2, order, p) == 1
    n = order
    d = 2
    prime_divs = []
    while d * d <= n:
        if n % d == 0:
            prime_divs.append(d)
            while n % d == 0:
                n //= d
        d += 1 if d == 2 else 2
    if n > 1:
        prime_divs.append(n)
    for q in prime_divs:
        assert pow(2, order // q, p) != 1


def pell_U(n: int) -> int:
    if n == 0:
        return 1
    if n == 1:
        return 2
    a, b = 1, 2
    for _ in range(2, n + 1):
        a, b = b, 4 * b - a
    return b


def residues(record: dict, c: int) -> List[int]:
    return sorted(int(e) for _, e in record["targets"][str(c)] if e is not None)


def verify_record(record: dict) -> dict:
    r = int(record["r"])
    p = int(record["p"])
    z = int(record["sqrt5"])
    order = int(record["order2"])
    fac = {int(k): int(v) for k, v in record["pminus1_factor"].items()}
    assert is_prime_trial(p)
    assert factor_product(fac) == p - 1
    exact_order_check(p, order)
    assert z * z % p == 5
    roots = {(3 + z) % p, (3 - z) % p}
    assert len(roots) == 2
    assert pow_pair(r, p)[0] == 0  # p | U_r
    if r in (5, 7, 11, 13, 17, 19):
        assert pell_U(r) // 2 == p

    target_checks = []
    for c in (1, 3):
        seen_roots = set()
        for x, e in record["targets"][str(c)]:
            x = int(x)
            assert x in roots
            assert x not in seen_roots
            seen_roots.add(x)
            target = x * pow(c, -1, p) % p
            membership_power = pow(target, order, p)
            if e is None:
                assert membership_power != 1
            else:
                e = int(e)
                assert 0 <= e < order
                assert pow(2, e, p) == target
                assert membership_power == 1
            target_checks.append({"c": c, "root": x, "log": e, "membership_power": membership_power})
        assert seen_roots == roots
    return {
        "r": r, "p": p, "order2": order,
        "E1": residues(record, 1), "E3": residues(record, 3),
        "target_checks": target_checks,
    }


def compatible(a: dict, b: dict, c: int) -> bool:
    ra = residues(a, c)
    rb = residues(b, c)
    if not ra or not rb:
        return False
    g = math.gcd(int(a["order2"]), int(b["order2"]))
    return any((x - y) % g == 0 for x in ra for y in rb)


def q_residue(rank: int) -> int:
    return (-pow(8, -1, rank)) % rank


def main() -> None:
    # Exact arithmetic checks used by the paper height corridor.
    a8_u, a8_x = pow_pair(8, 10**30 + 57)  # modulus exceeds the exact coordinates
    assert (a8_u, a8_x) == (18817, 10864)
    # sqrt(3) > 4/3, hence alpha^8 > U + 4X/3 > 2^15.
    assert 3 * a8_u + 4 * a8_x > 3 * (1 << 15)
    assert 60802 < (1 << 16)

    checked = [verify_record(r) for r in RECORDS]
    by_rank: Dict[int, List[dict]] = {}
    for r in RECORDS:
        by_rank.setdefault(int(r["r"]), []).append(r)

    # Single-rank closures.
    r17 = by_rank[17][0]
    assert not residues(r17, 1) and not residues(r17, 3)
    for r in (29, 37, 49):
        a, b = by_rank[r]
        assert not compatible(a, b, 1)
        assert not compatible(a, b, 3)

    # Pairwise antichain: any two distinct ranks divide t => impossible.
    pair_cert = []
    for x, y in itertools.combinations(ANTICHAIN_RANKS, 2):
        a = by_rank[x][0]
        b = by_rank[y][0]
        c1 = compatible(a, b, 1)
        c3 = compatible(a, b, 3)
        assert not c1 and not c3
        R = x * y
        pair_cert.append({
            "r1": x, "r2": y, "rank_product": R,
            "q_residue": q_residue(R),
            "gcd_orders": math.gcd(int(a["order2"]), int(b["order2"])),
            "compatible_c1": c1, "compatible_c3": c3,
        })

    # Exact formal-row density for the new gate, per fixed rho.
    B = [5, 11, 13, 19]
    prod_B_avoid = Fraction(1, 1)
    for p in B:
        prod_B_avoid *= Fraction(p - 1, p)
    none_A = Fraction(6, 7) * prod_B_avoid
    only_7_exact = Fraction(6, 49) * prod_B_avoid
    only_other = Fraction(0, 1)
    for p in B:
        term = Fraction(1, p) * Fraction(6, 7)
        for q in B:
            if q != p:
                term *= Fraction(q - 1, q)
        only_other += term
    survive_antichain_and_49 = none_A + only_7_exact + only_other
    survive_new = survive_antichain_and_49 * Fraction(16, 17) * Fraction(28, 29) * Fraction(36, 37)
    eliminated_new = 1 - survive_new
    assert eliminated_new == Fraction(370364983, 1734627895)

    # Adopt and cross-check Round 13 prior-rank certificate.
    prior_path = BASE / "sources" / "round13_rank_sieve.json"
    prior = json.loads(prior_path.read_text(encoding="utf-8"))
    prior_loaded = sorted(int(x["r"]) for x in prior["universal_bad_rank_seeds"])
    assert prior_loaded == PRIOR_RANKS
    prior_elim = Fraction(
        int(prior["formal_row_union_density"]["numerator"]),
        int(prior["formal_row_union_density"]["denominator"]),
    )
    assert prior_elim == Fraction(397149830551, 2519393030551)
    combined_elim = 1 - (1 - prior_elim) * (1 - eliminated_new)
    assert combined_elim == Fraction(132101365092535013, 391420459405495013)

    # Finite divisibility gates alone have an infinite formal survivor shell.
    shell_moduli = [5, 49, 11, 13, 17, 19] + PRIOR_RANKS + [29, 37]
    shell_M = math.prod(shell_moduli)
    assert shell_M == 703603718111238643043345
    shell_samples = []
    for rho in range(12, 21):
        q = 3 * (1 << (rho - 3)) * shell_M
        t = 8 * q + 1
        assert (q & -q).bit_length() - 1 == rho - 3
        assert q % 3 == 0 and t % 4096 == 1
        assert all(t % r == 1 for r in shell_moduli)
        shell_samples.append({"rho": rho, "q": q, "t": t})

    out = {
        "status": "PASS",
        "uniform_height": {
            "balanced": "(t-5)/2 <= s <= 18*t+15",
            "bridge4096": "(45*t-61)/8 <= s <= 18*t+15",
            "power_valuation": "45*q <= v2(R) <= 144*q+35",
            "proof_level": "paper inequalities; exact arithmetic constants",
            "alpha8_coordinates": [a8_u, a8_x],
            "alpha8_gt_2pow15_check": 3 * a8_u + 4 * a8_x > 3 * (1 << 15),
            "60802_lt_2pow16": 60802 < (1 << 16),
        },
        "records": checked,
        "individual_forbidden_ranks": [
            {"r": r, "q_residue": q_residue(r)} for r in INDIVIDUAL_FORBIDDEN
        ],
        "pairwise_antichain": pair_cert,
        "new_gate_density": {
            "eliminated_numerator": eliminated_new.numerator,
            "eliminated_denominator": eliminated_new.denominator,
            "eliminated_decimal": float(eliminated_new),
            "surviving_numerator": survive_new.numerator,
            "surviving_denominator": survive_new.denominator,
            "scope": "formal Pell q rows per fixed rho, before m/P/Q recovery",
        },
        "combined_with_round13": {
            "eliminated_numerator": combined_elim.numerator,
            "eliminated_denominator": combined_elim.denominator,
            "eliminated_decimal": float(combined_elim),
            "prior_eliminated_decimal": float(prior_elim),
        },
        "formal_survivor_shell": {
            "M": shell_M,
            "formula": "q=3*2^(rho-3)*M, t=8q+1",
            "samples": shell_samples,
            "warning": "rank-divisibility shell only; not NC3 and not a square/POWER/PQ recovery",
        },
        "claims_not_made": [
            "all rho>=12 closed", "odd--odd closed", "global finite", "Lean",
            "full i=3", "full B699", "counterexample",
        ],
    }
    cert = BASE / "certificates" / "rank_exponent.json"
    cert.write_text(json.dumps(out, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    replay_out = BASE / "outputs" / "replay.json"
    replay_out.write_text(json.dumps(out, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": "PASS",
        "records": len(checked),
        "forbidden_ranks": INDIVIDUAL_FORBIDDEN,
        "antichain_pairs": len(pair_cert),
        "new_eliminated": float(eliminated_new),
        "combined_eliminated": float(combined_elim),
        "certificate": str(cert),
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
