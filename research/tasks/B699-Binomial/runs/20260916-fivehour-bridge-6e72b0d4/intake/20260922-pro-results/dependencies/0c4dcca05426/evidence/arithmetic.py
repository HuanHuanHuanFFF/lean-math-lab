#!/usr/bin/env python3
"""Exact integer/Pell utilities for B699 D/i=3 round 10.

Only Python's standard library is used.  None of the routines assumes that a
necessary algebraic state is an actual NC3 input.
"""
from __future__ import annotations

from math import gcd, isqrt, lcm
from typing import Dict, Iterable, List, Tuple

Pair = Tuple[int, int]  # u + x*sqrt(3)


def pell_pair(n: int) -> Pair:
    if n < 0:
        raise ValueError("n must be nonnegative")
    u, x = 1, 0
    for _ in range(n):
        u, x = 2 * u + 3 * x, u + 2 * x
    return u, x


def pair_mul(a: Pair, b: Pair, modulus: int | None = None) -> Pair:
    u, x = a
    v, y = b
    z = (u * v + 3 * x * y, u * y + x * v)
    if modulus is None:
        return z
    return z[0] % modulus, z[1] % modulus


def pair_pow(base: Pair, exponent: int, modulus: int) -> Pair:
    if exponent < 0:
        raise ValueError("exponent must be nonnegative")
    result = (1 % modulus, 0)
    base = (base[0] % modulus, base[1] % modulus)
    while exponent:
        if exponent & 1:
            result = pair_mul(result, base, modulus)
        base = pair_mul(base, base, modulus)
        exponent >>= 1
    return result


def alpha4_period(modulus: int, cap: int = 2_000_000) -> int:
    """First return period of alpha^4=(97,56) modulo modulus."""
    if modulus <= 0:
        raise ValueError("modulus must be positive")
    identity = (1 % modulus, 0)
    state = identity
    step = (97 % modulus, 56 % modulus)
    for period in range(1, cap + 1):
        state = pair_mul(state, step, modulus)
        if state == identity:
            return period
    raise RuntimeError(f"period cap exceeded for modulus={modulus}")


def sequence_state(k: int, modulus: int) -> Dict[str, int]:
    """Return U_a, X_b, U_t, X_t modulo modulus for b=4k,a=b+1,t=8k+1."""
    beta = pair_pow((97, 56), k, modulus)  # alpha^(4k)
    u_b, x_b = beta
    u_a, x_a = pair_mul((2, 1), beta, modulus)
    beta2 = pair_mul(beta, beta, modulus)
    u_t, x_t = pair_mul((2, 1), beta2, modulus)
    return {
        "U_a": u_a,
        "X_a": x_a,
        "U_b": u_b,
        "X_b": x_b,
        "U_t": u_t,
        "X_t": x_t,
    }


def legendre(value: int, prime: int) -> int:
    value %= prime
    if value == 0:
        return 0
    z = pow(value, (prime - 1) // 2, prime)
    if z == prime - 1:
        return -1
    if z == 1:
        return 1
    raise ValueError(f"{prime} is not behaving as an odd prime")


def sieve_primes(limit: int) -> List[int]:
    if limit < 2:
        return []
    flags = bytearray(b"\x01") * (limit + 1)
    flags[0:2] = b"\x00\x00"
    for p in range(2, isqrt(limit) + 1):
        if flags[p]:
            flags[p * p : limit + 1 : p] = b"\x00" * (((limit - p * p) // p) + 1)
    return [p for p in range(2, limit + 1) if flags[p]]


def square_target_mod(d: int, v: int, W: int, prime: int) -> int:
    """S=(Q^5-d^2)/v in its division-free polynomial form, modulo prime."""
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


def balanced_values(t: int, A: int, B: int) -> Dict[str, int]:
    u_t, x_t = pell_pair(t)
    if u_t % 2 or (3 * x_t - 1) % 2:
        raise ValueError("wrong Pell parity")
    y = u_t // 2
    d = (3 * x_t - 1) // 2
    if A * B != 3 * (d - 1):
        raise ValueError("A*B != 3(d-1)")
    v = A * y
    W = B * y
    Q = d + v
    S = v**4 + 5*d*v**3 + 10*d*d*v*v + 10*d**3*v + 5*d**4 + d*d*W
    root = isqrt(S)
    return {
        "t": t, "y": y, "d": d, "A": A, "B": B,
        "v": v, "W": W, "Q": Q, "S": S,
        "root": root, "lower_gap": S-root*root,
        "upper_gap": (root+1)*(root+1)-S,
    }


def first_return_states(modulus: int) -> List[Pair]:
    """All states before the first return of alpha^4 modulo modulus."""
    period = alpha4_period(modulus)
    return [pair_pow((97, 56), k, modulus) for k in range(period)]


def divisors_from_factorization(factors: Dict[int, int]) -> Iterable[int]:
    values = [1]
    for p, e in sorted(factors.items()):
        powers = [p**i for i in range(e + 1)]
        values = [a * b for a in values for b in powers]
    return sorted(values)
