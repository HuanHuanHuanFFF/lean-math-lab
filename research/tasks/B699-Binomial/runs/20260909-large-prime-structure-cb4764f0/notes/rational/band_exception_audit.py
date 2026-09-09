"""Bounded audit of the NEW Laishram-Shorey exceptional-case consumer.

Run only by the primary to serialize computation. Uses exactly the ten source
exceptions, derives their legal near-middle-band consumers, and checks the
assigned prime-power certificate against independent exact binomial integers.
No scan over arbitrary n, factorization, or old B699 census is performed.
"""
import json
from math import comb, gcd

EXCEPTIONS = [(5, 2), (7, 2), (25, 2), (243, 2), (9, 4),
              (13, 5), (17, 6), (15, 7), (21, 8), (19, 9)]
CERTIFICATES = {7: (7, 7, 7), 13: (13, 13, 13), 17: (17, 17, 17),
                21: (23, 23, 23), 25: (5, 25, 25), 243: (7, 7, 245)}

def valuation(value, prime):
    result = 0
    while value % prime == 0:
        value //= prime
        result += 1
    return result

records = []
empty = []
for m, k in EXCEPTIONS:
    count = 0
    for parity in (0, 1):
        amax = 2*k - 1 - parity
        n = m + amax
        indices = (2*k, 2*k + 1) if parity == 0 else (2*k - 1, 2*k)
        for i in indices:
            dmax = 2*(i // 2) if parity == 0 else 2*((i + 1) // 2) + 1
            first_j = max(i + 1, (n - dmax + 1) // 2)
            for j in range(first_j, n // 2 + 1):
                d = n - 2*j
                assert n % 2 == parity and 1 <= i < j <= n // 2
                assert d <= dmax
                p, power, term = CERTIFICATES[m]
                a = n - term
                value_i = comb(n, i)
                value_j = comb(n, j)
                common = gcd(value_i, value_j)
                assert 0 <= a < i and term % power == 0
                assert p >= i and value_i % p == 0 and value_j % p == 0
                assert j % power > n % power
                records.append({"m": m, "k": k, "n": n, "i": i, "j": j,
                                "d": d, "p": p, "P": power, "a": a,
                                "valuation_i": valuation(value_i, p),
                                "valuation_j": valuation(value_j, p),
                                "gcd": common, "j_mod_P": j % power,
                                "n_mod_P": n % power})
                count += 1
    if not count:
        empty.append([m, k])

# One new helper-obstruction test: large prime at nonzero denominator residue
# does not itself force a carry for slope 1/3.
n, i, j, p, a = 33, 6, 11, 7, 5
assert n == 3*j and 1 <= i < j <= n // 2 and 3*i < 2*j
assert 0 < a < i < p and a % 3 != 0 and (n-a) % p == 0
assert comb(n, i) % p == 0 and comb(n, j) % p != 0
assert p <= 2*a and j % p <= a
obstruction = {"n": n, "i": i, "j": j, "p": p, "a": a,
               "valuation_i": valuation(comb(n, i), p),
               "valuation_j": valuation(comb(n, j), p),
               "n_base7": [4, 5], "j_base7": [1, 4],
               "meaning": "Counterexample only to size-only slope-1/3 helper, not B699"}
print(json.dumps({"scope": "exact ten newly adopted AP exceptions and one helper obstruction",
                  "source": "arXiv:1306.0745v1, Theorem 3",
                  "accepted_count": len(records), "no_legal_consumers": empty,
                  "p_equals_i_records": [r for r in records if r['p'] == r['i']],
                  "records": records, "size_only_obstruction": obstruction}, indent=2))
