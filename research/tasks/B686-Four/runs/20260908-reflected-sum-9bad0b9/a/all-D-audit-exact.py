"""Independent exact checks of B9-2. Does not import/read B's test code.

Run: python3 research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/a/all-D-audit-exact.py
Uses rational periodic primitives plus independent global breakpoint partition.
No numerical integration, prime sampling, or output-file writes.
"""

from fractions import Fraction as F
from math import floor, ceil
import json


def primitive(t, low, high):
    n = floor(t)
    return n*(high-low) + min(max(t-n-low, F(0)), high-low)


def band_measure(left, right, frequency, low, high):
    assert frequency > 0
    return (primitive(frequency*right, low, high)
            - primitive(frequency*left, low, high))/frequency


def components(q):
    out = []
    for a in range(floor(q)-1, ceil(2*q)+1):
        for lo, hi, direction in ((F(1, 4), F(1, 2), "+"), (F(1, 2), F(3, 4), "-")):
            left, right = max(q, a+lo), min(2*q, a+hi)
            if left < right:
                out.append((left, right, direction))
    return out


def expected_small_q_measure(q):
    assert F(1, 4) <= q <= 1
    if q <= F(3, 8):
        return q
    if q <= F(5, 8):
        return F(3, 4)-q
    if q <= F(3, 4):
        return q-F(1, 2)
    if q <= F(7, 8):
        return 2*q-F(5, 4)
    return F(1, 2)


def certificate(q, slope):
    pieces = components(q)
    strip_length = band_measure(q, 2*q, F(1), F(1, 4), F(3, 4))
    assert sum(right-left for left, right, _ in pieces) == strip_length
    assert strip_length >= q/5
    if q <= 1:
        assert strip_length == expected_small_q_measure(q)
    assert len(pieces) <= 2*q+4 <= 18*q
    good_measure = F(0)
    for left, right, direction in pieces:
        frequency = slope if direction == "+" else slope+1
        actual = band_measure(left, right, frequency, F(7, 8), F(15, 16))
        assert actual >= (right-left)/16 - F(1, 8)/frequency
        good_measure += actual
    raw_lower = strip_length/16 - F(len(pieces), 8)/slope
    assert good_measure >= raw_lower
    assert raw_lower >= q/80-F(9, 4)*q/slope
    assert q/80-F(9, 4)*q/slope >= 11*q/1600 >= q/160
    return strip_length, good_measure, len(pieces), raw_lower


def independent_breakpoint_measure(q, slope):
    """Partition the entire x interval at all phase changes, then classify cells."""
    points = {q, 2*q}
    for frequency, bands in (
        (F(1), (F(1, 4), F(1, 2), F(3, 4))),
        (slope, (F(7, 8), F(15, 16))),
        (slope+1, (F(7, 8), F(15, 16))),
    ):
        for j in range(floor(frequency*q)-1, ceil(frequency*2*q)+1):
            for b in bands:
                x = (j+b)/frequency
                if q < x < 2*q:
                    points.add(x)
    points = sorted(points)
    total = F(0)
    for left, right in zip(points, points[1:]):
        x = (left+right)/2
        delta, u, v = x % 1, (slope*x) % 1, ((slope+1)*x) % 1
        plus = F(1, 4) < delta < F(1, 2) and F(7, 8) < u < F(15, 16)
        minus = F(1, 2) < delta < F(3, 4) and F(7, 8) < v < F(15, 16)
        if plus:
            assert F(1, 8) < v < F(7, 16)
        if minus:
            assert F(1, 8) < u < F(7, 16)
        if plus or minus:
            total += right-left
    return total


def main():
    eps = F(1, 1000000)
    qs = set()
    for center in (F(1, 4), F(3, 8), F(1, 2), F(5, 8), F(3, 4), F(7, 8), F(1), F(2)):
        for offset in (-eps, F(0), eps):
            if center+offset >= F(1, 4):
                qs.add(center+offset)
    qs.update((F(4), F(17, 4), F(25)))
    slopes = (F(400), F(400)+eps, F(400)+F(1, 97), F(801, 2), F(401))
    count = 0
    min_ratio = None
    for q in sorted(qs):
        for slope in slopes:
            strip, good, n, raw = certificate(q, slope)
            ratio = good/(q/160)
            if min_ratio is None or ratio < min_ratio[0]:
                min_ratio = (ratio, 4*q, slope)
            count += 1
    breakpoint_cases = 0
    for q in (F(1, 4), F(1, 2), F(5, 8)-eps, F(5, 8), F(5, 8)+eps):
        for slope in (F(400), F(400)+F(1, 97)):
            expected = certificate(q, slope)[1]
            assert independent_breakpoint_measure(q, slope) == expected
            breakpoint_cases += 1

    # The strip measure lower bound is sharp at D=5/2.
    assert certificate(F(5, 8), F(400))[0] == F(1, 8) == F(5, 2)/20
    decisive = []
    for distance in (F(1), F(2), F(5, 2)):
        strip, good, n, raw = certificate(distance/4, F(400))
        decisive.append({
            "D": str(distance), "L": "400", "strip_measure": str(strip),
            "positive_pieces": n, "good_measure": str(good),
            "claimed_bound": str(distance/640),
        })
    print(json.dumps({
        "q_values": len(qs), "component_certificate_cases": count,
        "independent_breakpoint_cases": breakpoint_cases,
        "decisive_boundary_cases": decisive,
        "minimum_ratio_to_claimed_bound_in_sweep": {
            "ratio": str(min_ratio[0]), "D": str(min_ratio[1]), "L": str(min_ratio[2]),
        },
    }, sort_keys=True))
    print("PASS: exact strip formulas, piece counts, signed truncation errors, and global phase partition")


if __name__ == "__main__":
    main()
