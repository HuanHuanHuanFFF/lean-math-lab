"""Exact sufficient consumers; no claim that the necessary system is NC3-equivalent."""
from __future__ import annotations
from math import gcd

def _isolated_three(value: int) -> int:
    return 3 if value % 3 == 0 and value % 9 != 0 else 1

def _integer_root(target: int, family: int) -> int | None:
    low = 3 if family == 1 else 5
    def f(d: int) -> int:
        return d * (d*d + (2 if family == 1 else 6)*d - (2 if family == 1 else 18))
    if target < f(low):
        return None
    high = low
    while f(high) < target:
        high *= 2
    while low < high:
        mid = (low + high) // 2
        if f(mid) < target:
            low = mid + 1
        else:
            high = mid
    return low if f(low) == target and low % 2 and (family == 1 or low % 3) else None

def negative_root_obstruction(n: int, j: int) -> dict | None:
    """A non-None result guarantees Common3 by the accompanying paper proof.

    All parameters are recomputed from this exact (n,j). No factorization of
    binomial coefficients, rho, or the quadratic block M is needed.
    Returned auxiliary states are not alleged counterexamples to NC3.
    """
    if not isinstance(n, int) or not isinstance(j, int):
        raise TypeError('n and j must be integers')
    if n % 4 or not (4 <= j and 2*j < n):
        return None
    g = gcd(n, j)
    lam, mu = _isolated_three(n-1), _isolated_three((n-2)//2)
    N, K = (n-1)//lam, (n-2)//(2*mu)
    H = gcd(K, j-1)
    C = K//H
    u, ru = divmod(j*(n-j), g*g*N*C)
    z, rz = divmod((j-1)*(n-j-1), N*H*H)
    if ru or rz or min(u,z) < 1:
        return None
    eps = lam*mu*H - 2*u*g*g
    if eps <= 0:
        return None
    A = lam**3 * mu**2
    T, rt = divmod(z*eps*eps+A, u*g*g)
    if rt or T <= 0:
        return None
    rho = eps*T
    pairs = []
    if rho % A == 0:
        d = _integer_root(rho//A, 1)
        if d is not None:
            pairs.append((1, d, d*d+2*d-2))
    if A == 27:
        d = _integer_root(rho, 2)
        if d is not None:
            pairs.append((2, d, d*d+6*d-18))
    for family, d, M in pairs:
        h = gcd(lam*mu*H, eps)
        E = eps//h
        W = lam*mu*H//h
        ratio, rem = divmod(d*M, E)
        block = gcd(M, E)
        reason = None
        if rem or gcd(E, ratio) != 1:
            reason = 'denominator_not_unitary'
        elif block == 1:
            reason = 'no_quadratic_prime_power_in_denominator'
        elif block == M:
            reason = 'all_quadratic_prime_powers_in_denominator'
        if reason:
            return {'n': n, 'j': j, 'g': g, 'lambda': lam, 'mu': mu,
                    'H': H, 'C': C, 'u': u, 'z': z, 'eps': eps,
                    'T': T, 'rho': rho, 'A': A, 'family': family,
                    'd': d, 'M': M, 'h': h, 'E': E, 'W': W,
                    'M_epsilon': block, 'reason': reason}
    return None
