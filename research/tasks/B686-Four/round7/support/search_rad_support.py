"""Finite exact search for equal radical support of two disjoint blocks.

Scope
-----
For each k in 2..12, this scans 0 <= n,m <= 20000 with m >= n+k.
The block is P_k(t) = product(t+i for i=1..k).  Starts are grouped by
the exact set of prime divisors of P_k(t), represented as a Python integer
bit mask.  Pairs are generated only inside equal-support groups; the
quadratic all-start-pairs scan is deliberately avoided.

Every ratio is an exact fractions.Fraction.  A ratio-4 hit is checked again
by direct integer products before it is recorded.  The output is finite-range
evidence only and makes no claim about the original problem outside the scan.
"""

from __future__ import annotations

import argparse
import json
from bisect import bisect_left
from collections import defaultdict
from fractions import Fraction
from pathlib import Path


DEFAULT_MAX_START = 20_000
DEFAULT_K_MIN = 2
DEFAULT_K_MAX = 12
SAMPLE_LIMIT = 5


def build_spf(limit: int) -> list[int]:
    """Return the smallest-prime-factor table on [0, limit]."""
    spf = list(range(limit + 1))
    if limit >= 1:
        spf[1] = 1
    for p in range(2, int(limit**0.5) + 1):
        if spf[p] != p:
            continue
        for x in range(p * p, limit + 1, p):
            if spf[x] == x:
                spf[x] = p
    return spf


def prime_list(spf: list[int]) -> list[int]:
    return [p for p in range(2, len(spf)) if spf[p] == p]


def factor_mask(x: int, spf: list[int], prime_ids: list[int]) -> int:
    mask = 0
    while x > 1:
        p = spf[x]
        mask |= 1 << prime_ids[p]
        while x % p == 0:
            x //= p
    return mask


def mask_primes(mask: int, primes: list[int]) -> list[int]:
    result: list[int] = []
    while mask:
        low = mask & -mask
        result.append(primes[low.bit_length() - 1])
        mask ^= low
    return result


def product_block(start: int, k: int) -> int:
    product = 1
    for i in range(1, k + 1):
        product *= start + i
    return product


def ratio_text(ratio: Fraction) -> str:
    if ratio.denominator == 1:
        return str(ratio.numerator)
    return f"{ratio.numerator}/{ratio.denominator}"


def pair_row(
    k: int,
    n: int,
    m: int,
    ratio: Fraction,
    n_positions: tuple[int, ...],
    m_positions: tuple[int, ...],
    primes: list[int],
) -> dict[str, object]:
    return {
        "k": k,
        "n": n,
        "m": m,
        "d": m - n,
        "ratio": ratio_text(ratio),
        "global_support_equal": True,
        "position_support_equal": n_positions == m_positions,
        "n_position_supports": [mask_primes(mask, primes) for mask in n_positions],
        "m_position_supports": [mask_primes(mask, primes) for mask in m_positions],
    }


def sort_key(row: dict[str, object]) -> tuple[int, int, int, int]:
    return (
        int(row["k"]),
        int(row["d"]),
        int(row["n"]),
        int(row["m"]),
    )


def keep_small(
    rows: list[dict[str, object]],
    row: dict[str, object],
    limit: int = SAMPLE_LIMIT,
) -> None:
    rows.append(row)
    rows.sort(key=sort_key)
    del rows[limit:]


def scan_one_k(
    k: int,
    max_start: int,
    masks: list[int],
    primes: list[int],
) -> dict[str, object]:
    groups: dict[int, list[tuple[int, int, tuple[int, ...]]]] = defaultdict(list)
    for start in range(max_start + 1):
        positions = tuple(masks[start + i] for i in range(1, k + 1))
        support = 0
        for position_mask in positions:
            support |= position_mask
        groups[support].append((start, product_block(start, k), positions))

    pair_count = 0
    ratio_1_10_count = 0
    mismatch_count = 0
    ratio_1_10_mismatch_count = 0
    ratio4_count = 0
    ratio4_direct_verified = True
    ratio_1_10_samples: list[dict[str, object]] = []
    mismatch_samples: list[dict[str, object]] = []
    ratio4_samples: list[dict[str, object]] = []
    minimum_mismatch: dict[str, object] | None = None
    repeated_groups = 0
    max_group_size = 0

    for entries in groups.values():
        max_group_size = max(max_group_size, len(entries))
        if len(entries) < 2:
            continue
        repeated_groups += 1
        starts = [entry[0] for entry in entries]
        for index, (n, pn, n_positions) in enumerate(entries):
            first = bisect_left(starts, n + k, lo=index + 1)
            for m, pm, m_positions in entries[first:]:
                pair_count += 1
                ratio = Fraction(pm, pn)
                row = pair_row(k, n, m, ratio, n_positions, m_positions, primes)
                position_equal = bool(row["position_support_equal"])
                if not position_equal:
                    mismatch_count += 1
                    keep_small(mismatch_samples, row)
                    if minimum_mismatch is None or sort_key(row) < sort_key(minimum_mismatch):
                        minimum_mismatch = row

                if 1 < ratio <= 10:
                    ratio_1_10_count += 1
                    keep_small(ratio_1_10_samples, row)
                    if not position_equal:
                        ratio_1_10_mismatch_count += 1

                if ratio == 4:
                    ratio4_count += 1
                    direct_n = product_block(n, k)
                    direct_m = product_block(m, k)
                    direct_ok = direct_m == 4 * direct_n
                    ratio4_direct_verified = ratio4_direct_verified and direct_ok
                    if not direct_ok:
                        raise AssertionError(
                            f"ratio-4 direct check failed for k={k}, n={n}, m={m}"
                        )
                    keep_small(ratio4_samples, row)

    return {
        "k": k,
        "max_start": max_start,
        "support_group_count": len(groups),
        "repeated_support_group_count": repeated_groups,
        "max_support_group_size": max_group_size,
        "equal_global_support_nonoverlap_pair_count": pair_count,
        "ratio_1_lt_ratio_le_10_pair_count": ratio_1_10_count,
        "position_mismatch_pair_count": mismatch_count,
        "ratio_1_lt_ratio_le_10_position_mismatch_count": ratio_1_10_mismatch_count,
        "ratio_4_hit_count": ratio4_count,
        "ratio_4_direct_products_verified": ratio4_direct_verified,
        "all_global_support_pairs_have_equal_position_support": mismatch_count == 0,
        "all_ratio_1_lt_ratio_le_10_pairs_have_equal_position_support": (
            ratio_1_10_mismatch_count == 0
        ),
        "minimum_position_support_counterexample": minimum_mismatch,
        "ratio_1_lt_ratio_le_10_examples": ratio_1_10_samples,
        "position_support_mismatch_examples": mismatch_samples,
        "ratio_4_examples": ratio4_samples,
    }


def run(
    max_start: int = DEFAULT_MAX_START,
    k_min: int = DEFAULT_K_MIN,
    k_max: int = DEFAULT_K_MAX,
) -> dict[str, object]:
    if not (0 <= max_start and 2 <= k_min <= k_max):
        raise ValueError("expected max_start >= 0 and 2 <= k_min <= k_max")
    max_value = max_start + k_max
    spf = build_spf(max_value)
    primes = prime_list(spf)
    prime_ids = [-1] * (max_value + 1)
    for index, p in enumerate(primes):
        prime_ids[p] = index
    masks = [0] * (max_value + 1)
    for value in range(1, max_value + 1):
        masks[value] = factor_mask(value, spf, prime_ids)

    rows = [
        scan_one_k(k, max_start, masks, primes)
        for k in range(k_min, k_max + 1)
    ]
    all_mismatches = [
        row["minimum_position_support_counterexample"]
        for row in rows
        if row["minimum_position_support_counterexample"] is not None
    ]
    minimum = min(all_mismatches, key=sort_key) if all_mismatches else None
    return {
        "scope": {
            "k_min": k_min,
            "k_max": k_max,
            "n_min": 0,
            "n_max": max_start,
            "m_min": 0,
            "m_max": max_start,
            "nonoverlap": "m >= n + k",
            "block_definition": "P_k(t) = product(t+i for i=1..k)",
        },
        "method": {
            "group_key": "exact prime-support bit mask of P_k(t)",
            "pair_generation": "only pairs within equal-support groups, via bisect_left",
            "ratio": "exact fractions.Fraction; ratio-4 hits directly re-multiplied",
            "finite_scope_warning": True,
        },
        "prime_table_limit": max_value,
        "results": rows,
        "global_minimum_position_support_counterexample": minimum,
        "global_minimum_criterion": "(k, d=m-n, n, m)",
        "any_ratio_4_hit": any(row["ratio_4_hit_count"] for row in rows),
        "all_ratio_4_direct_products_verified": all(
            row["ratio_4_direct_products_verified"] for row in rows
        ),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-start", type=int, default=DEFAULT_MAX_START)
    parser.add_argument("--k-min", type=int, default=DEFAULT_K_MIN)
    parser.add_argument("--k-max", type=int, default=DEFAULT_K_MAX)
    parser.add_argument(
        "--output",
        type=Path,
        default=Path(__file__).with_name("rad-support-search.json"),
    )
    args = parser.parse_args()
    result = run(args.max_start, args.k_min, args.k_max)
    args.output.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(
        json.dumps(
            {
                "output": str(args.output),
                "scope": result["scope"],
                "global_minimum_position_support_counterexample": result[
                    "global_minimum_position_support_counterexample"
                ],
                "any_ratio_4_hit": result["any_ratio_4_hit"],
            },
            ensure_ascii=False,
        )
    )


if __name__ == "__main__":
    main()
