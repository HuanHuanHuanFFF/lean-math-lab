#!/usr/bin/env python3
"""Split finite-cover data into independently checkable Lean row modules."""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


EXPECTED_INDICES = [29, *range(35, 185)]
OPTIONS = [
  "set_option maxRecDepth 65536",
  "set_option maxHeartbeats 0",
  "set_option exponentiation.threshold 1000000",
]


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
          "kind": "topPrime",
          "witness": as_int(segment["prime"], f"topprime {index} prime {ordinal}"),
        }
      )
    for ordinal, record in enumerate(actual_by_i.get(index, [])):
      n = as_int(record["n"], f"actual-v {index} n {ordinal}")
      goods.append(
        {
          "lower": n,
          "upper": n,
          "kind": "largeDivisor",
          "witness": as_int(record["V"], f"actual-v {index} V {ordinal}"),
        }
      )
    goods.sort(key=lambda value: (value["lower"], value["upper"], value["kind"], value["witness"]))
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


def height_literal(height: dict[str, int]) -> str:
  return (
    "{ i := "
    f"{height['i']}, r := {height['r']}, s := {height['s']}, "
    f"n0Power10 := {height['n0Power10']} }}"
  )


def witness_literal(good: dict[str, Any]) -> str:
  if good["kind"] == "topPrime":
    return f"RowWitness.topPrime {good['witness']}"
  return f"RowWitness.largeDivisor {good['witness']}"


def good_literal(good: dict[str, Any]) -> str:
  return "{ lower := %d, upper := %d, witness := %s }" % (
    good["lower"], good["upper"], witness_literal(good)
  )


def layer_literal(layer: dict[str, int]) -> str:
  return "{ lower := %d, upper := %d, M := %d }" % (
    layer["lower"], layer["upper"], layer["M"]
  )


def row_file_source(row: dict[str, Any]) -> str:
  index = row["height"]["i"]
  tag = f"{index:03d}"
  height = height_literal(row["height"])
  goods = row["goods"]
  layers = row["layers"]
  goods_list = ",\n".join("  " + good_literal(good) for good in goods)
  layers_list = ",\n".join("  " + layer_literal(layer) for layer in layers)
  lines = [
    "import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover",
    "",
    *OPTIONS,
    "",
    "namespace B699LowIndex",
    "",
    f"def row{tag}_height : HeightCertificateDatum := {height}",
    "",
    f"def row{tag}_goods : List GoodSegment := [",
    goods_list,
    "]",
    "",
    f"def row{tag}_layers : List CoverLayer := [",
    layers_list,
    "]",
    "",
    f"def row{tag} : FiniteCoverRow := {{",
    f"  height := row{tag}_height,",
    f"  goods := row{tag}_goods,",
    f"  layers := row{tag}_layers",
    "}",
    "",
    f"theorem row{tag}_registered :",
    f"    decide (row{tag}.height ∈ heightCertificateData) = true := by",
    "  decide +kernel",
    "",
    f"theorem row{tag}_goods_checked :",
    f"    row{tag}.goods.all (goodSegmentCheck row{tag}.height.i row{tag}.height.r row{tag}.height.s) = true := by",
    "  decide +kernel",
    "",
    f"theorem row{tag}_small_checked :",
    f"    coverCheck (2 * row{tag}.height.i + 2) (row{tag}.height.i * (row{tag}.height.i - 1) - 1)",
    f"      (row{tag}.goods.map goodSegmentBounds) = true := by",
    "  decide +kernel",
    "",
    f"theorem row{tag}_layerCover_checked :",
    f"    coverCheck (row{tag}.height.i * (row{tag}.height.i - 1)) (row{tag}.height.n0 - 1)",
    f"      (row{tag}.layers.map CoverLayer.bounds) = true := by",
    "  decide +kernel",
    "",
  ]
  layer_names: list[str] = []
  for ordinal, layer in enumerate(layers):
    layer_name = f"row{tag}_layer{ordinal:03d}_checked"
    layer_names.append(layer_name)
    lines.extend(
      [
        f"theorem {layer_name} :",
        f"    coverLayerCheck row{tag}.height row{tag}.goods {layer_literal(layer)} = true := by",
        "  decide +kernel",
        "",
      ]
    )
  lines.extend(
    [
      f"theorem row{tag}_layers_checked :",
      f"    row{tag}.layers.all (coverLayerCheck row{tag}.height row{tag}.goods) = true := by",
      "  change List.all [",
    ]
  )
  lines.extend("    " + layer_literal(layer) + "," for layer in layers[:-1])
  if layers:
    lines.append("    " + layer_literal(layers[-1]))
  lines.extend([f"  ] (coverLayerCheck row{tag}.height row{tag}.goods) = true", "  simp only [List.all_cons, List.all_nil,"])
  lines.extend("    " + name + "," for name in layer_names)
  lines.append("    Bool.true_and]")
  lines.extend(
    [
      "",
      f"theorem row{tag}_checked : finiteCoverRowCheck row{tag} = true := by",
      f"  simp only [finiteCoverRowCheck, row{tag}_registered, row{tag}_goods_checked,",
      f"    row{tag}_small_checked, row{tag}_layerCover_checked, row{tag}_layers_checked,",
      "    Bool.true_and]",
      "",
      f"#print axioms B699LowIndex.row{tag}_checked",
      "",
      "end B699LowIndex",
      "",
    ]
  )
  return "\n".join(lines)


def chunk_source(rows: list[dict[str, Any]], ordinal: int) -> str:
  tags = [f"{row['height']['i']:03d}" for row in rows]
  imports = [
    f"import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row{tag}"
    for tag in tags
  ]
  lines = imports + ["", *OPTIONS, "", "namespace B699LowIndex", "", f"def coverRows{ordinal:02d} : List FiniteCoverRow := ["]
  lines.extend("  row%s," % tag for tag in tags[:-1])
  if tags:
    lines.append("  row%s" % tags[-1])
  lines.extend(["]", "", f"theorem coverRows{ordinal:02d}_checked :", f"    coverRows{ordinal:02d}.all finiteCoverRowCheck = true := by", f"  simp only [coverRows{ordinal:02d}, List.all_cons, List.all_nil,"])
  lines.extend("    row%s_checked," % tag for tag in tags[:-1])
  if tags:
    lines.append("    row%s_checked," % tags[-1])
  lines.extend(["    Bool.true_and]", "", f"#print axioms B699LowIndex.coverRows{ordinal:02d}_checked", "", "end B699LowIndex", ""])
  return "\n".join(lines)


def complete_source() -> str:
  imports = [f"import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage{index:02d}" for index in range(8)]
  names = [f"coverRows{index:02d}" for index in range(8)]
  checks = [f"coverRows{index:02d}_checked" for index in range(8)]
  expected = ", ".join(str(index) for index in EXPECTED_INDICES)
  lines = imports + ["", *OPTIONS, "", "namespace B699LowIndex", "", "def allFiniteCoverRows : List FiniteCoverRow :=", "  " + " ++ ".join(names), "", "theorem allFiniteCoverRows_checked :", "    allFiniteCoverRows.all finiteCoverRowCheck = true := by", "  simp only [allFiniteCoverRows, List.all_append,"]
  lines.extend("    " + check + "," for check in checks)
  lines.extend(["    Bool.true_and]", "", "theorem allFiniteCoverRows_length : allFiniteCoverRows.length = 151 := by", "  decide +kernel", "", "theorem allFiniteCoverRows_indices :", f"    allFiniteCoverRows.map (fun row => row.height.i) = [{expected}] := by", "  decide +kernel", "", "theorem common_of_low_index_finite_cover {n i j : ℕ}", "    (hiIndex : i = 29 ∨ 35 ≤ i ∧ i ≤ 184)", "    (hij : i < j) (hjn : j ≤ n / 2) :", "    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧", "      p ∣ Nat.gcd (n.choose i) (n.choose j) := by", "  have hilow : 29 ≤ i := by omega", "  have hiupper : i ≤ 184 := by omega", "  have hmemIndices : i ∈ allFiniteCoverRows.map (fun row => row.height.i) := by", "    rw [allFiniteCoverRows_indices]", "    interval_cases i <;> simp_all", "  obtain ⟨row, hrow, hrowIndex⟩ := List.mem_map.mp hmemIndices", "  have hall := List.all_eq_true.mp allFiniteCoverRows_checked", "  have hcheck := hall row hrow", "  subst i", "  exact common_of_finite_cover_row_checked hcheck hij hjn", "", "#print axioms B699LowIndex.allFiniteCoverRows_checked", "#print axioms B699LowIndex.allFiniteCoverRows_indices", "#print axioms B699LowIndex.common_of_low_index_finite_cover", "", "end B699LowIndex", ""])
  return "\n".join(lines)


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--cover", type=Path, default=Path("notes/heights/two-colour-cover.json"))
  parser.add_argument("--topprime", type=Path, default=Path("notes/heights/topprime-residual.json"))
  parser.add_argument("--actual-v", type=Path, default=Path("notes/heights/actual-v-filter.json"))
  parser.add_argument("--output-root", type=Path, default=Path("experiments/lean-cover-data"))
  parser.add_argument("--row-root", type=Path, default=Path("lean/coverage/rows"))
  parser.add_argument("--coverage-root", type=Path, default=Path("lean/coverage"))
  parser.add_argument("--complete-output", type=Path, default=Path("lean/LowIndexComplete.lean"))
  args = parser.parse_args()
  cover_path, topprime_path, actual_path = args.cover.resolve(), args.topprime.resolve(), args.actual_v.resolve()
  rows = extract_rows(load_json(cover_path), load_json(topprime_path), load_json(actual_path))
  if [row["height"]["i"] for row in rows] != EXPECTED_INDICES:
    raise ValueError("extracted index sequence is not {29} union [35,184]")
  args.output_root.mkdir(parents=True, exist_ok=True)
  args.row_root.mkdir(parents=True, exist_ok=True)
  args.coverage_root.mkdir(parents=True, exist_ok=True)
  args.complete_output.parent.mkdir(parents=True, exist_ok=True)
  outputs: list[dict[str, Any]] = []
  for row in rows:
    index = row["height"]["i"]
    path = args.row_root / f"Row{index:03d}.lean"
    payload = row_file_source(row).encode("utf-8")
    path.write_bytes(payload)
    outputs.append({"path": str(path).replace("\\", "/"), "sha256": hashlib.sha256(payload).hexdigest(), "rows": 1})
  chunks: list[list[dict[str, Any]]] = []
  start = 0
  for ordinal in range(8):
    count = 19 if ordinal < 7 else len(rows) - start
    chunks.append(rows[start : start + count])
    start += count
    path = args.coverage_root / f"Coverage{ordinal:02d}.lean"
    payload = chunk_source(chunks[-1], ordinal).encode("utf-8")
    path.write_bytes(payload)
    outputs.append({"path": str(path).replace("\\", "/"), "sha256": hashlib.sha256(payload).hexdigest(), "rows": len(chunks[-1])})
  complete_payload = complete_source().encode("utf-8")
  args.complete_output.write_bytes(complete_payload)
  outputs.append({"path": str(args.complete_output).replace("\\", "/"), "sha256": hashlib.sha256(complete_payload).hexdigest(), "rows": len(rows)})
  goods = sum(len(row["goods"]) for row in rows)
  layers = sum(len(row["layers"]) for row in rows)
  manifest = {
    "schema_version": 2,
    "generated_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
    "generator": {"path": "experiments/lean-cover-data/generate_split_data.py", "sha256": sha256_file(Path(__file__).resolve())},
    "inputs": {"two_colour_cover": {"path": "notes/heights/two-colour-cover.json", "sha256": sha256_file(cover_path)}, "topprime_residual": {"path": "notes/heights/topprime-residual.json", "sha256": sha256_file(topprime_path)}, "actual_v_filter": {"path": "notes/heights/actual-v-filter.json", "sha256": sha256_file(actual_path)}},
    "scope": {"indices": "{29} union [35,184]", "rows": len(rows), "goods": goods, "layers": layers, "chunk_counts": [len(chunk) for chunk in chunks], "row_files": 151, "lean_run": False, "n_j_recomputation": False},
    "outputs": outputs,
  }
  (args.output_root / "split-manifest.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
  print(f"generated split finite-cover data: rows={len(rows)} goods={goods} layers={layers} chunks={[len(chunk) for chunk in chunks]}")
  return 0


if __name__ == "__main__":
  raise SystemExit(main())






