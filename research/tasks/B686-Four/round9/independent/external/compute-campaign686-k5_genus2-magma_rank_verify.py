#!/usr/bin/env python3
"""Verify the frozen k=5 genus-two rank and point-census certificate."""

from __future__ import annotations

import argparse
import json
import math
import urllib.parse
import urllib.request
import xml.etree.ElementTree as ET
from fractions import Fraction
from pathlib import Path


HERE = Path(__file__).resolve().parent
CERTIFICATE = HERE / "rank_certificate.json"
MAGMA_SOURCE = HERE / "magma_rank_certificate.m"


def is_square_fraction(value: Fraction) -> tuple[bool, Fraction | None]:
    if value < 0:
        return False, None
    numerator = math.isqrt(value.numerator)
    denominator = math.isqrt(value.denominator)
    if numerator * numerator != value.numerator:
        return False, None
    if denominator * denominator != value.denominator:
        return False, None
    return True, Fraction(numerator, denominator)


def determinant(matrix: list[list[int]]) -> int:
    work = [row[:] for row in matrix]
    sign = 1
    denominator = 1
    size = len(work)
    for column in range(size - 1):
        pivot = next(
            (row for row in range(column, size) if work[row][column] != 0),
            None,
        )
        if pivot is None:
            return 0
        if pivot != column:
            work[column], work[pivot] = work[pivot], work[column]
            sign = -sign
        pivot_value = work[column][column]
        for row in range(column + 1, size):
            for index in range(column + 1, size):
                work[row][index] = (
                    work[row][index] * pivot_value
                    - work[row][column] * work[column][index]
                ) // denominator
            work[row][column] = 0
        denominator = pivot_value
    return sign * work[-1][-1]


def verify_offline() -> dict[str, object]:
    data = json.loads(CERTIFICATE.read_text())
    magma = data["magma"]
    assert magma["two_selmer_order"] == 32
    assert magma["two_selmer_invariants"] == [2, 2, 2, 2, 2]
    assert magma["torsion_invariants"] == []
    assert magma["rank"] == 5
    assert magma["mordell_weil_invariants"] == [0, 0, 0, 0, 0]
    assert magma["finite_index"] is True
    assert magma["proved"] is True
    assert magma["rank_bound"] == 5
    assert magma["two_cover_count"] == 8
    assert magma["rational_points_proved_all"] is False

    points = data["rational_points_weighted_projective"]
    assert len(points) == 36
    assert len({tuple(point) for point in points}) == 36

    pullbacks: list[dict[str, str]] = []
    target_pullbacks: list[dict[str, str]] = []
    denominator_zero: list[list[int]] = []
    for a, b, c in points:
        assert b * b == (
            9 * a**6
            + 64 * a**5 * c
            - 200 * a**3 * c**3
            + 64 * a * c**5
            + 144 * c**6
        )
        if c == 0:
            continue
        x = Fraction(a, c)
        y = Fraction(b, c**3)
        denominator = 5 * (x**3 - 4) - y
        if denominator == 0:
            denominator_zero.append([a, b, c])
            continue
        s = 8 * (x - 4) / denominator
        square, y_center = is_square_fraction(s)
        if not square or y_center is None:
            continue
        x_center = x * y_center
        n = y_center - 3
        d = x_center - y_center
        item = {
            "point": str((a, b, c)),
            "X": str(x_center),
            "Y": str(y_center),
            "n": str(n),
            "d": str(d),
        }
        pullbacks.append(item)
        if (
            x_center.denominator == 1
            and y_center.denominator == 1
            and n.denominator == 1
            and d.denominator == 1
            and n >= 0
            and d >= 5
        ):
            target_pullbacks.append(item)

    assert denominator_zero == [[4, 300, 1]]
    assert target_pullbacks == []
    assert len(data["mordell_weil_generators"]) == 5
    basis = data["unimodular_point_difference_basis"]
    matrix = basis["coordinate_matrix_in_magma_basis"]
    assert len(matrix) == 5
    assert all(len(row) == 5 for row in matrix)
    assert determinant(matrix) == basis["determinant"] == -1
    assert len(basis["points"]) == 5

    return {
        "verdict": "PASS",
        "point_count": len(points),
        "square_inverse_pullbacks": pullbacks,
        "target_pullbacks": target_pullbacks,
        "denominator_zero": denominator_zero,
        "rank": magma["rank"],
        "two_selmer_dimension": len(magma["two_selmer_invariants"]),
        "full_mordell_weil_group_proved": magma["proved"],
        "unimodular_basis_determinant": basis["determinant"],
    }


def run_online() -> str:
    payload = urllib.parse.urlencode(
        {"input": MAGMA_SOURCE.read_text()}
    ).encode()
    request = urllib.request.Request(
        "http://magma.maths.usyd.edu.au/xml/calculator.xml",
        data=payload,
        headers={"User-Agent": "Mozilla/5.0"},
        method="POST",
    )
    with urllib.request.urlopen(request, timeout=75) as response:
        root = ET.fromstring(response.read())
    lines = [
        node.text or ""
        for node in root.findall("./results/line")
    ]
    output = "\n".join(lines)
    required = [
        "NONSINGULAR true",
        "TORSION_INVARIANTS []",
        "SELMER_ORDER 32",
        "SELMER_INVARIANTS [ 2, 2, 2, 2, 2 ]",
        "POINT_COUNT 36",
        "MW_INVARIANTS [ 0, 0, 0, 0, 0 ]",
        "FINITE_INDEX true",
        "PROVED true",
        "RANK_BOUND 5",
        "POINT_DIFFERENCE_DETERMINANT -1",
        "TWO_COVER_COUNT 8",
        "RATIONAL_POINT_COUNT 36",
        "RATIONAL_POINTS_PROVED_ALL false",
        "RATIONAL_POINT_SEARCH_BOUND 20000",
    ]
    missing = [marker for marker in required if marker not in output]
    assert missing == [], (missing, output)
    return output


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--online", action="store_true")
    args = parser.parse_args()
    result = verify_offline()
    if args.online:
        result["online_magma_output"] = run_online()
    print(json.dumps(result, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
