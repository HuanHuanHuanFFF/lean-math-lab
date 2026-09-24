"""Small exact arithmetic. No network, floats, or probabilistic primality tests."""
from math import isqrt


def is_prime(n: int) -> bool:
    if n < 2:
        return False
    return all(n % d for d in range(2, isqrt(n) + 1))


def mul(a: tuple[int, int], b: tuple[int, int], modulus: int | None = None):
    u = a[0] * b[0] + 3 * a[1] * b[1]
    x = a[0] * b[1] + a[1] * b[0]
    return (u, x) if modulus is None else (u % modulus, x % modulus)


def power(a: tuple[int, int], exponent: int, modulus: int | None = None):
    if exponent < 0:
        raise ValueError("nonnegative exponent required")
    result = (1, 0)
    while exponent:
        if exponent & 1:
            result = mul(result, a, modulus)
        a = mul(a, a, modulus)
        exponent //= 2
    return result


def first_return_q(p: int):
    """Full period of (2+sqrt(3))^(8q), including q=0 exactly once."""
    gamma = power((2, 1), 8, p)
    result = []
    state = (1, 0)
    for _ in range(p * p + 1):
        result.append(state)
        state = mul(state, gamma, p)
        if state == (1, 0):
            return result
    raise ArithmeticError("unit orbit failed to return within finite-ring size")


def pell_coordinates(q: int, p: int | None = None):
    U, X = power((2, 1), 8 * q + 1, p)
    if p is None:
        assert U % 2 == 0 and X % 2 == 1
        return (3 * X - 1) // 2, U // 2
    inv2 = pow(2, -1, p)
    return (3 * X - 1) * inv2 % p, U * inv2 % p
