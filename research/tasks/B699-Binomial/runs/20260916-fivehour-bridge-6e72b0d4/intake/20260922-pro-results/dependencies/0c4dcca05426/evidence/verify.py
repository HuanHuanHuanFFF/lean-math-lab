#!/usr/bin/env python3
from __future__ import annotations

import json
import sys
from math import gcd, isqrt, lcm
from pathlib import Path
from typing import Dict, Tuple

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


def load(name: str):
    return json.loads((CERT / name).read_text(encoding="utf-8"))


def quotient_mod(numerator_residue: int, multiplier: int, prime: int) -> int:
    modulus = multiplier * prime
    z = numerator_residue % modulus
    assert z % multiplier == 0
    return (z // multiplier) % prime


def obstruction(side: str, multiplier: int, prime: int, k: int):
    modulus = multiplier * prime
    st = sequence_state(k, modulus)
    if side == "X":
        numerator = 9 * st["X_b"]
        if numerator % multiplier:
            return None
        B = quotient_mod(numerator, multiplier, prime)
        A = multiplier * st["U_a"] % prime
    else:
        numerator = 9 * st["U_a"]
        if numerator % multiplier:
            return None
        B = quotient_mod(numerator, multiplier, prime)
        A = multiplier * st["X_b"] % prime
    inv2 = pow(2, -1, prime)
    d = (3 * st["X_t"] - 1) * inv2 % prime
    y = st["U_t"] * inv2 % prime
    v = A * y % prime
    W = B * y % prime
    S = square_target_mod(d, v, W, prime)
    return S, legendre(S, prime)


def verify_bicof2() -> None:
    c = load("bicof2.json")
    assert 69**2 < 4800 < 70**2
    assert 40**2 * 3 == 4800
    assert 13900 < 357 * 39
    # Derived constant checks used in the paper proof.
    assert 3213 < 2**12
    assert 121 * 3213 < 100 * 2**12
    assert 22 < 2**5
    assert c["conclusion"] == "d < 357 B^2"
    print("BICOF2_EXACT_CONSTANTS=PASS")


def verify_tri3() -> None:
    c = load("tri3.json")
    seq = []
    u_prev, u = 1, 2
    for n in range(6):
        if n == 0:
            value = 1
        elif n == 1:
            value = 2
        else:
            u_prev, u = u, (4 * u - u_prev) % 5
            value = u
        seq.append(value % 5)
    assert seq == [1, 2, 2, 1, 2, 2] == c["U_mod_5_first_six"]
    print("TRI3_PELL_PERIOD_MOD5=PASS")


# Minimal exact polynomial algebra in Z[x,u]/(u^2-3x^2-1).
Poly = Dict[int, int]
Elem = Tuple[Poly, Poly]  # p0(x)+u*p1(x)
PellElem = Tuple[Elem, Elem]


def pclean(p: Poly) -> Poly:
    return {d: c for d, c in p.items() if c}


def padd(a: Poly, b: Poly) -> Poly:
    z = dict(a)
    for d, c in b.items():
        z[d] = z.get(d, 0) + c
    return pclean(z)


def pscale(a: Poly, c: int) -> Poly:
    return pclean({d: c * v for d, v in a.items()})


def pmul(a: Poly, b: Poly) -> Poly:
    z: Poly = {}
    for i, x in a.items():
        for j, y in b.items():
            z[i + j] = z.get(i + j, 0) + x * y
    return pclean(z)


def eadd(a: Elem, b: Elem) -> Elem:
    return padd(a[0], b[0]), padd(a[1], b[1])


def escale(a: Elem, c: int) -> Elem:
    return pscale(a[0], c), pscale(a[1], c)


def emul(a: Elem, b: Elem) -> Elem:
    # (a0+u a1)(b0+u b1), u^2=1+3x^2.
    a0, a1 = a
    b0, b1 = b
    cross = pmul(a1, b1)
    p0 = padd(pmul(a0, b0), padd(cross, pscale({d + 2: c for d, c in cross.items()}, 3)))
    p1 = padd(pmul(a0, b1), pmul(a1, b0))
    return pclean(p0), pclean(p1)


def ediv(a: Elem, n: int) -> Elem:
    for p in a:
        assert all(c % n == 0 for c in p.values())
    return ({d: c // n for d, c in a[0].items()}, {d: c // n for d, c in a[1].items()})


def pe_mul(a: PellElem, b: PellElem) -> PellElem:
    U = eadd(emul(a[0], b[0]), escale(emul(a[1], b[1]), 3))
    X = eadd(emul(a[0], b[1]), emul(a[1], b[0]))
    return U, X


def econ(c: int) -> Elem:
    return ({0: c} if c else {}, {})


def ex() -> Elem:
    return ({1: 1}, {})


def eu() -> Elem:
    return ({}, {0: 1})


def epow(a: Elem, n: int) -> Elem:
    r = econ(1)
    while n:
        if n & 1:
            r = emul(r, a)
        a = emul(a, a)
        n >>= 1
    return r


def assert_zero(a: Elem) -> None:
    assert pclean(a[0]) == {} and pclean(a[1]) == {}, a


def verify_m2_factorizations() -> None:
    alpha: PellElem = (econ(2), econ(1))
    gamma: PellElem = (eu(), ex())  # alpha^c=u+x sqrt3
    gamma2 = pe_mul(gamma, gamma)  # alpha^b, b=2c
    gamma4 = pe_mul(gamma2, gamma2)
    Ua, Xa = pe_mul(alpha, gamma2)
    Ub, Xb = gamma2
    Ut, Xt = pe_mul(alpha, gamma4)
    y = ediv(Ut, 2)
    d = eadd(econ(1), escale(emul(Ua, Xb), 3))

    # X-block m=2: A=2Ua, Q=(u+3x)^2*C.
    Qx = eadd(d, emul(escale(Ua, 2), y))
    R = eadd(eu(), escale(ex(), 3))
    x = ex(); u = eu()
    C = eadd(
        emul(u, eadd(escale(x, 18), escale(epow(x, 3), 72))),
        eadd(econ(5), eadd(escale(epow(x, 2), 60), escale(epow(x, 4), 144))),
    )
    assert_zero(eadd(Qx, escale(emul(emul(R, R), C), -1)))

    # U-block m=2: A=2Xb, Q=(u+x)*C2.
    Qu = eadd(d, emul(escale(Xb, 2), y))
    R2 = eadd(u, x)
    C2 = eadd(
        eadd(escale(emul(u, epow(x, 4)), 72), escale(emul(u, epow(x, 2)), 42)),
        eadd(u, eadd(escale(epow(x, 5), 216), eadd(escale(epow(x, 3), 126), escale(x, 15)))),
    )
    assert_zero(eadd(Qu, escale(emul(R2, C2), -1)))
    print("M2_PRIME_POWER_FACTORIZATIONS_SYMBOLIC=PASS")


def verify_x_m1_table() -> None:
    table = []
    for k in range(3):
        st = sequence_state(k, 18)
        d = ((3 * st["X_t"] - 1) // 2) % 9
        y = (st["U_t"] // 2) % 9
        table.append((d, st["U_a"] % 9 * y % 9, (d + st["U_a"] * y) % 9))
    assert table == [(1, 2, 3), (4, 8, 3), (7, 8, 6)]
    print("XBLOCK_M1_MOD9_TABLE=PASS")


def verify_side(name: str) -> None:
    cert = load(name)
    side = cert["side"]
    seen = set()
    total_valid = 0
    total_covered = 0
    for rec in cert["records"]:
        m = rec["multiplier"]
        seen.add(m)
        base_period = alpha4_period(m)
        assert base_period == rec["base_period"]
        base_L = lcm(3, base_period)
        assert base_L == rec["base_global_period"]
        base_valid = []
        for k in range(base_L):
            if k % 3 == 1:
                continue
            st = sequence_state(k, m)
            numerator = 9 * (st["X_b"] if side == "X" else st["U_a"])
            if numerator % m == 0:
                base_valid.append(k)
        assert base_valid == rec["base_valid_states"]
        if rec["status"] == "analytic":
            continue
        if rec["status"] == "no_branch_state":
            assert not base_valid
            continue
        assert rec["status"] == "nonresidue_cover"
        primes = rec["primes"]
        periods = {str(p): alpha4_period(m * p) for p in primes}
        assert periods == rec["periods"]
        L = 3
        for period in periods.values():
            L = lcm(L, period)
        assert L == rec["global_period"]
        expected_states = {entry["k"]: entry for entry in rec["states"]}
        valid_count = 0
        witness_counts = {str(p): 0 for p in primes}
        for k in range(L):
            if k % 3 == 1:
                continue
            first = obstruction(side, m, primes[0], k)
            if first is None:
                continue
            valid_count += 1
            entry = expected_states.pop(k)
            witness = entry["witness"]
            assert witness in primes
            covered = False
            for p in primes:
                value = obstruction(side, m, p, k)
                assert value is not None
                S, symbol = value
                assert entry["checks"][str(p)] == {"S": S, "legendre": symbol}
                if p == witness:
                    assert symbol == -1
                    witness_counts[str(p)] += 1
                    covered = True
            assert covered
        assert not expected_states
        assert valid_count == rec["valid_count"]
        assert witness_counts == rec["witness_counts"]
        total_valid += valid_count
        total_covered += valid_count
    assert seen == set(range(1, cert["max_multiplier"] + 1))
    print(f"{side}BLOCK_FINITE_AUTOMATA=PASS; VALID_STATES={total_valid}; COVERED={total_covered}")


def verify_mixed_model() -> None:
    c = load("mixed_weak_model.json")
    values = balanced_values(c["t"], c["A"], c["B"])
    for key in ["y", "d", "v", "W", "Q", "S", "root", "lower_gap", "upper_gap"]:
        assert values[key] == c[key]
    assert c["A"] * c["B"] == 3 * (c["d"] - 1)
    assert not c["B_divides_9Xb"] and not c["B_divides_9Ua"]
    assert c["bicof2"]
    assert c["lower_gap"] > 0 and c["upper_gap"] > 0
    print("MIXED_WEAK_MODEL_EXACT_NON_SQUARE=PASS")


def main() -> None:
    verify_bicof2()
    verify_tri3()
    verify_m2_factorizations()
    verify_x_m1_table()
    verify_side("xblock.json")
    verify_side("ublock.json")
    verify_mixed_model()
    print("ROUND10_REPLAY=PASS")


if __name__ == "__main__":
    try:
        main()
    except Exception as exc:
        print(f"VERIFY_FAILED: {exc}", file=sys.stderr)
        raise
