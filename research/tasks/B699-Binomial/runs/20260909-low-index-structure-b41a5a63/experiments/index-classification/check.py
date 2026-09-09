#!/usr/bin/env python3
"""Independently check the finite low-index classification evidence.

This checker deliberately redoes primality by trial division and derives pi,
the sign classes, and interval coverage itself.  It does not import or call
the sieve generator.
"""

from __future__ import annotations

import argparse
import json
import math
from pathlib import Path
from typing import Any


LOW = 3
HIGH = 184
INTEGER_LOW = 2


class CheckFailure(ValueError):
  pass


def integer(value: Any, label: str) -> int:
  if isinstance(value, bool) or not isinstance(value, int):
    raise CheckFailure(f"{label} is not an integer: {value!r}")
  return value


def trial_prime(value: int) -> bool:
  """Independent primality predicate using direct trial division."""
  if value < 2:
    return False
  for divisor in range(2, math.isqrt(value) + 1):
    if value % divisor == 0:
      return False
  return True


def compress(values: list[int]) -> list[list[int]]:
  if not values:
    return []
  result: list[list[int]] = []
  start = previous = values[0]
  for value in values[1:]:
    if value == previous + 1:
      previous = value
    else:
      result.append([start, previous])
      start = previous = value
  result.append([start, previous])
  return result


def check_certificate(cert: dict[str, Any], expected_prime: bool) -> None:
  value = integer(cert.get("n"), "certificate.n")
  kind = cert.get("kind")
  if kind not in {"prime", "composite"}:
    raise CheckFailure(f"certificate {value}: invalid kind {kind!r}")
  if (kind == "prime") != expected_prime:
    raise CheckFailure(f"certificate {value}: kind disagrees with trial division")
  bound = math.isqrt(value)
  if integer(cert.get("sqrt_bound"), f"certificate {value}.sqrt_bound") != bound:
    raise CheckFailure(f"certificate {value}: incorrect square-root bound")
  least = integer(cert.get("least_factor"), f"certificate {value}.least_factor")
  cofactor = integer(cert.get("cofactor"), f"certificate {value}.cofactor")
  tested = cert.get("tested_divisors")
  if not isinstance(tested, list) or any(
    isinstance(item, bool) or not isinstance(item, int) for item in tested
  ):
    raise CheckFailure(f"certificate {value}: malformed tested_divisors")
  if kind == "prime":
    if least != value or cofactor != 1:
      raise CheckFailure(f"prime certificate {value}: incorrect least-factor data")
    if tested != list(range(2, bound + 1)):
      raise CheckFailure(f"prime certificate {value}: incomplete divisor checks")
    if any(value % divisor == 0 for divisor in tested):
      raise CheckFailure(f"prime certificate {value}: divisor witness found")
  else:
    if not (2 <= least <= bound):
      raise CheckFailure(f"composite certificate {value}: factor outside trial bound")
    if value % least != 0 or cofactor != value // least:
      raise CheckFailure(f"composite certificate {value}: incorrect factorization")
    if tested != list(range(2, least)):
      raise CheckFailure(f"composite certificate {value}: minimality checks incomplete")
    if any(value % divisor == 0 for divisor in tested):
      raise CheckFailure(f"composite certificate {value}: smaller factor found")


def check_result(result: dict[str, Any]) -> dict[str, Any]:
  if result.get("schema_version") != 1:
    raise CheckFailure("unsupported schema_version")
  scope = result.get("scope")
  if not isinstance(scope, dict):
    raise CheckFailure("missing scope")
  if scope.get("index_min") != LOW or scope.get("index_max") != HIGH:
    raise CheckFailure("scope does not cover exactly 3 <= i < 185")
  if scope.get("integer_certificate_min") != INTEGER_LOW:
    raise CheckFailure("integer certificate lower bound is not 2")
  if scope.get("integer_certificate_max") != HIGH:
    raise CheckFailure("integer certificate upper bound is not 184")
  if scope.get("finite_evidence_only") is not True:
    raise CheckFailure("finite-evidence marker missing")
  if scope.get("does_not_scan_b699_triples") is not True:
    raise CheckFailure("B699 triple-scan boundary marker missing")

  rows = result.get("rows")
  if not isinstance(rows, list) or len(rows) != HIGH - LOW + 1:
    raise CheckFailure("rows are not the complete 182-row range")
  row_by_index: dict[int, dict[str, Any]] = {}
  for expected_index, row in zip(range(LOW, HIGH + 1), rows):
    if not isinstance(row, dict):
      raise CheckFailure(f"row {expected_index}: not an object")
    index = integer(row.get("i"), f"row {expected_index}.i")
    if index != expected_index or index in row_by_index:
      raise CheckFailure(f"row sequence/uniqueness failure at {expected_index}")
    t = integer(row.get("t"), f"row {index}.t")
    threshold = integer(row.get("threshold_4t"), f"row {index}.threshold_4t")
    expected_t = sum(trial_prime(candidate) for candidate in range(2, index))
    if t != expected_t or threshold != 4 * expected_t:
      raise CheckFailure(f"row {index}: incorrect pi(i-1) or 4t")
    expected_class = "S" if index <= threshold else "positive"
    if row.get("classification") != expected_class:
      raise CheckFailure(f"row {index}: incorrect classification")
    expected_sign = "zero" if index == threshold else ("negative" if index < threshold else "positive")
    if row.get("exponent_sign") != expected_sign:
      raise CheckFailure(f"row {index}: incorrect exponent sign")
    row_by_index[index] = row

  certificates = result.get("integer_certificates")
  if not isinstance(certificates, list) or len(certificates) != HIGH - INTEGER_LOW + 1:
    raise CheckFailure("integer certificate list is not the complete 2..184 range")
  cert_by_value: dict[int, dict[str, Any]] = {}
  for expected_value, cert in zip(range(INTEGER_LOW, HIGH + 1), certificates):
    if not isinstance(cert, dict):
      raise CheckFailure(f"certificate {expected_value}: not an object")
    value = integer(cert.get("n"), f"certificate {expected_value}.n")
    if value != expected_value or value in cert_by_value:
      raise CheckFailure(f"certificate sequence/uniqueness failure at {expected_value}")
    check_certificate(cert, trial_prime(value))
    cert_by_value[value] = cert

  summary = result.get("summary")
  if not isinstance(summary, dict):
    raise CheckFailure("missing summary")
  prime_values = [value for value in range(INTEGER_LOW, HIGH + 1) if trial_prime(value)]
  composite_values = [value for value in range(INTEGER_LOW, HIGH + 1) if not trial_prime(value)]
  if summary.get("row_count") != len(rows):
    raise CheckFailure("summary row_count mismatch")
  if summary.get("integer_certificate_count") != len(certificates):
    raise CheckFailure("summary integer_certificate_count mismatch")
  if summary.get("prime_count") != len(prime_values) or summary.get("composite_count") != len(composite_values):
    raise CheckFailure("summary prime/composite counts mismatch")
  if summary.get("prime_values") != prime_values or summary.get("composite_values") != composite_values:
    raise CheckFailure("summary prime/composite value lists mismatch")

  s_values = [index for index in range(LOW, HIGH + 1) if row_by_index[index]["classification"] == "S"]
  positive_values = [index for index in range(LOW, HIGH + 1) if row_by_index[index]["classification"] == "positive"]
  zero_values = [index for index in range(LOW, HIGH + 1) if row_by_index[index]["exponent_sign"] == "zero"]
  expected_s = set(range(3, 97)) | set(range(98, 101)) | set(range(102, 121))
  expected_positive = set(range(97, 98)) | set(range(101, 102)) | set(range(121, 185))
  if set(s_values) != expected_s or set(positive_values) != expected_positive:
    raise CheckFailure("classification differs from the independently expected intervals")
  if set(s_values) & set(positive_values) != set() or len(s_values) + len(positive_values) != len(rows):
    raise CheckFailure("row coverage is not a disjoint partition")
  if summary.get("S_count") != len(s_values) or summary.get("positive_count") != len(positive_values):
    raise CheckFailure("summary class counts mismatch")
  if summary.get("zero_indices") != zero_values:
    raise CheckFailure("summary zero-index list mismatch")
  if summary.get("S_intervals") != compress(s_values) or summary.get("positive_intervals") != compress(positive_values):
    raise CheckFailure("summary interval compression mismatch")
  if summary.get("all_rows_covered") is not True:
    raise CheckFailure("summary coverage marker is false")

  return {
    "rows": len(rows),
    "integer_certificates": len(certificates),
    "primes": len(prime_values),
    "composites": len(composite_values),
    "S": len(s_values),
    "positive": len(positive_values),
    "zero_indices": zero_values,
    "S_intervals": compress(s_values),
    "positive_intervals": compress(positive_values),
  }


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--input", type=Path, required=True)
  args = parser.parse_args()
  result = json.loads(args.input.read_text(encoding="utf-8"))
  if not isinstance(result, dict):
    raise CheckFailure("top-level JSON value is not an object")
  summary = check_result(result)
  print(
    "PASS independent classification check: "
    f"rows={summary['rows']} integers={summary['integer_certificates']} "
    f"primes={summary['primes']} composites={summary['composites']} "
    f"S={summary['S']} positive={summary['positive']} "
    f"zero={summary['zero_indices']} "
    f"S_intervals={summary['S_intervals']} "
    f"positive_intervals={summary['positive_intervals']}"
  )
  return 0


if __name__ == "__main__":
  raise SystemExit(main())
