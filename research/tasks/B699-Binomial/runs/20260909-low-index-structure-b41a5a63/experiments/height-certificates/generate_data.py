#!/usr/bin/env python3
"""Generate the fixed height-parameter table from the accepted JSON input.

The script copies no floating-point diagnostic. It reads only i, r, s and the
integer N0 power from each exact height certificate and emits a static Lean
data definition plus JSON/hash manifests. It does not run Lean or recompute a
cover.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


EXPECTED_INDICES = [29, *range(35, 185)]

LOCAL_LEAN_OPTIONS = [
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


def require_int(value: Any, label: str) -> int:
  if isinstance(value, bool) or not isinstance(value, int):
    raise ValueError(f"{label} is not an integer: {value!r}")
  return value


def load_rows(input_path: Path) -> list[dict[str, int]]:
  data = json.loads(input_path.read_text(encoding="utf-8"))
  if not isinstance(data, dict):
    raise ValueError("cover JSON is not an object")
  records = data.get("records")
  if not isinstance(records, list) or len(records) != len(EXPECTED_INDICES):
    raise ValueError("cover JSON does not contain exactly 151 records")
  rows: list[dict[str, int]] = []
  for ordinal, record in enumerate(records):
    if not isinstance(record, dict):
      raise ValueError(f"record {ordinal} is not an object")
    index = require_int(record.get("i"), f"record {ordinal}.i")
    if index != EXPECTED_INDICES[ordinal]:
      raise ValueError(f"record {ordinal}: expected i={EXPECTED_INDICES[ordinal]}, got {index}")
    height = record.get("height_certificate")
    if not isinstance(height, dict):
      raise ValueError(f"record {index}: missing height_certificate")
    power = require_int(height.get("N0_power10"), f"record {index}.N0_power10")
    if power < 0:
      raise ValueError(f"record {index}: negative N0_power10")
    rows.append(
      {
        "i": index,
        "r": require_int(record.get("r"), f"record {index}.r"),
        "s": require_int(record.get("s"), f"record {index}.s"),
        "N0Power10": power,
      }
    )
  return rows


def lean_source(rows: list[dict[str, int]], input_sha256: str) -> str:
  lines = [
    "import Mathlib.Data.Nat.Basic",
    "",
    "set_option autoImplicit false",
    "set_option relaxedAutoImplicit false",
    "",
    "namespace B699LowIndex",
    "",
    "/-- Fixed height parameters copied from the exact two-colour cover JSON. -/",
    f"-- Input SHA-256: {input_sha256}",
    "structure HeightCertificateDatum where",
    "  i : ℕ",
    "  r : ℕ",
    "  s : ℕ",
    "  n0Power10 : ℕ",
    "deriving Repr, DecidableEq",
    "",
    "def HeightCertificateDatum.n0 (datum : HeightCertificateDatum) : ℕ :=",
    "  10 ^ datum.n0Power10",
    "",
    "def heightCertificateData : List HeightCertificateDatum := [",
  ]
  for ordinal, row in enumerate(rows):
    comma = "," if ordinal + 1 < len(rows) else ""
    lines.append(
      f"  {{ i := {row['i']}, r := {row['r']}, s := {row['s']}, "
      f"n0Power10 := {row['N0Power10']} }}{comma}"
    )
  lines.extend(
    [
      "]",
      "",
      "end B699LowIndex",
      "",
    ]
  )
  return "\n".join(lines)


def registered_lean_source(rows: list[dict[str, int]], input_sha256: str) -> str:
  expected_indices = ", ".join(str(index) for index in EXPECTED_INDICES)
  lines = [
    "import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.HeightCertificate",
    "import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.HeightCertificateData",
    "",
    *LOCAL_LEAN_OPTIONS,
    "",
    "namespace B699LowIndex",
    "open B699LargePrimeStructure",
    "",
    "/-- Exact finite height-row proposition used by the registered table. -/",
    f"/- Input SHA-256: {input_sha256} -/",
    "def HeightRowValid (row : HeightCertificateDatum) : Prop :=",
    "  2 ≤ row.i ∧",
    "  row.r < row.i ∧",
    "  0 < row.s ∧",
    "  row.s < row.i ∧",
    "  0 < 2 * row.s - row.r ∧",
    "  row.i ≤ row.n0 ∧",
    "  heightExponent row.i row.r row.s ≤ row.i * (2 * row.s - row.r) ∧",
    "  row.i.factorial ^ (2 * row.s - row.r) *",
    "      row.n0 ^ heightExponent row.i row.r row.s <",
    "    windowConstant row.i row.r row.s *",
    "      row.n0.descFactorial row.i ^ (2 * row.s - row.r)",
    "",
    "instance (row : HeightCertificateDatum) : Decidable (HeightRowValid row) := by",
    "  unfold HeightRowValid",
    "  infer_instance",
    "",
    "def heightRowValidBool (row : HeightCertificateDatum) : Bool :=",
    "  decide (HeightRowValid row)",
    "",
  ]
  theorem_names: list[str] = []
  for row in rows:
    literal = (
      "{ i := "
      f"{row['i']}, r := {row['r']}, s := {row['s']}, "
      f"n0Power10 := {row['N0Power10']} }}"
    )
    name = f"height_row_valid_bool_{row['i']:03d}"
    theorem_names.append(name)
    lines.extend(
      [
        f"theorem {name} :",
        f"    heightRowValidBool {literal} = true := by",
        "  decide",
        "",
      ]
    )
  lines.extend(
    [
      "theorem heightCertificateDataValidBool :",
      "    List.all heightCertificateData heightRowValidBool = true := by",
      "  simp only [heightCertificateData, List.all_cons, List.all_nil,",
    ]
  )
  for ordinal, name in enumerate(theorem_names):
    suffix = "," if ordinal + 1 < len(theorem_names) else ","
    lines.append(f"    {name}{suffix}")
  lines.append("    Bool.true_and]")
  lines.extend(
    [
      "",
      "theorem heightCertificateData_valid {row : HeightCertificateDatum}",
      "    (hrow : row ∈ heightCertificateData) : HeightRowValid row := by",
      "  have hall := List.all_eq_true.mp heightCertificateDataValidBool",
      "  have hcheck := hall row hrow",
      "  exact of_decide_eq_true (by simpa [heightRowValidBool] using hcheck)",
      "",
      "theorem heightCertificateData_length :",
      "    heightCertificateData.length = 151 := by",
      "  decide",
      "",
      "theorem heightCertificateData_indices :",
      f"    heightCertificateData.map HeightCertificateDatum.i = [{expected_indices}] := by",
      "  decide",
      "",
      "theorem common_of_registered_height",
      "    {row : HeightCertificateDatum} (hrow : row ∈ heightCertificateData)",
      "    {n j : ℕ} (hij : row.i < j) (hjn : j ≤ n / 2)",
      "    (hNn : row.n0 ≤ n) :",
      "    ∃ p : ℕ, p.Prime ∧ row.i ≤ p ∧",
      "      p ∣ Nat.gcd (n.choose row.i) (n.choose j) := by",
      "  have hvalid := heightCertificateData_valid hrow",
      "  rcases hvalid with ⟨hi, _, _, hsi, _, hiN, hdegree, hcertificate⟩",
      "  exact common_of_height_certificate",
      "    (N := row.n0) (n := n) (i := row.i) (j := j)",
      "    (r := row.r) (s := row.s) hi hij hjn hsi hiN hNn hdegree hcertificate",
      "",
      "end B699LowIndex",
      "",
      "#print axioms B699LowIndex.heightCertificateData_valid",
      "#print axioms B699LowIndex.heightCertificateData_indices",
      "#print axioms B699LowIndex.common_of_registered_height",
      "",
    ]
  )
  return "\n".join(lines)

def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--input", type=Path, default=Path("notes/heights/two-colour-cover.json"))
  parser.add_argument("--lean-output", type=Path, default=Path("lean/HeightCertificateData.lean"))
  parser.add_argument("--table-output", type=Path, default=Path("experiments/height-certificates/height-table.json"))
  parser.add_argument("--manifest", type=Path, default=Path("experiments/height-certificates/manifest.json"))
  parser.add_argument("--registered-output", type=Path, default=Path("lean/RegisteredHeights.lean"))
  args = parser.parse_args()
  input_path = args.input.resolve()
  rows = load_rows(input_path)
  input_sha256 = sha256_file(input_path)
  lean_payload = lean_source(rows, input_sha256).encode("utf-8")
  registered_payload = registered_lean_source(rows, input_sha256).encode("utf-8")
  table = {
    "schema_version": 1,
    "source": "notes/heights/two-colour-cover.json",
    "source_sha256": input_sha256,
    "row_count": len(rows),
    "index_sequence": [row["i"] for row in rows],
    "rows": rows,
  }
  table_payload = (json.dumps(table, ensure_ascii=False, indent=2) + "\n").encode("utf-8")
  args.lean_output.parent.mkdir(parents=True, exist_ok=True)
  args.registered_output.parent.mkdir(parents=True, exist_ok=True)
  args.table_output.parent.mkdir(parents=True, exist_ok=True)
  args.manifest.parent.mkdir(parents=True, exist_ok=True)
  args.lean_output.write_bytes(lean_payload)
  args.registered_output.write_bytes(registered_payload)
  args.table_output.write_bytes(table_payload)
  manifest = {
    "schema_version": 1,
    "generated_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
    "generator": {
      "path": "experiments/height-certificates/generate_data.py",
      "sha256": sha256_file(Path(__file__).resolve()),
      "method": "read exact i,r,s,N0_power10 fields; no floating-point recomputation",
    },
    "input": {
      "path": "notes/heights/two-colour-cover.json",
      "sha256": input_sha256,
      "row_count": len(rows),
      "index_sequence": [row["i"] for row in rows],
    },
    "outputs": {
      "lean": {
        "path": "lean/HeightCertificateData.lean",
        "sha256": hashlib.sha256(lean_payload).hexdigest(),
      },
      "table": {
        "path": "experiments/height-certificates/height-table.json",
        "sha256": hashlib.sha256(table_payload).hexdigest(),
      },
      "registered": {
        "path": "lean/RegisteredHeights.lean",
        "sha256": hashlib.sha256(registered_payload).hexdigest(),
      },
    },
    "scope": {
      "indices": "{29} union [35,184]",
      "finite_data_only": True,
      "lean_run": False,
      "cover_recomputation": False,
    },
    "data_import": "Mathlib.Data.Nat.Basic",
    "source_tuning": {
      "height_probe": list(LOCAL_LEAN_OPTIONS),
      "registered_heights": list(LOCAL_LEAN_OPTIONS),
      "history_manifest": "experiments/height-certificates/manifest-history-20260909T073358Z.json",
    },
  }
  args.manifest.write_text(
    json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
  )
  print(
    "generated height data: "
    f"rows={len(rows)} input_sha256={input_sha256} "
    f"lean_sha256={manifest['outputs']['lean']['sha256']} "
    f"registered_sha256={manifest['outputs']['registered']['sha256']} "
    f"table_sha256={manifest['outputs']['table']['sha256']}"
  )
  return 0


if __name__ == "__main__":
  raise SystemExit(main())






