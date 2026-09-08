"""Bounded, exact route tests. No completeness claim beyond printed ranges."""

import argparse
import json
import math
from collections import deque
from fractions import Fraction
from pathlib import Path


def smooth_blocks(limit=1000000, lengths=(2, 3, 5, 10, 20, 50)):
    largest = [0] * (limit + 1)
    for p in range(2, limit + 1):
        if largest[p] == 0:
            for a in range(p, limit + 1, p):
                largest[a] = p
    rows = []
    for k in lengths:
        queue = deque()
        found = []
        for end in range(1, limit + 1):
            while queue and largest[queue[-1]] <= largest[end]:
                queue.pop()
            queue.append(end)
            while queue and queue[0] <= end - k:
                queue.popleft()
            n = end - k
            if n >= k * k and k * largest[queue[0]] <= end:
                found.append({"k": k, "n": n, "largest_prime": largest[queue[0]],
                              "block": list(range(n + 1, end + 1))})
                break
        rows.append({"k": k, "first_example": found[0] if found else None})
    return {"limit": limit, "condition": "n>=k^2 and k*Pplus(P_k(n))<=n+k", "rows": rows}


def square_root_parts(max_k=40):
    import sympy as sp
    x, n = sp.symbols("x n")
    rows = []
    for k in range(2, max_k + 1, 2):
        r = k // 2
        e = [Fraction(1)]
        for j in range(1, r + 1):
            a2 = Fraction((2 * j - 1) ** 2, 4)
            e.append(Fraction(0))
            for h in range(len(e) - 1, 0, -1):
                e[h] -= a2 * e[h - 1]
        c = [Fraction(1)]
        for h in range(1, r // 2 + 2):
            c.append((e[h] - sum(c[i] * c[h - i] for i in range(1, h))) / 2)
        qcenter = sum(sp.Rational(c[h].numerator, c[h].denominator) * x ** (r - 2 * h)
                      for h in range(r // 2 + 1))
        qn = sp.Poly(sp.expand(qcenter.subs(x, n + sp.Rational(k + 1, 2))), n)
        denominator = sp.ilcm(*[term.q for term in qn.all_coeffs()])
        first = c[-1]
        power = r - 2 * (len(c) - 1)
        # Leading-order diagnostic only: not a proved bound on the full remainder.
        leading_threshold = (3 * float(abs(first)) * int(denominator)) ** (-1 / power)
        rows.append({"k": k, "denominator": int(denominator), "first_remainder": str(first),
                     "remainder_power": power, "leading_threshold_diagnostic": leading_threshold,
                     "polynomial_in_n": str(qn.as_expr())})
    return {"max_k": max_k, "threshold_is_heuristic": True, "rows": rows}


def genus2_points(height=1000, lo=1, hi=2):
    points, original = [], []
    for b in range(1, height + 1):
        for a in range(lo * b, hi * b + 1):
            if math.gcd(a, b) != 1:
                continue
            disc = (9 * a**6 + 64 * a**5 * b - 200 * a**3 * b**3
                    + 64 * a * b**5 + 144 * b**6)
            if disc < 0:
                continue
            root = math.isqrt(disc)
            if root * root != disc:
                continue
            zvals = []
            for signed_root in set((root, -root)):
                # g=gcd(x,y), x=a*g,y=b*g. Original equation divided by g:
                # (a^5-4b^5)g^4-5(a^3-4b^3)g^2+4(a-4b)=0.
                # Its discriminant is disc. The symbol z here means g^2.
                denom = 2 * (a**5 - 4 * b**5)
                if denom == 0:
                    continue
                z = Fraction(5 * (a**3 - 4 * b**3) + signed_root, denom)
                zvals.append(str(z))
                if z.denominator == 1 and z >= 0:
                    g = math.isqrt(z.numerator)
                    if g * g == z.numerator:
                        xx, yy = a * g, b * g
                        f = lambda t: t * (t*t - 1) * (t*t - 4)
                        assert f(xx) == 4 * f(yy)
                        if yy >= 3 and xx - yy >= 5:
                            n, m = yy - 3, xx - 3
                            low = math.prod(range(n + 1, n + 6))
                            upper = math.prod(range(m + 1, m + 6))
                            assert upper == 4 * low and n + 5 <= m
                            original.append({"k": 5, "n": n, "m": m,
                                             "lower_product": low, "upper_product": upper})
            points.append({"a": a, "b": b, "sqrt_discriminant": root, "g_squared": zvals})
    return {"b_max": height, "ratio_interval": [lo, hi], "points": points,
            "legal_original_witnesses": original}


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("probe", choices=("smooth", "sqrt", "genus2"))
    parser.add_argument("--bound", type=int)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.probe == "smooth":
        result = smooth_blocks(args.bound or 1000000)
    elif args.probe == "sqrt":
        result = square_root_parts(args.bound or 40)
    else:
        result = genus2_points(args.bound or 1000)
    rendered = json.dumps(result, ensure_ascii=False, indent=2)
    if args.output:
        args.output.write_text(rendered + "\n", encoding="utf-8")
    print(rendered)
