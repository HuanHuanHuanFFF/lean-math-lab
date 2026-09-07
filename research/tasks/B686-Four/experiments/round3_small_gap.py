#!/usr/bin/env python3
"""Exact arithmetic after Mukhopadhyay--Shorey (2004), Theorem 3.

The paper-to-finite-box implication is proved separately in exploration.md.
No unbounded conclusion follows from this script alone. In addition to direct
box verification, record adjacent sign changes; strict ratio monotonicity then
excludes all n for each of the 160 specified (k,h), conditional on that lemma.
"""
import argparse
import json
from math import prod


def p(k, n):
    return prod(range(n + 1, n + k + 1))


def difference(k, h, n):
    return p(k, n + k + h) - 4 * p(k, n)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    count = 0
    hits = []
    for k in range(2, 22):
        for h in range(2, 8):
            for n in range(576):
                count += 1
                if difference(k, h, n) == 0:
                    hits.append([k, n, n + k + h])
    assert count == 69120 and not hits
    sign_changes = []
    for k in range(2, 22):
        for h in range(8):
            lo, hi = 0, 1
            assert difference(k, h, lo) > 0
            while difference(k, h, hi) > 0:
                hi *= 2
            assert difference(k, h, hi) < 0
            while hi - lo > 1:
                mid = (lo + hi) // 2
                value = difference(k, h, mid)
                assert value != 0
                if value > 0:
                    lo = mid
                else:
                    hi = mid
            assert difference(k, h, lo) > 0 > difference(k, h, hi)
            sign_changes.append({"k": k, "h": h, "last_above": lo,
                                 "first_below": hi,
                                 "difference_above": difference(k, h, lo),
                                 "difference_below": difference(k, h, hi)})
    # A numerical bound handles the three exceptional square values uniformly,
    # even if one could represent a product with an additional factor 1.
    exceptional = [3780**2, 3850**2, 59400**2]
    assert 244**4 > max(exceptional)
    assert 16**2 > 243
    assert max((11-2)//2, (25-3)//2, (28-4)//2,
               (30-5)//2, (46-6)//2, (50-7)//2) == 21
    result = {
        "source": "https://publi.math.unideb.hu/paper/924/download/",
        "theorem": "Theorem 3, printed page 88, PDF page 10",
        "map": {"t": "h", "K": "2*k+h", "N": "n+1",
                "retained_product": "P_k(n)*P_k(n+k+h)=(2*P_k(n))^2"},
        "finite_box": {"k": [2,21], "n": [0,575], "h": [2,7],
                       "checked": count, "hits": hits},
        "sign_change_count": len(sign_changes),
        "sign_changes": sign_changes,
        "external_dependencies": [
            "Theorem 3 is a published theorem, not formalized by this script",
            "h=0,1 require separate arguments",
            "sign-change global coverage uses strict ratio monotonicity"
        ]
    }
    with open(args.output, "w") as f:
        json.dump(result, f, indent=2)
        f.write("\n")
    print(json.dumps({"checked": count, "hits": hits,
                      "sign_changes": len(sign_changes),
                      "max_first_below": max(r["first_below"] for r in sign_changes)}))


if __name__ == "__main__":
    main()
