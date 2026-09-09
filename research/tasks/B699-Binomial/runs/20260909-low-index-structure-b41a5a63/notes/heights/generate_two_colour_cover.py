"""Generate exact two-prime interval covers; never enumerate n or j.

All height and cofactor inequalities are rechecked with integers. Floating point
from earlier diagnostics has no authority in this certificate generator.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import math
from pathlib import Path

from diagnose_weights import primes_below
from count_power_candidates import valuation


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def merge_segment(segments: list[list[int]], low: int, high: int) -> None:
    if segments and low <= segments[-1][1] + 1:
        segments[-1][1] = max(segments[-1][1], high)
    else:
        segments.append([low, high])


def coloured_sweep(events: dict[int, dict[int, int]], needed: int) -> list[list[int]]:
    counts: dict[int, int] = {}
    active_colours = 0
    previous = None
    result: list[list[int]] = []
    for point in sorted(events):
        if previous is not None and previous < point and active_colours >= needed:
            merge_segment(result, previous, point - 1)
        for p, change in events[point].items():
            before = counts.get(p, 0)
            after = before + change
            assert after >= 0
            active_colours += int(after > 0) - int(before > 0)
            counts[p] = after
        previous = point
    assert active_colours == 0 and all(value == 0 for value in counts.values())
    return result


def add_event(events: dict[int, dict[int, int]], position: int, p: int, delta: int) -> None:
    at_point = events.setdefault(position, {})
    at_point[p] = at_point.get(p, 0) + delta


def build_record(record: dict, forced: int) -> dict:
    i, t, r, s, lam, degree, delta = (record[key] for key in
                                   ("i", "t", "r", "s", "lambda", "E", "Delta"))
    assert 2 <= i and 0 <= r < i and 1 <= s < i and lam == 2 * s - r > 0
    length = i - r - 1
    assert degree == s * (s + 1) + length * (length + 1) // 2
    assert delta == lam * (i - t) - degree > 0
    primes = primes_below(i)
    assert len(primes) == t
    n0_text = record["N0_candidate"]
    assert n0_text.startswith("10^")
    n0 = 10 ** int(n0_text[3:])
    nlow = i * (i - 1)
    assert nlow == record["lower"] and nlow < n0
    b_s = math.prod(math.factorial(h) for h in range(1, s + 1))
    b_l = math.prod(math.factorial(h) for h in range(1, length + 1))
    k = (2 ** (s * (s + 1))) * b_s * b_s * b_l
    factorial_power = math.factorial(i) ** lam
    left = k * math.prod(n0 - a for a in range(i)) ** lam
    right = factorial_power * n0 ** (t * lam + degree)
    assert left > right, f"Height CERT failed for i={i} at {n0_text}"
    height_certificate = {"N0": str(n0), "N0_power10": int(n0_text[3:]),
                          "exact_integer_CERT": True,
                          "left_bits": left.bit_length(), "right_bits": right.bit_length()}
    cover = next(c for c in record["covers"] if c["forced_distinct_small_primes"] == forced)
    assert 1 <= forced <= t
    m_rhs = (2 * math.factorial(i)) ** lam
    events: dict[int, dict[int, int]] = {}
    layers = []
    previous_upper = nlow
    total_intervals = 0
    for layer_number, layer in enumerate(cover["dyadic_slices"]):
        lower, upper, m = int(layer["lower"]), int(layer["upper_exclusive"]), layer["M"]
        assert lower == previous_upper and lower < upper <= n0
        assert upper == min(2 * lower, n0) and lower > m >= 1
        assert k * m ** (lam * (t - forced + 1)) * lower ** delta >= m_rhs
        previous_upper = upper
        families = []
        layer_intervals = 0
        for p in primes:
            exponent_i = valuation(i, p)
            cofactor_max = m // (p ** exponent_i)
            exponent = exponent_i + 1
            q = p ** exponent
            while q < upper:
                amin = max(1, (lower - i + 1 + q - 1) // q)
                amax = min(cofactor_max, (upper - 1) // q)
                if amin <= amax:
                    families.append({"p": p, "raw_exponent": exponent,
                                     "binomial_exponent": exponent - exponent_i,
                                     "Q": str(q), "A_min": amin, "A_max": amax})
                    for cofactor in range(amin, amax + 1):
                        begin = max(lower, cofactor * q)
                        end = min(upper - 1, cofactor * q + i - 1)
                        assert begin <= end
                        add_event(events, begin, p, 1)
                        add_event(events, end + 1, p, -1)
                        layer_intervals += 1
                exponent += 1
                q *= p
        assert layer_intervals == layer["cofactor_intervals_with_multiplicity"]
        total_intervals += layer_intervals
        layers.append({"layer": layer_number, "lower": str(lower),
                       "upper_exclusive": str(upper), "M": m,
                       "exact_M_certificate": True, "interval_count": layer_intervals,
                       "families": families})
    assert previous_upper == n0
    assert total_intervals == cover["dyadic_interval_count_with_multiplicity"]
    compressed = coloured_sweep(events, forced)
    remaining_count = sum(high - low + 1 for low, high in compressed)
    return {"i": i, "t": t, "r": r, "s": s, "lambda": lam,
            "E": degree, "Delta": delta, "Nlow": nlow,
            "height_certificate": height_certificate,
            "forced_distinct_prime_colours": forced,
            "interval_count_with_multiplicity": total_intervals,
            "layer_certificates_and_complete_families": layers,
            "remaining_compressed_intervals": [[str(a), str(b)] for a, b in compressed],
            "remaining_integer_count": remaining_count,
            "maximum_remaining_n": str(compressed[-1][1]) if compressed else None,
            "small_n_not_covered": [2 * i + 2, nlow - 1]}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--forced-count", type=int, default=2)
    parser.add_argument("--indices", default="")
    args = parser.parse_args()
    source = json.loads(args.input.read_text(encoding="utf-8"))
    selected = {int(x) for x in args.indices.split(",") if x}
    records = [r for r in source["records"] if not selected or r["i"] in selected]
    results = [build_record(record, args.forced_count) for record in records]
    assert len({item["i"] for item in results}) == len(results)
    maximum = max((int(r["maximum_remaining_n"]) for r in results
                   if r["maximum_remaining_n"] is not None), default=None)
    output = {"timestamp_utc": datetime.now(timezone.utc).isoformat(),
              "script_sha256": sha256(Path(__file__)), "input_sha256": sha256(args.input),
              "status": "exact height/M certificates and complete differently-prime-coloured interval cover; no original n,j tested",
              "number_of_indices": len(results), "indices": [r["i"] for r in results],
              "all_height_CERTs_exact": True,
              "total_intervals_with_multiplicity": sum(r["interval_count_with_multiplicity"] for r in results),
              "total_remaining_i_n_pairs": sum(r["remaining_integer_count"] for r in results),
              "maximum_remaining_n": str(maximum) if maximum is not None else None,
              "records": results}
    args.output.write_text(json.dumps(output, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    summary = {key: output[key] for key in ("number_of_indices", "all_height_CERTs_exact",
               "total_intervals_with_multiplicity", "total_remaining_i_n_pairs", "maximum_remaining_n")}
    summary["largest_remaining_ranges"] = sorted(
        [{"i": r["i"], "count": r["remaining_integer_count"], "max_n": r["maximum_remaining_n"],
          "compressed_intervals": len(r["remaining_compressed_intervals"])} for r in results],
        key=lambda row: int(row["max_n"] or 0), reverse=True)[:20]
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
