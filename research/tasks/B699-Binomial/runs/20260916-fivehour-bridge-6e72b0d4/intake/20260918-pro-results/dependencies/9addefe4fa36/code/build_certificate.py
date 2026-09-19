#!/usr/bin/env python3
"""Construct the finite certificate for RECOVERY-DISC-NEG.

All loops cover sets bounded in proofs/PROOFS.md. No search over an
unbounded exponent is replaced by a finite scan: s is reduced modulo 720.
Only the Python standard library is required.
"""
from __future__ import annotations
import argparse
import json
from math import comb, gcd, isqrt
from pathlib import Path

PERIOD = 720
PRIMES = (5, 7, 11, 13, 17, 19, 31, 37, 41, 61, 257)

def v2(n: int) -> int:
    n = abs(n)
    if not n:
        raise ValueError("v2(0) is not used")
    return (n & -n).bit_length() - 1

def rows() -> list[tuple[int, ...]]:
    ans = []
    for lam, mu in ((1, 3), (3, 1)):
        A = lam**3 * mu**2
        for rho in range(1, 5*A, 2):
            if rho == 3*A or 27*rho*rho - 104*A*rho - 48*A*A > 0:
                continue
            for eps in range(1, rho+1, 2):
                if rho % eps:
                    continue
                T = rho // eps
                eta = rho - 3*A
                for g in range(1, abs(eta)//2 + 1):
                    if eta % (2*g) or (eta//(2*g) - g) % 2:
                        continue
                    if gcd(g, eps) != 1 or gcd(g, lam*mu) != 1:
                        continue
                    if A % gcd(g*g*T, eps*eps):
                        continue
                    ans.append((lam, mu, A, rho, eps, T, g))
    return sorted(ans)

def allowed_s(row: tuple[int, ...]) -> list[int]:
    lam, mu, _, _, _, _, g = row
    targets = {4, 7} if lam == 3 else {5, 8}
    return [s for s in range(PERIOD) if g*pow(2, s, 9) % 9 in targets]

def feasible_n_mod_p(row: tuple[int, ...], p: int) -> set[int]:
    """Eliminated cubic f(x) and row-recovery cubic, same x in both."""
    lam, mu, A, rho, eps, T, g = row
    squares = {d*d % p for d in range(p)}
    invn = pow(A*eps*eps, -1, p)
    invq = pow(eps**3*lam*A*g*g, -1, p)
    answer = set()
    for x in range(p):
        w = 2*x + eps
        n = 2*(T*w**3-A*(2*w*w+2*w*eps-eps*eps))*invn % p
        f = (8*T*T*x**3 + 4*T*(3*rho-4*A)*x*x
             +(6*rho*rho-21*A*rho+8*A*A)*x
             +eps*(rho-3*A)**2)
        if f*invq % p in squares:
            answer.add(n)
    return answer

def odd_prime_factors(n: int) -> list[int]:
    out = []
    while n % 2 == 0:
        n //= 2
    p = 3
    while p*p <= n:
        if n % p == 0:
            out.append(p)
            while n % p == 0:
                n //= p
        p += 2
    if n > 1:
        out.append(n)
    return out

def build() -> dict:
    rs = rows()
    small = [[i, s, r[-1]*(1 << s)] for i, r in enumerate(rs)
             for s in range(3, v2(r[-1])+3)]
    ns = sorted({a[2] for a in small})
    witnesses = []
    for n in ns:
        primes = odd_prime_factors(comb(n, 3))
        for j in range(4, n//2+1):
            b = comb(n, j)
            p = next((p for p in primes if b % p == 0), None)
            if p is None:
                raise RuntimeError(f"No common prime at {(n,j)}")
            witnesses.append([n, j, p])
    modular = []
    for i, r in enumerate(rs):
        lam, mu, A, rho, eps, T, g = r
        if v2(rho-3*A) != 2*v2(g)+1:
            continue
        remaining = set(allowed_s(r))
        eliminated = []
        for p in PRIMES:
            if A*eps*g % p == 0:
                continue
            possible = feasible_n_mod_p(r, p)
            killed = sorted(s for s in remaining if g*pow(2, s, p) % p not in possible)
            if killed:
                eliminated.append({"prime": p, "s_classes": killed})
                remaining.difference_update(killed)
            if not remaining:
                break
        if remaining and not (r in ((1,3,9,9,1,9,1), (1,3,9,9,3,3,1),
                                      (1,3,9,9,9,1,1)) and remaining == {3}):
            raise RuntimeError(f"Unclosed modular tail: {r}, {remaining}")
        modular.append({"row_index": i, "eliminated": eliminated,
                        "factorization_tail_s_classes": sorted(remaining)})
    return {"schema": 1, "theorem": "RECOVERY-DISC-NEG", "period": PERIOD,
            "primes": list(PRIMES), "coefficient_rows": [list(r) for r in rs],
            "small_exponent_states": small, "small_n_rows": ns,
            "small_original_witnesses": witnesses, "modular_cover": modular,
            "tail_proof": "A9_RHO9_G1_ODD_QUADRATIC"}

def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--output", type=Path, required=True)
    args = ap.parse_args()
    data = build()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, ensure_ascii=False, sort_keys=True,
                                      separators=(",", ":"))+"\n", encoding="utf-8")
    print(json.dumps({"coefficient_rows": len(data["coefficient_rows"]),
                      "small_states": len(data["small_exponent_states"]),
                      "small_original_pairs": len(data["small_original_witnesses"]),
                      "high_rows": len(data["modular_cover"]),
                      "period": PERIOD}, sort_keys=True))
if __name__ == "__main__":
    main()
