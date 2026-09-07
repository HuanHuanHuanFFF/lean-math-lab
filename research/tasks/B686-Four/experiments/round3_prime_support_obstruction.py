#!/usr/bin/env python3
"""A NON-solution satisfying range and prime-support necessary conditions.

This falsifies the proposed sufficiency of those conditions, not B686 Four.
The first gap congruence correctly rejects it.
"""
import argparse
import json
from math import prod


def p(k, n):
    return prod(range(n+1, n+k+1))


def largest_prime_factor(n):
    factor, largest = 2, 1
    while factor*factor <= n:
        while n % factor == 0:
            largest = factor
            n //= factor
        factor += 1
    return max(largest, n)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    k,n,m = 5,182,241
    d, h, K, N = m-n, m-n-k, k+m-n, n+1
    terms = list(range(n+1,n+k+1)) + list(range(m+1,m+k+1))
    primes = [largest_prime_factor(x) for x in terms]
    difference = p(k,m)-4*p(k,n)
    assert n+k <= m < 2*n+k and 3*(m+1) <= 4*k*d
    assert K < N < K*K and h >= 8 and max(primes) <= K-1
    assert p(k,181+d)-4*p(k,181)>0>difference
    first = n+k+1
    assert difference % first == 84
    rhs = p(k,h-1)-4*(-1)**k*p(k,0)
    assert rhs % first == difference % first
    result = {"status": "NON-solution; diagnostic counterexample to a weaker proposed criterion",
              "k": k, "n": n, "m": m, "d": d, "h": h, "K": K,
              "terms": terms, "largest_prime_factor_by_term": primes,
              "difference": difference, "adjacent_root_bracket": [181,182],
              "first_failed_gap_factor": first, "remainder": 84}
    with open(args.output,"w") as f:
        json.dump(result,f,indent=2)
        f.write("\n")
    print(json.dumps(result))


if __name__ == "__main__":
    main()
