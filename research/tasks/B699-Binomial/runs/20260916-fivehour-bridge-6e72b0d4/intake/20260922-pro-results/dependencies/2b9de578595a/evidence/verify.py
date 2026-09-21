#!/usr/bin/env python3
from __future__ import annotations

import json
from math import gcd, lcm
from pathlib import Path

from arithmetic import (
    alpha4_period,
    high_bridge_weak_model,
    high_obstruction,
    legendre,
    low_obstruction,
    pell_pair,
    sequence_state,
    v2,
)

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / "certificates"


def load(name: str):
    return json.loads((CERT / name).read_text(encoding="utf-8"))


def check_first_return(modulus: int, expected: int) -> None:
    got = alpha4_period(modulus)
    if got != expected:
        raise AssertionError((modulus, expected, got))


def check_pell_interfaces() -> None:
    for k in range(1, 129):
        a, b, t = 4*k+1, 4*k, 8*k+1
        U_a, X_a = pell_pair(a)
        U_b, X_b = pell_pair(b)
        U_t, X_t = pell_pair(t)
        assert U_a == 2*U_b + 3*X_b
        assert X_a == U_b + 2*X_b
        assert X_t - 1 == 2*U_a*X_b
        assert U_t//2 == U_a*U_b - 1
        assert v2(U_a) == 1
        assert v2(X_b) == v2(k) + 3
        assert gcd(U_a, X_b) == 2
    print("PELL_TWO_ADIC_IDENTITIES_1_TO_128=PASS")


def verify_low() -> None:
    data = load("low_endpoint.json")
    covered = no_state = analytic = 0
    for rec in data["records"]:
        m = rec["multiplier"]
        check_first_return(m, rec["base_period"])
        L = rec["base_global_period"]
        valid = []
        for k in range(L):
            if k % 3 == 1:
                continue
            st = sequence_state(k, m)
            if (18 * st["U_a"]) % m == 0:
                valid.append(k)
        assert valid == rec["base_valid_states"]
        if rec["status"] == "no_branch_state":
            assert not valid
            no_state += 1
        elif rec["status"] == "analytic_m9":
            assert m == 9 and valid
            analytic += 1
            U8, X8 = pell_pair(8)
            assert X8 == rec["proof_data"]["X_8"] == 10864
            # Exact rational checks behind 11/8<f<3/2 and E<1/8.
            assert X8 > 384
            assert 8 * 5 < 3 * X8  # 5/(3X)<1/8
        elif rec["status"] == "nonresidue_cover":
            primes = rec["primes"]
            global_period = rec["global_period"]
            expected_period = 3
            for p in primes:
                check_first_return(m*p, rec["periods"][str(p)])
                expected_period = lcm(expected_period, rec["periods"][str(p)])
            assert global_period == expected_period
            rebuilt = []
            counts = {str(p): 0 for p in primes}
            for k in range(global_period):
                if k % 3 == 1:
                    continue
                first = low_obstruction(m, primes[0], k)
                if first is None:
                    continue
                chosen = None
                checks = {}
                for p in primes:
                    val = low_obstruction(m, p, k)
                    assert val is not None
                    checks[str(p)] = {"S": val["S"], "legendre": val["legendre"]}
                    if chosen is None and val["legendre"] == -1:
                        chosen = p
                assert chosen is not None
                counts[str(chosen)] += 1
                rebuilt.append({"k": k, "witness": chosen, "checks": checks})
            assert rebuilt == rec["states"]
            assert counts == rec["witness_counts"]
            assert len(rebuilt) == rec["valid_count"]
            covered += len(rebuilt)
        else:
            raise AssertionError(rec["status"])
    assert no_state == data["no_state_count"] == 29
    assert analytic == 1
    assert covered == data["covered_finite_states"] == 38
    print("LOW_ENDPOINT_COMPLETE=PASS; NO_STATE=29; NONRESIDUE_STATES=38; M9=ANALYTIC")


def verify_high() -> None:
    data = load("high_layers.json")
    grand = 0
    expected_layer_counts = {3:(37,29,8,17),4:(108,93,15,35),5:(216,191,25,42),6:(432,388,44,69),7:(864,786,78,136)}
    for layer in data["layers"]:
        r = layer["r"]
        no_state = state_m = covered = 0
        for rec in layer["records"]:
            m = rec["multiplier"]
            check_first_return(m, rec["base_period"])
            L = rec["base_global_period"]
            exact = 1 << (r-3)
            two_period = 1 << (r-2)
            valid = []
            for k in range(L):
                if k % 3 == 1 or k % exact != 0 or k % two_period == 0:
                    continue
                st = sequence_state(k, m)
                if (((1 << (r-1))*9*st["U_a"]) % m) == 0:
                    valid.append(k)
            assert valid == rec["base_valid_states"]
            if rec["status"] == "no_branch_state":
                assert not valid
                no_state += 1
                continue
            assert rec["status"] == "nonresidue_cover"
            state_m += 1
            primes = rec["primes"]
            expected_period = lcm(3, two_period)
            for p in primes:
                check_first_return(m*p, rec["periods"][str(p)])
                expected_period = lcm(expected_period, rec["periods"][str(p)])
            assert expected_period == rec["global_period"]
            rebuilt = []
            counts = {str(p): 0 for p in primes}
            for k in range(expected_period):
                if k % 3 == 1 or k % exact != 0 or k % two_period == 0:
                    continue
                first = high_obstruction(m, primes[0], k, r)
                if first is None:
                    continue
                chosen = None
                checks = {}
                for p in primes:
                    val = high_obstruction(m, p, k, r)
                    assert val is not None
                    checks[str(p)] = {"S": val["S"], "legendre": val["legendre"]}
                    if chosen is None and val["legendre"] == -1:
                        chosen = p
                assert chosen is not None
                counts[str(chosen)] += 1
                rebuilt.append({"k": k, "witness": chosen, "checks": checks})
            assert rebuilt == rec["states"]
            assert counts == rec["witness_counts"]
            assert len(rebuilt) == rec["valid_count"]
            covered += len(rebuilt)
        expected = expected_layer_counts[r]
        assert (len(layer["records"]), no_state, state_m, covered) == expected
        assert no_state == layer["no_state_count"]
        assert state_m == layer["state_multiplier_count"]
        assert covered == layer["covered_finite_states"]
        grand += covered
        print(f"HIGH_LAYER_R{r}=PASS; MULTIPLIERS={len(layer['records'])}; STATES={covered}")
    assert grand == data["covered_finite_states"] == 299
    print("HIGH_LAYERS_R3_TO_R7_COMPLETE=PASS; NONRESIDUE_STATES=299")


def verify_weak_model() -> None:
    expected = load("remaining_weak_model.json")
    got = high_bridge_weak_model()
    assert got == expected
    assert got["r"] == 8 and got["t"] == 257
    assert got["v2_A"] == 1 and got["v2_B"] == 8
    assert got["B_U"] > 1 and got["B_X"] == 128
    assert got["bicof2"] and not got["square"]
    assert got["lower_gap"] > 0 and got["upper_gap"] > 0
    print("REMAINING_R8_WEAK_MODEL_EXACT_NONSQUARE=PASS")


def main() -> None:
    check_pell_interfaces()
    verify_low()
    verify_high()
    verify_weak_model()
    print("ROUND11_VERIFY=PASS")


if __name__ == "__main__":
    main()
