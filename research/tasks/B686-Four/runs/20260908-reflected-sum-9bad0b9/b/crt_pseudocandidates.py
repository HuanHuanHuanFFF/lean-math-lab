"""Construct (do not search for) finite-local pseudo-solutions of multiplier 4.

Each output passes exact selected-prime valuations and normalized unit precision,
but has P_k(m)>4P_k(n). An integer power comparison locates the real asymptote.
"""

from math import prod
import json


def valuation(n, p):
    assert n != 0
    count = 0
    while n % p == 0:
        n //= p
        count += 1
    return count


def crt(residues):
    value, modulus = 0, 1
    for residue, next_modulus in residues:
        step = ((residue - value) * pow(modulus, -1, next_modulus)) % next_modulus
        value += modulus * step
        modulus *= next_modulus
    return value % modulus, modulus


def local_data(k, primes, precision):
    # T and all selected product valuations are fixed as precision increases.
    exponents = {p: 1 + max(valuation(j, p) for j in range(1, k)) for p in primes}
    T = prod(p**exponents[p] for p in primes)
    residues, evidence = [], []
    for p in primes:
        reduced_j = [(j // p**valuation(j, p), T // p**valuation(j, p)) for j in range(1, k)]
        constant = prod(unit + scaled for unit, scaled in reduced_j)
        def H(z):
            return z * prod(unit + 4*scaled*z for unit, scaled in reduced_j) - constant
        # H(z) = U(z-1) mod p, U != 0. Every further digit is uniquely determined.
        derivative_unit = prod(unit for unit, _ in reduced_j) % p
        z, power = 1, p
        assert H(z) % power == 0
        for _ in range(1, precision):
            digit = (-(H(z) // power) * pow(derivative_unit, -1, p)) % p
            z += digit * power
            power *= p
            assert H(z) % power == 0
        modulus = p ** (exponents[p] + valuation(4, p) + precision)
        residues.append(((4*T*z - 1) % modulus, modulus))
        evidence.append({"p": p, "a": exponents[p], "z_mod_p_to_e": z, "modulus": modulus})
    B, M = crt(residues)
    return T, B, M, evidence


def first_upper_grid(k, n, B, M):
    # m is the first nonnegative grid point satisfying
    # (2m+k+1)^k > 4(2n+k+1)^k. No floating roots are used.
    target = 4 * (2*n + k + 1)**k
    lo, hi = 0, 1
    while (2*(B+M*hi) + k + 1)**k <= target:
        hi *= 2
    while lo < hi:
        mid = (lo + hi) // 2
        if (2*(B+M*mid) + k + 1)**k > target:
            hi = mid
        else:
            lo = mid + 1
    return B + M*lo


def construct(k, primes, precision, lift):
    T, B, M, local = local_data(k, primes, precision)
    n = T - 1 + M*lift
    m = first_upper_grid(k, n, B, M)
    lower, upper = prod(n+i for i in range(1, k+1)), prod(m+i for i in range(1, k+1))
    difference = upper - 4*lower
    assert m >= n+k and difference > 0
    assert k*(m-n) < 2*m and 3*m < 4*k*(m-n)
    checks = []
    for item in local:
        p, a = item["p"], item["a"]
        lower_v = valuation(lower, p)
        upper_v = valuation(upper, p)
        unit_precision = valuation(difference, p) - valuation(4*lower, p)
        assert lower_v == a + sum(valuation(j, p) for j in range(1, k))
        assert upper_v - lower_v == valuation(4, p)
        assert unit_precision >= precision
        checks.append({"p": p, "lower_v": lower_v, "upper_v": upper_v, "normalized_unit_precision": unit_precision})
    # A compact rigorous real-error report, again without floats.
    assert difference * (lift // 100) < 4*lower
    return {
        "k": k, "primes": primes, "precision": precision, "lift": lift,
        "T": T, "M": M, "n_digits": len(str(n)), "m_digits": len(str(m)),
        "n": str(n), "m": str(m),
        "strictly_not_a_solution": True,
        "relative_product_error_upper_bound": f"100/{lift}",
        "local_checks": checks,
    }


def main():
    cases = [
        construct(k, [2, 3, 5, 7], precision, lift)
        for k, precision, lift in ((3, 4, 10**8), (5, 4, 10**8), (5, 8, 10**12), (9, 4, 10**8))
    ]
    print(json.dumps({
        "evidence": "constructive exact integer certificates; no original-solution scan",
        "cases": cases,
    }, indent=2))


if __name__ == "__main__":
    main()
