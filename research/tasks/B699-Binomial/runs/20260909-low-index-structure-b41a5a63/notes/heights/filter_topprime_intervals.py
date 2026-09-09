"""Remove whole n intervals using one explicit top-prime witness per piece.

Includes the previously untreated legal n<Nlow range by default. No n or j is
enumerated; a sieve only supplies prime witnesses up to the finite cover maximum.
"""

from __future__ import annotations

import argparse
from bisect import bisect_right
from datetime import datetime, timezone
import hashlib
import json
import math
from pathlib import Path


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def prime_list(limit: int) -> list[int]:
    sieve = bytearray(b"\x01") * (limit + 1)
    if limit >= 0:
        sieve[0] = 0
    if limit >= 1:
        sieve[1] = 0
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            first = p * p
            sieve[first:limit + 1:p] = b"\x00" * ((limit - first) // p + 1)
    return [p for p in range(2, limit + 1) if sieve[p]]


def merge(intervals: list[list[int]]) -> list[list[int]]:
    output: list[list[int]] = []
    for low, high in sorted(intervals):
        if low > high:
            continue
        if output and low <= output[-1][1] + 1:
            output[-1][1] = max(output[-1][1], high)
        else:
            output.append([low, high])
    return output


def count(intervals: list[list[int]]) -> int:
    return sum(high - low + 1 for low, high in intervals)


def remove_topprime(intervals: list[list[int]], i: int, primes: list[int]) -> tuple[list[list[int]], list[dict]]:
    remainder: list[list[int]] = []
    exclusions: list[dict] = []
    for low, high in intervals:
        cursor = low
        while cursor <= high:
            index = bisect_right(primes, cursor) - 1
            assert index >= 0
            p = primes[index]
            if cursor - i < p:
                end = min(high, p + i - 1)
                assert p > i and p <= cursor <= end < p + i
                exclusions.append({"lower": cursor, "upper": end, "prime": p})
                cursor = end + 1
            else:
                following = primes[index + 1] if index + 1 < len(primes) else high + 1
                end = min(high, following - 1)
                assert cursor <= end
                remainder.append([cursor, end])
                cursor = end + 1
    return merge(remainder), exclusions


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--exclude-small", action="store_true",
                        help="Do not adjoin the legal n<Nlow range; default includes it")
    args = parser.parse_args()
    source = json.loads(args.input.read_text(encoding="utf-8"))
    assert source["all_height_CERTs_exact"]
    prepared = []
    for record in source["records"]:
        intervals = [[int(a), int(b)] for a, b in record["remaining_compressed_intervals"]]
        if not args.exclude_small:
            intervals.append([2 * record["i"] + 2, record["Nlow"] - 1])
        prepared.append((record, merge(intervals)))
    maximum = max((high for _, intervals in prepared for _, high in intervals), default=2)
    if maximum > 10_000_000:
        raise ValueError("This bounded top-prime witness generator refuses a sieve above 10,000,000")
    primes = prime_list(maximum)
    results = []
    witnesses: set[int] = set()
    for record, intervals in prepared:
        i = record["i"]
        residual, exclusions = remove_topprime(intervals, i, primes)
        witnesses.update(item["prime"] for item in exclusions)
        input_count = count(intervals)
        residual_count = count(residual)
        excluded_count = sum(item["upper"] - item["lower"] + 1 for item in exclusions)
        assert input_count == residual_count + excluded_count
        results.append({"i": i, "Nlow": record["Nlow"],
                        "input_intervals": intervals,
                        "prime_exclusion_intervals": exclusions,
                        "remaining_intervals": residual,
                        "input_integer_count": input_count,
                        "excluded_integer_count": excluded_count,
                        "remaining_integer_count": residual_count,
                        "maximum_remaining_n": residual[-1][1] if residual else None,
                        "small_n_remaining_count": sum(max(0, min(b, record["Nlow"] - 1) - a + 1)
                                                       for a, b in residual if a < record["Nlow"])})
    output = {"timestamp_utc": datetime.now(timezone.utc).isoformat(),
              "script_sha256": sha256(Path(__file__)), "input_sha256": sha256(args.input),
              "status": "explicit prime-witness interval removals; no n,j or actual-U scan",
              "source_number_of_indices": source["number_of_indices"],
              "includes_all_small_legal_n": not args.exclude_small,
              "sieve_limit": maximum, "distinct_prime_witnesses": sorted(witnesses),
              "total_input_i_n_pairs": sum(r["input_integer_count"] for r in results),
              "total_excluded_i_n_pairs": sum(r["excluded_integer_count"] for r in results),
              "total_remaining_i_n_pairs": sum(r["remaining_integer_count"] for r in results),
              "total_small_n_remaining_pairs": sum(r["small_n_remaining_count"] for r in results),
              "maximum_remaining_n": max((r["maximum_remaining_n"] for r in results
                                            if r["maximum_remaining_n"] is not None), default=None),
              "records": results}
    args.output.write_text(json.dumps(output, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    summary = {key: output[key] for key in ("source_number_of_indices", "sieve_limit",
               "includes_all_small_legal_n", "total_input_i_n_pairs", "total_excluded_i_n_pairs",
               "total_remaining_i_n_pairs", "total_small_n_remaining_pairs", "maximum_remaining_n")}
    summary["nonempty_indices"] = [{"i": r["i"], "count": r["remaining_integer_count"],
                                    "max_n": r["maximum_remaining_n"]}
                                   for r in results if r["remaining_integer_count"]]
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
