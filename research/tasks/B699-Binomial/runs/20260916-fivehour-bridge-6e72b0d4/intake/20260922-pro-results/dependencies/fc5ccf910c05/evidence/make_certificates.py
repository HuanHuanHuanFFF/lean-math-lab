#!/usr/bin/env python3
from __future__ import annotations

import json
import os
from itertools import combinations
from math import lcm
from pathlib import Path
from typing import Dict, List, Sequence, Tuple

from arithmetic import (
    G_value,
    R_mod_for_shell,
    alpha4_period,
    base_classes,
    high_bridge_exact,
    high_obstruction,
    lift_shell_w,
    odd_divisors_below,
    pell_pair,
    primes_below,
    theta,
    v2,
    w_classes_for_multiplier,
    xy_mod_for_w,
)

ROOT = Path(__file__).resolve().parents[1]
CERT = Path(os.environ.get("B699_CERT_DIR", str(ROOT / "certificates")))
CERT.mkdir(parents=True, exist_ok=True)
PRIMES = primes_below(2000)


def dump(name: str, payload: object) -> None:
    (CERT / name).write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def witness_checks(multiplier: int, rho: int, residue: int, modulus: int, primes: Sequence[int]) -> dict | None:
    periods = {p: alpha4_period(p) for p in primes}
    global_modulus = modulus
    for period in periods.values():
        global_modulus = lcm(global_modulus, period)
    checks = []
    counts = {p: 0 for p in primes}
    for q in range(residue, global_modulus, modulus):
        selected = None
        data = {}
        for prime in primes:
            value = high_obstruction(multiplier, prime, q, rho)
            if value is None:
                return None
            data[str(prime)] = {"S": value["S"], "legendre": value["legendre"]}
            if selected is None and value["legendre"] == -1:
                selected = prime
        if selected is None:
            return None
        counts[selected] += 1
        checks.append({"q_residue": q, "witness": selected, "checks": data})
    return {
        "primes": list(primes),
        "prime_periods": {str(p): periods[p] for p in primes},
        "global_modulus": global_modulus,
        "lift_count": len(checks),
        "witness_counts": {str(p): counts[p] for p in primes},
        "checks": checks,
    }


def find_witness(multiplier: int, rho: int, residue: int, modulus: int) -> dict:
    # First seek a single prime.  This succeeds for all but one certified class.
    for prime in PRIMES:
        if multiplier % prime == 0:
            continue
        record = witness_checks(multiplier, rho, residue, modulus, [prime])
        if record is not None:
            return record

    # If no single prime covers every lift, retain primes with partial coverage
    # and test pairs on their common exact period.
    candidates = [p for p in PRIMES[:100] if multiplier % p]
    for first, second in combinations(candidates, 2):
        record = witness_checks(multiplier, rho, residue, modulus, [first, second])
        if record is not None:
            return record
    raise RuntimeError(
        f"no witness set found for rho={rho}, multiplier={multiplier}, "
        f"residue={residue} mod {modulus}"
    )


def make_power_identity() -> dict:
    roots = [{"bits": bits, "theta": theta(bits)} for bits in range(1, 15)]
    return {
        "schema": "B699-D-i3-round12-power-resultant-v1",
        "definitions": {
            "F": "4*d*v*H^2-4*v*Q^2*H-(Q^4-d)",
            "N": "4*v*H^3+H+Q",
            "Acal": "Q^3*(d+4v)",
            "Ccal": "Q^5-d*v",
            "M": "H*Acal+Ccal",
            "L": "3d^6+19d^5v+50d^4v^2+70d^3v^3+55d^2v^4-2d^2v+23dv^5+4v^6",
            "R": "Q^10-12Q^7+15dQ^6-4d^2Q^5-4dQ^3+12d^2Q^2-12d^3Q+4d^4",
        },
        "identities": [
            "d^2*N-Q*M=(H*d+Q^2)*F",
            "d^2*R-4*v*M*(d*M-L)=-Q^6*(d+4v)^2*F",
            "on the original input M=c*d^2*2^(s-1)",
            "R=c*v*2^(s+1)*(c*d^3*2^(s-1)-L)",
            "v2(R)=s+1+v2(v)",
        ],
        "high_bridge": {
            "v2_v": 1,
            "s_lower": "s>=3*rho+7",
            "R_valuation_lower": "v2(R)>=3*rho+9",
            "low_hensel_gate": "m*x*y=theta_(rho-2) mod 2^(rho-2)",
            "row_uniqueness": "for fixed q, at most one 0<m<27*2^(rho-1) can satisfy the R-valuation gate",
        },
        "G": "128a^9+640a^8+1440a^7+1728a^6+1128a^5+344a^4-10a^3-44a^2-11a-1",
        "theta_roots": roots,
    }


def make_q32() -> dict:
    q = 32
    U_a, _ = pell_pair(4 * q + 1)
    _, X_b = pell_pair(4 * q)
    rho = v2(X_b)
    u = U_a // 2
    bound = 27 * (1 << (rho - 1))
    multipliers = odd_divisors_below(9 * u, bound)
    rows = [high_bridge_exact(q, m) for m in multipliers]
    return {
        "schema": "B699-D-i3-round12-q32-diagnostic-v1",
        "q": q,
        "rho": rho,
        "strict_multiplier_bound": bound,
        "multipliers": multipliers,
        "rows": rows,
        "conclusion": "every formal q=32 high-bridge row fails v2(R)>=3rho+9; the round-11 weak row m=1 is deleted by the same-input POWER gate",
    }


def make_shell() -> dict:
    rho = 8
    multiplier = 1
    target_bits = 30
    root = lift_shell_w(rho, multiplier, target_bits)
    modulus = 1 << target_bits
    target_R_bits = target_bits + 3
    return {
        "schema": "B699-D-i3-round12-two-adic-shell-v1",
        "rho": rho,
        "multiplier": multiplier,
        "w_residue": root,
        "w_modulus": modulus,
        "w_is_odd": bool(root & 1),
        "q_mod_3": ((1 << (rho - 3)) * root) % 3,
        "R_modulus_bits": target_R_bits,
        "R_residue": R_mod_for_shell(rho, root, multiplier, target_R_bits),
        "interpretation": "formal 2-adic shell only; it lacks the global square recovery, exact POWER equality, prime-power Q/P and original n,j",
    }


def make_layers() -> dict:
    layer_records = []
    total_classes = 0
    total_lifts = 0
    total_surviving_multipliers = 0

    for rho in range(8, 12):
        bound = 27 * (1 << (rho - 1))
        records = []
        surviving = 0
        base_count = 0
        lift_count = 0
        pair_count = 0
        for multiplier in range(1, bound, 2):
            classes = base_classes(multiplier, rho)
            if not classes:
                continue
            surviving += 1
            w_classes = list(w_classes_for_multiplier(multiplier, rho))
            for residue, modulus in classes:
                witness = find_witness(multiplier, rho, residue, modulus)
                if len(witness["primes"]) > 1:
                    pair_count += 1
                base_count += 1
                lift_count += witness["lift_count"]
                records.append({
                    "multiplier": multiplier,
                    "w_classes_mod_2^(rho-2)": w_classes,
                    "q_residue": residue,
                    "q_modulus": modulus,
                    "witness": witness,
                })
        layer_records.append({
            "rho": rho,
            "theta": theta(rho - 2),
            "strict_multiplier_bound": bound,
            "odd_multipliers_before_filters": bound // 2,
            "surviving_multiplier_count": surviving,
            "base_crt_class_count": base_count,
            "witness_lift_count": lift_count,
            "multi_prime_class_count": pair_count,
            "records": records,
        })
        total_surviving_multipliers += surviving
        total_classes += base_count
        total_lifts += lift_count
        print(
            f"LAYER rho={rho} surviving_m={surviving} "
            f"classes={base_count} witness_lifts={lift_count} pairs={pair_count}",
            flush=True,
        )

    return {
        "schema": "B699-D-i3-round12-high-layers-8-11-v1",
        "necessary_filters": [
            "v2(q)=rho-3",
            "q mod 3 is 0 or 2",
            "m divides 9u",
            "m*x*y=theta_(rho-2) mod 2^(rho-2) from POWER",
        ],
        "layers": layer_records,
        "total_surviving_multiplier_count": total_surviving_multipliers,
        "total_base_crt_class_count": total_classes,
        "total_witness_lift_count": total_lifts,
        "conclusion": "rho=8,9,10,11 excluded; a surviving pure-two high bridge has rho>=12, 512|q, and t=8q+1=1 mod4096",
    }


def main() -> None:
    dump("power_identity.json", make_power_identity())
    dump("q32_diagnostic.json", make_q32())
    dump("two_adic_shell.json", make_shell())
    dump("layers_8_11.json", make_layers())
    print("CERTIFICATES_GENERATED=PASS")


if __name__ == "__main__":
    main()
