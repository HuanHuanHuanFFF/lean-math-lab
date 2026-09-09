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
    "set_option autoImplicit false",
    "set_option relaxedAutoImplicit false",
    "",
    "namespace B699LowIndex",
    "",
    "/-- Fixed height parameters copied from the exact two-colour cover JSON.",
    f"/-- Input SHA-256: {input_sha256} -/",
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


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--input", type=Path, default=Path("notes/heights/two-colour-cover.json"))
  parser.add_argument("--lean-output", type=Path, default=Path("lean/HeightCertificateData.lean"))
  parser.add_argument("--table-output", type=Path, default=Path("experiments/height-certificates/height-table.json"))
  parser.add_argument("--manifest", type=Path, default=Path("experiments/height-certificates/manifest.json"))
  args = parser.parse_args()
  input_path = args.input.resolve()
  rows = load_rows(input_path)
  input_sha256 = sha256_file(input_path)
  lean_payload = lean_source(rows, input_sha256).encode("utf-8")
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
  args.table_output.parent.mkdir(parents=True, exist_ok=True)
  args.manifest.parent.mkdir(parents=True, exist_ok=True)
  args.lean_output.write_bytes(lean_payload)
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
    },
    "scope": {
      "indices": "{29} union [35,184]",
      "finite_data_only": True,
      "lean_run": False,
      "cover_recomputation": False,
    },
  }
  args.manifest.write_text(
    json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
  )
  print(
    "generated height data: "
    f"rows={len(rows)} input_sha256={input_sha256} "
    f"lean_sha256={manifest['outputs']['lean']['sha256']} "
    f"table_sha256={manifest['outputs']['table']['sha256']}"
  )
  return 0


if __name__ == "__main__":
  raise SystemExit(main())
