#!/usr/bin/env python3
from __future__ import annotations

import json
from fractions import Fraction
from pathlib import Path


def eval_terms(terms: list[dict], vals: tuple[int, int, int], p: int) -> int:
    bv, rv, cv = vals
    total = 0
    for row in terms:
        i, j, k = row["mon"]
        num = int(row["num"]) % p
        den = int(row["den"]) % p
        if den == 0:
            raise ZeroDivisionError
        coefficient = num * pow(den, -1, p) % p
        total = (total + coefficient * pow(bv, i, p) * pow(rv, j, p) * pow(cv, k, p)) % p
    return total


def residue(value: str, p: int) -> int:
    q = Fraction(value)
    return (q.numerator % p) * pow(q.denominator % p, -1, p) % p


def main() -> None:
    root = Path(__file__).resolve().parents[1]
    data = json.loads((root / "outputs" / "replay.json").read_text(encoding="utf-8"))
    records = {}
    for name, branch in sorted(data["branches"].items()):
        systems = branch["saturated_high_equations"]
        expected = tuple(residue(branch["normalized_solution"][z], p) for z in ("b", "r", "c") for p in [])
        prime_records = []
        for p in (13, 17, 19):
            expected = tuple(residue(branch["normalized_solution"][z], p) for z in ("b", "r", "c"))
            solutions = []
            for bv in range(p):
                for rv in range(p):
                    for cv in range(1, p):  # saturated chart c != 0
                        vals = (bv, rv, cv)
                        if all(eval_terms(eq, vals, p) == 0 for eq in systems):
                            solutions.append(vals)
            assert solutions == [expected], (name, p, solutions, expected)
            prime_records.append({"prime": p, "unique_solution": list(expected)})
        records[name] = prime_records

    # Pure-Python enumeration of the final slot-degree frontier.
    remaining = []
    for d0 in range(5):
        for d1 in range(5 - d0):
            d2 = 4 - d0 - d1
            support = sum(z > 0 for z in (d0, d1, d2))
            if support < 2:
                continue
            m = d1 + 2 * d2
            if m < 4:  # sigma=j gives t<=1/2
                continue
            part = sorted([z for z in (d0, d1, d2) if z], reverse=True)
            if part in ([2, 2], [2, 1, 1]):
                remaining.append([d0, d1, d2])
    assert remaining == [[0, 2, 2], [1, 1, 2], [1, 2, 1], [2, 0, 2]]

    out = {
        "method": "pure Python modular exhaustive evaluation; no SymPy",
        "branch_checks": records,
        "remaining_slot_degree_patterns": remaining,
        "status": "PASS",
    }
    (root / "outputs" / "independent_check.json").write_text(
        json.dumps(out, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(json.dumps(out, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
