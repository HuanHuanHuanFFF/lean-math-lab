"""Exact rational checks of the all-D synchronization integral certificate.

Run:
  python3 research/tasks/B686-Four/round9/b/uniform_integral_probe.py

This checks a proved geometric certificate on selected boundary/resonant inputs.
It neither samples primes nor treats the two phases as independent variables.
No floating-point quadrature, third-party packages, or file writes are used.
"""

from fractions import Fraction as F
import json


def floor(x):
    return x.numerator // x.denominator


def periodic_primitive(y, a, b):
    """Exact primitive of 1_[a,b]({y}); valid for all rational y."""
    integer = floor(y)
    fraction = y - integer
    return (b - a) * integer + max(F(0), min(b - a, fraction - a))


def window_measure(left, right, frequency, a=F(7, 8), b=F(15, 16)):
    return (
        periodic_primitive(frequency * right, a, b)
        - periodic_primitive(frequency * left, a, b)
    ) / frequency


def strip_components(D):
    left, right = D / 4, D / 2
    result = []
    for integer in range(floor(left) - 1, floor(right) + 1):
        for a, b, direction in (
            (F(1, 4), F(1, 2), "forward"),
            (F(1, 2), F(3, 4), "reverse"),
        ):
            lo, hi = max(left, integer + a), min(right, integer + b)
            if lo < hi:
                result.append((lo, hi, direction))
    return result


def check(D, L):
    components = strip_components(D)
    good_band_measure = sum((hi - lo for lo, hi, _ in components), F(0))
    certificate_measure = F(0)
    for lo, hi, direction in components:
        frequency = L if direction == "forward" else L + 1
        contribution = window_measure(lo, hi, frequency)
        assert contribution >= (hi - lo) / 16 - F(1, 8) / frequency
        certificate_measure += contribution
    assert good_band_measure >= D / 20
    assert len(components) <= D / 2 + 4
    assert certificate_measure >= D / 320 - F(9, 16) * D / L
    assert certificate_measure >= D / 640
    return {
        "D": str(D),
        "L": str(L),
        "band_measure": str(good_band_measure),
        "components": len(components),
        "certificate_measure": str(certificate_measure),
        "certificate_over_D": str(certificate_measure / D),
    }


def main():
    # The rectangle implications are linear, so checking their corners is exact.
    for u in (F(7, 8), F(15, 16)):
        for delta in (F(1, 4), F(1, 2)):
            assert F(1, 8) <= u + delta - 1 <= F(7, 16)
    for v in (F(7, 8), F(15, 16)):
        for delta in (F(1, 2), F(3, 4)):
            assert F(1, 8) <= v - delta <= F(7, 16)

    d_values = (
        F(1), F(3, 2), F(2), F(5, 2), F(3), F(7, 2), F(4),
        F(2499, 1000), F(2501, 1000), F(15, 2), F(101, 7), F(16),
    )
    l_values = (F(400), F(38801, 97), F(401), F(1600, 3))
    rows = [check(D, L) for D in d_values for L in l_values]
    minimum = min(rows, key=lambda row: F(row["certificate_over_D"]))

    # Exact equality case for the periodic-strip lemma.
    D = F(5, 2)
    band = sum((hi - lo for lo, hi, _ in strip_components(D)), F(0))
    assert band == F(1, 8) == D / 20

    print(json.dumps({
        "evidence": "exact rational interval integration; finite checks, not Lean",
        "corner_implications": "passed",
        "test_count": len(rows),
        "all_certificate_bounds": "passed",
        "strip_bound_equality": {"D": "5/2", "measure": str(band)},
        "minimum_observed_certificate_over_D": minimum,
        "selected_boundary_and_resonance_checks": [
            row for row in rows if row["D"] in ("1", "2", "5/2", "16")
            and row["L"] in ("400", "38801/97")
        ],
        "uniform_proved_bound_over_D": "1/640",
        "old_rectangle_counterexample": {
            "D": "2",
            "x_interval": "[1/2,1]",
            "required_fractional_x": "(1/5,2/5)",
            "integral": "0 for every L",
        },
    }, indent=2))


if __name__ == "__main__":
    main()
