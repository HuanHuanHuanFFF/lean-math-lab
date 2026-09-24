#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

from arithmetic import (
    G_value,
    R_mod_for_shell,
    base_classes,
    high_bridge_exact,
    high_obstruction,
    odd_divisors_below,
    pell_pair,
    theta,
    v2,
    w_classes_for_multiplier,
    xy_mod_for_w,
)

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / "certificates"


def load(name: str):
    return json.loads((CERT / name).read_text(encoding="utf-8"))


def verify_power() -> None:
    data = load("power_identity.json")
    for row in data["theta_roots"]:
        bits = row["bits"]
        root = row["theta"]
        assert root == theta(bits)
        assert root & 1
        assert G_value(root) % (1 << bits) == 0
        if bits > 1:
            # The opposite lift at the last bit must fail.
            other = root ^ (1 << (bits - 1))
            assert G_value(other) % (1 << bits) != 0
    assert data["high_bridge"]["v2_v"] == 1
    print("POWER_HENSEL_ROOTS=PASS")


def verify_q32() -> None:
    data = load("q32_diagnostic.json")
    q = data["q"]
    U_a, _ = pell_pair(4 * q + 1)
    _, X_b = pell_pair(4 * q)
    rho = v2(X_b)
    bound = 27 * (1 << (rho - 1))
    multipliers = odd_divisors_below(9 * (U_a // 2), bound)
    assert multipliers == data["multipliers"]
    assert len(data["rows"]) == len(multipliers)
    for row, multiplier in zip(data["rows"], multipliers):
        fresh = high_bridge_exact(q, multiplier)
        assert row == fresh
        assert row["v2_R"] < 3 * rho + 9
        assert not row["valuation_gate"]
        assert row["matching_c"] == []
    print(f"Q32_POWER_GATE=PASS; ROWS={len(multipliers)}")


def verify_shell() -> None:
    data = load("two_adic_shell.json")
    assert data["w_is_odd"]
    assert data["q_mod_3"] != 1
    assert data["R_residue"] == 0
    assert R_mod_for_shell(
        data["rho"], data["w_residue"], data["multiplier"], data["R_modulus_bits"]
    ) == 0
    print(
        "FINITE_2ADIC_SHELL=PASS; "
        f"w={data['w_residue']} mod {data['w_modulus']}"
    )


def verify_xy_formula() -> None:
    # Diagnostic cross-check of the paper identity xy=32+7w mod64.
    for rho in range(8, 17):
        for w in range(1, 64, 2):
            assert xy_mod_for_w(rho, w, 6) == (32 + 7 * w) % 64
    print("XY_MOD64_CROSSCHECK=PASS")


def verify_layers() -> None:
    data = load("layers_8_11.json")
    all_base = 0
    all_lifts = 0
    all_surviving = 0
    expected_layer_counts = {
        8: (139, 201, 219, 0),
        9: (261, 367, 399, 0),
        10: (482, 678, 714, 0),
        11: (910, 1256, 1344, 1),
    }
    for layer in data["layers"]:
        rho = layer["rho"]
        assert rho in expected_layer_counts
        bound = 27 * (1 << (rho - 1))
        assert layer["strict_multiplier_bound"] == bound
        records = layer["records"]
        by_multiplier = {}
        for record in records:
            m = record["multiplier"]
            assert 1 <= m < bound and m & 1
            by_multiplier.setdefault(m, []).append((record["q_residue"], record["q_modulus"]))
            assert record["w_classes_mod_2^(rho-2)"] == list(w_classes_for_multiplier(m, rho))
            witness = record["witness"]
            global_modulus = witness["global_modulus"]
            expected_q = list(range(record["q_residue"], global_modulus, record["q_modulus"]))
            assert witness["lift_count"] == len(expected_q)
            assert [row["q_residue"] for row in witness["checks"]] == expected_q
            for check in witness["checks"]:
                selected = check["witness"]
                assert str(selected) in check["checks"]
                assert check["checks"][str(selected)]["legendre"] == -1
                for prime_text, stored in check["checks"].items():
                    prime = int(prime_text)
                    fresh = high_obstruction(m, prime, check["q_residue"], rho)
                    assert fresh is not None
                    assert stored == {"S": fresh["S"], "legendre": fresh["legendre"]}
        # Completeness of the CRT classes after all necessary filters.
        fresh_surviving = 0
        fresh_base = 0
        for m in range(1, bound, 2):
            classes = base_classes(m, rho)
            if classes:
                fresh_surviving += 1
                fresh_base += len(classes)
                assert sorted(by_multiplier.get(m, [])) == sorted(classes)
            else:
                assert m not in by_multiplier
        expected = expected_layer_counts[rho]
        got = (
            fresh_surviving,
            fresh_base,
            sum(record["witness"]["lift_count"] for record in records),
            sum(1 for record in records if len(record["witness"]["primes"]) > 1),
        )
        assert got == expected
        assert layer["surviving_multiplier_count"] == expected[0]
        assert layer["base_crt_class_count"] == expected[1]
        assert layer["witness_lift_count"] == expected[2]
        assert layer["multi_prime_class_count"] == expected[3]
        all_surviving += expected[0]
        all_base += expected[1]
        all_lifts += expected[2]
        print(
            f"LAYER_RHO_{rho}=PASS; SURVIVING_M={expected[0]}; "
            f"BASE_CLASSES={expected[1]}; WITNESS_LIFTS={expected[2]}"
        )
    assert data["total_surviving_multiplier_count"] == all_surviving
    assert data["total_base_crt_class_count"] == all_base
    assert data["total_witness_lift_count"] == all_lifts
    print(
        f"LAYERS_8_TO_11_COMPLETE=PASS; BASE_CLASSES={all_base}; "
        f"WITNESS_LIFTS={all_lifts}"
    )


def main() -> None:
    verify_power()
    verify_q32()
    verify_shell()
    verify_xy_formula()
    verify_layers()
    print("ROUND12_VERIFY=PASS")


if __name__ == "__main__":
    main()
