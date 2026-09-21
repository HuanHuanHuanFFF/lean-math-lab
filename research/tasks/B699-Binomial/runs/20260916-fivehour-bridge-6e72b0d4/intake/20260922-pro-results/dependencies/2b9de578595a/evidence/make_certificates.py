#!/usr/bin/env python3
from __future__ import annotations

import json
from math import lcm
from pathlib import Path

from arithmetic import (
    alpha4_period,
    high_bridge_weak_model,
    high_obstruction,
    low_obstruction,
    pair_mul,
    sequence_state,
)

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / "certificates"
CERT.mkdir(exist_ok=True)

LOW_WITNESSES = {
    1:[53,193], 3:[607,31], 13:[661,19], 37:[5],
    39:[193], 61:[5], 73:[17],
}

HIGH_WITNESSES = {
3: {1:[7],3:[193],9:[5],13:[37],37:[5],39:[5],61:[7],73:[17]},
4: {1:[31],3:[5],9:[31],13:[5],37:[17],39:[5],61:[7],73:[5],109:[5],111:[13],117:[7],157:[103],169:[5],181:[31],183:[5]},
5: {1:[5],3:[7],9:[97],13:[5],37:[13],39:[97],61:[5],73:[5],109:[97],111:[5],117:[31],157:[7],169:[7],181:[5],183:[5],219:[13],229:[31],277:[47],327:[17],333:[5],349:[97],373:[17],397:[13],409:[7],421:[5]},
6: {1:[31],3:[31],9:[7],13:[7],37:[5],39:[31],61:[5],73:[13],109:[17],111:[5],117:[5],157:[5],169:[31],181:[7],183:[11],219:[7],229:[13],277:[5],327:[5],333:[13],349:[7],373:[7],397:[5],409:[97],421:[5],457:[5],471:[5],481:[5],507:[5],541:[5],543:[61],549:[11],601:[5],613:[13],657:[5],661:[5],687:[5],709:[7],733:[127],757:[5],793:[7],829:[31],831:[17],853:[7]},
7: {1:[97],3:[31],9:[5],13:[17],37:[5],39:[5],61:[7],73:[127],109:[5],111:[53],117:[5],157:[5],169:[5],181:[11],183:[17],219:[5],229:[5],277:[7],327:[5],333:[7],349:[5],373:[1489,11,79],397:[5],409:[5],421:[11],457:[5],471:[13],481:[7],507:[5],541:[17],543:[7],549:[5],601:[13],613:[7],657:[5],661:[11],687:[5],709:[5],733:[7],757:[5],793:[11],829:[5],831:[7],853:[31],877:[5],949:[5],981:[17],997:[5],1021:[11],1047:[7],1069:[5],1093:[41],1117:[5],1119:[5],1191:[17],1213:[13],1227:[5],1237:[7],1263:[11],1297:[5],1321:[7],1369:[5],1371:[97],1381:[13],1413:[103],1417:[5],1429:[5],1443:[17],1453:[7],1521:[31],1549:[5],1597:[5],1621:[7],1623:[37],1629:[5],1657:[5],1669:[5],1693:[41]},
}

HIGH_BOUNDS = {3:75, 4:216, 5:432, 6:864, 7:1728}  # strict m < bound


def dump(name: str, payload: object) -> None:
    (CERT / name).write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def base_low(multiplier: int) -> tuple[int, int, list[int]]:
    period = alpha4_period(multiplier)
    L = lcm(3, period)
    states = []
    for k in range(L):
        if k % 3 == 1:
            continue
        st = sequence_state(k, multiplier)
        if (18 * st["U_a"]) % multiplier == 0:
            states.append(k)
    return period, L, states


def base_high(multiplier: int, r: int) -> tuple[int, int, list[int]]:
    period = alpha4_period(multiplier)
    two_period = 1 << (r - 2)
    exact = 1 << (r - 3)
    L = lcm(3, two_period, period)
    states = []
    for k in range(L):
        if k % 3 == 1 or k % exact != 0 or k % two_period == 0:
            continue
        st = sequence_state(k, multiplier)
        if (((1 << (r - 1)) * 9 * st["U_a"]) % multiplier) == 0:
            states.append(k)
    return period, L, states


def covered_record_low(multiplier: int, primes: list[int]) -> dict:
    periods = {str(p): alpha4_period(multiplier * p) for p in primes}
    L = 3
    for period in periods.values():
        L = lcm(L, period)
    states = []
    counts = {str(p): 0 for p in primes}
    for k in range(L):
        if k % 3 == 1:
            continue
        first = low_obstruction(multiplier, primes[0], k)
        if first is None:
            continue
        checks = {}
        chosen = None
        for p in primes:
            value = low_obstruction(multiplier, p, k)
            if value is None:
                raise RuntimeError("inconsistent low branch validity")
            checks[str(p)] = {"S": value["S"], "legendre": value["legendre"]}
            if chosen is None and value["legendre"] == -1:
                chosen = p
        if chosen is None:
            raise RuntimeError(f"uncovered low multiplier={multiplier}, k={k}")
        counts[str(chosen)] += 1
        states.append({"k": k, "witness": chosen, "checks": checks})
    return {"primes": primes, "periods": periods, "global_period": L,
            "valid_count": len(states), "witness_counts": counts, "states": states}


def covered_record_high(multiplier: int, primes: list[int], r: int) -> dict:
    periods = {str(p): alpha4_period(multiplier * p) for p in primes}
    L = lcm(3, 1 << (r - 2))
    for period in periods.values():
        L = lcm(L, period)
    states = []
    counts = {str(p): 0 for p in primes}
    exact = 1 << (r - 3)
    two_period = 1 << (r - 2)
    for k in range(L):
        if k % 3 == 1 or k % exact != 0 or k % two_period == 0:
            continue
        first = high_obstruction(multiplier, primes[0], k, r)
        if first is None:
            continue
        checks = {}
        chosen = None
        for p in primes:
            value = high_obstruction(multiplier, p, k, r)
            if value is None:
                raise RuntimeError("inconsistent high branch validity")
            checks[str(p)] = {"S": value["S"], "legendre": value["legendre"]}
            if chosen is None and value["legendre"] == -1:
                chosen = p
        if chosen is None:
            raise RuntimeError(f"uncovered high r={r}, multiplier={multiplier}, k={k}")
        counts[str(chosen)] += 1
        states.append({"k": k, "witness": chosen, "checks": checks})
    return {"primes": primes, "periods": periods, "global_period": L,
            "valid_count": len(states), "witness_counts": counts, "states": states}


def make_two_adic() -> dict:
    return {
        "schema": "B699-D-i3-round11-two-adic-v1",
        "identities": [
            "v2(U_(4k+1))=1",
            "v2(X_(4k))=v2(k)+3=:r",
            "gcd(U_(4k+1),X_(4k))=2",
            "if B_X is a power of two, write U=2u, X=2^r x, B=2^beta*9u/m, A=2^(r+1-beta)mx",
        ],
        "mod8_dichotomy": "square norm forces beta=2 or r+1-beta=1",
        "low_endpoint": {
            "formula": "A=mX/2, B=18U/m",
            "J_residues_mod_16": [4, 12],
            "distance_lower_bound": "dist(40sqrt3,{4,12} mod16) >= 40sqrt3-68 > 88/69",
            "bootstrap_bounds": ["d<10B^2 => m<=83", "k>=2 => B>8", "d<8B^2 => odd m<=73"],
        },
        "high_endpoint": {
            "formula": "A=mX/2^(r-1)=2mx, B=2^(r-1)9U/m",
            "r3": {"J_mod_16": 0, "d_bound": "d<2B^2", "odd_m_max": 73},
            "r_ge_4": {"J_mod_16": 8, "d_bound": "d<4B^2", "multiplier_bound": "m<27*2^(r-1)"},
        },
    }


def make_low() -> dict:
    records = []
    no_state = covered = 0
    for m in range(1, 75, 2):
        period, L, valid = base_low(m)
        rec = {"multiplier": m, "base_period": period,
               "base_global_period": L, "base_valid_states": valid}
        if not valid:
            rec["status"] = "no_branch_state"
            no_state += 1
        elif m == 9:
            rec.update({
                "status": "analytic_m9",
                "proof_data": {
                    "actual_k_min": 2,
                    "X_8": 10864,
                    "f_interval": ["11/8", "3/2"],
                    "center_fraction_interval": ["1/8", "1/4"],
                    "error_upper": "5/(3X)<1/8",
                },
            })
        else:
            if m not in LOW_WITNESSES:
                raise RuntimeError(f"missing low witness map m={m}")
            rec["status"] = "nonresidue_cover"
            rec.update(covered_record_low(m, LOW_WITNESSES[m]))
            covered += rec["valid_count"]
        records.append(rec)
    return {
        "schema": "B699-D-i3-round11-low-endpoint-v1",
        "strict_multiplier_bound": "m<75; m odd, hence m<=73",
        "no_state_count": no_state,
        "covered_finite_states": covered,
        "analytic_multiplier": 9,
        "records": records,
    }


def make_high() -> dict:
    layers = []
    grand_states = 0
    for r in range(3, 8):
        bound = HIGH_BOUNDS[r]
        records = []
        no_state = state_multiplier_count = covered_states = 0
        for m in range(1, bound, 2):
            period, L, valid = base_high(m, r)
            rec = {"multiplier": m, "base_period": period,
                   "base_global_period": L, "base_valid_states": valid}
            if not valid:
                rec["status"] = "no_branch_state"
                no_state += 1
            else:
                state_multiplier_count += 1
                primes = HIGH_WITNESSES[r].get(m)
                if not primes:
                    raise RuntimeError(f"missing high witness r={r},m={m}")
                rec["status"] = "nonresidue_cover"
                rec.update(covered_record_high(m, primes, r))
                covered_states += rec["valid_count"]
            records.append(rec)
        if state_multiplier_count != len(HIGH_WITNESSES[r]):
            raise RuntimeError(f"high map mismatch r={r}")
        grand_states += covered_states
        layers.append({
            "r": r,
            "k_condition": f"v2(k)={r-3}",
            "strict_multiplier_bound": bound,
            "odd_multipliers_tested": len(records),
            "no_state_count": no_state,
            "state_multiplier_count": state_multiplier_count,
            "covered_finite_states": covered_states,
            "records": records,
        })
    return {
        "schema": "B699-D-i3-round11-high-layers-v1",
        "layers": layers,
        "covered_finite_states": grand_states,
        "conclusion": "r=3,4,5,6,7 excluded; surviving pure-two bridge has r>=8, 32|k, t=8k+1=1 mod256",
    }


def main() -> None:
    dump("two_adic_split.json", make_two_adic())
    dump("low_endpoint.json", make_low())
    dump("high_layers.json", make_high())
    dump("remaining_weak_model.json", high_bridge_weak_model())
    print("CERTIFICATES_GENERATED=PASS")


if __name__ == "__main__":
    main()
