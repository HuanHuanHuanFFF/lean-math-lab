#!/usr/bin/env python3
"""Exact arithmetic for B699 D/i=3 round 12.

Everything here lives inside the frozen balanced necessary core inherited from
round 11.  A formal state or a returned candidate is never asserted to be an
NC3 input unless all original recovery conditions are separately checked.
"""
from __future__ import annotations

from functools import lru_cache
from itertools import combinations
from math import gcd, isqrt, lcm
from typing import Dict, Iterable, List, Sequence, Tuple

Pair = Tuple[int, int]  # u + x sqrt(3)


def pair_mul(a: Pair, b: Pair, modulus: int | None = None) -> Pair:
    u, x = a
    v, y = b
    out = (u * v + 3 * x * y, u * y + x * v)
    if modulus is None:
        return out
    return out[0] % modulus, out[1] % modulus


def pair_pow(base: Pair, exponent: int, modulus: int | None = None) -> Pair:
    if exponent < 0:
        raise ValueError("negative exponent")
    if modulus is None:
        out = (1, 0)
    else:
        out = (1 % modulus, 0)
        base = (base[0] % modulus, base[1] % modulus)
    while exponent:
        if exponent & 1:
            out = pair_mul(out, base, modulus)
        base = pair_mul(base, base, modulus)
        exponent >>= 1
    return out


def pell_pair(index: int) -> Pair:
    """(U_index, X_index) for (2+sqrt(3))^index."""
    if index < 0:
        raise ValueError("negative index")
    return pair_pow((2, 1), index, None)


def v2(value: int) -> int:
    if value == 0:
        raise ValueError("v2(0)")
    value = abs(value)
    e = 0
    while value % 2 == 0:
        e += 1
        value //= 2
    return e


def trial_factor(n: int) -> Dict[int, int]:
    if n < 1:
        raise ValueError("factor input must be positive")
    out: Dict[int, int] = {}
    p = 2
    while p * p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0) + 1
            n //= p
        p = 3 if p == 2 else p + 2
    if n > 1:
        out[n] = out.get(n, 0) + 1
    return out


def is_prime(n: int) -> bool:
    if n < 2:
        return False
    if n % 2 == 0:
        return n == 2
    p = 3
    while p * p <= n:
        if n % p == 0:
            return False
        p += 2
    return True


def primes_below(limit: int) -> List[int]:
    return [n for n in range(3, limit, 2) if is_prime(n)]


@lru_cache(maxsize=None)
def alpha4_period_prime_power(modulus: int) -> int:
    """Exact first return period of 97+56sqrt(3) modulo a prime power."""
    if modulus == 1:
        return 1
    state = (1 % modulus, 0)
    step = (97 % modulus, 56 % modulus)
    # In the finite unit group the orbit must return.  The cap is deliberately
    # generous for the small moduli used in the certificate.
    cap = max(10_000, 20 * modulus * modulus)
    for period in range(1, cap + 1):
        state = pair_mul(state, step, modulus)
        if state == (1 % modulus, 0):
            return period
    raise RuntimeError(f"period cap exceeded for modulus={modulus}")


@lru_cache(maxsize=None)
def alpha4_period(modulus: int) -> int:
    """Exact first return period modulo an arbitrary positive modulus."""
    if modulus == 1:
        return 1
    periods = []
    for p, e in trial_factor(modulus).items():
        periods.append(alpha4_period_prime_power(p**e))
    return lcm(*periods)


def sequence_state(q: int, modulus: int) -> Dict[str, int]:
    """Coordinates for b=4q, a=b+1, t=2b+1 modulo modulus."""
    beta = pair_pow((97, 56), q, modulus)
    u_b, x_b = beta
    u_a, x_a = pair_mul((2, 1), beta, modulus)
    u_t, x_t = pair_mul((2, 1), pair_mul(beta, beta, modulus), modulus)
    return {
        "U_a": u_a,
        "X_a": x_a,
        "U_b": u_b,
        "X_b": x_b,
        "U_t": u_t,
        "X_t": x_t,
    }


def crt_pair(a: int, m: int, b: int, n: int) -> Tuple[int, int] | None:
    g = gcd(m, n)
    if (b - a) % g:
        return None
    reduced = n // g
    k = 0 if reduced == 1 else ((b - a) // g) * pow(m // g, -1, reduced) % reduced
    modulus = m // g * n
    return (a + m * k) % modulus, modulus


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


def square_target(d: int, v: int, W: int) -> int:
    return (
        v**4
        + 5 * d * v**3
        + 10 * d**2 * v**2
        + 10 * d**3 * v
        + 5 * d**4
        + d**2 * W
    )


def square_target_mod(d: int, v: int, W: int, prime: int) -> int:
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
    residue = numerator_residue % (divisor * prime)
    if residue % divisor:
        raise ValueError("branch quotient is not integral")
    return (residue // divisor) % prime


def R_value(d: int, v: int) -> int:
    Q = d + v
    return (
        Q**10
        - 12 * Q**7
        + 15 * d * Q**6
        - 4 * d**2 * Q**5
        - 4 * d * Q**3
        + 12 * d**2 * Q**2
        - 12 * d**3 * Q
        + 4 * d**4
    )


def L_value(d: int, v: int) -> int:
    return (
        3 * d**6
        + 19 * d**5 * v
        + 50 * d**4 * v**2
        + 70 * d**3 * v**3
        + 55 * d**2 * v**4
        - 2 * d**2 * v
        + 23 * d * v**5
        + 4 * v**6
    )


def power_identity_rhs(d: int, v: int, s: int, c: int) -> int:
    return c * v * (1 << (s + 1)) * (c * d**3 * (1 << (s - 1)) - L_value(d, v))


def power_matches(d: int, v: int) -> Dict[str, object]:
    R = R_value(d, v)
    valuation = v2(R)
    s = valuation - v2(v) - 1
    matches = []
    if s >= 1:
        for c in (1, 3):
            if R == power_identity_rhs(d, v, s, c):
                matches.append(c)
    return {"R": R, "v2_R": valuation, "s_recovered": s, "matching_c": matches}


def G_value(a: int) -> int:
    return (
        128 * a**9
        + 640 * a**8
        + 1440 * a**7
        + 1728 * a**6
        + 1128 * a**5
        + 344 * a**4
        - 10 * a**3
        - 44 * a**2
        - 11 * a
        - 1
    )


@lru_cache(maxsize=None)
def theta(bits: int) -> int:
    """Unique odd root of G modulo 2^bits."""
    if bits < 1:
        raise ValueError("bits must be positive")
    root = 1
    for k in range(1, bits):
        candidates = (root, root + (1 << k))
        good = [x for x in candidates if G_value(x) % (1 << (k + 1)) == 0]
        if len(good) != 1:
            raise RuntimeError(f"Hensel lift failed at k={k}: {good}")
        root = good[0]
    return root % (1 << bits)


def xy_mod_for_w(rho: int, w: int, bits: int) -> int:
    """x*y mod 2^bits for q=2^(rho-3)w in the high endpoint."""
    q = (1 << (rho - 3)) * w
    # Extra bits are needed before dividing X_b by 2^rho and U_t by 2.
    modulus = 1 << (bits + rho + 2)
    beta = pair_pow((97, 56), q, modulus)
    _, X_b = beta
    U_t, _ = pair_mul((2, 1), pair_mul(beta, beta, modulus), modulus)
    x = (X_b >> rho) % (1 << bits)
    y = (U_t >> 1) % (1 << bits)
    return x * y % (1 << bits)


@lru_cache(maxsize=None)
def xy_inverse_map(rho: int) -> Dict[int, Tuple[int, ...]]:
    bits = rho - 2
    out: Dict[int, List[int]] = {}
    for w in range(1, 1 << bits, 2):
        value = xy_mod_for_w(rho, w, bits)
        out.setdefault(value, []).append(w)
    return {key: tuple(values) for key, values in out.items()}


def w_classes_for_multiplier(multiplier: int, rho: int) -> Tuple[int, ...]:
    bits = rho - 2
    target = theta(bits) * pow(multiplier, -1, 1 << bits) % (1 << bits)
    return xy_inverse_map(rho).get(target, ())


def base_classes(multiplier: int, rho: int) -> List[Tuple[int, int]]:
    """All q residue classes after exact layer, q mod 3, divisibility and POWER-low gate."""
    period = alpha4_period(multiplier)
    w_classes = w_classes_for_multiplier(multiplier, rho)
    q_modulus = 1 << (2 * rho - 5)
    exact_factor = 1 << (rho - 3)
    out: List[Tuple[int, int]] = []

    # Iterate the exact Pell period modulo multiplier.
    state = (1 % multiplier, 0)
    step = (97 % multiplier, 56 % multiplier)
    for residue in range(period):
        U_b, X_b = state
        U_a = (2 * U_b + 3 * X_b) % multiplier
        if ((1 << (rho - 1)) * 9 * U_a) % multiplier == 0:
            for w in w_classes:
                first = crt_pair(exact_factor * w, q_modulus, residue, period)
                if first is None:
                    continue
                for residue3 in (0, 2):  # 3 does not divide t=8q+1
                    merged = crt_pair(first[0], first[1], residue3, 3)
                    if merged is not None and merged not in out:
                        out.append(merged)
        state = pair_mul(state, step, multiplier)
    return sorted(out)


def high_obstruction(multiplier: int, prime: int, q: int, rho: int) -> Dict[str, int] | None:
    """Square target modulo prime in high endpoint H2."""
    modulus = multiplier * prime
    state = sequence_state(q, modulus)
    two = 1 << (rho - 1)
    numerator = two * 9 * state["U_a"]
    if numerator % multiplier:
        return None
    B = quotient_mod(numerator, multiplier, prime)
    A = multiplier * state["X_b"] * pow(two, -1, prime) % prime
    inv2 = pow(2, -1, prime)
    d = (3 * state["X_t"] - 1) * inv2 % prime
    y = state["U_t"] * inv2 % prime
    S = square_target_mod(d, A * y, B * y, prime)
    return {"A": A, "B": B, "d": d, "y": y, "S": S, "legendre": legendre(S, prime)}


def high_bridge_exact(q: int, multiplier: int) -> Dict[str, int | bool | list]:
    """Exact formal high-bridge row; still only a necessary-core state."""
    t = 8 * q + 1
    a_index = 4 * q + 1
    b_index = 4 * q
    U_a, _ = pell_pair(a_index)
    _, X_b = pell_pair(b_index)
    U_t, X_t = pell_pair(t)
    rho = v2(X_b)
    if rho < 3:
        raise ValueError("not a high endpoint layer")
    x = X_b >> rho
    u = U_a // 2
    if 9 * u % multiplier:
        raise ValueError("multiplier does not divide 9u")
    y = U_t // 2
    d = (3 * X_t - 1) // 2
    A = 2 * multiplier * x
    B = (1 << rho) * 9 * u // multiplier
    v = A * y
    W = B * y
    Q = d + v
    S = square_target(d, v, W)
    root = isqrt(S)
    power = power_matches(d, v)
    lower_s = 3 * rho + 7
    return {
        "q": q,
        "t": t,
        "rho": rho,
        "multiplier": multiplier,
        "U_a": U_a,
        "X_b": X_b,
        "u": u,
        "x": x,
        "y": y,
        "d": d,
        "A": A,
        "B": B,
        "v": v,
        "W": W,
        "Q": Q,
        "S": S,
        "square": root * root == S,
        "root": root,
        "lower_gap": S - root * root,
        "upper_gap": (root + 1) * (root + 1) - S,
        "v2_R": power["v2_R"],
        "s_recovered": power["s_recovered"],
        "matching_c": power["matching_c"],
        "lower_s": lower_s,
        "valuation_gate": power["v2_R"] >= 3 * rho + 9,
        "power_gate": bool(power["matching_c"]),
    }


def odd_divisors_below(n: int, bound: int) -> List[int]:
    return [m for m in range(1, bound, 2) if n % m == 0]


def R_mod_for_shell(rho: int, w: int, multiplier: int, bits: int) -> int:
    """R modulo 2^bits without materializing the enormous Pell integers."""
    modulus = 1 << bits
    extra = 1 << (bits + rho + 3)
    q = (1 << (rho - 3)) * w
    beta = pair_pow((97, 56), q, extra)
    _, X_b = beta
    U_a, _ = pair_mul((2, 1), beta, extra)
    U_t, X_t = pair_mul((2, 1), pair_mul(beta, beta, extra), extra)
    x = (X_b >> rho) % modulus
    y = (U_t >> 1) % modulus
    d = ((3 * X_t - 1) >> 1) % modulus
    v = (2 * multiplier * x * y) % modulus
    return R_value(d, v) % modulus


def lift_shell_w(rho: int, multiplier: int, target_bits: int) -> int:
    """Lift odd w so R is 0 modulo 2^(target_bits+3)."""
    root = 1
    for k in range(1, target_bits):
        modulus_bits = k + 4
        candidates = (root, root + (1 << k))
        good = [w for w in candidates if R_mod_for_shell(rho, w, multiplier, modulus_bits) == 0]
        if len(good) != 1:
            raise RuntimeError(f"shell lift failed at bit={k}: {good}")
        root = good[0]
    return root % (1 << target_bits)
