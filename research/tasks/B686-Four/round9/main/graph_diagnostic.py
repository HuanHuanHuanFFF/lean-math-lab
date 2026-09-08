"""Compare the new coarse gcd graph with existing necessary conditions.

This is a bounded diagnostic on a subset of an already explored range,
not a proof of nonexistence or a new search-bound claim.
"""
import hashlib
import argparse
import json
import math
import platform
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path


def product(k, n):
    return math.prod(n + i for i in range(1, k + 1))


def graph(k, n, m):
    edges = [(i, j) for i in range(k) for j in range(k)
             if math.gcd(n + i + 1, m + j + 1) > 1]
    adj = [set() for _ in range(2 * k)]
    for i, j in edges:
        adj[i].add(k + j)
        adj[k + j].add(i)
    seen, todo = {0}, [0]
    while todo:
        v = todo.pop()
        for w in adj[v] - seen:
            seen.add(w)
            todo.append(w)
    return len(seen) == 2 * k, min(map(len, adj)), edges


def valuation_two(x):
    return (x & -x).bit_length() - 1


def large_part(x, k):
    for p in range(2, k + 1):
        if all(p % q for q in range(2, math.isqrt(p) + 1)):
            while x % p == 0:
                x //= p
    return x


def run(max_d):
    k = 5
    counts = Counter({label: 0 for label in (
        "geometric_candidates", "connected", "connected_min_degree_two",
        "displacement_and_v2", "basic_and_graph", "full_large_prime_valuations", "ratio_four")})
    examples = {}
    for d in range(k, max_d + 1):
        lo, hi = 0, 4 * k * d // 3 + 1
        assert product(k, hi + d) < 4 * product(k, hi)
        while lo < hi:
            mid = (lo + hi) // 2
            if product(k, mid + d) > 4 * product(k, mid):
                lo = mid + 1
            else:
                hi = mid
        for n in sorted({max(0, lo - 1), lo}):
            m = n + d
            low, high = product(k, n), product(k, m)
            conn, mindeg, edges = graph(k, n, m)
            basic = (3 * low) % d == 0 and valuation_two(high) - valuation_two(low) == 2
            full_large = large_part(low, k) == large_part(high, k)
            labels = {
                "geometric_candidates": True,
                "connected": conn,
                "connected_min_degree_two": conn and mindeg >= 2,
                "displacement_and_v2": basic,
                "basic_and_graph": basic and conn and mindeg >= 2,
                "full_large_prime_valuations": full_large,
                "ratio_four": high == 4 * low,
            }
            for label, yes in labels.items():
                if yes:
                    counts[label] += 1
            if conn and mindeg >= 2 and high != 4 * low:
                label = "basic_graph_non_solution" if basic else "graph_non_solution"
                if label not in examples:
                    g = math.gcd(low, high)
                    examples[label] = {
                        "k": k, "n": n, "m": m, "d": d,
                        "ratio": [high // g, low // g], "edges_zero_based": edges,
                        "v2_difference": valuation_two(high) - valuation_two(low),
                        "displacement_residue": (3 * low) % d,
                        "large_prime_valuations_match": full_large,
                        "difference_from_ratio_four": high - 4 * low,
                    }
    pell = []
    m, n = 19, 13
    for _ in range(8):
        assert product(2, m) == 2 * product(2, n)
        conn, mindeg, edges = graph(2, n, m)
        pell.append({"k": 2, "n": n, "m": m, "connected": conn,
                     "min_degree": mindeg, "edges_zero_based": edges})
        m, n = 3 * m + 4 * n + 9, 2 * m + 3 * n + 6
    return {
        "scope": {"k": k, "d_min": k, "d_max": max_d,
                  "candidates": "two exact adjacent sign-crossing endpoints per d"},
        "counts": dict(counts), "examples": examples, "ratio_two_pell_controls": pell,
        "warning": "Finite comparison only; graph predicates do not establish ratio four.",
        "python": platform.python_version(),
        "finished_utc": datetime.now(timezone.utc).isoformat(),
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-d", type=int, default=1000)
    args = parser.parse_args()
    if not 5 <= args.max_d <= 50000:
        parser.error("Keep this comparison within the previously explored d <= 50000 range.")
    result = run(args.max_d)
    out = Path(__file__).with_suffix(".json")
    out.write_bytes((json.dumps(result, ensure_ascii=False, indent=2) + "\n").encode())
    print(json.dumps({"output": str(out), "counts": result["counts"],
                      "examples": result["examples"]}, ensure_ascii=False))
