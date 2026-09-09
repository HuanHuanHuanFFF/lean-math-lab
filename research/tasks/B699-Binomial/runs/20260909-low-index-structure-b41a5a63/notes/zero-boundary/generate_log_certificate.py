"""Generate a bounded, exact-rational log certificate; never run on import.

No convergent identity is trusted by the checker.  Only integer u,v and exact
rational interval inequalities survive in the certificate.  An incomplete
search writes status=incomplete, omits the n-bound, and exits with code 1.
"""
import argparse
from fractions import Fraction as F
from functools import lru_cache
from math import gcd
import json
from pathlib import Path
import sys

PRIMES = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31)
M0 = 1 << 53
EPS = F(1, 100)
RATIOS = tuple((a, b) for a in range(1, 65) for b in range(1, 65) if gcd(a, b) == 1)


def series_box(z, terms):
    power, total, z2 = z, F(0), z * z
    for k in range(terms):
        total += 2 * power / (2 * k + 1)
        power *= z2
    tail = 2 * power / ((2 * terms + 1) * (1 - z2))
    return total, total + tail


def make_logs(terms):
    log2 = series_box(F(1, 3), terms)
    result = {}
    for a in range(1, 65):
        k = a.bit_length() - 1
        scale = 1 << k
        lo, hi = series_box(F(a - scale, a + scale), terms)
        result[a] = (k * log2[0] + lo, k * log2[1] + hi)
    return result


def quotient_box(numerator, denominator):
    if denominator[0] <= 0:
        raise ValueError("division interval is not positive")
    values = [x / y for x in numerator for y in denominator]
    return min(values), max(values)


def floor(x):
    return x.numerator // x.denominator


def ceil(x):
    return -floor(-x)


def norm_lower(lo, hi):
    if ceil(lo) <= floor(hi):
        return F(0)
    return min(lo - floor(lo), ceil(hi) - hi)


def resonance(a, b, p, q):
    for prime in (p, q):
        while a % prime == 0:
            a //= prime
        while b % prime == 0:
            b //= prime
    return a == 1 and b == 1


def convergent_candidates(value, max_steps):
    numerator, denominator = value.numerator, value.denominator
    u0, u1, v0, v1 = 0, 1, 1, 0
    for _ in range(max_steps):
        if denominator == 0:
            return
        a, remainder = divmod(numerator, denominator)
        u, v = a * u1 + u0, a * v1 + v0
        yield u, v
        u0, u1, v0, v1 = u1, u, v1, v
        numerator, denominator = denominator, remainder


def power_ten_cover(value):
    result = 1
    while result < value:
        result *= 10
    return result


def generate(terms, max_v, max_candidates, max_steps):
    logs = make_logs(terms)

    @lru_cache(maxsize=None)
    def mu_boxes(q):
        boxes = []
        for a, b in RATIOS:
            numerator = (logs[a][0] - logs[b][1], logs[a][1] - logs[b][0])
            boxes.append(quotient_box(numerator, logs[q]))
        return tuple(boxes)

    pairs, all_complete, largest_used_v = [], True, 0
    for p_index, p in enumerate(PRIMES):
        for q in PRIMES[p_index + 1:]:
            tau = quotient_box(logs[p], logs[q])
            midpoint = (tau[0] + tau[1]) / 2
            boxes = mu_boxes(q)
            assignments = [-1 if resonance(a, b, p, q) else None for a, b in RATIOS]
            pending = {idx for idx, choice in enumerate(assignments) if choice is None}
            candidates, resonance_index = [], None
            for u, v in convergent_candidates(midpoint, max_steps):
                if v <= M0:
                    continue
                if v > max_v or len(candidates) >= max_candidates:
                    break
                if gcd(u, v) != 1:
                    raise AssertionError("candidate fraction was not reduced")
                delta = max(abs(v * tau[0] - u), abs(v * tau[1] - u))
                index = len(candidates)
                candidates.append({"u": str(u), "v": str(v)})
                if resonance_index is None and delta < F(1, 2 * M0):
                    resonance_index = index
                for idx in tuple(pending):
                    mu_lo, mu_hi = boxes[idx]
                    lower = norm_lower(v * mu_lo, v * mu_hi) - M0 * delta
                    if lower >= EPS:
                        assignments[idx] = index
                        pending.remove(idx)
                if not pending and resonance_index is not None:
                    break
            complete = not pending and resonance_index is not None
            all_complete = all_complete and complete
            used = {choice for choice in assignments if choice is not None and choice >= 0}
            if resonance_index is not None:
                used.add(resonance_index)
            if used:
                largest_used_v = max(largest_used_v, *(int(candidates[idx]["v"]) for idx in used))
            pairs.append({
                "p": p, "q": q, "candidates": candidates,
                "resonance_index": resonance_index, "assignments": assignments,
                "unresolved_count": len(pending), "complete": complete,
            })
            print(f"{p}/{q}: pending={len(pending)} candidates={len(candidates)} "
                  f"resonance={resonance_index}", file=sys.stderr)
    output = {
        "version": 1, "status": "complete" if all_complete else "incomplete",
        "M0": str(M0), "terms": terms, "coefficient_limit": 64,
        "prime_limit": 31, "ratio_order": "coprime_a_major_b_minor",
        "ratio_count": len(RATIOS), "epsilon": "1/100",
        "max_v_search": str(max_v), "pairs": pairs,
    }
    if all_complete:
        raw_bound = max(4097, 25600 * largest_used_v)
        output["max_used_v"] = str(largest_used_v)
        output["raw_strict_n_bound"] = str(raw_bound)
        output["strict_n_bound"] = str(power_ten_cover(raw_bound))
    return output


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", required=True)
    parser.add_argument("--terms", type=int, default=96)
    parser.add_argument("--max-v", type=int, default=10 ** 24)
    parser.add_argument("--max-candidates", type=int, default=24)
    parser.add_argument("--max-steps", type=int, default=256)
    args = parser.parse_args()
    if not 1 <= args.terms <= 4096 or args.max_v <= M0:
        parser.error("invalid interval precision or denominator cap")
    if args.max_candidates < 1 or args.max_steps < 1:
        parser.error("candidate and step caps must be positive")
    result = generate(args.terms, args.max_v, args.max_candidates, args.max_steps)
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, separators=(",", ":")), encoding="utf-8")
    return 0 if result["status"] == "complete" else 1


if __name__ == "__main__":
    raise SystemExit(main())
