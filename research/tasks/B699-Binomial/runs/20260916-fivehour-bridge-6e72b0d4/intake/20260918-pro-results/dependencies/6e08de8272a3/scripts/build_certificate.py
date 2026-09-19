#!/usr/bin/env python3
"""Build finite-endpoint witnesses using the ORIGINAL two binomial integers.
The infinite reduction to n <= 108 is in PROOFS.md, not proved by this script.
Standard library only. All output arithmetic is exact.
"""
import argparse
import hashlib
import json
import math
from pathlib import Path


def odd_prime_factor(x: int) -> int:
    while x and x % 2 == 0:
        x //= 2
    if x <= 1:
        raise ValueError("Original pair has no common odd prime")
    p = 3
    while p * p <= x:
        if x % p == 0:
            return p
        p += 2
    return x


def witness(n: int, j: int) -> dict:
    a, b = math.comb(n, 3), math.comb(n, j)
    p = odd_prime_factor(math.gcd(a, b))
    assert a % p == b % p == 0 and p >= 3
    return {"n": n, "j": j, "p": p}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--cube-hits", type=Path, required=True)
    args = parser.parse_args()
    data = {
        "format": "B699-ProE-CUBE-20260917-v1",
        "endpoint": {"n_min": 8, "n_max": 108,
                     "rows": [witness(n, j) for n in range(8, 109)
                              for j in range(4, n // 2 + 1)]},
        "cube_regression": [],
        "status": "Finite witnesses only; infinite theorem is a paper argument."
    }
    if args.cube_hits:
        data["cube_hits_sha256"] = hashlib.sha256(args.cube_hits.read_bytes()).hexdigest()
        for line in args.cube_hits.read_text().splitlines():
            n, j, root = map(int, line.split(","))
            k = n - j
            assert root ** 3 == (n*j*k)**2 * (n-2)*(j-1)*(k-1)
            row = witness(n, j)
            row["cube_root"] = root
            data["cube_regression"].append(row)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n")
    print(json.dumps({"endpoint_pairs": len(data["endpoint"]["rows"]),
                      "cube_regression_pairs": len(data["cube_regression"]),
                      "output": str(args.output)}))


if __name__ == "__main__":
    main()
