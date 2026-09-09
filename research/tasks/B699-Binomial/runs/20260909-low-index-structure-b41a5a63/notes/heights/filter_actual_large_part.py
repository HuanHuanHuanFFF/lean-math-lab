"""Check exact actual V for the explicitly remaining finite (i,n) pairs.

Generator uses Legendre valuations. The independent checker should instead
compute comb(n,i) and divide out every prime below i directly. No j is enumerated.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import math
from pathlib import Path
import sys


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def integer_evidence(value: int) -> dict:
    assert value > 0
    data = value.to_bytes((value.bit_length() + 7) // 8, "big")
    return {"bits": value.bit_length(), "sha256_unsigned_big_endian": hashlib.sha256(data).hexdigest()}


def primes_below(i: int) -> list[int]:
    primes: list[int] = []
    for candidate in range(2, i):
        if all(candidate % p for p in primes if p * p <= candidate):
            primes.append(candidate)
    return primes


def legendre_binomial(n: int, i: int, p: int) -> int:
    exponent = 0
    power = p
    while power <= n:
        contribution = n // power - i // power - (n - i) // power
        assert contribution in (0, 1)
        exponent += contribution
        power *= p
    return exponent


def weight_constants(record: dict) -> tuple[int, dict]:
    i, r, s, lam, degree = (record[key] for key in ("i", "r", "s", "lambda", "E"))
    assert 2 <= i and 0 <= r < i and 1 <= s < i and lam == 2 * s - r > 0
    length = i - r - 1
    assert degree == s * (s + 1) + length * (length + 1) // 2
    b_s = math.prod(math.factorial(h) for h in range(1, s + 1))
    b_l = math.prod(math.factorial(h) for h in range(1, length + 1))
    k = (2 ** (s * (s + 1))) * b_s * b_s * b_l
    return k, {"i": i, "r": r, "s": s, "lambda": lam, "E": degree,
               "L": length, "K_formula": "2^(s*(s+1)) * B_s^2 * B_L; B_h=product_{v=1}^h v!",
               "K": integer_evidence(k), "B_s": integer_evidence(b_s),
               "B_L": integer_evidence(b_l)}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--cover", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--max-candidates", type=int, default=1000)
    args = parser.parse_args()
    source = json.loads(args.input.read_text(encoding="utf-8"))
    cover = json.loads(args.cover.read_text(encoding="utf-8"))
    assert source["input_sha256"] == sha256(args.cover)
    assert cover["all_height_CERTs_exact"]
    assert source["total_remaining_i_n_pairs"] <= args.max_candidates
    by_i = {record["i"]: record for record in cover["records"]}
    parameters = {}
    results = []
    remaining = []
    seen = set()
    for record in source["records"]:
        i = record["i"]
        if not record["remaining_integer_count"]:
            continue
        k, parameter = weight_constants(by_i[i])
        parameters[str(i)] = parameter
        lam, degree = parameter["lambda"], parameter["E"]
        primes = primes_below(i)
        assert len(primes) == by_i[i]["t"]
        count = 0
        for lower, upper in record["remaining_intervals"]:
            for n in range(lower, upper + 1):
                assert n >= 2 * i + 2 and (i, n) not in seen
                seen.add((i, n))
                count += 1
                c = math.comb(n, i)
                exponents = [{"p": p, "e": legendre_binomial(n, i, p)} for p in primes]
                u = math.prod(item["p"] ** item["e"] for item in exponents)
                assert c % u == 0
                v = c // u
                assert c == u * v and all(v % p for p in primes)
                left = k * v ** lam
                right = n ** degree
                passed = left > right
                row = {"i": i, "n": n, "C": str(c), "U": str(u), "V": str(v),
                       "C_evidence": integer_evidence(c),
                       "small_prime_exponents_legendre": exponents,
                       "V_evidence": integer_evidence(v),
                       "K_V_power": integer_evidence(left), "n_E": integer_evidence(right),
                       "strict_size_contradiction": passed,
                       "meaning": ("excludes every legal j for this i,n" if passed
                                   else "this necessary size condition does not exclude the pair; not a counterexample")}
                results.append(row)
                if not passed:
                    remaining.append({"i": i, "n": n})
        assert count == record["remaining_integer_count"]
    assert len(results) == source["total_remaining_i_n_pairs"]
    output = {"timestamp_utc": datetime.now(timezone.utc).isoformat(),
              "python_version": sys.version,
              "script_sha256": sha256(Path(__file__)),
              "input_sha256": sha256(args.input), "cover_sha256": sha256(args.cover),
              "status": "exact actual small-prime valuations and weighted size comparisons; no j tested",
              "generator_valuation_method": "Legendre floor-sum for every prime p<i",
              "independent_checker_method": "compute comb and divide out all small primes directly",
              "checked_i_n_pairs": len(results),
              "excluded_i_n_pairs": len(results) - len(remaining),
              "remaining_i_n_pairs": remaining,
              "all_checked_pairs_excluded": not remaining,
              "weight_parameters": parameters, "records": results}
    args.output.write_text(json.dumps(output, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({key: output[key] for key in ("checked_i_n_pairs", "excluded_i_n_pairs",
                    "all_checked_pairs_excluded", "remaining_i_n_pairs")}, indent=2))


if __name__ == "__main__":
    main()
