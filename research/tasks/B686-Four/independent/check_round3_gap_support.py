"""Independent sieve and binomial audits of the final gap support artifacts."""
from datetime import datetime, timezone
import hashlib
import json
from math import comb, factorial, isqrt
from pathlib import Path

HERE = Path(__file__).resolve().parent
EXPERIMENTS = HERE.parent / "experiments"


def main():
    names = ["round3-gap-effective-bound-2026-09-07.json",
             "round3-prime-support-obstruction-2026-09-07.json"]
    inputs = {name: (EXPERIMENTS / name).read_bytes() for name in names}
    bounds, diagnostic = [json.loads(inputs[name]) for name in names]
    limit = max(row["p_s_plus_1"] for row in bounds["fixtures"])
    flags = bytearray(b"\x01") * (limit + 1)
    flags[:2] = b"\x00\x00"
    for p in range(2, isqrt(limit) + 1):
        if flags[p]:
            flags[p * p:limit + 1:p] = b"\x00" * ((limit - p * p) // p + 1)
    primes = [p for p in range(2, limit + 1) if flags[p]]
    for row in bounds["fixtures"]:
        h = row["h"]
        s = (4 * h + 7) // 3
        assert row["s"] == s and primes[s] == row["p_s_plus_1"]
        assert 3 * s < 4 * (h + 2) <= 3 * (s + 1)
        bound = max(293, h + 8, primes[s] - 1)
        assert (row["K_upper"], row["k_upper"], row["n_upper_safe"]) == (
            bound, (bound - h) // 2, bound ** 2 - 1)
    k, n, m = (diagnostic[key] for key in ("k", "n", "m"))
    assert (k, n, m) == (5, 182, 241)
    d, h, span = m - n, m - n - k, m - n + k
    assert n + k <= m < 2 * n + k
    assert 3 * (m + 1) <= 4 * k * d and span < n + 1 < span ** 2
    terms = list(range(n + 1, n + k + 1)) + list(range(m + 1, m + k + 1))
    largest = [max(p for p in primes if p <= term and term % p == 0) for term in terms]
    assert largest == diagnostic["largest_prime_factor_by_term"] and max(largest) < span
    difference = factorial(k) * (comb(m + k, k) - 4 * comb(n + k, k))
    assert difference == diagnostic["difference"] == -1878853680
    assert factorial(k) * (comb(181 + d + k, k) - 4 * comb(181 + k, k)) > 0
    q = n + k + 1
    rhs = factorial(k) * (comb(h - 1 + k, k) - 4 * (-1) ** k)
    assert rhs % q == difference % q == diagnostic["remainder"] == 84
    assert q == diagnostic["first_failed_gap_factor"]
    report = {"checked_at": datetime.now(timezone.utc).isoformat(),
              "input_sha256": {name: hashlib.sha256(raw).hexdigest() for name, raw in inputs.items()},
              "method": "Eratosthenes sieve and original binomial coefficients",
              "fixed_gap_bound_fixtures": len(bounds["fixtures"]),
              "diagnostic_is_original_solution": False,
              "diagnostic_difference": difference, "failed_gap_remainder": 84,
              "external_prime_count_theorem_formalized": False,
              "original_target_solved": False}
    (HERE / "round3-gap-support-verification.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"bound_fixtures": len(bounds["fixtures"]), "diagnostic_checked": True,
                      "diagnostic_is_original_solution": False}))


if __name__ == "__main__":
    main()
