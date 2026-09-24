#!/usr/bin/env python3
"""Exact standard-library arithmetic for B699 D/i=3 round 11.

All routines operate only on the frozen balanced necessary core.  A returned
state is never asserted to be an NC3 input.
"""
from __future__ import annotations

from math import gcd, isqrt, lcm
from typing import Dict, Iterable, List, Tuple

Pair = Tuple[int, int]  # u + x*sqrt(3)


def pair_mul(a: Pair, b: Pair, modulus: int | None = None) -> Pair:
    u, x = a
    v, y = b
    z = (u * v + 3 * x * y, u * y + x * v)
    if modulus is None:
        return z
    return z[0] % modulus, z[1] % modulus


def pair_pow(base: Pair, exponent: int, modulus: int) -> Pair:
    if exponent < 0:
        raise ValueError("negative exponent")
    out = (1 % modulus, 0)
    base = (base[0] % modulus, base[1] % modulus)
    while exponent:
        if exponent & 1:
            out = pair_mul(out, base, modulus)
        base = pair_mul(base, base, modulus)
        exponent >>= 1
    return out


def pell_pair(n: int) -> Pair:
    if n < 0:
        raise ValueError("negative index")
    u, x = 1, 0
    for _ in range(n):
        u, x = 2 * u + 3 * x, u + 2 * x
    return u, x


def v2(n: int) -> int:
    if n == 0:
        raise ValueError("v2(0)")
    n = abs(n)
    e = 0
    while n % 2 == 0:
        e += 1
        n //= 2
    return e


def alpha4_period(modulus: int, cap: int = 2_000_000) -> int:
    """First return period of (2+sqrt(3))^4=(97,56) modulo modulus."""
    if modulus <= 0:
        raise ValueError("nonpositive modulus")
    identity = (1 % modulus, 0)
    state = identity
    step = (97 % modulus, 56 % modulus)
    for period in range(1, cap + 1):
        state = pair_mul(state, step, modulus)
        if state == identity:
            return period
    raise RuntimeError(f"period cap exceeded for modulus={modulus}")


def sequence_state(k: int, modulus: int) -> Dict[str, int]:
    """Coordinates for b=4k, a=b+1, t=2b+1 modulo modulus."""
    beta = pair_pow((97, 56), k, modulus)
    u_b, x_b = beta
    u_a, x_a = pair_mul((2, 1), beta, modulus)
    beta2 = pair_mul(beta, beta, modulus)
    u_t, x_t = pair_mul((2, 1), beta2, modulus)
    return {
        "U_a": u_a, "X_a": x_a, "U_b": u_b, "X_b": x_b,
        "U_t": u_t, "X_t": x_t,
    }


def legendre(value: int, prime: int) -> int:
    value %= prime
    if value == 0:
        return 0
    z = pow(value, (prime - 1) // 2, prime)
    if z == 1:
        return 1
    if z == prime - 1:
        return -1
    raise ValueError(f"{prime} is not behaving as an odd prime")


def square_target_mod(d: int, v: int, W: int, prime: int) -> int:
    """Y^2=(Q^5-d^2)/v in division-free form, modulo prime."""
    d %= prime
    v %= prime
    W %= prime
    return (
        pow(v, 4, prime)
        + 5 * d * pow(v, 3, prime)
        + 10 * d * d * v * v
        + 10 * pow(d, 3, prime) * v
        + 5 * pow(d, 4, prime)
        + d * d * W
    ) % prime


def quotient_mod(numerator_residue: int, divisor: int, prime: int) -> int:
    z = numerator_residue % (divisor * prime)
    if z % divisor:
        raise ValueError("branch quotient is not integral")
    return (z // divisor) % prime


def low_obstruction(multiplier: int, prime: int, k: int) -> dict | None:
    """Low endpoint beta=2: A=m X_b/2, B=18 U_a/m."""
    modulus = multiplier * prime
    st = sequence_state(k, modulus)
    numerator = 18 * st["U_a"]
    if numerator % multiplier:
        return None
    B = quotient_mod(numerator, multiplier, prime)
    A = multiplier * st["X_b"] * pow(2, -1, prime) % prime
    inv2 = pow(2, -1, prime)
    d = (3 * st["X_t"] - 1) * inv2 % prime
    y = st["U_t"] * inv2 % prime
    S = square_target_mod(d, A * y, B * y, prime)
    return {"A": A, "B": B, "d": d, "y": y, "S": S,
            "legendre": legendre(S, prime)}


def high_obstruction(multiplier: int, prime: int, k: int, r: int) -> dict | None:
    """High endpoint alpha=1 at fixed r=v2(X_b).

    A=m X_b/2^(r-1), B=2^(r-1) 9 U_a/m.
    """
    modulus = multiplier * prime
    st = sequence_state(k, modulus)
    two = 1 << (r - 1)
    numerator = two * 9 * st["U_a"]
    if numerator % multiplier:
        return None
    B = quotient_mod(numerator, multiplier, prime)
    A = multiplier * st["X_b"] * pow(two, -1, prime) % prime
    inv2 = pow(2, -1, prime)
    d = (3 * st["X_t"] - 1) * inv2 % prime
    y = st["U_t"] * inv2 % prime
    S = square_target_mod(d, A * y, B * y, prime)
    return {"A": A, "B": B, "d": d, "y": y, "S": S,
            "legendre": legendre(S, prime)}


def balanced_values(t: int, A: int, B: int) -> Dict[str, int | bool]:
    u_t, x_t = pell_pair(t)
    y = u_t // 2
    d = (3 * x_t - 1) // 2
    if A * B != 3 * (d - 1):
        raise ValueError("A*B != 3(d-1)")
    v = A * y
    W = B * y
    Q = d + v
    S = (
        v**4 + 5*d*v**3 + 10*d*d*v*v + 10*d**3*v
        + 5*d**4 + d*d*W
    )
    root = isqrt(S)
    return {
        "t": t, "y": y, "d": d, "A": A, "B": B,
        "v": v, "W": W, "Q": Q, "S": S, "root": root,
        "square": root * root == S,
        "lower_gap": S - root * root,
        "upper_gap": (root + 1) * (root + 1) - S,
    }


def high_bridge_weak_model(k: int = 32, multiplier: int = 1) -> Dict[str, int | bool | str]:
    t = 8 * k + 1
    a = 4 * k + 1
    b = 4 * k
    U_a, _ = pell_pair(a)
    _, X_b = pell_pair(b)
    r = v2(X_b)
    x = X_b >> r
    u = U_a // 2
    if 9 * u % multiplier:
        raise ValueError("multiplier does not divide 9u")
    A = 2 * multiplier * x
    B = (1 << r) * 9 * u // multiplier
    out = balanced_values(t, A, B)
    out.update({
        "k": k, "a": a, "b": b, "U_a": U_a, "X_b": X_b,
        "r": r, "multiplier": multiplier,
        "v2_A": v2(A), "v2_B": v2(B),
        "B_U": B // gcd(B, 9 * X_b),
        "B_X": B // gcd(B, 9 * U_a),
        "bicof2": out["d"] < 357 * B * B,
        "status": "balanced necessary-core weak model only; norm is nonsquare; not NC3",
    })
    return out
