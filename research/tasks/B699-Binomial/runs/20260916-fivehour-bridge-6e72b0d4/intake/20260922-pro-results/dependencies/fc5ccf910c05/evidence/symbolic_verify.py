#!/usr/bin/env python3
"""SymPy verification of the exact same-input identities used in round 12."""
from __future__ import annotations

import json
import sympy as sp

H, d, v = sp.symbols("H d v", integer=True)
Q = d + v
h = (4 * H + Q) / d
P = Q + h * v

F = sp.expand(4 * d * v * H**2 - 4 * v * Q**2 * H - (Q**4 - d))
N = sp.expand(4 * v * H**3 + H + Q)
A = sp.expand(Q**3 * (d + 4 * v))
C = sp.expand(Q**5 - d * v)
M = sp.expand(H * A + C)
L = sp.expand(
    3 * d**6
    + 19 * d**5 * v
    + 50 * d**4 * v**2
    + 70 * d**3 * v**3
    + 55 * d**2 * v**4
    - 2 * d**2 * v
    + 23 * d * v**5
    + 4 * v**6
)
R = sp.expand(
    Q**10
    - 12 * Q**7
    + 15 * d * Q**6
    - 4 * d**2 * Q**5
    - 4 * d * Q**3
    + 12 * d**2 * Q**2
    - 12 * d**3 * Q
    + 4 * d**4
)

# Original norm after nu=2H and h=(4H+Q)/d.
norm = sp.expand(v * (2 * H) ** 2 - P * Q**2 + 1)
assert sp.expand(d * norm - F) == 0

# Original n relation, modulo the same norm equation.
n_original = sp.expand(P * Q * (2 * H) + 2)
assert sp.expand(2 * d * (N - n_original * Q / 2) - 2 * H * F) == 0

# Linear reduction and resultant identity.
assert sp.expand(d**2 * N - Q * M - (H * d + Q**2) * F) == 0
assert sp.expand(d**2 * R - 4 * v * M * (d * M - L) + Q**6 * (d + 4 * v) ** 2 * F) == 0

# Specialization at d=1 used by the 2-adic Hensel gate.
a = sp.symbols("a", integer=True)
G = sp.expand(
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
assert sp.expand(R.subs({d: 1, v: 2 * a}) - 8 * a * G) == 0
assert sp.Poly(G, a, modulus=2).as_expr() == a + 1
assert sp.Poly(sp.diff(G, a), a, modulus=2).as_expr() == 1

payload = {
    "sympy_version": sp.__version__,
    "checks": [
        "d*(v*(2H)^2-PQ^2+1)=F",
        "2d*(N-nQ/2)=2HF",
        "d^2*N-Q*M=(Hd+Q^2)F",
        "d^2*R-4vM(dM-L)=-Q^6(d+4v)^2F",
        "R(1,2a)=8aG(a)",
        "G(a)=a+1 mod2 and G'(a)=1 mod2",
    ],
    "status": "SYMBOLIC_IDENTITIES=PASS",
}
print(json.dumps(payload, indent=2, sort_keys=True))
