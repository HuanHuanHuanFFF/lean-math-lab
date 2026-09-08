"""Exact separating tests: Pell contact model versus one more unit coefficient.

No original-solution scan. Every relaxed/local object is labelled as such.
"""

from fractions import Fraction as F
from math import gcd, prod
import json


def product(k, n):
    return prod(n+i for i in range(1, k+1))


def root_coefficients(k, i):
    c1 = prod(j-i for j in range(1, k+1) if j != i)
    harmonic = sum((F(1, j-i) for j in range(1, k+1) if j != i), F(0))
    c2 = c1*harmonic
    assert c2.denominator == 1
    return c1, c2.numerator, harmonic


def pell_models():
    # 10*t^2-7*s^2=3, seed (49,41), unit 251+30*sqrt(70).
    s, t = 49, 41
    rows = []
    for step in range(4):
        k, i, j, A, u, v = 5, 1, 2, 1, 7, 10
        assert v*t*t-u*s*s == 3
        assert gcd(s, t) == gcd(30, s*t) == 1
        d = A*s*t
        n = (d+u*s*s)//3-i
        assert 3*(n+i) == d+u*s*s
        m = n+d
        assert n >= 0 and d >= k
        assert k*d < 2*m and 3*m < 4*k*d
        assert (3*(n+j)-d) == v*t*t
        assert (n+i) % s == 0 and gcd((n+i)//s, s) == 1
        assert (n+j) % t == 0 and gcd((n+j)//t, t) == 1
        assert all(gcd(d, n+l) == 1 for l in (3, 4, 5))
        assert (u*s*s+3) % (t*t) == 0
        assert (v*t*t-3) % (s*s) == 0
        gcd_i = gcd(u*s+4*A*t, u*s+A*t)
        gcd_j = gcd(v*t+4*A*s, v*t+A*s)
        assert (3*A) % gcd_i == (3*A) % gcd_j == 0
        assert F(u*s+4*A*t, gcd_i) >= F(4*t, 3)
        assert F(v*t+4*A*s, gcd_j) >= F(4*s, 3)
        residual = product(k, m)-4*product(k, n)
        assert residual != 0
        assert residual % (s*s*t*t) == 0
        ci, bi, hi = root_coefficients(k, i)
        cj, bj, hj = root_coefficients(k, j)
        unit_s = (3*ci*u-4*bi*A*A*t*t) % s
        unit_t = (3*cj*v-4*bj*A*A*s*s) % t
        assert unit_s != 0 or unit_t != 0
        rows.append({"step": step, "s": s, "t": t, "d": d, "n": n, "m": m,
                     "C_star": u*v, "square_contact_and_cross_square_units": True,
                     "full_distance_rough_allocation": [i, j],
                     "next_unit_coefficient_residues": [unit_s, unit_t],
                     "original_residual_sign": 1 if residual > 0 else -1})
        s, t = 251*s+300*t, 210*s+251*t
    return rows


def root_lift(k, i, d, p, depth):
    assert d % p == 0 and p > k >= 3
    c1, c2, harmonic = root_coefficients(k, i)
    derivative = (-3*c1) % p
    z, modulus = 0, p
    def residual(value):
        return product(k, value-i+d)-4*product(k, value-i)
    assert residual(z) % modulus == 0
    for _ in range(1, depth):
        digit = (-(residual(z)//modulus)*pow(derivative, -1, p)) % p
        z += modulus*digit
        modulus *= p
        assert residual(z) % modulus == 0
    return z, modulus, c1, c2, harmonic


def local_unit_checks():
    rows = []
    for k, i, p, a in ((4, 2, 5, 1), (10, 5, 11, 1),
                        (10, 6, 13, 1), (14, 7, 17, 2)):
        s, depth = p**a, 3*a+2
        z, modulus, c1, c2, harmonic = root_lift(k, i, s, p, depth)
        assert (3*z-s) % (s*s) == 0
        u = (3*z-s)//(s*s)
        assert (3*c1*u-4*c2) % s == 0
        rows.append({"k": k, "i": i, "p": p, "a": a,
                     "harmonic": str(harmonic), "z": z,
                     "unit_coefficient_check": True,
                     "scope": "exact finite local lift, not integer original solution"})
    return rows


def central_pair_crt_check():
    # Check the new auxiliary divisibility in a two-prime local model, with no
    # claim that its real ratio is correct or its original product is equal.
    k, i, j, s, t, A = 14, 7, 8, 17, 19, 1
    d = A*s*t
    zi, mod_s, _, _, _ = root_lift(k, i, d, s, 3)
    zj, mod_t, _, _, _ = root_lift(k, j, d, t, 3)
    n_s, n_t = (zi-i) % mod_s, (zj-j) % mod_t
    n = n_s+mod_s*((n_t-n_s)*pow(mod_s, -1, mod_t) % mod_t)
    Ri, Rj = 3*(n+i)-d, 3*(n+j)-d
    assert Ri % (s*s) == Rj % (t*t) == 0
    u, v = Ri//(s*s), Rj//(t*t)
    C = u*v
    auxiliary = (k//2)*Ri*Rj-4*d*d
    assert auxiliary % ((s*t)**3) == 0
    assert ((k//2)*C-4*A*A) % (s*t) == 0
    residual = product(k, n+d)-4*product(k, n)
    assert residual % (s*t)**3 == 0
    assert residual != 0
    return {"k": k, "i": i, "j": j, "s": s, "t": t, "n": n, "d": d,
            "C_star": C, "auxiliary": auxiliary,
            "auxiliary_over_Q_cubed": auxiliary//((s*t)**3),
            "scope": "local CRT identity check only; fails the real solution equation"}


def nonsymmetric_crt_check():
    k, i, j, s, t, A = 40, 20, 22, 41, 43, 1
    d, h = A*s*t, j-i
    zi, mod_s, _, _, Hi = root_lift(k, i, d, s, 3)
    zj, mod_t, _, _, Hj = root_lift(k, j, d, t, 3)
    n_s, n_t = (zi-i) % mod_s, (zj-j) % mod_t
    n = n_s+mod_s*((n_t-n_s)*pow(mod_s, -1, mod_t) % mod_t)
    Ri, Rj = 3*(n+i)-d, 3*(n+j)-d
    assert Ri % (s*s) == Rj % (t*t) == 0
    C = (Ri//(s*s))*(Rj//(t*t))
    Xi = Hi.denominator*C-4*h*Hi.numerator*A*A
    Xj = Hj.denominator*C+4*h*Hj.numerator*A*A
    assert Xi % s == Xj % t == 0
    assert Hi.denominator <= k**abs(k+1-2*i)
    assert Hj.denominator <= k**abs(k+1-2*j)
    return {"k": k, "i": i, "j": j, "s": s, "t": t, "n": n,
            "H_i": str(Hi), "H_j": str(Hj), "C_star": C,
            "X_i": Xi, "X_j": Xj, "two_cofactor_congruences": True,
            "scope": "local CRT congruence check only, no exact real product claim"}


def main():
    print(json.dumps({"evidence": "constructed integer/Pell models and exact local lifts",
                      "pell_relaxations": pell_models(),
                      "local_unit_checks": local_unit_checks(),
                      "central_pair_crt": central_pair_crt_check(),
                      "nonsymmetric_crt": nonsymmetric_crt_check()}, indent=2))


if __name__ == "__main__":
    main()
