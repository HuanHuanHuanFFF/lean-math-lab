#!/usr/bin/env python3
"""Run the independent three-stage finite-cover verification.

Stage one is delegated to the local ``check.py`` implementation, which
reconstructs the two-colour cover. Stage two independently checks the complete
small-n input, every explicit p>i deletion interval, and the exact residual
partition. Stage three computes ``comb(n, i)`` and divides out every p<i
directly before checking the exact weighted-size contradiction.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
from pathlib import Path
from typing import Any

import check as base


def parse_compressed(values: Any, label: str) -> list[base.Interval]:
  raw = base.require_list(values, label)
  result: list[base.Interval] = []
  for ordinal, value in enumerate(raw):
    pair = base.require_list(value, f"{label}[{ordinal}]")
    if len(pair) != 2:
      raise base.CheckFailure(f"{label}[{ordinal}]: interval must have two endpoints")
    left = base.require_int(pair[0], f"{label}[{ordinal}].left")
    right = base.require_int(pair[1], f"{label}[{ordinal}].right")
    if left > right:
      raise base.CheckFailure(f"{label}[{ordinal}]: reversed interval")
    result.append((left, right))
  if result != base.merge_intervals(result):
    raise base.CheckFailure(f"{label}: intervals are not sorted and compressed")
  return result


def interval_length(interval: base.Interval) -> int:
  return interval[1] - interval[0] + 1


def total_length(intervals: list[base.Interval]) -> int:
  return sum(interval_length(interval) for interval in intervals)


def interval_subset(interval: base.Interval, containers: list[base.Interval]) -> bool:
  return any(left <= interval[0] and interval[1] <= right for left, right in containers)


def subtract_intervals(
  source: list[base.Interval], cuts: list[base.Interval]
) -> list[base.Interval]:
  result: list[base.Interval] = []
  for source_left, source_right in source:
    cursor = source_left
    for cut_left, cut_right in cuts:
      if cut_right < cursor:
        continue
      if cut_left > source_right:
        break
      if cursor < cut_left:
        result.append((cursor, min(source_right, cut_left - 1)))
      cursor = max(cursor, cut_right + 1)
      if cursor > source_right:
        break
    if cursor <= source_right:
      result.append((cursor, source_right))
  return base.merge_intervals(result)


def interval_intersection_count(
  intervals: list[base.Interval], lower: int, upper: int
) -> int:
  if lower > upper:
    return 0
  return sum(
    max(0, min(right, upper) - max(left, lower) + 1)
    for left, right in intervals
  )


def check_topprime(
  cover: dict[str, Any], topprime: dict[str, Any]
) -> tuple[set[tuple[int, int]], dict[str, int]]:
  expected_indices = base.EXPECTED_INDICES
  if topprime.get("source_number_of_indices") != len(expected_indices):
    raise base.CheckFailure("topprime source_number_of_indices mismatch")
  if topprime.get("includes_all_small_legal_n") is not True:
    raise base.CheckFailure("topprime includes_all_small_legal_n marker is false")
  records = base.require_list(topprime.get("records"), "topprime.records")
  if len(records) != len(expected_indices):
    raise base.CheckFailure("topprime record count mismatch")
  cover_records = {
    base.require_int(record.get("i"), "cover.i"): record
    for record in base.require_list(cover.get("records"), "cover.records")
  }
  top_by_i: dict[int, dict[str, Any]] = {}
  all_pairs: set[tuple[int, int]] = set()
  total_input = 0
  total_excluded = 0
  total_remaining = 0
  total_small_remaining = 0
  distinct_primes: set[int] = set()

  for ordinal, value in enumerate(records):
    record = base.require_dict(value, f"topprime.records[{ordinal}]")
    index = base.require_int(record.get("i"), f"topprime.records[{ordinal}].i")
    if index != expected_indices[ordinal] or index in top_by_i:
      raise base.CheckFailure("topprime index order/uniqueness mismatch")
    top_by_i[index] = record
    cover_record = cover_records.get(index)
    if cover_record is None:
      raise base.CheckFailure(f"topprime i={index}: missing cover record")
    Nlow = index * (index - 1)
    if base.require_int(record.get("Nlow"), f"topprime i={index}.Nlow") != Nlow:
      raise base.CheckFailure(f"topprime i={index}: Nlow mismatch")
    cover_intervals = parse_compressed(
      cover_record.get("remaining_compressed_intervals"),
      f"cover i={index}.remaining_compressed_intervals",
    )
    input_seed = [(2 * index + 2, Nlow - 1)] + cover_intervals
    expected_input = base.merge_intervals(input_seed)
    input_intervals = parse_compressed(
      record.get("input_intervals"), f"topprime i={index}.input_intervals"
    )
    if input_intervals != expected_input:
      raise base.CheckFailure(f"topprime i={index}: input intervals differ from cover plus small-n boundary")

    exclusions: list[base.Interval] = []
    previous_right: int | None = None
    for exclusion_ordinal, value in enumerate(
      base.require_list(record.get("prime_exclusion_intervals"), f"topprime i={index}.prime_exclusion_intervals")
    ):
      exclusion = base.require_dict(value, f"topprime i={index}.exclusion[{exclusion_ordinal}]")
      lower = base.require_int(exclusion.get("lower"), f"topprime i={index}.exclusion[{exclusion_ordinal}].lower")
      upper = base.require_int(exclusion.get("upper"), f"topprime i={index}.exclusion[{exclusion_ordinal}].upper")
      prime = base.require_int(exclusion.get("prime"), f"topprime i={index}.exclusion[{exclusion_ordinal}].prime")
      if not base.trial_prime(prime):
        raise base.CheckFailure(f"topprime i={index}: exclusion prime {prime} is composite")
      if not (prime > index and prime <= lower <= upper < prime + index):
        raise base.CheckFailure(f"topprime i={index}: invalid p>i deletion geometry")
      if not interval_subset((lower, upper), input_intervals):
        raise base.CheckFailure(f"topprime i={index}: exclusion lies outside input intervals")
      if previous_right is not None and lower <= previous_right:
        raise base.CheckFailure(f"topprime i={index}: overlapping deletion intervals")
      previous_right = upper
      exclusions.append((lower, upper))
      distinct_primes.add(prime)
    expected_remaining = subtract_intervals(input_intervals, exclusions)
    reported_remaining = parse_compressed(
      record.get("remaining_intervals"), f"topprime i={index}.remaining_intervals"
    )
    if reported_remaining != expected_remaining:
      raise base.CheckFailure(f"topprime i={index}: deletion plus residual does not partition input")
    input_count = total_length(input_intervals)
    excluded_count = total_length(base.merge_intervals(exclusions))
    remaining_count = total_length(reported_remaining)
    if base.require_int(record.get("input_integer_count"), f"topprime i={index}.input_integer_count") != input_count:
      raise base.CheckFailure(f"topprime i={index}: input count mismatch")
    if base.require_int(record.get("excluded_integer_count"), f"topprime i={index}.excluded_integer_count") != excluded_count:
      raise base.CheckFailure(f"topprime i={index}: excluded count mismatch")
    if base.require_int(record.get("remaining_integer_count"), f"topprime i={index}.remaining_integer_count") != remaining_count:
      raise base.CheckFailure(f"topprime i={index}: remaining count mismatch")
    small_remaining = interval_intersection_count(
      reported_remaining, 2 * index + 2, Nlow - 1
    )
    if base.require_int(record.get("small_n_remaining_count"), f"topprime i={index}.small_n_remaining_count") != small_remaining:
      raise base.CheckFailure(f"topprime i={index}: small-n remaining count mismatch")
    maximum = reported_remaining[-1][1] if reported_remaining else None
    if record.get("maximum_remaining_n") != maximum:
      raise base.CheckFailure(f"topprime i={index}: maximum remaining n mismatch")
    for left, right in reported_remaining:
      for n in range(left, right + 1):
        pair = (index, n)
        if pair in all_pairs:
          raise base.CheckFailure("duplicate topprime residual pair")
        all_pairs.add(pair)
    total_input += input_count
    total_excluded += excluded_count
    total_remaining += remaining_count
    total_small_remaining += small_remaining

  if topprime.get("distinct_prime_witnesses") != sorted(distinct_primes):
    raise base.CheckFailure("topprime distinct_prime_witnesses mismatch")
  if base.require_int(topprime.get("total_input_i_n_pairs"), "topprime.total_input_i_n_pairs") != total_input:
    raise base.CheckFailure("topprime total input count mismatch")
  if base.require_int(topprime.get("total_excluded_i_n_pairs"), "topprime.total_excluded_i_n_pairs") != total_excluded:
    raise base.CheckFailure("topprime total excluded count mismatch")
  if base.require_int(topprime.get("total_remaining_i_n_pairs"), "topprime.total_remaining_i_n_pairs") != total_remaining:
    raise base.CheckFailure("topprime total remaining count mismatch")
  if base.require_int(topprime.get("total_small_n_remaining_pairs"), "topprime.total_small_n_remaining_pairs") != total_small_remaining:
    raise base.CheckFailure("topprime total small-n remaining count mismatch")
  if topprime.get("maximum_remaining_n") != max(
    record["maximum_remaining_n"]
    for record in records
    if record.get("maximum_remaining_n") is not None
  ):
    raise base.CheckFailure("topprime global maximum_remaining_n mismatch")
  if base.require_int(topprime.get("sieve_limit"), "topprime.sieve_limit") < max(distinct_primes):
    raise base.CheckFailure("topprime sieve_limit is below a witness prime")
  return all_pairs, {
    "records": len(records),
    "input_pairs": total_input,
    "excluded_pairs": total_excluded,
    "remaining_pairs": total_remaining,
    "small_remaining_pairs": total_small_remaining,
    "distinct_primes": len(distinct_primes),
  }


def unsigned_sha256(value: int) -> str:
  width = max(1, (value.bit_length() + 7) // 8)
  return hashlib.sha256(value.to_bytes(width, "big")).hexdigest()


def check_integer_evidence(
  evidence: Any, value: int, label: str
) -> None:
  data = base.require_dict(evidence, label)
  if base.require_int(data.get("bits"), f"{label}.bits") != value.bit_length():
    raise base.CheckFailure(f"{label}: bit length mismatch")
  if data.get("sha256_unsigned_big_endian") != unsigned_sha256(value):
    raise base.CheckFailure(f"{label}: unsigned big-endian hash mismatch")


def check_weight_parameters(
  weight_parameters: dict[str, Any], params: dict[str, int], K: int, label: str
) -> None:
  data = base.require_dict(weight_parameters.get(str(params["i"])), label)
  for field in ("i", "r", "s", "lambda", "E", "L"):
    if base.require_int(data.get(field), f"{label}.{field}") != params[field if field != "lambda" else "lambda"]:
      raise base.CheckFailure(f"{label}: {field} mismatch")
  if data.get("K_formula") != "2^(s*(s+1)) * B_s^2 * B_L; B_h=product_{v=1}^h v!":
    raise base.CheckFailure(f"{label}: K formula marker mismatch")
  B_s = base.factorial_product(params["s"])
  B_L = base.factorial_product(params["L"])
  check_integer_evidence(data.get("B_s"), B_s, f"{label}.B_s")
  check_integer_evidence(data.get("B_L"), B_L, f"{label}.B_L")
  check_integer_evidence(data.get("K"), K, f"{label}.K")


def check_actual_v(
  cover: dict[str, Any],
  cover_path: Path,
  topprime_pairs: set[tuple[int, int]],
  actual: dict[str, Any],
) -> dict[str, int]:
  if actual.get("all_checked_pairs_excluded") is not True:
    raise base.CheckFailure("actual-v all_checked_pairs_excluded marker is false")
  if actual.get("remaining_i_n_pairs") != []:
    raise base.CheckFailure("actual-v reports remaining pairs")
  records = base.require_list(actual.get("records"), "actual-v.records")
  if base.require_int(actual.get("checked_i_n_pairs"), "actual-v.checked_i_n_pairs") != len(topprime_pairs):
    raise base.CheckFailure("actual-v checked pair count mismatch")
  if base.require_int(actual.get("excluded_i_n_pairs"), "actual-v.excluded_i_n_pairs") != len(topprime_pairs):
    raise base.CheckFailure("actual-v excluded pair count mismatch")
  if len(records) != len(topprime_pairs):
    raise base.CheckFailure("actual-v record count mismatch")
  cover_records = {
    base.require_int(record.get("i"), "cover.i"): record
    for record in base.require_list(cover.get("records"), "cover.records")
  }
  weights = base.require_dict(actual.get("weight_parameters"), "actual-v.weight_parameters")
  expected_weight_keys = {str(i) for i, _ in topprime_pairs}
  if set(weights) != expected_weight_keys:
    raise base.CheckFailure("actual-v weight parameter key set mismatch")
  seen: set[tuple[int, int]] = set()
  for ordinal, value in enumerate(records):
    record = base.require_dict(value, f"actual-v.records[{ordinal}]")
    index = base.require_int(record.get("i"), f"actual-v.records[{ordinal}].i")
    n = base.require_int(record.get("n"), f"actual-v.records[{ordinal}].n")
    pair = (index, n)
    if pair not in topprime_pairs or pair in seen:
      raise base.CheckFailure(f"actual-v record {pair} is not exactly a topprime residual pair")
    seen.add(pair)
    C = base.require_int(record.get("C"), f"actual-v {pair}.C")
    expected_C = math.comb(n, index)
    if C != expected_C:
      raise base.CheckFailure(f"actual-v {pair}: C(n,i) mismatch")
    remaining = C
    expected_exponents = []
    U = 1
    for prime in base.primes_below(index):
      exponent = 0
      while remaining % prime == 0:
        remaining //= prime
        exponent += 1
      U *= prime ** exponent
      expected_exponents.append({"p": prime, "e": exponent})
    V = remaining
    if base.require_int(record.get("U"), f"actual-v {pair}.U") != U:
      raise base.CheckFailure(f"actual-v {pair}: U mismatch")
    if base.require_int(record.get("V"), f"actual-v {pair}.V") != V:
      raise base.CheckFailure(f"actual-v {pair}: V mismatch")
    if record.get("small_prime_exponents_legendre") != expected_exponents:
      raise base.CheckFailure(f"actual-v {pair}: small-prime exponent list mismatch")
    check_integer_evidence(record.get("C_evidence"), C, f"actual-v {pair}.C_evidence")
    check_integer_evidence(record.get("V_evidence"), V, f"actual-v {pair}.V_evidence")
    cover_record = cover_records.get(index)
    if cover_record is None:
      raise base.CheckFailure(f"actual-v {pair}: missing cover record")
    params = base.parameters(cover_record, f"cover i={index}")
    K = base.K_value(params)
    check_weight_parameters(weights, params, K, f"actual-v weights i={index}")
    KV = K * V ** params["lambda"]
    nE = n ** params["E"]
    check_integer_evidence(record.get("K_V_power"), KV, f"actual-v {pair}.K_V_power")
    check_integer_evidence(record.get("n_E"), nE, f"actual-v {pair}.n_E")
    if record.get("strict_size_contradiction") is not True or not KV > nE:
      raise base.CheckFailure(f"actual-v {pair}: strict size comparison is false")
  if seen != topprime_pairs:
    raise base.CheckFailure("actual-v pair set is incomplete")
  expected_cover_hash = hashlib.sha256(cover_path.read_bytes()).hexdigest()
  if actual.get("cover_sha256") != expected_cover_hash:
    raise base.CheckFailure("actual-v cover_sha256 does not match the checked cover file")
  return {
    "records": len(records),
    "pairs": len(seen),
    "strict_comparisons": len(seen),
  }


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--cover", type=Path, required=True)
  parser.add_argument("--topprime", type=Path, required=True)
  parser.add_argument("--actual-v", type=Path, required=True)
  parser.add_argument("--tamper-test", action="store_true")
  args = parser.parse_args()
  try:
    cover = base.require_dict(
      json.loads(args.cover.read_text(encoding="utf-8")), "cover"
    )
    cover_summary = base.check_result(cover)
    if args.tamper_test:
      coverage_reason, family_reason = base.assert_tamper_rejected(cover)
      print(
        "PASS tamper rejection: "
        f"coverage_field={coverage_reason}; deleted_nonempty_family={family_reason}"
      )
    topprime = base.require_dict(
      json.loads(args.topprime.read_text(encoding="utf-8")), "topprime"
    )
    top_pairs, top_summary = check_topprime(cover, topprime)
    actual = base.require_dict(
      json.loads(args.actual_v.read_text(encoding="utf-8")), "actual-v"
    )
    actual_summary = check_actual_v(cover, args.cover, top_pairs, actual)
    print(
      "PASS independent three-stage finite cover check: "
      f"cover_indices={cover_summary['indices']} "
      f"cover_layers={cover_summary['layers']} "
      f"cover_candidates={cover_summary['candidate_intervals']} "
      f"cover_remaining={cover_summary['remaining_integers']} "
      f"topprime_input={top_summary['input_pairs']} "
      f"topprime_excluded={top_summary['excluded_pairs']} "
      f"topprime_remaining={top_summary['remaining_pairs']} "
      f"actual_v_pairs={actual_summary['pairs']}"
    )
    return 0
  except (base.CheckFailure, OSError, json.JSONDecodeError) as error:
    print(f"FAIL independent three-stage finite cover check: {error}")
    return 1


if __name__ == "__main__":
  raise SystemExit(main())
