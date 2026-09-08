"""Small exact checks for independent-source-chain-audit.md; no Lean claim.

This does not test or reprove the MRSTT estimate. It checks endpoint algebra
and preserves a factor-two slip caught in A's draft before delivery.
"""

from fractions import Fraction as F


def main():
    eta = F(1)
    delta = min(F(1, 4), eta / 4)
    r = 1 / (F(3, 2) - delta)
    actual = r - F(2, 3)
    rejected = 2 * eta / (9 - 3 * eta / 2)
    corrected = eta / (9 - 3 * eta / 2)
    assert actual != rejected
    assert actual == corrected == F(2, 15)
    print(f"eta=1: actual={actual}; rejected draft={rejected}; corrected={corrected}")

    cases = [F(1, 1000000), F(1, 100), F(1, 4), F(1, 2), F(1), F(2), F(100)]
    for eta in cases:
        delta = min(F(1, 4), eta / 4)
        r = 1 / (F(3, 2) - delta)
        assert r < F(2, 3) + eta
        if eta <= 1:
            assert r - F(2, 3) == eta / (9 - 3 * eta / 2)
    print(f"exact reciprocal-exponent checks: {len(cases)} PASS")

    assert F(1, 320) - F(9, 16 * 400) == F(11, 6400) > F(1, 640)
    for u in [F(7, 8), F(15, 16)]:
        for x in [F(1, 4), F(1, 2)]:
            assert F(1, 8) <= u + x - 1 <= F(7, 16)
        for x in [F(1, 2), F(3, 4)]:
            assert F(1, 8) <= u - x <= F(7, 16)
    print("geometric coefficient and 8 affine phase corners: PASS")


if __name__ == "__main__":
    main()
