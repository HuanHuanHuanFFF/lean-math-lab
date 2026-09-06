"""Exact bounded probes for Erdos 686 with multiplier four.

No floating-point quantity decides an equality or discards a candidate.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
from fractions import Fraction
import json
from math import lcm, prod
from pathlib import Path
import platform
import time


def block(n: int, k: int) -> int:
    return prod(range(n + 1, n + k + 1))


def difference(n: int, k: int, d: int) -> int:
    return block(n + d, k) - 4 * block(n, k)


def crossing(k: int, d: int) -> tuple[int, int, int]:
    """Bracket the sole real crossing, using exact integer signs.

    R(n) = product(1+d/(n+i)) is strictly decreasing for n >= 0 and
    tends to 1. With d >= k >= 2, R(0) >= binom(2k,k) >= 6.
    Thus doubling terminates and bisection cannot skip an integer root.
    """
    assert 2 <= k <= d
    lo, hi, evaluations = 0, 1, 0
    assert difference(lo, k, d) > 0
    while True:
        value = difference(hi, k, d)
        evaluations += 1
        if value <= 0:
            break
        lo, hi = hi, 2 * hi
    while hi - lo > 1:
        mid = (lo + hi) // 2
        value = difference(mid, k, d)
        evaluations += 1
        if value > 0:
            lo = mid
        else:
            hi = mid
    assert difference(lo, k, d) > 0
    assert difference(hi, k, d) <= 0
    return lo, hi, evaluations


def run_search(ks: list[int], d_multiple: int) -> dict:
    assert d_multiple >= 1
    start = time.perf_counter()
    rows, hits, best = [], [], []
    for k in ks:
        local_count, max_n = 0, 0
        for d in range(k, d_multiple * k + 1):
            lo, hi, count = crossing(k, d)
            local_count += count
            max_n = max(max_n, hi)
            for n in (lo, hi):
                pn, pm = block(n, k), block(n + d, k)
                err = pm - 4 * pn
                if err == 0:
                    assert n >= 0 and n + d >= n + k
                    assert prod(n + d + i for i in range(1, k + 1)) == (
                        4 * prod(n + i for i in range(1, k + 1))
                    )
                    hits.append({"k": k, "n": n, "m": n + d})
                best.append((Fraction(abs(err), 4 * pn), k, d, n, str(err)))
            if len(best) > 40:
                best = sorted(best)[:10]
        rows.append({
            "k": k, "d_min": k, "d_max": d_multiple * k,
            "displacement_count": (d_multiple - 1) * k + 1,
            "maximum_crossing_n": max_n, "evaluations": local_count,
        })
    return {
        "method": "exact doubling and bisection in n for each (k,d)",
        "coverage": "all natural n for exactly the listed k and displacement ranges",
        "rows": rows, "hits": hits,
        "closest_crossing_neighbors": [
            {"k": k, "d": d, "n": n, "m": n + d, "difference": err,
             "relative_error_numerator": str(fr.numerator),
             "relative_error_denominator": str(fr.denominator)}
            for fr, k, d, n, err in sorted(best)[:10]
        ],
        "elapsed_seconds": time.perf_counter() - start,
    }


def run_symbolic(max_k: int) -> dict:
    import sympy as s
    t, q = s.symbols("t q")
    rows = []
    for k in range(2, max_k + 1, 2):
        r = k // 2
        poly = s.Poly(prod(t + i for i in range(1, k + 1)), t)
        coeffs = [s.Integer(1)]
        for j in range(1, r + 1):
            coeffs.append((poly.nth(k - j) - sum(
                coeffs[i] * coeffs[j - i] for i in range(1, j)
            )) / 2)
        root_poly = sum(coeffs[j] * t ** (r - j) for j in range(r + 1))
        scale = lcm(*(int(c.q) for c in coeffs))
        a = s.expand(scale * root_poly)
        e = s.expand(a ** 2 - scale ** 2 * poly.as_expr())
        assert s.expand(a ** 2 - scale ** 2 * poly.as_expr() - e) == 0
        row = {
            "k": k, "scale": scale, "A": str(a), "E": str(e),
            "E_factorization": str(s.factor(e)),
            "A_mod_2": str(s.Poly(a, t, modulus=2).as_expr()),
        }
        if k in (6, 8):
            threshold = 44 if k == 6 else 5
            gap = s.Poly(s.expand(
                (a - e - s.Rational(1, 4)).subs(t, q + threshold)
            ), q)
            assert all(c >= 0 for c in gap.all_coeffs()) and gap.nth(0) > 0
            row.update({
                "threshold": threshold,
                "A_minus_E_minus_quarter_shift": str(gap.as_expr()),
            })
        rows.append(row)
    return {"sympy_version": s.__version__, "rows": rows}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("mode", choices=["search", "symbolic"])
    parser.add_argument("--ks", default="5,7,8,9,10,11,12,16,24,32,48,64,96,128")
    parser.add_argument("--d-multiple", type=int, default=4)
    parser.add_argument("--max-k", type=int, default=16)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    payload = (
        run_search([int(x) for x in args.ks.split(",")], args.d_multiple)
        if args.mode == "search" else run_symbolic(args.max_k)
    )
    payload.update({
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "python_version": platform.python_version(),
    })
    args.output.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8", newline="\n"
    )
    print(json.dumps({
        "mode": args.mode, "output": str(args.output),
        "rows": len(payload["rows"]), "hits": payload.get("hits"),
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
