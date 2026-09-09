#!/usr/bin/env python3
"""Generate the finite low-index classification for B699 support work.

This is finite evidence only: it classifies 3 <= i < 185 using a sieve and
does not inspect any B699 triples (n, i, j).
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
from pathlib import Path
from typing import Any


LOW = 3
HIGH = 184
INTEGER_LOW = 2


def sieve(limit: int) -> tuple[bytearray, list[int]]:
  """Return a sieve and pi(x) table for 0 <= x <= limit."""
  prime = bytearray(b"\x01") * (limit + 1)
  if limit >= 0:
    prime[0] = 0
  if limit >= 1:
    prime[1] = 0
  for candidate in range(2, math.isqrt(limit) + 1):
    if prime[candidate]:
      start = candidate * candidate
      prime[start : limit + 1 : candidate] = b"\x00" * (
        ((limit - start) // candidate) + 1
      )
  pi = [0] * (limit + 1)
  running = 0
  for value in range(limit + 1):
    running += int(prime[value])
    pi[value] = running
  return prime, pi


def factor_certificate(value: int, prime: bytearray) -> dict[str, Any]:
  """Build a certificate from the sieve's classification.

  The checker intentionally does not call this function or trust the sieve.
  For a prime, the least nontrivial divisor is the number itself.  For a
  composite, it is found by the generator's independent left-to-right scan.
  """
  bound = math.isqrt(value)
  tested: list[int] = []
  if prime[value]:
    tested = list(range(2, bound + 1))
    return {
      "n": value,
      "kind": "prime",
      "least_factor": value,
      "cofactor": 1,
      "sqrt_bound": bound,
      "tested_divisors": tested,
    }
  least = next(divisor for divisor in range(2, bound + 1) if value % divisor == 0)
  tested = list(range(2, least))
  return {
    "n": value,
    "kind": "composite",
    "least_factor": least,
    "cofactor": value // least,
    "sqrt_bound": bound,
    "tested_divisors": tested,
  }


def intervals(values: list[int]) -> list[list[int]]:
  """Compress sorted values into inclusive integer intervals."""
  if not values:
    return []
  result: list[list[int]] = []
  start = previous = values[0]
  for value in values[1:]:
    if value == previous + 1:
      previous = value
      continue
    result.append([start, previous])
    start = previous = value
  result.append([start, previous])
  return result


def build_result() -> dict[str, Any]:
  prime, pi = sieve(HIGH)
  rows: list[dict[str, Any]] = []
  for index in range(LOW, HIGH + 1):
    t = pi[index - 1]
    threshold = 4 * t
    sign = "zero" if index == threshold else ("negative" if index < threshold else "positive")
    rows.append(
      {
        "i": index,
        "t": t,
        "threshold_4t": threshold,
        "classification": "S" if index <= threshold else "positive",
        "exponent_sign": sign,
      }
    )

  certificates = [
    factor_certificate(value, prime) for value in range(INTEGER_LOW, HIGH + 1)
  ]
  s_values = [row["i"] for row in rows if row["classification"] == "S"]
  positive_values = [row["i"] for row in rows if row["classification"] == "positive"]
  zero_values = [row["i"] for row in rows if row["exponent_sign"] == "zero"]
  prime_values = [row["n"] for row in certificates if row["kind"] == "prime"]
  composite_values = [row["n"] for row in certificates if row["kind"] == "composite"]
  return {
    "schema_version": 1,
    "scope": {
      "index_min": LOW,
      "index_max": HIGH,
      "integer_certificate_min": INTEGER_LOW,
      "integer_certificate_max": HIGH,
      "t_definition": "pi(i-1), where pi(x) counts primes <= x",
      "classification_definition": "S iff i <= 4*t; positive iff i > 4*t",
      "finite_evidence_only": True,
      "does_not_scan_b699_triples": True,
    },
    "rows": rows,
    "integer_certificates": certificates,
    "summary": {
      "row_count": len(rows),
      "integer_certificate_count": len(certificates),
      "prime_count": len(prime_values),
      "composite_count": len(composite_values),
      "prime_values": prime_values,
      "composite_values": composite_values,
      "S_count": len(s_values),
      "positive_count": len(positive_values),
      "zero_indices": zero_values,
      "S_intervals": intervals(s_values),
      "positive_intervals": intervals(positive_values),
      "all_rows_covered": len(s_values) + len(positive_values) == len(rows),
    },
  }


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--output", type=Path, required=True)
  args = parser.parse_args()
  result = build_result()
  args.output.parent.mkdir(parents=True, exist_ok=True)
  payload = json.dumps(result, ensure_ascii=False, indent=2) + "\n"
  args.output.write_text(payload, encoding="utf-8")
  digest = hashlib.sha256(payload.encode("utf-8")).hexdigest()
  summary = result["summary"]
  print(
    "generated result.json: "
    f"rows={summary['row_count']} integers={summary['integer_certificate_count']} "
    f"primes={summary['prime_count']} composites={summary['composite_count']} "
    f"S={summary['S_count']} positive={summary['positive_count']} "
    f"sha256={digest}"
  )
  return 0


if __name__ == "__main__":
  raise SystemExit(main())
