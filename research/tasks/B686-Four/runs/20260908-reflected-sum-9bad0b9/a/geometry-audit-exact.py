"""Exact finite probes for the M9-3 geometric measure argument.

Run: python3 research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/a/geometry-audit-exact.py
The general proof is in geometry-quantifier-audit.md, not in this test sweep.
No float quadrature, prime search, or output-file writes are used.
"""

from fractions import Fraction as F
from math import ceil, floor
import json


def periodic_band_measure(lo, hi, band_lo, band_hi):
    """Lebesgue length in [lo,hi] of a rational periodic band, by intersections."""
    total = F(0)
    for j in range(floor(lo)-1, floor(hi)+2):
        left = max(lo, j+band_lo)
        right = min(hi, j+band_hi)
        total += max(F(0), right-left)
    return total


def local_measure(slope, phase):
    # phase can be any fractional part of L*a; test it independently of a.
    lo = phase+slope*F(27, 100)
    hi = phase+slope*F(28, 100)
    return periodic_band_measure(lo, hi, F(85, 100), F(86, 100))/slope


def whole_cell_count(left, right):
    return max(0, floor(right)-ceil(left))


def main():
    slopes = [
        F(400), F(4000001, 10000), F(801, 2), F(401), F(499),
        F(49999, 100), F(1599, 2), F(4937, 4),
    ]
    phases = [F(i, 997) for i in range(997)]
    worst_local = None
    count_local = 0
    for slope in slopes:
        for phase in phases:
            actual = local_measure(slope, phase)
            count_bound = F(1, 10000)-F(1, 50)/slope
            assert actual >= count_bound >= F(1, 20000)
            record = (actual, slope, phase)
            if worst_local is None or record[0] < worst_local[0]:
                worst_local = record
            count_local += 1

    distances = [F(16), F(15953, 997), F(17), F(1999, 100), F(63, 2), F(1001, 10), F(1000)]
    count_global = 0
    worst_ratio = None
    for distance in distances:
        lo, hi = distance/4, distance/2
        cell_count = whole_cell_count(lo, hi)
        assert cell_count >= distance/4-2 >= distance/8
        for slope in slopes:
            measure = sum(
                local_measure(slope, (slope*a) % 1)
                for a in range(ceil(lo), floor(hi))
            )
            claimed = distance/F(160000)
            assert measure >= claimed
            ratio = measure/claimed
            if worst_ratio is None or ratio < worst_ratio[0]:
                worst_ratio = (ratio, distance, slope, measure)
            count_global += 1

    # Exact rectangle addition: [0.85,0.86]+[0.27,0.28] is in [1.12,1.14].
    assert F(85, 100)+F(27, 100)-1 == F(12, 100)
    assert F(86, 100)+F(28, 100)-1 == F(14, 100)

    # Boundary diagnostic, not a counterexample to the draft's D>=16 claim:
    # W nonzero forces frac(x)=1+v-u in (1/5,2/5).
    phase_difference_support = (1+F(1, 10)-F(9, 10), 1+F(2, 10)-F(8, 10))
    assert phase_difference_support == (F(1, 5), F(2, 5))
    assert phase_difference_support[1] < F(1, 2)
    # At D=2, x belongs to [1/2,1]; its fractions miss this support entirely.

    print(json.dumps({
        "local_cases": count_local,
        "local_minimum": {
            "measure": str(worst_local[0]), "L": str(worst_local[1]),
            "phase": str(worst_local[2]), "claimed_minimum": "1/20000",
        },
        "global_cases": count_global,
        "global_smallest_ratio_to_claimed_bound": {
            "ratio": str(worst_ratio[0]), "D": str(worst_ratio[1]),
            "L": str(worst_ratio[2]), "good_measure": str(worst_ratio[3]),
        },
        "D2_diagnostic": "integral identically zero for the original support, for every L",
    }, sort_keys=True))
    print("PASS: exact interval intersections, complete-cell counts, rectangle endpoints, D=2 diagnostic")


if __name__ == "__main__":
    main()
