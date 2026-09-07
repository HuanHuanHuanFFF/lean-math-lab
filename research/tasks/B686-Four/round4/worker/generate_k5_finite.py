"""Regenerate exactly 595 adjacent-sign certificates and the Lean cutoff list.

Run from any cwd. No external dependencies. Bound: 5 <= d < 600,
binary-search bracket 0 <= n <= 4*d. Written outputs stay beside this file.
"""
from datetime import datetime, timezone
from math import comb, prod
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent


def main():
    rows = []
    for d in range(5, 600):
        def f(n):
            return 120 * (comb(n + d + 5, 5) - 4 * comb(n + 5, 5))
        lo, hi = 0, 4 * d
        assert f(lo) > 0 and f(hi) < 0
        while hi - lo > 1:
            mid = (lo + hi) // 2
            if f(mid) > 0:
                lo = mid
            else:
                hi = mid
        assert f(lo) > 0 and f(hi) < 0
        # Independent arithmetic expression, also matching the raw source.
        for n in (lo, hi):
            assert f(n) == prod(range(n + d + 1, n + d + 6)) - 4 * prod(range(n + 1, n + 6))
        rows.append(dict(d=d, cutoff=lo, F_lo=f(lo), F_hi=f(hi)))
    checks = dict(
        beta_lower_margin=41298**5 - 4 * 31298**5,
        beta_upper_margin=4 * 31299**5 - 41299**5,
        interval_lower_margin=41847**2 - 70 * 5000**2,
        interval_upper_margin=71 * 10000**2 - 84097**2,
    )
    assert all(x > 0 for x in checks.values())
    out = dict(utc=datetime.now(timezone.utc).isoformat(),
               evidence="exact finite arithmetic; Lean evidence tracked separately",
               scope="k=5, all 5<=d<600, all natural n by adjacent-sign ratio monotonicity",
               checks=checks, rows=rows)
    (HERE / "k5-finite-certificates.json").write_text(json.dumps(out, indent=2) + "\n")
    cuts = [r["cutoff"] for r in rows]
    (HERE / "k5-cutoffs.txt").write_text(", ".join(map(str, cuts)) + "\n")
    path = HERE / "K5Finite.lean"
    source = path.read_text()
    begin, end = "-- BEGIN GENERATED CUTOFFS", "-- END GENERATED CUTOFFS"
    before = source[:source.index(begin) + len(begin)]
    after = source[source.index(end):]
    lines = [", ".join(map(str, cuts[j:j + 15])) for j in range(0, len(cuts), 15)]
    table = "\ndef cutoffTable : List ℕ :=\n  [" + ",\n   ".join(lines) + "]\n"
    path.write_text(before + table + after)
    print(json.dumps(dict(rows=len(rows), max_cutoff=cuts[-1], checks=checks)))


if __name__ == "__main__":
    main()
