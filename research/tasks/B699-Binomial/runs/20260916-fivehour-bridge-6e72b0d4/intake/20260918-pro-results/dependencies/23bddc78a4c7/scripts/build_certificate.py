#!/usr/bin/env python3
"""Generate exact necessary-system exclusions. SymPy only proposes factorizations.
All proposed primes are accompanied by recursive, deterministic order certificates.
The separate verifier uses only the Python standard library.
"""
from __future__ import annotations
import argparse
from collections import defaultdict
from itertools import combinations
import json
from math import gcd, isqrt, prod
from pathlib import Path
import sys
from sympy import factorint

SCHEMA = "B699-ProE-power-support-v1"


def source_domain() -> dict[int, list[dict[str, int]]]:
    domains = [(4, range(2, 64, 2)), (6, range(2, 64, 2)),
               (10, range(2, 8, 2)), (14, [2**h for h in range(1, 8)]),
               (22, [2**h for h in range(1, 11)])]
    out: dict[int, list[dict[str, int]]] = defaultdict(list)
    for m, xs in domains:
        for x in xs:
            out[2*x**m].append({"M": m, "x": x})
    return dict(out)


def factor_proposal(n: int) -> list[tuple[int, int]]:
    if n < 1:
        raise ValueError("Factorization target must be positive")
    fs = sorted((int(p), int(e)) for p, e in factorint(n).items())
    if prod(p**e for p, e in fs) != n:
        raise ArithmeticError("Proposed factorization does not multiply back")
    return fs


def make_certificate() -> dict:
    prime_nodes: dict[int, dict] = {}

    def certify_prime(p: int) -> None:
        if p in prime_nodes:
            return
        if p == 2:
            prime_nodes[2] = {"p": "2", "factors": [], "witness": None}
            return
        if p < 2 or p % 2 == 0:
            raise ArithmeticError(f"Not a prime candidate: {p}")
        fs = factor_proposal(p-1)
        for q, _ in fs:
            certify_prime(q)
        witness = None
        for a in range(2, min(p, 100000)):
            if pow(a, p-1, p) != 1:
                continue
            if all(gcd(pow(a, (p-1)//q, p)-1, p) == 1 for q, _ in fs):
                witness = a
                break
        if witness is None:
            raise ArithmeticError(f"No exact order certificate found for {p}")
        prime_nodes[p] = {"p": str(p), "factors": [[str(q), e] for q,e in fs],
                          "witness": witness}

    rows = []
    for n, representations in sorted(source_domain().items()):
        v = (n-2)//2
        mu = 3 if v % 3 == 0 and v % 9 != 0 else 1
        K = v//mu
        fs = factor_proposal(K)
        for p, _ in fs:
            certify_prime(p)
        blocks = [p**e for p,e in fs]
        cs = {1, *blocks}
        cs.update(a*b for a,b in combinations(blocks, 2))
        cases = []
        for C in sorted(cs):
            H = K//C
            quo, rem = divmod(4*C-1, H*H)
            item = {"C": str(C), "H": str(H), "norm_quotient": str(quo),
                    "norm_remainder": str(rem)}
            if rem:
                item["rejection"] = "nonintegral_z"
            else:
                D = n*n - 16*(n-1)*C
                item["D"] = str(D)
                if D < 0:
                    item["rejection"] = "negative_discriminant"
                else:
                    root = isqrt(D)
                    if root*root == D:
                        raise ArithmeticError(f"Unclosed necessary candidate: n={n}, C={C}")
                    item["root_floor"] = str(root)
                    item["rejection"] = "strict_square_gap"
            cases.append(item)
        rows.append({"n": str(n), "representations": representations,
                     "lambda": 1, "mu": mu, "K": str(K),
                     "factorization": [[str(p),e] for p,e in fs], "cases": cases})
    return {"schema": SCHEMA,
            "thresholds": {"4":64,"6":64,"10":8,"14":256,"22":2048},
            "prime_certificates": [prime_nodes[p] for p in sorted(prime_nodes)],
            "rows": rows}


def main() -> int:
    parser=argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args=parser.parse_args()
    obj=make_certificate()
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(obj,indent=2,sort_keys=True)+"\n",encoding="utf-8")
    print(json.dumps({"status":"GENERATED", "rows":len(obj["rows"]),
                      "cases":sum(len(r["cases"]) for r in obj["rows"]),
                      "prime_nodes":len(obj["prime_certificates"])}))
    return 0

if __name__ == "__main__":
    sys.exit(main())
