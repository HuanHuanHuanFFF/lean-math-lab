#!/usr/bin/env python3
"""Independent scalar-parameter audit for the 151 cover records.

This is a subprocess target for ``replay.py``. It performs its own
trial-division prime count and exact parameter equations; it does not import
the cover checker or the generator.
"""

from __future__ import annotations

import argparse
import json
import math
from pathlib import Path
from typing import Any


EXPECTED_INDICES = [29, *range(35, 185)]


def is_prime(value: int) -> bool:
  if value < 2:
    return False
  for divisor in range(2, math.isqrt(value) + 1):
    if value % divisor == 0:
      return False
  return True


def as_int(value: Any) -> int | None:
  if isinstance(value, bool):
    return None
  if isinstance(value, int):
    return value
  return None


def audit(data: dict[str, Any]) -> dict[str, Any]:
  records = data.get("records")
  if not isinstance(records, list):
    return {"records": 0, "exact_index_set": False, "invalid_parameter_count": 1, "invalid_indices": ["records-not-list"]}
  indices = [as_int(record.get("i")) if isinstance(record, dict) else None for record in records]
  exact_index_set = indices == EXPECTED_INDICES
  invalid: list[Any] = []
  for ordinal, record in enumerate(records):
    if not isinstance(record, dict):
      invalid.append(ordinal)
      continue
    index = as_int(record.get("i"))
    r = as_int(record.get("r"))
    s = as_int(record.get("s"))
    t = as_int(record.get("t"))
    lam = as_int(record.get("lambda"))
    E = as_int(record.get("E"))
    delta = as_int(record.get("Delta"))
    if None in (index, r, s, t, lam, E, delta) or index is None or r is None or s is None or t is None or lam is None or E is None or delta is None:
      invalid.append(index if index is not None else ordinal)
      continue
    L = index - r - 1
    expected_t = sum(is_prime(value) for value in range(2, index))
    expected_E = s * (s + 1) + L * (L + 1) // 2
    expected_lam = 2 * s - r
    expected_delta = expected_lam * (index - expected_t) - expected_E
    valid = (
      index >= 2
      and t >= 2
      and 0 <= r < index
      and 1 <= s < index
      and t == expected_t
      and lam == expected_lam
      and lam > 0
      and E == expected_E
      and delta == expected_delta
      and delta > 0
    )
    if not valid:
      invalid.append(index)
  return {
    "records": len(records),
    "exact_index_set": exact_index_set,
    "invalid_parameter_count": len(invalid),
    "invalid_indices": invalid,
    "min_i": min(indices) if indices and all(value is not None for value in indices) else None,
    "max_i": max(indices) if indices and all(value is not None for value in indices) else None,
    "min_s": min(as_int(record.get("s")) for record in records if isinstance(record, dict) and as_int(record.get("s")) is not None) if records else None,
    "max_s": max(as_int(record.get("s")) for record in records if isinstance(record, dict) and as_int(record.get("s")) is not None) if records else None,
    "all_checks_pass": exact_index_set and not invalid,
  }


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--input", type=Path, required=True)
  args = parser.parse_args()
  try:
    data = json.loads(args.input.read_text(encoding="utf-8"))
    if not isinstance(data, dict):
      raise ValueError("top-level JSON is not an object")
    result = audit(data)
    print(json.dumps(result, ensure_ascii=False, sort_keys=True))
    return 0 if result["all_checks_pass"] else 1
  except (OSError, json.JSONDecodeError, ValueError) as error:
    print(json.dumps({"all_checks_pass": False, "error": str(error)}, ensure_ascii=False))
    return 1


if __name__ == "__main__":
  raise SystemExit(main())
