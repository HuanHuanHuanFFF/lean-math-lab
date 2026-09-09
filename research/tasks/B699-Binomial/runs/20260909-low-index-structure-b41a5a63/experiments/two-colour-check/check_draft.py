#!/usr/bin/env python3
"""Independently verify the finite two-colour cover artifact.

The checker does not import the generator. It recomputes primality by trial
division, derives every p-power family and A range from the reported layer
endpoints, merges intervals separately by prime colour, intersects every pair
of different colours with two pointers, and compares the resulting union with
the reported compressed cover.
"""

from __future__ import annotations

import argparse
import copy
import json
import math
import re
from functools import lru_cache
from pathlib import Path
from typing import Any


EXPECTED_INDICES = [29, *range(35, 185)]


class CheckFailure(ValueError):
  """A deterministic artifact or certificate mismatch."""


def require_int(value: Any, label: str) -> int:
  if isinstance(value, bool):
    raise CheckFailure(f"{label}: boolean is not an integer")
  if isinstance(value, int):
    return value
  if isinstance(value, str) and re.fullmatch(r"(?:0|[1-9][0-9]*)", value):
    return int(value)
  raise CheckFailure(f"{label}: expected a nonnegative decimal integer, got {value!r}")


def require_dict(value: Any, label: str) -> dict[str, Any]:
  if not isinstance(value, dict):
    raise CheckFailure(f"{label}: expected an object")
  return value


def require_list(value: Any, label: str) -> list[Any]:
  if not isinstance(value, list):
    raise CheckFailure(f"{label}: expected a list")
  return value


def trial_prime(value: int) -> bool:
  """Independent trial-division primality predicate."""
  if value < 2:
    return False
  for divisor in range(2, math.isqrt(value) + 1):
    if value % divisor == 0:
      return False
  return True


def primes_below(limit: int) -> list[int]:
  return [value for value in range(2, limit) if trial_prime(value)]


def valuation(value: int, prime: int) -> int:
  exponent = 0
  while value % prime == 0:
    value //= prime
    exponent += 1
  return exponent


def ceil_div(numerator: int, denominator: int) -> int:
  return -((-numerator) // denominator)


@lru_cache(maxsize=None)
def factorial_product(limit: int) -> int:
  result = 1
  for value in range(1, limit + 1):
    result *= math.factorial(value)
  return result


def parameters(record: dict[str, Any], label: str) -> dict[str, int]:
  index = require_int(record.get("i"), f"{label}.i")
  r = require_int(record.get("r"), f"{label}.r")
  s = require_int(record.get("s"), f"{label}.s")
  lam = require_int(record.get("lambda"), f"{label}.lambda")
  E = require_int(record.get("E"), f"{label}.E")
  delta = require_int(record.get("Delta"), f"{label}.Delta")
  t = require_int(record.get("t"), f"{label}.t")
  L = index - r - 1
  if lam != 2 * s - r or lam <= 0:
    raise CheckFailure(f"{label}: lambda != 2*s-r or is not positive")
  expected_E = s * (s + 1) + L * (L + 1) // 2
  if E != expected_E:
    raise CheckFailure(f"{label}: E mismatch")
  expected_t = sum(trial_prime(value) for value in range(2, index))
  if t != expected_t:
    raise CheckFailure(f"{label}: t != independently computed pi(i-1)")
  expected_delta = lam * (index - t) - E
  if delta != expected_delta or delta <= 0:
    raise CheckFailure(f"{label}: Delta mismatch or not positive")
  if L < 0 or s < 0 or r < 0:
    raise CheckFailure(f"{label}: invalid nonnegative parameter boundary")
  return {
    "i": index,
    "r": r,
    "s": s,
    "lambda": lam,
    "L": L,
    "E": E,
    "Delta": delta,
    "t": t,
  }


def K_value(params: dict[str, int]) -> int:
  s = params["s"]
  L = params["L"]
  return (
    2 ** (s * (s + 1))
    * factorial_product(s) ** 2
    * factorial_product(L)
  )


def falling_factorial(value: int, length: int) -> int:
  result = 1
  for offset in range(length):
    result *= value - offset
  return result


def check_height(record: dict[str, Any], params: dict[str, int], K: int) -> tuple[int, int]:
  label = f"i={params['i']}.height_certificate"
  cert = require_dict(record.get("height_certificate"), label)
  N0 = require_int(cert.get("N0"), f"{label}.N0")
  power = require_int(cert.get("N0_power10"), f"{label}.N0_power10")
  if power < 0 or N0 != 10 ** power:
    raise CheckFailure(f"{label}: N0 is not exactly 10^h")
  Nlow = params["i"] * (params["i"] - 1)
  if N0 < Nlow:
    raise CheckFailure(f"{label}: N0 is below i(i-1)")
  left = K * falling_factorial(N0, params["i"]) ** params["lambda"]
  right = (
    math.factorial(params["i"]) ** params["lambda"]
    * N0 ** (params["t"] * params["lambda"] + params["E"])
  )
  if not left > right:
    raise CheckFailure(f"{label}: exact integer height CERT is false")
  if cert.get("exact_integer_CERT") is not True:
    raise CheckFailure(f"{label}: exact_integer_CERT marker is not true")
  if require_int(cert.get("left_bits"), f"{label}.left_bits") != left.bit_length():
    raise CheckFailure(f"{label}: left_bits mismatch")
  if require_int(cert.get("right_bits"), f"{label}.right_bits") != right.bit_length():
    raise CheckFailure(f"{label}: right_bits mismatch")
  return N0, Nlow


Interval = tuple[int, int]


def merge_intervals(intervals: list[Interval]) -> list[Interval]:
  if not intervals:
    return []
  ordered = sorted(intervals)
  merged: list[Interval] = []
  left, right = ordered[0]
  for next_left, next_right in ordered[1:]:
    if next_left <= right + 1:
      right = max(right, next_right)
    else:
      merged.append((left, right))
      left, right = next_left, next_right
  merged.append((left, right))
  return merged


def pairwise_intersections(first: list[Interval], second: list[Interval]) -> list[Interval]:
  """Intersect two sorted disjoint colour unions with two pointers."""
  result: list[Interval] = []
  first_index = 0
  second_index = 0
  while first_index < len(first) and second_index < len(second):
    first_left, first_right = first[first_index]
    second_left, second_right = second[second_index]
    left = max(first_left, second_left)
    right = min(first_right, second_right)
    if left <= right:
      result.append((left, right))
    if first_right <= second_right:
      first_index += 1
    if second_right <= first_right:
      second_index += 1
  return result


def expected_families(
  params: dict[str, int], lower: int, upper: int, M: int
) -> tuple[list[tuple[int, int, int, int, int, int]], int]:
  """Enumerate every p, every Q<upper, and retain only nonempty A ranges."""
  index = params["i"]
  expected: list[tuple[int, int, int, int, int, int]] = []
  empty_power_count = 0
  for prime in primes_below(index):
    existing = valuation(index, prime)
    raw_exponent = existing + 1
    while prime ** raw_exponent < upper:
      Q = prime ** raw_exponent
      A_min = max(1, ceil_div(lower - index + 1, Q))
      A_max = min(M // (prime ** existing), (upper - 1) // Q)
      if A_min <= A_max:
        expected.append(
          (prime, raw_exponent, raw_exponent - existing, Q, A_min, A_max)
        )
      else:
        empty_power_count += 1
      raw_exponent += 1
  return expected, empty_power_count


def parse_reported_families(
  families: list[Any], label: str
) -> list[tuple[int, int, int, int, int, int]]:
  actual: list[tuple[int, int, int, int, int, int]] = []
  for ordinal, value in enumerate(families):
    family = require_dict(value, f"{label}.families[{ordinal}]")
    actual.append(
      (
        require_int(family.get("p"), f"{label}.families[{ordinal}].p"),
        require_int(family.get("raw_exponent"), f"{label}.families[{ordinal}].raw_exponent"),
        require_int(family.get("binomial_exponent"), f"{label}.families[{ordinal}].binomial_exponent"),
        require_int(family.get("Q"), f"{label}.families[{ordinal}].Q"),
        require_int(family.get("A_min"), f"{label}.families[{ordinal}].A_min"),
        require_int(family.get("A_max"), f"{label}.families[{ordinal}].A_max"),
      )
    )
  if len(set(actual)) != len(actual):
    raise CheckFailure(f"{label}: duplicate family")
  return actual


def check_layer(
  layer: dict[str, Any], params: dict[str, int], K: int, layer_label: str
) -> tuple[int, list[Interval], int]:
  lower = require_int(layer.get("lower"), f"{layer_label}.lower")
  upper = require_int(layer.get("upper_exclusive"), f"{layer_label}.upper_exclusive")
  M = require_int(layer.get("M"), f"{layer_label}.M")
  if upper <= lower or M <= 0 or lower <= M:
    raise CheckFailure(f"{layer_label}: invalid layer or M boundary")
  exact_rhs = (2 * math.factorial(params["i"])) ** params["lambda"]
  exact_lhs = (
    K
    * M ** (params["lambda"] * (params["t"] - 1))
    * lower ** params["Delta"]
  )
  if exact_lhs < exact_rhs:
    raise CheckFailure(f"{layer_label}: exact M-CERT is false")
  if layer.get("exact_M_certificate") is not True:
    raise CheckFailure(f"{layer_label}: exact_M_certificate marker is not true")

  families = require_list(layer.get("families"), f"{layer_label}.families")
  actual = parse_reported_families(families, layer_label)
  expected, empty_power_count = expected_families(params, lower, upper, M)
  if sorted(actual) != sorted(expected):
    raise CheckFailure(
      f"{layer_label}: complete family mismatch; expected {len(expected)}, got {len(actual)}"
    )

  candidate_count = 0
  colour_intervals: dict[int, list[Interval]] = {}
  for prime, _raw, _binomial, Q, A_min, A_max in expected:
    candidate_count += A_max - A_min + 1
    colour_intervals.setdefault(prime, [])
    for A in range(A_min, A_max + 1):
      left = max(lower, A * Q)
      right = min(upper - 1, A * Q + params["i"] - 1)
      if left > right:
        raise CheckFailure(f"{layer_label}: reconstructed clipped interval is empty")
      colour_intervals[prime].append((left, right))

  if require_int(layer.get("interval_count"), f"{layer_label}.interval_count") != candidate_count:
    raise CheckFailure(f"{layer_label}: interval_count mismatch")
  if len(colour_intervals) < 2:
    raise CheckFailure(f"{layer_label}: fewer than two distinct prime colours")

  merged_by_colour = {
    prime: merge_intervals(intervals)
    for prime, intervals in colour_intervals.items()
  }
  pair_intersections: list[Interval] = []
  colours = sorted(merged_by_colour)
  for first_index, first_prime in enumerate(colours):
    for second_prime in colours[first_index + 1 :]:
      pair_intersections.extend(
        pairwise_intersections(
          merged_by_colour[first_prime], merged_by_colour[second_prime]
        )
      )
  if not pair_intersections:
    raise CheckFailure(f"{layer_label}: no different-prime intersection")
  return candidate_count, merge_intervals(pair_intersections), empty_power_count


def check_record(record: dict[str, Any], ordinal: int) -> dict[str, int]:
  label = f"records[{ordinal}]"
  params = parameters(record, label)
  K = K_value(params)
  N0, Nlow = check_height(record, params, K)
  if require_int(record.get("Nlow"), f"{label}.Nlow") != Nlow:
    raise CheckFailure(f"{label}: Nlow mismatch")
  if record.get("forced_distinct_prime_colours") != 2:
    raise CheckFailure(f"{label}: forced_distinct_prime_colours is not 2")
  if record.get("small_n_not_covered") != [2 * params["i"] + 2, Nlow - 1]:
    raise CheckFailure(f"{label}: small-n boundary summary mismatch")

  layers = require_list(
    record.get("layer_certificates_and_complete_families"),
    f"{label}.layer_certificates_and_complete_families",
  )
  if not layers:
    raise CheckFailure(f"{label}: empty layer list")
  previous_upper = Nlow
  total_candidates = 0
  total_empty_powers = 0
  all_intersections: list[Interval] = []
  for layer_ordinal, value in enumerate(layers):
    layer = require_dict(value, f"{label}.layer[{layer_ordinal}]")
    if require_int(layer.get("layer"), f"{label}.layer[{layer_ordinal}].layer") != layer_ordinal:
      raise CheckFailure(f"{label}: layer ordinal mismatch")
    lower = require_int(layer.get("lower"), f"{label}.layer[{layer_ordinal}].lower")
    if lower != previous_upper:
      raise CheckFailure(f"{label}: layer partition has a gap or overlap")
    candidates, intersections, empty_count = check_layer(
      layer, params, K, f"{label}.layer[{layer_ordinal}]"
    )
    total_candidates += candidates
    total_empty_powers += empty_count
    all_intersections.extend(intersections)
    previous_upper = require_int(
      layer.get("upper_exclusive"),
      f"{label}.layer[{layer_ordinal}].upper_exclusive",
    )
  if previous_upper != N0:
    raise CheckFailure(f"{label}: layer partition does not end at N0")

  reported = []
  for interval_ordinal, value in enumerate(
    require_list(record.get("remaining_compressed_intervals"), f"{label}.remaining_compressed_intervals")
  ):
    pair = require_list(value, f"{label}.remaining_compressed_intervals[{interval_ordinal}]")
    if len(pair) != 2:
      raise CheckFailure(f"{label}: malformed compressed interval")
    left = require_int(pair[0], f"{label}.remaining[{interval_ordinal}].left")
    right = require_int(pair[1], f"{label}.remaining[{interval_ordinal}].right")
    if left > right or left < Nlow or right >= N0:
      raise CheckFailure(f"{label}: reported interval outside [Nlow,N0)")
    reported.append((left, right))
  if reported != merge_intervals(reported):
    raise CheckFailure(f"{label}: reported intervals are not sorted and compressed")
  reconstructed = merge_intervals(all_intersections)
  if reported != reconstructed:
    raise CheckFailure(f"{label}: different-prime intersection union mismatch")
  remaining_count = sum(right - left + 1 for left, right in reported)
  if require_int(record.get("remaining_integer_count"), f"{label}.remaining_integer_count") != remaining_count:
    raise CheckFailure(f"{label}: remaining_integer_count mismatch")
  if not reported:
    raise CheckFailure(f"{label}: expected a nonempty different-prime cover")
  maximum = reported[-1][1]
  if require_int(record.get("maximum_remaining_n"), f"{label}.maximum_remaining_n") != maximum:
    raise CheckFailure(f"{label}: maximum_remaining_n mismatch")
  if require_int(record.get("interval_count_with_multiplicity"), f"{label}.interval_count_with_multiplicity") != total_candidates:
    raise CheckFailure(f"{label}: interval_count_with_multiplicity mismatch")
  return {
    "i": params["i"],
    "layers": len(layers),
    "families": sum(
      len(require_list(layer.get("families"), f"{label}.layer.families"))
      for layer in layers
    ),
    "candidate_intervals": total_candidates,
    "remaining_integers": remaining_count,
    "empty_powers": total_empty_powers,
  }


def check_result(result: dict[str, Any]) -> dict[str, int]:
  if require_list(result.get("indices"), "indices") != EXPECTED_INDICES:
    raise CheckFailure("indices do not equal {29} union [35,184]")
  if require_int(result.get("number_of_indices"), "number_of_indices") != len(EXPECTED_INDICES):
    raise CheckFailure("number_of_indices mismatch")
  records = require_list(result.get("records"), "records")
  if len(records) != len(EXPECTED_INDICES):
    raise CheckFailure("record count mismatch")
  summaries = []
  for ordinal, value in enumerate(records):
    record = require_dict(value, f"records[{ordinal}]")
    if require_int(record.get("i"), f"records[{ordinal}].i") != EXPECTED_INDICES[ordinal]:
      raise CheckFailure(f"records[{ordinal}]: index order mismatch")
    summaries.append(check_record(record, ordinal))

  total_candidates = sum(item["candidate_intervals"] for item in summaries)
  total_remaining = sum(item["remaining_integers"] for item in summaries)
  maximum = max(item["i"] for item in summaries)
  max_remaining = max(
    require_int(record.get("maximum_remaining_n"), f"records[{ordinal}].maximum_remaining_n")
    for ordinal, record in enumerate(records)
  )
  if require_int(result.get("total_intervals_with_multiplicity"), "total_intervals_with_multiplicity") != total_candidates:
    raise CheckFailure("total_intervals_with_multiplicity mismatch")
  if require_int(result.get("total_remaining_i_n_pairs"), "total_remaining_i_n_pairs") != total_remaining:
    raise CheckFailure("total_remaining_i_n_pairs mismatch")
  if require_int(result.get("maximum_remaining_n"), "maximum_remaining_n") != max_remaining:
    raise CheckFailure("maximum_remaining_n mismatch")
  if result.get("all_height_CERTs_exact") is not True:
    raise CheckFailure("all_height_CERTs_exact marker is not true")
  return {
    "indices": len(records),
    "layers": sum(item["layers"] for item in summaries),
    "families": sum(item["families"] for item in summaries),
    "candidate_intervals": total_candidates,
    "remaining_integers": total_remaining,
    "maximum_remaining_n": max_remaining,
    "records_max_index": maximum,
  }


def assert_tamper_rejected(original: dict[str, Any]) -> tuple[str, str]:
  coverage_tamper = copy.deepcopy(original)
  first = coverage_tamper["records"][0]["remaining_compressed_intervals"][0]
  first[0] = str(require_int(first[0], "tamper.left") + 1)
  try:
    check_result(coverage_tamper)
  except CheckFailure as error:
    coverage_reason = str(error)
  else:
    raise CheckFailure("tampered coverage field was accepted")

  family_tamper = copy.deepcopy(original)
  family_tamper["records"][0]["layer_certificates_and_complete_families"][0]["families"].pop()
  try:
    check_result(family_tamper)
  except CheckFailure as error:
    family_reason = str(error)
  else:
    raise CheckFailure("deleted nonempty family was accepted")
  return coverage_reason, family_reason


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--input", type=Path, required=True)
  parser.add_argument("--tamper-test", action="store_true")
  args = parser.parse_args()
  try:
    result = json.loads(args.input.read_text(encoding="utf-8"))
    result = require_dict(result, "top-level")
    summary = check_result(result)
    tamper = None
    if args.tamper_test:
      coverage_reason, family_reason = assert_tamper_rejected(result)
      tamper = {
        "coverage_field": coverage_reason,
        "deleted_nonempty_family": family_reason,
      }
    print(
      "PASS independent two-colour cover check: "
      f"indices={summary['indices']} layers={summary['layers']} "
      f"families={summary['families']} candidate_intervals={summary['candidate_intervals']} "
      f"remaining_integers={summary['remaining_integers']} "
      f"maximum_remaining_n={summary['maximum_remaining_n']}"
    )
    if tamper is not None:
      print(
        "PASS tamper rejection: "
        f"coverage_field={tamper['coverage_field']}; "
        f"deleted_nonempty_family={tamper['deleted_nonempty_family']}"
      )
    return 0
  except (CheckFailure, OSError, json.JSONDecodeError) as error:
    print(f"FAIL independent two-colour cover check: {error}")
    return 1


if __name__ == "__main__":
  raise SystemExit(main())
