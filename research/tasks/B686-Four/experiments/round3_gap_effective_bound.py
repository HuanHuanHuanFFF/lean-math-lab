#!/usr/bin/env python3
"""Numerical fixtures for the paper fixed-gap bound; no solution search.

For any fixed h, put s=floor((4h+7)/3) and
B=max(293,h+8,p_(s+1)-1). The argument in exploration.md proves that a
solution must have 2k+h<=B and n+1<B^2. The prime-count theorem used there
is published mathematics, not proved by this script or by the Lean files.
"""
import argparse
import json


def primes_through_index(index):
    primes = []
    candidate = 2
    while len(primes) < index:
        prime = True
        for p in primes:
            if p * p > candidate:
                break
            if candidate % p == 0:
                prime = False
                break
        if prime:
            primes.append(candidate)
        candidate += 1
    return primes


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--gaps", default="0,1,7,8,44,45,100,1000,10000")
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    gaps = [int(x) for x in args.gaps.split(",")]
    assert gaps and min(gaps) >= 0
    primes = primes_through_index(max((4*h+7)//3 + 1 for h in gaps))
    rows = []
    for h in gaps:
        s = (4*h+7)//3
        next_prime = primes[s]
        bound = max(293, h+8, next_prime-1)
        assert 3*(s+1) >= 4*(h+2)
        rows.append({"h": h, "s": s, "p_s_plus_1": next_prime,
                     "K_upper": bound, "k_upper": (bound-h)//2,
                     "n_upper_safe": bound**2-1})
    result = {"source": "https://publi.math.unideb.hu/paper/924/download/",
              "source_location": "equations (3),(4), printed pages 80-82",
              "claim": "Necessary effective bounds for each fixed h; no search performed",
              "fixtures": rows}
    with open(args.output, "w") as f:
        json.dump(result, f, indent=2)
        f.write("\n")
    print(json.dumps(rows))


if __name__ == "__main__":
    main()
