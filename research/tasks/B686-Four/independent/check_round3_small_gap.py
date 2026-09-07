"""Independent binomial-coefficient audit of the round-three gap certificates.

This checks arithmetic and published-theorem bound transcription. It does not
formalize the external theorem or prove all-k nonexistence on its own.
"""
from datetime import datetime, timezone
import hashlib
import json
from math import comb, factorial
from pathlib import Path

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parent / "experiments/round3-small-gap-2026-09-07.json"


def difference(k, h, n):
    # Cancelling k! is valid for the original two equal-length products.
    return comb(n + 2 * k + h, k) - 4 * comb(n + k, k)


def main():
    raw = SOURCE.read_bytes()
    source = json.loads(raw)
    expected = {(k, h) for k in range(2, 22) for h in range(8)}
    seen = set()
    for row in source["sign_changes"]:
        k, h = row["k"], row["h"]
        assert (k, h) in expected and (k, h) not in seen
        seen.add((k, h))
        above, below = row["last_above"], row["first_below"]
        assert 0 <= above and below == above + 1
        # A sequential crossing check is independent of the producer's bisection.
        for n in range(below):
            assert difference(k, h, n) > 0
        assert difference(k, h, below) < 0
        assert difference(k, h, above) * factorial(k) == row["difference_above"]
        assert difference(k, h, below) * factorial(k) == row["difference_below"]
    assert seen == expected and len(seen) == source["sign_change_count"] == 160
    checked = 0
    for k in range(2, 22):
        for h in range(2, 8):
            for n in range(576):
                assert difference(k, h, n) != 0
                checked += 1
    assert checked == source["finite_box"]["checked"] == 69120
    assert source["finite_box"] == {
        "k": [2, 21], "n": [0, 575], "h": [2, 7], "checked": checked, "hits": []}
    kappa = [8, 9, 11, 15, 16, 24]
    kappa_prime = [11, 25, 28, 30, 46, 50]
    per_gap_k_bounds = [(bound - h) // 2 for h, bound in zip(range(2, 8), kappa_prime)]
    assert per_gap_k_bounds == [4, 11, 12, 12, 20, 21]
    assert max(kappa) ** 2 - 1 == 575
    assert max(3780 ** 2, 3850 ** 2, 59400 ** 2) < 244 ** 4
    assert 243 < 16 ** 2
    # The h=0,1 paper arguments use Sylvester and a factor bound for k>=5.
    assert 4 ** 5 > 4 * 3 ** 5
    short_checked = 0
    for k in range(2, 5):
        for h in (0, 1):
            for n in range(2 * k + h):
                assert difference(k, h, n) != 0
                short_checked += 1
    assert short_checked == 39
    report = {
        "checked_at": datetime.now(timezone.utc).isoformat(),
        "input_sha256": hashlib.sha256(raw).hexdigest(),
        "method": "math.comb plus sequential crossing checks; no producer imports",
        "crossing_certificates": 160, "direct_original_box": checked,
        "h_zero_one_small_cases": short_checked,
        "kappa": kappa, "kappa_prime": kappa_prime,
        "per_gap_k_bounds_small_start": per_gap_k_bounds,
        "bound_transcription_source": "https://publi.math.unideb.hu/paper/924/download/",
        "paper_conclusion": "any original solution has h=m-n-k>=8",
        "external_theorem_and_monotonicity_not_proved_by_this_script": True,
        "complete_original_target_solved": False,
        "kernel_checked": False,
    }
    (HERE / "round3-small-gap-verification.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"direct_original_box": checked, "crossing_certificates": len(seen),
                      "h_zero_one_small_cases": short_checked, "all_passed": True}))


if __name__ == "__main__":
    main()
