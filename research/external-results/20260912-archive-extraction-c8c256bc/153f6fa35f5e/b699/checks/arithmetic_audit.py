"""Independent integer checks for the B699 source audit; not a Rust replay.

Uses Python's exact math.comb and trial division/Legendre, independently of
the external Rust executable. Writes only in this owned audit directory.
"""
from functools import lru_cache
from math import comb, gcd
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parents[1]


def factors(n):
    result = {}
    p = 2
    while p * p <= n:
        while n % p == 0:
            result[p] = result.get(p, 0) + 1
            n //= p
        p += 1
    if n > 1:
        result[n] = result.get(n, 0) + 1
    return result


def primes(n):
    return [p for p in range(2, n + 1) if factors(p) == {p: 1}]


def factorial_valuation(n, p):
    result = 0
    while n:
        n //= p
        result += n
    return result


def choose_valuation(n, k, p):
    return factorial_valuation(n, p) - factorial_valuation(k, p) - factorial_valuation(n-k, p)


def lucas_divisible(n, k, p):
    while n or k:
        if k % p > n % p:
            return True
        n //= p
        k //= p
    return False


def pair_certificate(n, i, j):
    # Factoring C(n,i) is cheap for the listed small i, even for large n.
    exponent = {}
    for x in range(n - i + 1, n + 1):
        for p, e in factors(x).items():
            exponent[p] = exponent.get(p, 0) + e
    for x in range(2, i + 1):
        for p, e in factors(x).items():
            exponent[p] -= e
    exponent = {p: e for p, e in exponent.items() if e}
    joint = {p: min(e, choose_valuation(n, j, p)) for p, e in exponent.items()}
    joint = {p: e for p, e in joint.items() if e}
    g = 1
    for p, e in joint.items():
        g *= p ** e
    if n <= 4400:
        assert g == gcd(comb(n, i), comb(n, j))
    return {"n": n, "i": i, "j": j, "choose_n_i": comb(n, i),
            "gcd": g, "gcd_factorization": joint,
            "shared_ge_i": sorted(p for p in joint if p >= i),
            "shared_gt_i": sorted(p for p in joint if p > i)}


def main():
    pset = primes(220)
    support_checks = 0
    large_support_checks = 0
    boundary_checks = 0
    tail_checks = 0
    for n in range(4, 221):
        row = [comb(n, k) for k in range(n//2+1)]
        tail_factors = set()
        prev = max(p for p in pset if p <= n)
        assert prev > n//2
        for k in range(1, n//2+1):
            tail_factors.update(factors(n-k+1))
            actual_prime_divisors = {p for p in pset if p <= n and row[k] % p == 0}
            assert actual_prime_divisors <= tail_factors
            tail_checks += 1
            for p in pset:
                if p > n:
                    break
                actual = row[k] % p == 0
                assert lucas_divisible(n, k, p) == actual
                assert (choose_valuation(n, k, p) > 0) == actual
                support_checks += 1
                if p > n//2:
                    assert actual == (n-p < k <= n//2)
                    large_support_checks += 1
                if p > k:
                    assert actual == (n % p < k)
                if p == k:
                    assert actual == (n//p % p == 0)
                    boundary_checks += 1
            if k > n-prev:
                assert row[k] % prev == 0

    # Invalid printed statements, independently evaluated.
    assert comb(10, 2) % 3 == 0 and 3 <= 10-2
    assert (28*27*26) % 7 == 0 and 3 < 7 <= 14-3
    assert comb(28, 14) % 7 != 0
    assert comb(28, 3) % 13 == comb(14, 3) % 13 == 0
    assert comb(28, 14) % 13 != 0 and comb(25, 11) % 13 != 0
    assert comb(12, 4) % 2 != 0 and 12 % 4 == 0
    assert comb(8, 4) % 2 == 0 and lucas_divisible(8, 4, 2)
    assert all(p <= 3 for p in factors(16)) and all(p <= 3 for p in factors(18))
    # Absorption alone is not equivalent to failure of the p>i target.
    n, i, j = 9, 2, 3
    p_tail = set(factors(n)) | set(factors(n-1))
    assert all(comb(j, i) % p == 0 for p in p_tail if p > i)
    assert gcd(comb(n, i), comb(n, j)) % 3 == 0

    triples = [(10,3,5), (16,2,6), (28,3,14), (28,5,14), (244,3,122),
               (512,2,147), (2048,2,713), (2188,3,1094), (1594324,3,797162)]
    near = [pair_certificate(*triple) for triple in triples]
    assert all(x["shared_ge_i"] == [x["i"]] and not x["shared_gt_i"] for x in near)
    counts = {str(bound): sum(max(0, n//2-i) for n in range(4,4401)
                             for i in range(1, bound+1)) for bound in (15,23)}
    result = {
        "classification": "independent exact arithmetic; not an execution of the Rust scanner",
        "checked_rows": [4,220], "support_pairs": support_checks,
        "large_prime_interval_pairs": large_support_checks,
        "boundary_p_equals_i_checks": boundary_checks,
        "tail_factor_inclusions": tail_checks,
        "near_misses": near,
        "legal_triples_n_le_4400_i_le_bound": counts,
        "counterexamples": {
            "tame_prime_converse": {"j":10,"i":2,"p":3,"choose":comb(10,2)},
            "prime_band_escape": pair_certificate(28,3,14),
            "stijn_mechanism": {"q":13,"n_minus_a":26,"a":2,"j_minus_q":1,
                "choose_28_3":comb(28,3),"choose_14_3":comb(14,3),
                "choose_28_14":comb(28,14),"choose_25_11":comb(25,11)},
            "dropping_power_bound": {"n":12,"i":2,"j":4,"p":2,"choose_n_j":comb(12,4)},
            "higher_first_carry": {"n":8,"i":2,"j":4,"p":2,"first_carry_bit":2},
            "smooth_gap_is_not_one": {"i":3,"x":18,"y":16,"gap":2,"B3_claimed":9},
            "absorption_is_not_no_strong_witness": pair_certificate(9,2,3),
            "consecutive_multiple_of_four_claim": {"n":6,"n_minus_one":5,"choose_n_2":15}
        },
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    output = ROOT / "checks" / "arithmetic-results.json"
    output.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({k:result[k] for k in ("classification", "checked_rows", "support_pairs",
                     "large_prime_interval_pairs", "boundary_p_equals_i_checks",
                     "tail_factor_inclusions", "legal_triples_n_le_4400_i_le_bound")}, indent=2))
    print(f"PASS: {output}")


if __name__ == "__main__":
    main()
