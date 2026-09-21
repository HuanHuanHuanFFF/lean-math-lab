#!/usr/bin/env python3
from __future__ import annotations

import json
from math import gcd, lcm
from pathlib import Path

from arithmetic import (
    alpha4_period,
    balanced_values,
    legendre,
    pair_mul,
    pair_pow,
    pell_pair,
    sequence_state,
    square_target_mod,
)

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / "certificates"
CERT.mkdir(exist_ok=True)

X_WITNESSES = {
    3:[193],4:[53,17],5:[13],6:[757,71],7:[37,17],8:[43,23],9:[97],
    10:[53,37],11:[19],12:[41,71],13:[17],14:[241,73],15:[17],16:[97],
    17:[53],18:[13],19:[61],20:[13],21:[181,29],22:[19],23:[571],24:[71],
    25:[11],26:[661,19],27:[71,41],28:[97],29:[13],30:[17],31:[13],32:[7],
    33:[19],34:[53],35:[13],36:[97,337,71],37:[53],38:[181],39:[73],
}

U_WITNESSES = {
    1:[5],3:[17,5],6:[5],9:[13],13:[5],18:[17],26:[5],37:[13],
    39:[17,73],61:[5],73:[5],74:[13],78:[5],109:[193],111:[5],
    117:[11,19,181,241],122:[11],146:[5],157:[97],169:[157],181:[5],
    183:[5],218:[5],219:[13],222:[17],229:[13],234:[17,53],
}


def dump(name: str, payload: object) -> None:
    (CERT / name).write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def quotient_mod(numerator_residue: int, multiplier: int, prime: int) -> int:
    modulus = multiplier * prime
    z = numerator_residue % modulus
    if z % multiplier:
        raise ValueError("branch quotient is not integral in this state")
    return (z // multiplier) % prime


def obstruction(side: str, multiplier: int, prime: int, k: int) -> dict | None:
    modulus = multiplier * prime
    st = sequence_state(k, modulus)
    if side == "X":
        numerator = 9 * st["X_b"]
        if numerator % multiplier:
            return None
        B = quotient_mod(numerator, multiplier, prime)
        A = multiplier * st["U_a"] % prime
    elif side == "U":
        numerator = 9 * st["U_a"]
        if numerator % multiplier:
            return None
        B = quotient_mod(numerator, multiplier, prime)
        A = multiplier * st["X_b"] % prime
    else:
        raise ValueError(side)
    inv2 = pow(2, -1, prime)
    d = (3 * st["X_t"] - 1) * inv2 % prime
    y = st["U_t"] * inv2 % prime
    v = A * y % prime
    W = B * y % prime
    S = square_target_mod(d, v, W, prime)
    return {"S": S, "legendre": legendre(S, prime), "A": A, "B": B, "d": d, "y": y}


def make_side_certificate(side: str, max_multiplier: int, witnesses: dict[int, list[int]], analytic: set[int]) -> dict:
    records = []
    for m in range(1, max_multiplier + 1):
        base_period = alpha4_period(m)
        base_L = lcm(3, base_period)
        base_valid = []
        for k in range(base_L):
            if k % 3 == 1:  # TRI3 removes t divisible by 3
                continue
            st = sequence_state(k, m)
            numerator = 9 * (st["X_b"] if side == "X" else st["U_a"])
            if numerator % m == 0:
                base_valid.append(k)
        if m in analytic:
            records.append({
                "multiplier": m,
                "status": "analytic",
                "base_period": base_period,
                "base_global_period": base_L,
                "base_valid_states": base_valid,
            })
            continue
        if not base_valid:
            records.append({
                "multiplier": m,
                "status": "no_branch_state",
                "base_period": base_period,
                "base_global_period": base_L,
                "base_valid_states": [],
            })
            continue
        ps = witnesses.get(m)
        if not ps:
            raise RuntimeError(f"missing witness list for {side} multiplier={m}")
        periods = {str(p): alpha4_period(m * p) for p in ps}
        global_period = 3
        for period in periods.values():
            global_period = lcm(global_period, period)
        states = []
        valid_count = 0
        witness_counts = {str(p): 0 for p in ps}
        for k in range(global_period):
            if k % 3 == 1:
                continue
            # branch validity is visible modulo m*p for every listed p
            trial = obstruction(side, m, ps[0], k)
            if trial is None:
                continue
            valid_count += 1
            chosen = None
            all_values = {}
            for p in ps:
                value = obstruction(side, m, p, k)
                if value is None:
                    raise RuntimeError("inconsistent branch validity")
                all_values[str(p)] = {"S": value["S"], "legendre": value["legendre"]}
                if chosen is None and value["legendre"] == -1:
                    chosen = p
            if chosen is None:
                raise RuntimeError(f"uncovered {side} m={m}, k={k}")
            witness_counts[str(chosen)] += 1
            states.append({"k": k, "witness": chosen, "checks": all_values})
        records.append({
            "multiplier": m,
            "status": "nonresidue_cover",
            "base_period": base_period,
            "base_global_period": base_L,
            "base_valid_states": base_valid,
            "primes": ps,
            "periods": periods,
            "global_period": global_period,
            "valid_count": valid_count,
            "witness_counts": witness_counts,
            "states": states,
        })
    return {
        "schema": "B699-D-i3-round10-block-cover-v1",
        "side": side,
        "max_multiplier": max_multiplier,
        "tri3_excluded_k_mod_3": 1,
        "records": records,
    }


def make_bicof2() -> dict:
    return {
        "schema": "B699-D-i3-round10-bicof2-v1",
        "nearest_integer": 69,
        "square_checks": {"69^2": 69**2, "40sqrt3_squared": 4800, "70^2": 70**2},
        "distance_lower_bound": "40*sqrt(3)-69 = 39/(40*sqrt(3)+69) > 39/139",
        "error_numerator_bound": "8*B^2+44+48/B <= 100*B^2 for B>=1",
        "constant_check": {"13900": 13900, "357*39": 357*39, "strict": 13900 < 357*39},
        "conclusion": "d < 357 B^2",
        "derived": {
            "A^2": "A^2 < 3213 d < 2^12 d",
            "Q^2": "Q^2 < 2^12 d^3",
            "n": "n < 2^41 d^6",
            "s": "s <= floor((114 t + 349)/10)",
        },
    }


def make_tri3() -> dict:
    seq = []
    u0, u1 = 1, 2
    for n in range(6):
        if n == 0:
            u = u0
        elif n == 1:
            u = u1
        else:
            u0, u1 = u1, (4 * u1 - u0) % 5
            u = u1
        seq.append(u % 5)
    return {
        "schema": "B699-D-i3-round10-tri3-v1",
        "U_mod_5_first_six": seq,
        "period": [1, 2, 2],
        "argument": "if 3|t then y=U_t/2=3 mod5, but Y^2=5d^4 mod y forces Jacobi(5/y)=1 whereas reciprocity gives -1",
        "conclusion": "3 does not divide t; for t=8k+1, k is not 1 mod3",
    }


def make_mixed_model() -> dict:
    t = 41
    a = (t + 1) // 2
    b = (t - 1) // 2
    U_a, _ = pell_pair(a)
    _, X_b = pell_pair(b)
    B = (9 * X_b // 2) * 13 // 11
    L = 9 * U_a * X_b
    A = L // B
    values = balanced_values(t, A, B)
    values.update({
        "a": a, "b": b, "U_a": U_a, "X_b": X_b,
        "B_divides_9Xb": (9 * X_b) % B == 0,
        "B_divides_9Ua": (9 * U_a) % B == 0,
        "bicof2": values["d"] < 357 * B * B,
        "gcd_B_9Xb": gcd(B, 9 * X_b),
        "gcd_B_9Ua": gcd(B, 9 * U_a),
        "status": "necessary balanced split only; square norm is not a square; not NC3",
    })
    return values


def main() -> None:
    dump("bicof2.json", make_bicof2())
    dump("tri3.json", make_tri3())
    dump("xblock.json", make_side_certificate("X", 39, X_WITNESSES, {1, 2}))
    dump("ublock.json", make_side_certificate("U", 250, U_WITNESSES, {2}))
    dump("mixed_weak_model.json", make_mixed_model())
    print("CERTIFICATES_GENERATED=PASS")


if __name__ == "__main__":
    main()
