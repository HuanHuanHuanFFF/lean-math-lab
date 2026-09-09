#!/usr/bin/env python3
"""Generate finite-cover Lean data chunks from the three checked JSON files.

This generator performs data extraction only. It does not enumerate n or j,
recompute cover predicates, or run Lean. Kernel-side completeness remains in
FiniteCover.finiteCoverRowCheck.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


EXPECTED_INDICES = [29, *range(35, 185)]
CHUNK_NAMES = [f"Coverage{index:02d}" for index in range(8)]


def sha256_file(path: Path) -> str:
  digest = hashlib.sha256()
  with path.open("rb") as stream:
    for block in iter(lambda: stream.read(1024 * 1024), b""):
      digest.update(block)
  return digest.hexdigest()


def as_int(value: Any, label: str) -> int:
  if isinstance(value, bool):
    raise ValueError(f"{label}: boolean is not an integer")
  if isinstance(value, int):
    return value
  if isinstance(value, str) and value.isdecimal():
    return int(value)
  raise ValueError(f"{label}: expected decimal integer, got {value!r}")


def load_json(path: Path) -> dict[str, Any]:
  value = json.loads(path.read_text(encoding="utf-8"))
  if not isinstance(value, dict):
    raise ValueError(f"{path}: top-level JSON is not an object")
  return value


def extract_rows(cover: dict[str, Any], topprime: dict[str, Any], actual: dict[str, Any]) -> list[dict[str, Any]]:
  cover_records = {as_int(record["i"], "cover.i"): record for record in cover["records"]}
  top_records = {as_int(record["i"], "topprime.i"): record for record in topprime["records"]}
  actual_by_i: dict[int, list[dict[str, Any]]] = {index: [] for index in EXPECTED_INDICES}
  for record in actual["records"]:
    index = as_int(record["i"], "actual-v.i")
    actual_by_i.setdefault(index, []).append(record)
  rows: list[dict[str, Any]] = []
  for index in EXPECTED_INDICES:
    cover_record = cover_records[index]
    top_record = top_records[index]
    height = {
      "i": index,
      "r": as_int(cover_record["r"], f"cover {index}.r"),
      "s": as_int(cover_record["s"], f"cover {index}.s"),
      "n0Power10": as_int(cover_record["height_certificate"]["N0_power10"], f"cover {index}.N0_power10"),
    }
    goods: list[dict[str, Any]] = []
    for ordinal, segment in enumerate(top_record["prime_exclusion_intervals"]):
      goods.append(
        {
          "lower": as_int(segment["lower"], f"topprime {index} lower {ordinal}"),
          "upper": as_int(segment["upper"], f"topprime {index} upper {ordinal}"),
          "witness_kind": "topPrime",
          "witness": as_int(segment["prime"], f"topprime {index} prime {ordinal}"),
        }
      )
    for ordinal, record in enumerate(actual_by_i.get(index, [])):
      n = as_int(record["n"], f"actual-v {index} n {ordinal}")
      goods.append(
        {
          "lower": n,
          "upper": n,
          "witness_kind": "largeDivisor",
          "witness": as_int(record["V"], f"actual-v {index} V {ordinal}"),
        }
      )
    goods.sort(key=lambda item: (item["lower"], item["upper"], item["witness_kind"], item["witness"]))
    layers = [
      {
        "lower": as_int(layer["lower"], f"cover {index} layer lower"),
        "upper": as_int(layer["upper_exclusive"], f"cover {index} layer upper_exclusive"),
        "M": as_int(layer["M"], f"cover {index} layer M"),
      }
      for layer in cover_record["layer_certificates_and_complete_families"]
    ]
    rows.append({"height": height, "goods": goods, "layers": layers})
  return rows


def witness_literal(kind: str, value: int) -> str:
  if kind == "topPrime":
    return f"RowWitness.topPrime {value}"
  if kind == "largeDivisor":
    return f"RowWitness.largeDivisor {value}"
  raise ValueError(f"unknown witness kind: {kind}")


def row_literal(row: dict[str, Any]) -> str:
  height = row["height"]
  lines = [
    "{",
    "  height := {",
    f"    i := {height['i']}, r := {height['r']}, s := {height['s']},",
    f"    n0Power10 := {height['n0Power10']}",
    "  },",
    "  goods := [",
  ]
  for ordinal, good in enumerate(row["goods"]):
    comma = "," if ordinal + 1 < len(row["goods"]) else ""
    lines.extend(
      [
        "    {",
        f"      lower := {good['lower']}, upper := {good['upper']},",
        f"      witness := {witness_literal(good['witness_kind'], good['witness'])}",
        f"    }}{comma}",
      ]
    )
  lines.extend(["  ],", "  layers := ["])
  for ordinal, layer in enumerate(row["layers"]):
    comma = "," if ordinal + 1 < len(row["layers"]) else ""
    lines.extend(
      [
        "    {",
        f"      lower := {layer['lower']}, upper := {layer['upper']}, M := {layer['M']}",
        f"    }}{comma}",
      ]
    )
  lines.extend(["  ]", "}"])
  return "\n".join(lines)


def chunk_source(name: str, rows: list[dict[str, Any]]) -> str:
  lines = [
    "import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover",
    "",
    "set_option autoImplicit false",
    "set_option relaxedAutoImplicit false",
    "set_option maxRecDepth 65536",
    "set_option maxHeartbeats 0",
    "set_option exponentiation.threshold 1000000",
    "",
    "namespace B699LowIndex",
    "",
    f"def coverRows{name[-2:]} : List FiniteCoverRow := [",
  ]
  for ordinal, row in enumerate(rows):
    comma = "," if ordinal + 1 < len(rows) else ""
    value = row_literal(row).splitlines()
    value[-1] += comma
    lines.extend("  " + line for line in value)
  lines.extend(
    [
      "]",
      "",
      f"theorem coverRows{name[-2:]}_checked :",
      f"    coverRows{name[-2:]}.all finiteCoverRowCheck = true := by",
      "  decide",
      "",
      f"#print axioms B699LowIndex.coverRows{name[-2:]}_checked",
      "",
      "end B699LowIndex",
      "",
    ]
  )
  return "\n".join(lines)


def complete_source() -> str:
  imports = [
    f"import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage{index:02d}"
    for index in range(8)
  ]
  names = [f"coverRows{index:02d}" for index in range(8)]
  checks = [f"coverRows{index:02d}_checked" for index in range(8)]
  expected = ", ".join(str(index) for index in EXPECTED_INDICES)
  lines = imports + [
    "",
    "set_option autoImplicit false",
    "set_option relaxedAutoImplicit false",
    "set_option maxRecDepth 65536",
    "set_option maxHeartbeats 0",
    "set_option exponentiation.threshold 1000000",
    "",
    "namespace B699LowIndex",
    "",
    "def allFiniteCoverRows : List FiniteCoverRow :=",
    "  " + " ++ ".join(names),
    "",
    "theorem allFiniteCoverRows_checked :",
    "    allFiniteCoverRows.all finiteCoverRowCheck = true := by",
    "  simp only [allFiniteCoverRows, List.all_append,",
  ]
  lines.extend("    " + check + "," for check in checks)
  lines.extend(
    [
      "    Bool.true_and]",
      "",
      "theorem allFiniteCoverRows_length : allFiniteCoverRows.length = 151 := by",
      "  decide",
      "",
      "theorem allFiniteCoverRows_indices :",
      f"    allFiniteCoverRows.map (fun row => row.height.i) = [{expected}] := by",
      "  decide",
      "",
      "theorem common_of_low_index_finite_cover {n i j : ℕ}",
      "    (hiIndex : i = 29 ∨ 35 ≤ i ∧ i ≤ 184)",
      "    (hij : i < j) (hjn : j ≤ n / 2) :",
      "    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧",
      "      p ∣ Nat.gcd (n.choose i) (n.choose j) := by",
      "  have hilow : 29 ≤ i := by omega",
      "  have hiupper : i ≤ 184 := by omega",
      "  have hmemIndices : i ∈ allFiniteCoverRows.map (fun row => row.height.i) := by",
      "    rw [allFiniteCoverRows_indices]",
      "    interval_cases i <;> simp_all",
      "  obtain ⟨row, hrow, hrowIndex⟩ := List.mem_map.mp hmemIndices",
      "  have hall := List.all_eq_true.mp allFiniteCoverRows_checked",
      "  have hcheck := hall row hrow",
      "  exact common_of_finite_cover_row_checked hcheck hij hjn",
      "",
      "#print axioms B699LowIndex.allFiniteCoverRows_checked",
      "#print axioms B699LowIndex.allFiniteCoverRows_indices",
      "#print axioms B699LowIndex.common_of_low_index_finite_cover",
      "",
      "end B699LowIndex",
      "",
    ]
  )
  return "\n".join(lines)


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--cover", type=Path, default=Path("notes/heights/two-colour-cover.json"))
  parser.add_argument("--topprime", type=Path, default=Path("notes/heights/topprime-residual.json"))
  parser.add_argument("--actual-v", type=Path, default=Path("notes/heights/actual-v-filter.json"))
  parser.add_argument("--output-root", type=Path, default=Path("experiments/lean-cover-data"))
  parser.add_argument("--coverage-root", type=Path, default=Path("lean/coverage"))
  parser.add_argument("--complete-output", type=Path, default=Path("lean/LowIndexComplete.lean"))
  args = parser.parse_args()
  cover_path = args.cover.resolve()
  topprime_path = args.topprime.resolve()
  actual_path = args.actual_v.resolve()
  cover = load_json(cover_path)
  topprime = load_json(topprime_path)
  actual = load_json(actual_path)
  rows = extract_rows(cover, topprime, actual)
  if [row["height"]["i"] for row in rows] != EXPECTED_INDICES:
    raise ValueError("extracted index sequence is not {29} union [35,184]")
  args.output_root.mkdir(parents=True, exist_ok=True)
  args.coverage_root.mkdir(parents=True, exist_ok=True)
  args.complete_output.parent.mkdir(parents=True, exist_ok=True)
  chunk_counts: list[int] = []
  output_files: list[dict[str, Any]] = []
  start = 0
  for ordinal, name in enumerate(CHUNK_NAMES):
    count = 19 if ordinal < 7 else len(rows) - start
    chunk = rows[start : start + count]
    start += count
    path = args.coverage_root / f"{name}.lean"
    payload = chunk_source(name, chunk).encode("utf-8")
    path.write_bytes(payload)
    chunk_counts.append(len(chunk))
    output_files.append({"path": str(path).replace("\\", "/"), "sha256": hashlib.sha256(payload).hexdigest(), "rows": len(chunk)})
  complete_payload = complete_source().encode("utf-8")
  args.complete_output.write_bytes(complete_payload)
  output_files.append({"path": str(args.complete_output).replace("\\", "/"), "sha256": hashlib.sha256(complete_payload).hexdigest(), "rows": len(rows)})
  goods_count = sum(len(row["goods"]) for row in rows)
  layers_count = sum(len(row["layers"]) for row in rows)
  manifest = {
    "schema_version": 1,
    "generated_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
    "generator": {"path": "experiments/lean-cover-data/generate_cover_data.py", "sha256": sha256_file(Path(__file__).resolve())},
    "inputs": {
      "two_colour_cover": {"path": "notes/heights/two-colour-cover.json", "sha256": sha256_file(cover_path)},
      "topprime_residual": {"path": "notes/heights/topprime-residual.json", "sha256": sha256_file(topprime_path)},
      "actual_v_filter": {"path": "notes/heights/actual-v-filter.json", "sha256": sha256_file(actual_path)},
    },
    "scope": {"indices": "{29} union [35,184]", "rows": len(rows), "chunk_counts": chunk_counts, "goods": goods_count, "layers": layers_count, "lean_run": False, "n_j_recomputation": False},
    "outputs": output_files,
  }
  manifest_path = args.output_root / "manifest.json"
  manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
  print(f"generated finite-cover data: rows={len(rows)} chunks={chunk_counts} goods={goods_count} layers={layers_count} manifest={manifest_path}")
  return 0


if __name__ == "__main__":
  raise SystemExit(main())
