"""Count small-cofactor prime-power covers without enumerating original n.

The input heights are candidates selected by diagnose_weights.py. This script
certifies every chosen cofactor M with exact integers, but does not certify each
height N0 unless that separate certificate has already been recorded. Counts are
upper bounds with multiplicity, never numbers of original counterexamples.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import json
import math
from pathlib import Path

from diagnose_weights import primes_below


def valuation(number: int, p: int) -> int:
    count = 0
    while number % p == 0:
        number //= p
        count += 1
    return count


def count_at_most(bound: int, q: int, cofactor_max: int, width: int) -> int:
    """Number of pairs 1<=A<=M, 0<=a<width with A*q+a<=bound."""
    if bound < 0 or cofactor_max <= 0:
        return 0
    full = max(0, min(cofactor_max, (bound - width + 1) // q))
    nonempty = max(0, min(cofactor_max, bound // q))
    return (full * width + (nonempty - full) * (bound + 1)
            - q * (nonempty * (nonempty + 1) - full * (full + 1)) // 2)


def count_cover(i: int, primes: list[int], lower: int, upper: int, m: int) -> dict:
    count = 0
    powers = 0
    intervals = 0
    for p in primes:
        exponent_i = valuation(i, p)
        reduction = p ** exponent_i
        cofactor_max = m // reduction
        q = p ** (exponent_i + 1)
        while q < upper:
            covered = (count_at_most(upper - 1, q, cofactor_max, i)
                       - count_at_most(lower - 1, q, cofactor_max, i))
            if covered:
                count += covered
                powers += 1
                start_a = max(1, (lower - i + 1 + q - 1) // q)
                end_a = min(cofactor_max, (upper - 1) // q)
                intervals += max(0, end_a - start_a + 1)
            q *= p
    return {"candidate_pairs_with_multiplicity": count,
            "prime_powers_with_nonempty_cover": powers,
            "cofactor_intervals_with_multiplicity": intervals}


def cofactor_bound(record: dict, lower: int, forced_count: int, k: int, rhs: int) -> tuple[int, bool]:
    height = record["height_diagnostic"]
    i, t = record["i"], record["t"]
    lam, delta_numerator = height["lambda"], height["Delta"]
    denominator = t - forced_count + 1
    if denominator <= 0:
        raise ValueError("forced_count must not exceed the number of small primes")
    log_m = ((math.log(2) + height["log_constant"]
              - (delta_numerator / lam) * math.log(lower)) / denominator)
    m = max(1, math.ceil(math.exp(log_m) * (1 + 1e-12)))
    fixed = k * lower ** delta_numerator
    exponent = lam * denominator
    while fixed * m ** exponent < rhs:
        m += 1
    while m > 1 and fixed * (m - 1) ** exponent >= rhs:
        m -= 1
    assert fixed * m ** exponent >= rhs
    return m, True


def one_record(record: dict, forced_counts: list[int]) -> dict:
    i, t = record["i"], record["t"]
    height = record["height_diagnostic"]
    r, s, lam = (height[name] for name in ("r", "s", "lambda"))
    length = i - r - 1
    b_s = math.prod(math.factorial(h) for h in range(1, s + 1))
    b_l = math.prod(math.factorial(h) for h in range(1, length + 1))
    k = (2 ** (s * (s + 1))) * b_s * b_s * b_l
    rhs = (2 * math.factorial(i)) ** lam
    lower = i * (i - 1)
    upper = 10 ** height["power10_candidate"]
    primes = primes_below(i)
    result = {"i": i, "t": t, "r": r, "s": s, "lambda": lam,
              "E": height["E"], "Delta": height["Delta"],
              "lower": lower, "N0_candidate": "10^" + str(height["power10_candidate"]),
              "height_log10_diagnostic": height["log10_n"], "covers": []}
    for forced in forced_counts:
        m, exact = cofactor_bound(record, lower, forced, k, rhs)
        full = count_cover(i, primes, lower, upper, m)
        slices = []
        left = lower
        while left < upper:
            right = min(2 * left, upper)
            layer_m, layer_exact = cofactor_bound(record, left, forced, k, rhs)
            counts = count_cover(i, primes, left, right, layer_m)
            slices.append({"lower": str(left), "upper_exclusive": str(right),
                           "M": layer_m, "exact_M_certificate": layer_exact, **counts})
            left = right
        result["covers"].append({
            "forced_distinct_small_primes": forced,
            "M": m, "exact_M_certificate": exact,
            "n_over_M_gt_one_on_domain": lower > m,
            "single_layer": full,
            "dyadic_count_with_multiplicity": sum(x["candidate_pairs_with_multiplicity"] for x in slices),
            "dyadic_interval_count_with_multiplicity": sum(x["cofactor_intervals_with_multiplicity"] for x in slices),
            "dyadic_slices": slices,
            "meaning": ("all counterexamples occur in at least this many differently prime-labelled intervals; "
                        "counts here still bound their union, not their intersection")})
    return result


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--forced-counts", default="1,2")
    parser.add_argument("--indices", default="")
    args = parser.parse_args()
    report = json.loads(args.input.read_text(encoding="utf-8"))
    chosen = {int(x) for x in args.indices.split(",") if x}
    records = [x for x in report["records"] if x.get("height_diagnostic")
               and (not chosen or x["i"] in chosen)]
    forced_counts = [int(x) for x in args.forced_counts.split(",")]
    results = [one_record(record, forced_counts) for record in records]
    totals = []
    for forced in forced_counts:
        covers = [next(c for c in item["covers"] if c["forced_distinct_small_primes"] == forced)
                  for item in results]
        totals.append({"forced_distinct_small_primes": forced,
                       "single_layer_candidate_count_with_multiplicity": sum(c["single_layer"]["candidate_pairs_with_multiplicity"] for c in covers),
                       "dyadic_candidate_count_with_multiplicity": sum(c["dyadic_count_with_multiplicity"] for c in covers),
                       "dyadic_interval_count_with_multiplicity": sum(c["dyadic_interval_count_with_multiplicity"] for c in covers),
                       "maximum_M": max(c["M"] for c in covers)})
    output = {"timestamp_utc": datetime.now(timezone.utc).isoformat(),
              "status": "exact cofactor certificates and closed-form cover counts; input height candidates retain their original acceptance status",
              "scope": "no original n or j enumerated, factored, or tested",
              "number_of_indices": len(results), "totals": totals, "records": results}
    args.output.write_text(json.dumps(output, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"number_of_indices": len(results), "totals": totals,
                      "largest_union_counts": sorted(
                          [{"i": r["i"], "M": r["covers"][0]["M"],
                            "count": r["covers"][0]["dyadic_count_with_multiplicity"]}
                           for r in results], key=lambda x: x["count"], reverse=True)[:10]}, indent=2))


if __name__ == "__main__":
    main()
