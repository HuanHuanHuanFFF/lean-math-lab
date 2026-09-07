"""Round 3: exact fixtures for the universal even-k effective-bound argument.

The proof in exploration.md applies to every positive even k; these fixtures
exercise its rational coefficient recurrence and explicit bound. They do not
exclude the n < N(k) remainder and are not kernel-checked polynomial instances.
No root, floating-point number, parity conjecture, or coefficient-sign
conjecture is used in computing or validating the bounds.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction as Q
import json
from math import lcm, prod
from pathlib import Path


def multiply(a, b):
    result = [0] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            result[i + j] += x * y
    return result


def value(a, t):
    result = 0
    for x in reversed(a):
        result = result * t + x
    return result


def ceil_div(a, b):
    assert a >= 0 and b > 0
    return (a + b - 1) // b


def fixture(k):
    assert k >= 2 and k % 2 == 0
    r = k // 2
    p = [1]
    for i in range(1, k + 1):
        p = multiply(p, [i, 1])
    h = [Q(1)]
    for j in range(1, r + 1):
        h.append(Q(p[k - j] - sum(h[i] * h[j - i] for i in range(1, j))) / 2)
    scale = lcm(*(x.denominator for x in h))
    a = [int(scale * x) for x in reversed(h)]
    square = multiply(a, a)
    e = [x - scale * scale * y for x, y in zip(square, p)]
    while e and e[-1] == 0:
        e.pop()
    assert e and len(e) <= r and a[-1] == scale > 0
    d, lead_e = len(e) - 1, abs(e[-1])
    sa, se, se_all = sum(map(abs, a[:-1])), sum(map(abs, e[:-1])), sum(map(abs, e))
    bound_components = {
        "A_leading_term_relative_error_1_over_8": ceil_div(8 * sa, scale),
        "E_leading_term_relative_error_1_over_8": ceil_div(8 * se, lead_e),
        "three_abs_E_lt_A": ceil_div(4 * se_all, scale),
    }
    n_bound = 1 + max(1, *bound_components.values())
    assert n_bound * scale > 8 * sa
    assert n_bound * lead_e > 8 * se
    assert n_bound * scale > 4 * se_all

    # Finite sanity checks only; the universal inequalities are established
    # by the coefficient-sum proof, not by these evaluations.
    checks = []
    for t in [n_bound, n_bound + 1, 2 * n_bound]:
        av, ev, pv = value(a, t), value(e, t), prod(range(t + 1, t + k + 1))
        assert pv == value(p, t)
        assert av * av == scale * scale * pv + ev
        xn, yn = scale * t ** r, lead_e * t ** d
        assert 7 * xn < 8 * av < 9 * xn
        assert 7 * yn <= 8 * abs(ev) <= 9 * yn
        assert -av < 3 * ev < av and av >= 1
        assert (3 * av - 1) ** 2 < 9 * scale * scale * pv < (3 * av + 1) ** 2
        checks.append(t)
    return {
        "k": k, "r": r, "L": scale, "P": p, "A": a, "E": e,
        "degree_E": d, "S_A_lower": sa, "S_E_lower": se, "S_E_all": se_all,
        "bound_components": bound_components, "N": n_bound,
        "sample_t_values_only": checks,
        "claim": "No solution with N <= n <= m; all n<N remain a separate obligation.",
        "finite_remainder_checked": False, "kernel_checked_instance": False,
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ks", default="2,4,6,8,10,12,14,16,24,32,64,128")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    rows = [fixture(int(k)) for k in args.ks.split(",")]
    payload = {
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": "Fixtures for a general proof, not an all-k finite enumeration.",
        "kernel_checked_instances": False, "rows": rows,
    }
    args.output.write_text(json.dumps(payload, indent=2) + "\n")
    print(json.dumps([{key: row[key] for key in ("k", "degree_E", "N")}
                      for row in rows], indent=2))


if __name__ == "__main__":
    main()
