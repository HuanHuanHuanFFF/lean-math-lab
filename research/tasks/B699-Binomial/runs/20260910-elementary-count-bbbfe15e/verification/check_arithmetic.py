#!/usr/bin/env python3
"""Exact finite and symbolic diagnostics. This is explicitly NOT Lean acceptance."""
from fractions import Fraction as F
from math import isqrt, prod
import json
from pathlib import Path

primes = [p for p in range(2, 129) if all(p % d for d in range(2, isqrt(p) + 1))]
weights = [p.bit_length() - 1 for p in primes]
assert len(primes) == 31
assert sum(weights) == 145
primorial = prod(primes)
assert primorial >= 2**145
lower, upper = F(56, 81), F(25, 36)
assert F(6931471803, 10**10) > lower
assert F(6931471808, 10**10) < upper
assert 7 * lower > F(9, 2)
base_bound = F(31) - F(145, 7)
g_lower = F(384) / (7 * (7 * upper - F(3, 2)))
assert base_bound == F(72, 7)
assert g_lower == F(13824, 847)
assert g_lower > base_bound
# Exact Laurent polynomials in x, z=log(x), c. D(z)=1/x, D(c)=0.
# Keeping the derivative rule explicit makes this check independent of a CAS.
def add(p, q):
    r = p.copy()
    for m, v in q.items():
        r[m] = r.get(m, F(0)) + v
    return {m: v for m, v in r.items() if v}


def scale(k, p):
    return {m: k*v for m, v in p.items() if k*v}


def sub(p, q):
    return add(p, scale(-1, q))


def mul(p, q):
    r = {}
    for a, u in p.items():
        for b, v in q.items():
            m = tuple(i+j for i, j in zip(a, b))
            r[m] = r.get(m, F(0)) + u*v
    return {m: v for m, v in r.items() if v}


def derivative(p):
    r = {}
    for (i, j, k), v in p.items():
        if i:
            r = add(r, {(i-1, j, k): i*v})
        if j:
            r = add(r, {(i-1, j-1, k): j*v})
    return r


one = {(0, 0, 0): F(1)}
x = {(1, 0, 0): F(1)}
z = {(0, 1, 0): F(1)}
c = {(0, 0, 1): F(1)}
a = F(3, 2)
za = sub(z, scale(a, one))
N, D = scale(a, mul(c, x)), mul(z, za)
quotient_derivative_numerator = sub(mul(derivative(N), D), mul(N, derivative(D)))
gp_numerator = scale(a, mul(c, sub(D, sub(scale(2, z), scale(a, one)))))
assert quotient_derivative_numerator == gp_numerator
gap_numerator = scale(F(1, 2), mul(mul(c, z), sub(z, scale(F(9, 2), one))))
assert sub(gp_numerator, mul(c, mul(za, za))) == gap_numerator
assert sub(add(za, scale(a, one)), z) == {}
out = {
    "status": "exact_diagnostics_passed_NOT_Lean_acceptance",
    "prime_count": len(primes), "primes": primes, "binary_log_weights": weights,
    "binary_log_weight_sum": sum(weights), "primorial_128": str(primorial),
    "two_pow_145": str(2**145), "primorial_lower_margin": str(primorial-2**145),
    "base_remainder_upper": str(base_bound), "correction_at_128_lower": str(g_lower),
    "rational_margin": str(g_lower-base_bound), "symbolic_derivative_identity": True,
    "symbolic_derivative_gap_identity": True, "symbolic_final_identity": True,
    "method": "complete trial division, exact Fraction arithmetic, sparse Laurent polynomials with D(log x)=1/x; Python standard library only",
    "limitations": "Does not validate Lean syntax, APIs, integrability, coercions, transitive axioms, or EC as a Lean theorem."
}
target = Path(__file__).with_name("arithmetic-diagnostic.json")
target.write_text(json.dumps(out, ensure_ascii=False, indent=2)+"\n")
print(json.dumps(out, ensure_ascii=False))
