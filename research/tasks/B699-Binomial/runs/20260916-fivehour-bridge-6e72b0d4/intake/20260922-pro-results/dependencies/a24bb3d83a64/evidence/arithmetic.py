"""Exact, standard-library arithmetic for the round-8 certificates.

No primality claim about the Pell value is made in this module.
"""
from __future__ import annotations
from fractions import Fraction
from typing import TypeAlias

Matrix: TypeAlias = tuple[tuple[int, int], tuple[int, int]]
Poly: TypeAlias = dict[tuple[int, ...], Fraction]


def matmul(a: Matrix, b: Matrix, modulus: int | None = None) -> Matrix:
    c = tuple(tuple(sum(a[i][k] * b[k][j] for k in range(2))
                    for j in range(2)) for i in range(2))
    if modulus is not None:
        c = tuple(tuple(x % modulus for x in row) for row in c)
    return c  # type: ignore[return-value]


def matpow(a: Matrix, exponent: int, modulus: int | None = None) -> Matrix:
    if exponent < 0:
        raise ValueError("Matrix exponent must be nonnegative")
    result: Matrix = ((1, 0), (0, 1))
    while exponent:
        if exponent & 1:
            result = matmul(result, a, modulus)
        a = matmul(a, a, modulus)
        exponent //= 2
    return result


def pell(index: int) -> tuple[int, int, int, int]:
    """Return (U, x, y, delta) for U+x*sqrt(3)=(2+sqrt(3))**index.

    The y=U/2, delta=(3*x-1)/2 conventions require an odd index.
    """
    if index < 1 or index % 2 == 0:
        raise ValueError("Pell index must be a positive odd integer")
    matrix = matpow(((2, 3), (1, 2)), index)
    U, x = matrix[0][0], matrix[1][0]
    assert U % 2 == 0 and x % 2 == 1
    y, delta = U // 2, (3 * x - 1) // 2
    assert U * U - 3 * x * x == 1
    assert delta * delta + delta + 1 == 3 * y * y
    return U, x, y, delta


def factor_witness(n: int) -> int | None:
    """Find a proper divisor by exhaustive trial division; intended for index.

    Returning None for n>=2 certifies that n is prime. Never use this as a
    practical large-Pell-value primality routine.
    """
    if n < 2:
        return 1
    if n % 2 == 0:
        return 2 if n != 2 else None
    d = 3
    while d * d <= n:
        if n % d == 0:
            return d
        d += 2
    return None


def constant(value: int | Fraction, nvars: int) -> Poly:
    return {(0,) * nvars: Fraction(value)} if value else {}


def variable(index: int, nvars: int) -> Poly:
    exponents = [0] * nvars
    exponents[index] = 1
    return {tuple(exponents): Fraction(1)}


def add(*polynomials: Poly) -> Poly:
    result: Poly = {}
    for polynomial in polynomials:
        for exponent, coefficient in polynomial.items():
            result[exponent] = result.get(exponent, Fraction(0)) + coefficient
    return {e: c for e, c in result.items() if c}


def scale(polynomial: Poly, coefficient: int | Fraction) -> Poly:
    return {e: c * coefficient for e, c in polynomial.items() if c * coefficient}


def mul(a: Poly, b: Poly) -> Poly:
    result: Poly = {}
    for ea, ca in a.items():
        for eb, cb in b.items():
            e = tuple(x + y for x, y in zip(ea, eb))
            result[e] = result.get(e, Fraction(0)) + ca * cb
    return {e: c for e, c in result.items() if c}


def power(a: Poly, exponent: int, nvars: int) -> Poly:
    if exponent < 0:
        raise ValueError("Polynomial exponent must be nonnegative")
    result = constant(1, nvars)
    while exponent:
        if exponent & 1:
            result = mul(result, a)
        a = mul(a, a)
        exponent //= 2
    return result
