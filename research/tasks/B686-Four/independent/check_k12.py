"""Independent arithmetic/transcription audit for the fixed k=12 Lean result.

Uses original binomial coefficients for the entire finite remainder, checks
the polynomial identity with a degree bound, and verifies the shifted
coefficient and modulus certificates. No symbolic algebra dependency.
"""
from datetime import datetime, timezone
import hashlib
import json
from math import comb, prod
from pathlib import Path

HERE = Path(__file__).resolve().parent
CERTIFICATE = HERE.parent / "experiments/even-certificates-2026-09-07.json"


def evaluate(poly, t):
    return sum(c * t ** j for j, c in enumerate(poly))


def main():
    raw = CERTIFICATE.read_bytes()
    row = next(row for row in json.loads(raw)["rows"] if row["k"] == 12)
    a, e, gap = (row[key] for key in ("A_coefficients", "E_coefficients", "gap_coefficients"))
    assert row["scale_L"] == 2 and row["fixed_divisor_g"] == 9
    assert row["threshold_N"] == 38 and len(a) == 7 and len(e) == 5 and len(gap) == 7
    for t in range(13):
        original = prod(range(t + 1, t + 13))
        assert evaluate(a, t) ** 2 == 4 * original + evaluate(e, t)
    # Degree <=12, thirteen distinct identity points above.
    for j in range(7):
        assert gap[j] == 36 * a[j] - (81 if j == 0 else 0) - (4 * e[j] if j < len(e) else 0)
    shifted = [sum(c * comb(i, j) * 38 ** (i - j)
                   for i, c in enumerate(gap) if i >= j) for j in range(7)]
    assert shifted == row["gap_at_N_plus_s_coefficients"] and all(c > 0 for c in shifted)
    assert all(c > 0 for c in e) and a[0] >= 9 and all(c >= 0 for c in a)
    assert all(evaluate(a, r) % 18 == 9 for r in range(18))
    count = 0
    for n in range(38):
        for m in range(n + 12, 2 * n + 12):
            assert comb(m + 12, 12) != 4 * comb(n + 12, 12)
            count += 1
    assert count == 703
    report = {"checked_at": datetime.now(timezone.utc).isoformat(),
              "certificate_sha256": hashlib.sha256(raw).hexdigest(),
              "lean_source_sha256": hashlib.sha256((HERE / "K12.lean").read_bytes()).hexdigest(),
              "k": 12, "tail_threshold": 38, "identity_degree_bound": 12,
              "identity_points": 13, "modulus": 18, "all_residues_checked": True,
              "positive_shifted_gap_coefficients": shifted,
              "finite_n_max_exclusive": 38, "finite_admissible_pairs": count,
              "hits": [], "kernel_verification": "recorded separately; this command audits arithmetic"}
    (HERE / "check_k12.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"k": 12, "finite_pairs": count, "tail_certificate_checked": True}))


if __name__ == "__main__":
    main()
