#!/usr/bin/env python3
from __future__ import annotations

from fractions import Fraction
from math import gcd, isqrt
import json


def vp_int(n: int, p: int) -> int:
    n = abs(n)
    if n == 0:
        raise ValueError("vp(0) not used")
    out = 0
    while n % p == 0:
        out += 1
        n //= p
    return out


def vp_frac(x: Fraction, p: int) -> int:
    return vp_int(x.numerator, p) - vp_int(x.denominator, p)


def jacobi(a: int, n: int) -> int:
    if n <= 0 or n % 2 == 0:
        raise ValueError("n must be positive odd")
    a %= n
    ans = 1
    while a:
        while a % 2 == 0:
            a //= 2
            if n % 8 in (3, 5):
                ans = -ans
        a, n = n, a
        if a % 4 == n % 4 == 3:
            ans = -ans
        a %= n
    return ans if n == 1 else 0


def sf(n: int) -> int:
    if n <= 0:
        raise ValueError
    x = n
    out = 1
    p = 2
    while p * p <= x:
        e = 0
        while x % p == 0:
            x //= p
            e ^= 1
        if e:
            out *= p
        p += 1 if p == 2 else 2
    if x > 1:
        out *= x
    return out


# Tiny exact polynomial ring in Q,h,xi.
class Poly:
    def __init__(self, terms=None):
        self.t = {k: v for k, v in (terms or {}).items() if v}

    @staticmethod
    def c(v):
        return Poly({(0, 0, 0): int(v)})

    @staticmethod
    def var(i):
        e = [0, 0, 0]
        e[i] = 1
        return Poly({tuple(e): 1})

    def __add__(self, other):
        other = other if isinstance(other, Poly) else Poly.c(other)
        d = dict(self.t)
        for k, v in other.t.items():
            d[k] = d.get(k, 0) + v
            if d[k] == 0:
                del d[k]
        return Poly(d)

    __radd__ = __add__

    def __neg__(self):
        return Poly({k: -v for k, v in self.t.items()})

    def __sub__(self, other):
        return self + (-other if isinstance(other, Poly) else -Poly.c(other))

    def __rsub__(self, other):
        return (other if isinstance(other, Poly) else Poly.c(other)) - self

    def __mul__(self, other):
        other = other if isinstance(other, Poly) else Poly.c(other)
        d = {}
        for a, va in self.t.items():
            for b, vb in other.t.items():
                k = tuple(a[i] + b[i] for i in range(3))
                d[k] = d.get(k, 0) + va * vb
        return Poly(d)

    __rmul__ = __mul__

    def __pow__(self, e):
        if e < 0:
            raise ValueError
        out = Poly.c(1)
        base = self
        while e:
            if e & 1:
                out = out * base
            base = base * base
            e //= 2
        return out

    def __eq__(self, other):
        other = other if isinstance(other, Poly) else Poly.c(other)
        return self.t == other.t


Q, h, xi = Poly.var(0), Poly.var(1), Poly.var(2)
nP = 5 + Q*h
uP = 1 + Q*xi
KP = 10*nP**2 - 36*nP*uP - 34*nP + 27*uP**2 + 81*uP + 12
H7P = 16*(nP-3)*(nP-4) - 36*(nP-3)*uP + 27*uP**2
TP = 8*(nP-5)*(nP-4)*(nP-3) - (uP-1)*H7P

K_expected = (
    20
    + Q*(30*h-45*xi)
    + Q**2*(10*h**2-36*h*xi+27*xi**2)
)
H_expected = (
    -13
    + Q*(12*h-18*xi)
    + Q**2*(16*h**2-36*h*xi+27*xi**2)
)
T_expected = (
    Q*(16*h+13*xi)
    + Q**2*(24*h**2-12*h*xi+18*xi**2)
    + Q**3*(8*h**3-16*h**2*xi+36*h*xi**2-27*xi**3)
)
assert KP == K_expected
assert H7P == H_expected
assert TP == T_expected
assert 8*(nP-5)*(nP-4)*(nP-3)-TP == (uP-1)*H7P

# Exact CRT residue relevant to q4.
rows = [r for r in range(240) if r % 16 == 2 and r % 3 == 0 and r % 5 == 0]
assert rows == [210]
q4_mod120 = ((210 - 4) // 2) % 120
assert q4_mod120 == 103 and q4_mod120 % 40 == 23
assert jacobi(10, q4_mod120) == -1

positive10_mod40 = [
    r for r in range(1, 40, 2) if gcd(r, 10) == 1 and jacobi(10, r) == 1
]
assert positive10_mod40 == [1, 3, 9, 13, 27, 31, 37, 39]

# A concrete block-level C-only compatibility diagnostic.
E4, A4, C = 1, 13**2, 7
q4 = E4*A4*C
assert q4 % 120 == 103
assert C < A4
assert jacobi(10, A4) == 1
assert jacobi(30, C) == 1
assert jacobi(10, C) == -1
assert sf(E4*C) == 7

# Finite exact sanity replay of the q2 exponent algebra.
precision_cases = 0
for E2 in range(1, 181):
    if gcd(E2, 30) != 1:
        continue
    for M2 in range(1, 181):
        if gcd(M2, 30) != 1 or gcd(E2, M2) != 1:
            continue
        epsE, epsM = sf(E2), sf(M2)
        q2 = E2*M2
        sigma2 = epsE*epsM
        q5 = 31
        Dmin = E2*epsE*M2*M2*q5
        v2min = E2*epsE
        etamin = M2*M2
        lhs = Dmin*v2min*etamin
        rhs = q2*q2*sigma2*q5
        assert lhs >= rhs and lhs % rhs == 0
        precision_cases += 1

# kappa4 >= tau4 sanity replay.
kappa_cases = 0
for E4 in range(1, 220):
    d4 = sf(E4)
    for C in range(1, 220):
        c4 = sf(C)
        tau4 = d4*c4 if gcd(E4, C) == 1 else sf(E4*C)
        kappa4 = d4*C
        if gcd(E4, C) == 1:
            assert tau4 == sf(E4*C)
            assert kappa4 >= tau4 and kappa4 % tau4 == 0
            kappa_cases += 1

center_floor = 300 * 10**4 * 7 * 7 * 7**2 * 7 * 31**2
assert center_floor == 48_454_581_000_000

# Weak exact p-adic diagnostic.
p, e, E, s = 31, 1, 4, 3
h0 = 5**E * (2*p**s + 5)
y0 = 5**E * p**s
n = 5 + p**e*h0
j = 1 + p**e*y0
k = n-j
N = n-1
U = Fraction(j*k, N)
q3 = (n-3)//3
q4 = (n-4)//2
q5 = (n-5)//(5**E)
K = 10*n*n - 36*n*U - 34*n + 27*U*U + 81*U + 12
H7 = 16*(n-3)*(n-4) - 36*(n-3)*U + 27*U*U
T = 8*(n-5)*(n-4)*(n-3) - (U-1)*H7
term = T / Fraction(48*q3*q4*q5)
diff = Fraction(5**E) - term

weak = {
    "p": p, "e": e, "E": E, "s": s,
    "n": n, "j": j, "k": k,
    "n_mod_9000": n % 9000,
    "j_le_floor_half": j <= n//2,
    "gcd_n_j": gcd(n, j),
    "first_source_remainder": (j*k) % N,
    "vp_n_minus_5": vp_int(n-5, p),
    "vp_j_minus_1": vp_int(j-1, p),
    "vp_k_minus_4": vp_int(k-4, p),
    "vp_U_minus_1": vp_frac(U-1, p),
    "vp_K": vp_frac(K, p),
    "vp_H7": vp_frac(H7, p),
    "vp_T": vp_frac(T, p),
    "vp_q5": vp_int(q5, p),
    "vp_normalized_T_term": vp_frac(term, p),
    "vp_5E_minus_term": vp_frac(diff, p),
}
assert weak == {
    "p": 31, "e": 1, "E": 4, "s": 3,
    "n": 1154498130, "j": 577200626, "k": 577297504,
    "n_mod_9000": 5130,
    "j_le_floor_half": True,
    "gcd_n_j": 2,
    "first_source_remainder": 828533134,
    "vp_n_minus_5": 1,
    "vp_j_minus_1": 4,
    "vp_k_minus_4": 1,
    "vp_U_minus_1": 4,
    "vp_K": 0,
    "vp_H7": 0,
    "vp_T": 1,
    "vp_q5": 1,
    "vp_normalized_T_term": 0,
    "vp_5E_minus_term": 3,
}

out = {
    "status": "PASS_B699_C7_Q4_CHARACTER_CENTER_SF",
    "q4": {
        "n_mod_240": 210,
        "q4_mod_120": 103,
        "q4_mod_40": 23,
        "chi10_q4": -1,
        "chi10_positive_classes_mod40": positive10_mod40,
        "deleted_landing": "sf(E4)=sf(C)=1",
        "tau4_min": 7,
    },
    "center_sf": {
        "coefficient": 300,
        "uniform_tau4_coefficient": 2100,
        "minimal_floor_from_this_bound_only": center_floor,
        "q2_precision_cases": precision_cases,
        "kappa_tau_cases": kappa_cases,
    },
    "p_adic": {
        "symbolic_core_expansions": "PASS",
        "normalized_relation_is_identity": True,
        "weak_diagnostic": weak,
    },
    "limitations": [
        "not a proof of NC6 sufficiency",
        "not an absolute finite reduction",
        "not a complete i6 or B699 closure",
        "weak p-adic diagnostic fails the first-source divisibility",
        "not Lean or external review",
    ],
}
print(json.dumps(out, ensure_ascii=False, indent=2))
