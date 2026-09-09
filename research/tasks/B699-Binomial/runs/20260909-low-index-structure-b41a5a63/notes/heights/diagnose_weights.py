"""Small index-weight diagnostics; no original-problem scan or Lean run.

Run by the primary only, with an explicit --output in this owned directory.
Classification and optional CERT comparisons use exact integers. Logarithmic
height selection is exploratory floating point and is labelled accordingly.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
from fractions import Fraction
import json
import math
from pathlib import Path


def primes_below(limit: int) -> list[int]:
    result: list[int] = []
    for candidate in range(2, limit):
        if all(candidate % p for p in result if p * p <= candidate):
            result.append(candidate)
    return result


def factor(number: int) -> dict[int, int]:
    result: dict[int, int] = {}
    p = 2
    while p * p <= number:
        while number % p == 0:
            result[p] = result.get(p, 0) + 1
            number //= p
        p += 1
    if number > 1:
        result[number] = result.get(number, 0) + 1
    return result


def log_falling_correction(i: int, log_n: float) -> float:
    inverse = math.exp(-log_n) if log_n < 745 else 0.0
    return sum(math.log1p(-a * inverse) for a in range(i))


def root_log(i: int, delta: float, constant: float) -> float:
    lower = math.log(2 * i + 2)
    def value(log_n: float) -> float:
        return delta * log_n + log_falling_correction(i, log_n) - constant
    if value(lower) >= 0:
        return lower
    upper = max(lower + 1, constant / delta + 1)
    while value(upper) <= 0:
        upper *= 2
    for _ in range(80):
        middle = (lower + upper) / 2
        if value(middle) <= 0:
            lower = middle
        else:
            upper = middle
    return upper


def classify(i: int, t: int, log_b: list[float]) -> dict:
    min_degree = None
    best_height = None
    positive = 0
    log_fact = math.lgamma(i + 1)
    for r in range(i):
        length = i - r - 1
        for s in range(1, i):
            lam = 2 * s - r
            if lam <= 0:
                continue
            degree = s * (s + 1) + length * (length + 1) // 2
            candidate = (degree, lam, r, s)
            if min_degree is None or degree * min_degree[1] < min_degree[0] * lam:
                min_degree = candidate
            numerator = lam * (i - t) - degree
            if numerator <= 0:
                continue
            positive += 1
            delta = numerator / lam
            constant = log_fact - (s * (s + 1) * math.log(2)
                                  + 2 * log_b[s] + log_b[length]) / lam
            approximate_root = constant / delta
            if best_height is None or approximate_root < best_height[0]:
                best_height = (approximate_root, r, s, lam, degree,
                               numerator, constant)
    degree, lam, r, s = min_degree
    record = {"i": i, "t": t, "positive_weight_choices": positive,
              "minimum_degree": {"r": r, "s": s, "lambda": lam,
                                 "E": degree,
                                 "E_over_lambda": str(Fraction(degree, lam)),
                                 "Delta": lam * (i - t) - degree}}
    if best_height is not None:
        _, r, s, lam, degree, numerator, constant = best_height
        logarithm = root_log(i, numerator / lam, constant)
        record["height_diagnostic"] = {
            "status": "floating-point candidate; not an exact height certificate",
            "r": r, "s": s, "lambda": lam, "E": degree,
            "Delta": numerator, "delta": numerator / lam,
            "log_constant": constant, "log_n": logarithm,
            "log10_n": logarithm / math.log(10),
            "power10_candidate": math.ceil(logarithm / math.log(10) + 1e-10)}
    old_delta = i / 4 - t
    if old_delta > 0:
        log_h = sum(v * math.log(v) for v in range(1, i + 1))
        old_constant = log_h / (2 * i - 2) - i * math.log(2) / 2
        logarithm = root_log(i, old_delta, old_constant)
        record["exact_H_discriminant_diagnostic"] = {
            "status": "floating-point only", "delta": old_delta,
            "log_n": logarithm, "log10_n": logarithm / math.log(10)}
    return record


def certificate(record: dict) -> dict:
    height = record["height_diagnostic"]
    i, t = record["i"], record["t"]
    r, s, lam, degree = (height[name] for name in ("r", "s", "lambda", "E"))
    length = i - r - 1
    b_s = math.prod(math.factorial(h) for h in range(1, s + 1))
    b_l = math.prod(math.factorial(h) for h in range(1, length + 1))
    denominator = b_s * b_s * b_l
    power10 = height["power10_candidate"]
    for _ in range(3):
        n = 10 ** power10
        falling = math.prod(n - a for a in range(i))
        left = (2 ** (s * (s + 1))) * denominator * falling ** lam
        right = math.factorial(i) ** lam * n ** (t * lam + degree)
        if left > right:
            return {"i": i, "r": r, "s": s, "lambda": lam,
                    "E": degree, "Delta": height["Delta"],
                    "N": "10^" + str(power10), "exact_integer_CERT": True,
                    "left_bits": left.bit_length(), "right_bits": right.bit_length(),
                    "meaning": "with the paper monotonicity theorem, excludes all n>=N for this i"}
        power10 += 1
    raise RuntimeError(f"No exact certificate found for i={i}")


def actual_d_diagnostics() -> list[dict]:
    examples = [(12, 2, 4), (16, 2, 6), (16, 3, 7), (57, 4, 22),
                (18, 3, 9), (54, 3, 27), (50, 5, 25), (98, 7, 49)]
    result = []
    for n, i, j in examples:
        k = n - j
        r = i // 3
        s = min(i - 1, (2 * i + 2) // 3)
        lam = 2 * s - r
        length = i - r - 1
        first, second = math.comb(n, i), math.comb(n, j)
        factors = {p: e for p, e in factor(first).items() if p >= i and second % p}
        d = math.prod(p ** e for p, e in factors.items())
        z = (math.prod(math.comb(j, h) * math.comb(k, h) for h in range(1, s + 1))
             * math.prod(math.comb(n - i + h, h) for h in range(1, length + 1)))
        support = []
        for p, e in factors.items():
            q = p ** (e + int(p == i))
            a, b, c = n % q, j % q, k % q
            weight = max(a - r, 0) + max(s - b, 0) + max(s - c, 0)
            check = a < i and b + c == a and weight >= lam
            assert check
            support.append({"p": p, "e": e, "Q": q, "a": a, "b": b, "c": c,
                            "weight": weight, "support_checked": check})
        lifted = d * i if i in factors else d
        assert d > 1 and z % (d ** lam) == 0 and z % (lifted ** lam) == 0
        result.append({"n": n, "i": i, "j": j, "r": r, "s": s,
                       "lambda": lam, "D": d, "p_equals_i": i in factors,
                       "D_power_divides_Z": True, "lifted_D_power_divides_Z": True,
                       "support": support})
    return result


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-index", type=int, default=184)
    parser.add_argument("--certify", default="97,101,121")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if not 3 <= args.max_index <= 1000:
        raise ValueError("This bounded diagnostic only permits max-index in [3,1000]")
    primes = primes_below(args.max_index)
    log_b = [0.0]
    for h in range(1, args.max_index + 1):
        log_b.append(log_b[-1] + math.lgamma(h + 1))
    records = [classify(i, sum(p < i for p in primes), log_b)
               for i in range(3, args.max_index + 1)]
    by_index = {item["i"]: item for item in records}
    selected = [int(x) for x in args.certify.split(",") if x]
    certificates = [certificate(by_index[i]) for i in selected]
    positive = [item["i"] for item in records if item["positive_weight_choices"]]
    old_positive = [item["i"] for item in records if item["i"] > 4 * item["t"]]
    worst_old_positive = max((by_index[i] for i in old_positive),
                             key=lambda item: item["height_diagnostic"]["log_n"], default=None)
    report = {"timestamp_utc": datetime.now(timezone.utc).isoformat(),
              "scope": "integer weight choices for 3<=i<=max-index; only eight original triples",
              "max_index": args.max_index,
              "positive_indices_exact": positive,
              "nonpositive_indices_exact": [item["i"] for item in records if not item["positive_weight_choices"]],
              "new_vs_old_positive_exact": sorted(set(positive) - set(old_positive)),
              "worst_height_diagnostic_among_old_positive": worst_old_positive,
              "exact_height_certificates": certificates,
              "actual_D_diagnostics": actual_d_diagnostics(),
              "records": records}
    args.output.write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({key: report[key] for key in (
        "max_index", "positive_indices_exact", "nonpositive_indices_exact",
        "new_vs_old_positive_exact", "worst_height_diagnostic_among_old_positive",
        "exact_height_certificates")}, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
