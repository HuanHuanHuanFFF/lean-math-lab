#!/usr/bin/env python3
"""Auxiliary exact falsification scan for the derived (D,v) core.

This is NOT used to prove any infinite statement in REPORT/PROOFS.
It scans odd 3 <= D <= limit, all v | D^3-1, and solves the exact
quadratic in h coming from the minimal-branch core.

Standard library only.
"""
import argparse, json, math
from pathlib import Path


def factor_small(n: int):
    out = {}
    p = 2
    while p * p <= n:
        if n % p == 0:
            e = 0
            while n % p == 0:
                n //= p; e += 1
            out[p] = e
        p = 3 if p == 2 else p + 2
    if n > 1:
        out[n] = out.get(n, 0) + 1
    return out


def factor_d3_minus_1(D: int):
    # D^3-1=(D-1)(D^2+D+1); each factor is <= O(D^2), so trial division is cheap.
    out = {}
    for part in (D - 1, D * D + D + 1):
        for p, e in factor_small(part).items():
            out[p] = out.get(p, 0) + e
    return out


def divisors(fi):
    ds = [1]
    for p, e in sorted(fi.items()):
        ds = [d * (p ** k) for d in ds for k in range(e + 1)]
    return sorted(ds)


def is_square(n: int):
    if n < 0:
        return None
    r = math.isqrt(n)
    return r if r * r == n else None


def scan(limit: int):
    tested = 0
    core = []
    width = []
    for D in range(3, limit + 1, 2):
        for v in divisors(factor_d3_minus_1(D)):
            tested += 1
            Q = D + v
            # Exact binary-cubic core grouped as A h^2 + B h + C = 0.
            A = v * D * D
            B = -2 * Q * v * (3 * Q - v)
            C = -4 * Q**3 + Q * Q * v + 4
            sd = is_square(B * B - 4 * A * C)
            if sd is None:
                continue
            for num in (-B + sd, -B - sd):
                den = 2 * A
                if num <= 0 or num % den:
                    continue
                h = num // den
                if h % 2 == 0:
                    continue
                nd = h * D - Q
                if nd <= 0 or nd % 2:
                    continue
                nu = nd // 2
                P = Q + h * v
                if v * nu * nu != P * Q * Q - 1:
                    continue
                if v * (nu * nu - h * Q * Q) != Q**3 - 1:
                    continue
                rec = {"D": D, "v": v, "Q": Q, "h": h, "P": P, "nu": nu}
                core.append(rec)
                t = P + nu
                if P >= 4 * Q and t < Q * Q:
                    width.append({**rec, "t": t})
    return {
        "schema": "B699-i3-core-scan-v1",
        "limit_D": limit,
        "D_parity": "odd",
        "D_min": 3,
        "divisor_pair_count": tested,
        "core_solutions": core,
        "current_width_solutions": width,
        "claim_scope": "finite exploratory falsification only; not an infinite proof"
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=5000)
    ap.add_argument("--output", type=Path, required=True)
    args = ap.parse_args()
    data = scan(args.limit)
    args.output.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({k: data[k] for k in ("limit_D", "divisor_pair_count", "core_solutions", "current_width_solutions")}, sort_keys=True))


if __name__ == "__main__":
    main()
