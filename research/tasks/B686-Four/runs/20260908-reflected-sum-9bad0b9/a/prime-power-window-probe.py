"""Exact local tests for the j=2/mixed-phase applicability audit.

The synthetic lifts satisfy equality of one chosen p-adic valuation, not
the multiplier-four equation. Real multiplier-2/9 controls are checked by
their original consecutive products before being used.
"""

from fractions import Fraction as F
from math import prod


def block(k, n):
    return prod(range(n + 1, n + k + 1))


def valuation(p, value):
    assert value > 0
    result = 0
    while value % p == 0:
        value //= p
        result += 1
    return result


def hit(k, residue, modulus):
    assert 0 <= residue < modulus and k < modulus
    return residue + k >= modulus


def prime_factors(value):
    result = []
    divisor = 2
    while divisor * divisor <= value:
        if value % divisor == 0:
            result.append(divisor)
            while value % divisor == 0:
                value //= divisor
        divisor += 1
    if value > 1:
        result.append(value)
    return result


def legal_controls():
    controls = [(2, 83, 118, 2, 7), (2, 2869, 4058, 2, 41), (3, 11, 25, 9, 13)]
    for k, n, m, multiplier, p in controls:
        lower, upper = block(k, n), block(k, m)
        assert upper == multiplier * lower and m >= n + k
        assert multiplier % p != 0 and p > k
        assert valuation(p, lower) == valuation(p, upper) == 1
        phase = F(n % p, p), F(m % (p * p), p * p)
        assert hit(k, n % p, p)
        assert not hit(k, m % (p * p), p * p)
        if p == 41:
            assert F(91, 100) <= phase[0] <= F(99, 100)
            assert F(1, 100) <= phase[1] <= F(89, 100)
        if n in [83, 11]:
            large = sorted({q for q in prime_factors(lower * upper) if q > k})
            assert all(valuation(q, lower) == valuation(q, upper) == 1 for q in large)
            print(f"all p>k have vp=1 in this control: {large}")
        print(f"legal c={multiplier}, (k,n,m,p)={(k,n,m,p)}: vp=1, mixed={phase}")


def projection(k, p):
    assert 2 <= k < p and all(p % d for d in range(2, p))
    p2, p3 = p * p, p * p * p
    lower_base, upper_base = (k - 1) * p3, k * p3
    alphas = set(range(p)) | {p * (p - 1) + r for r in range(p - k, p)}
    lower_vals = {a: valuation(p, block(k, lower_base + a)) for a in alphas}
    upper_vals = [valuation(p, block(k, upper_base + b)) for b in range(p2)]

    counts = [0, 0, 0]
    for b in range(p2):
        level = int(hit(k, b % p, p)) + int(hit(k, b, p2))
        counts[level] += 1
        assert upper_vals[b] == level
    assert counts == [p * (p - k), k * (p - 1), k]

    checked = 0
    for r in range(p):
        for b in range(p2):
            if hit(k, r, p) != hit(k, b % p, p):
                continue
            a = p * (p - 1) + r if hit(k, b, p2) else r
            n, m = lower_base + a, upper_base + b
            assert m >= n + k
            assert n % p == r and m % p2 == b
            assert lower_vals[a] == upper_vals[b]
            if k >= 4:
                d = m - n
                assert k * d < 2 * m and 3 * m < 4 * k * d
                assert F(n, d) <= k
            checked += 1

        # One regularly spaced vertical comb in each horizontal grid column.
        s = p - 1 if hit(k, r, p) else 0
        comb = [F(q * p + s, p2) for q in range(p)]
        assert all(comb[q + 1] - comb[q] == F(1, p) for q in range(p - 1))
        assert comb[0] + 1 - comb[-1] == F(1, p)

    expected = (p - k) * p * (p - k) + k * p * k
    assert checked == expected
    print(f"local k={k},p={p}: digit counts={counts}, exact projected lifts={checked} PASS")
    return checked


def empty_square_window():
    for k in [2, 3, 4, 8, 20, 100, 1000]:
        P, M = 2 * k, 4 * k * k
        w = F(k, 4 * P * P)
        # y>=1-w implies t=P/sqrt(y)<P+1/8: compare squares exactly.
        assert F(P * P) < (P + F(1, 8)) ** 2 * (1 - w)
        assert F(P, 4) * w == F(1, 32)
        assert (P + 1) ** 2 > M + k
        assert all(M % (q * q) + k < q * q for q in range(P + 1, 2 * P + 1))
        # Counting proof for arbitrary heights X>=16 P^2.
        X = 16 * P * P
        bad_upper = F(k * (P + 1) * X, P * P) + k * (P + 1)
        assert bad_upper <= F(85, 128) * X < X
    print("empty square-window family and high-height counting coefficients: 7 PASS")


def main():
    legal_controls()
    empty_square_window()
    total = sum(projection(k, p) for k, p in [(2, 3), (2, 5), (2, 7), (4, 5), (6, 13), (10, 23), (15, 31), (21, 43)])
    print(f"all {total} local lifts PASS; synthetic lifts are NOT multiplier-four witnesses")


if __name__ == "__main__":
    main()
