"""Independent byte-level verifier for cell-budget probes; never invokes Lean."""

from __future__ import annotations

import hashlib
import json
import math
import re
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

OUT = Path(__file__).resolve().parent
PAIRED = OUT.parent
RUN = OUT.parents[2]
REPO = RUN.parents[4]
LEAN = RUN / "lean"
RECEIPTS = RUN / "verification" / "huan-prerequisites"
PREVIOUS_MAP = PAIRED / "SOURCE_MAP.json"
RUN_REL = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc"

GRID_RE = re.compile(r"^CrtStage[0-3]Pair(?:23|25|27|35|37|57)$")
ROW_RE = re.compile(r"^Chunk(?P<chunk>[0-9]{3})RowA(?P<a>[0-9]+)\.lean$")
IMPORT_RE = re.compile(r"^import\s+(.+?)(?:\r?\n)?$")
NS_RE = re.compile(r"(?m)^namespace\s+([^\r\n]+)$")
DECL_RE = re.compile(
    r"(?m)^\s*(?P<private>private\s+)?"
    r"(?P<kind>theorem|lemma|def|abbrev|opaque|instance|structure|class|inductive)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_']*)\b"
)
CELL_RE = re.compile(r"^cellA(?P<a>[0-9]+)B(?P<b>[0-9]+)_check$")
PRINT_RE = re.compile(r"(?m)^#print axioms ([^\r\n]+)$")


def hbytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def hpath(path: Path) -> str:
    return hbytes(path.read_bytes())


def canonical_sha(value: Any) -> str:
    return hbytes(json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode())


def source_path(value: str) -> Path:
    value = value.replace("\\", "/")
    return REPO / value if value.startswith("research/") else RUN / value


def normalize_root(value: str) -> str:
    value = value.replace("\\", "/")
    prefix = RUN_REL + "/"
    return value[len(RUN_REL) + 1:] if value.startswith(prefix) else value


def split_imports(data: bytes) -> tuple[list[str], bytes]:
    lines = data.splitlines(keepends=True)
    imports = []
    i = 0
    while i < len(lines):
        line = lines[i].decode("utf-8")
        match = IMPORT_RE.match(line)
        if match is None:
            break
        imports.append(match.group(1).strip())
        i += 1
    return imports, b"".join(lines[i:])


def decls(data: bytes) -> list[dict[str, Any]]:
    return [
        {"kind": m.group("kind"), "name": m.group("name"), "private": bool(m.group("private"))}
        for m in DECL_RE.finditer(data.decode("utf-8"))
    ]


def row_info(path: Path) -> dict[str, Any]:
    data = path.read_bytes()
    imports, body = split_imports(data)
    text = data.decode("utf-8")
    namespaces = NS_RE.findall(text)
    cells = []
    for item in decls(data):
        match = CELL_RE.match(item["name"])
        if match:
            cells.append((int(match.group("a")), int(match.group("b"))))
    if len(namespaces) != 1 or not cells:
        raise ValueError(f"bad row source {path}")
    a_values = sorted({a for a, _ in cells})
    b_values = sorted({b for _, b in cells})
    if len(a_values) != 1 or b_values != list(range(1, b_values[-1] + 1)):
        raise ValueError(f"bad row range {path}")
    data_imports = [item for item in imports if ".Chunk" in item and item.endswith("Data")]
    if len(data_imports) != 1:
        raise ValueError(f"bad Data import {path}")
    return {
        "source": path.relative_to(REPO).as_posix(),
        "data": data,
        "body": body,
        "imports": imports,
        "namespace": namespaces[0],
        "data_import": data_imports[0],
        "sha256": hbytes(data),
        "body_sha256": hbytes(body),
        "a": a_values[0],
        "b_values": b_values,
        "declarations": decls(data),
        "prints": PRINT_RE.findall(text),
    }


def receipts() -> dict[str, list[dict[str, Any]]]:
    result: dict[str, list[dict[str, Any]]] = {}
    for path in RECEIPTS.glob("*.json"):
        try:
            value = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        root = value.get("root")
        if isinstance(root, str):
            root = normalize_root(root)
            result.setdefault(root, []).append({"kind": value.get("kind"), "name": value.get("name")})
    return result


def row_paths(grid: Path, chunk: int) -> list[Path]:
    result = []
    for path in grid.glob(f"Chunk{chunk:03d}RowA*.lean"):
        match = ROW_RE.match(path.name)
        if match and int(match.group("chunk")) == chunk:
            result.append(path)
    result.sort(key=lambda path: int(ROW_RE.match(path.name).group("a")))
    return result


def transformed(row: dict[str, Any], namespace: str) -> bytes:
    text = row["body"].decode("utf-8").replace(row["namespace"], namespace)
    marker = f"namespace {namespace}\n"
    if marker not in text:
        raise ValueError(f"namespace transform missing {row['source']}")
    return text.replace(marker, marker + f"open {row['namespace']}\n", 1).encode()


def verify_probe(probe: dict[str, Any], receipt_map: dict[str, list[dict[str, Any]]]) -> list[str]:
    failures = []
    candidate = OUT / probe["candidate_path"]
    if not candidate.exists():
        return [f"missing {probe['candidate_path']}"]
    data = candidate.read_bytes()
    imports, body = split_imports(data)
    if hbytes(data) != probe["candidate_sha256"]:
        failures.append(f"candidate SHA {probe['name']}")
    if imports != probe["imports"]:
        failures.append(f"imports {probe['name']}")
    if any("Pack" in item or "RowA" in item for item in imports):
        failures.append(f"Pack/Row import leaked {probe['name']}")
    if "CrtStage0Pair25" in data.decode("utf-8"):
        failures.append(f"Stage0Pair25 leaked {probe['name']}")
    rows = [row_info(source_path(item["source"])) for item in probe["rows"]]
    expected_imports = []
    for row in rows:
        for item in row["imports"]:
            if item not in expected_imports:
                expected_imports.append(item)
    if imports != expected_imports:
        failures.append(f"original imports changed {probe['name']}")
    expected_bodies = [transformed(row, probe["namespace"]) for row in rows]
    if body != b"".join(expected_bodies):
        failures.append(f"transformed body mismatch {probe['name']}")
    for row, expected_body in zip(rows, expected_bodies):
        if body.count(expected_body) != 1:
            failures.append(f"Row body occurrence {row['source']}")
    expected_decl_names = [item["name"] for row in rows for item in row["declarations"]]
    actual_decl_names = [item["name"] for item in decls(body)]
    if actual_decl_names != expected_decl_names:
        failures.append(f"declarations {probe['name']}")
    if len(actual_decl_names) != len(set(actual_decl_names)):
        failures.append(f"duplicate declarations {probe['name']}")
    actual_prints = PRINT_RE.findall(data.decode("utf-8"))
    expected_prints = [
        item.replace(row["namespace"], probe["namespace"])
        for row in rows
        for item in row["prints"]
    ]
    if actual_prints != expected_prints:
        failures.append(f"prints {probe['name']}")
    if len(actual_prints) != probe["cell_count"] + probe["selected_rows"] * 2:
        failures.append(f"print count {probe['name']}")
    if any(not item.startswith(probe["namespace"] + ".") for item in actual_prints):
        failures.append(f"print namespace {probe['name']}")
    actual_a = [row["a"] for row in rows]
    actual_b = sorted(set().union(*(set(row["b_values"]) for row in rows)))
    if probe["a_range"] != [min(actual_a), max(actual_a)]:
        failures.append(f"a range {probe['name']}")
    if probe["b_range"] != [min(actual_b), max(actual_b)]:
        failures.append(f"b range {probe['name']}")
    if probe["cell_count"] != len(rows) * len(actual_b) or probe["cell_count"] > 136:
        failures.append(f"cell budget {probe['name']}")
    if len({row["namespace"] for row in rows}) != 1:
        failures.append(f"source namespace disagreement {probe['name']}")
    if any(row["data_import"] != probe["data_import"] for row in rows):
        failures.append(f"Data import disagreement {probe['name']}")
    source_items = [{"source": row["source"], "sha256": row["sha256"], "kind": "row"} for row in rows]
    for source in probe["data_sources"]:
        path = source_path(source["source"])
        current = hpath(path)
        if current != source["sha256"]:
            failures.append(f"Data SHA {source['source']}")
        bound = receipt_map.get(normalize_root(source["source"]), [])
        status = "verified_receipt_bound" if bound else "pending_no_receipt"
        if source["verification_status"] != status:
            failures.append(f"Data status {source['source']}")
        source_items.append({"source": source["source"], "sha256": source["sha256"], "kind": "data_source"})
    source_items.sort(key=lambda item: item["source"])
    source_root = canonical_sha(source_items)
    if source_root != probe["source_root_sha256"]:
        failures.append(f"source root {probe['name']}")
    complete = canonical_sha({
        "name": probe["name"],
        "target": probe["target_path"],
        "candidate": probe["candidate_path"],
        "namespace": probe["namespace"],
        "original_namespace": probe["original_data_namespace"],
        "data_import": probe["data_import"],
        "imports": probe["imports"],
        "rows": [row["source"] for row in probe["rows"]],
        "a_range": probe["a_range"],
        "b_range": probe["b_range"],
        "cell_count": probe["cell_count"],
        "print_count": probe["print_count"],
        "candidate_sha256": probe["candidate_sha256"],
        "source_root_sha256": source_root,
    })
    if complete != probe["complete_sha256"]:
        failures.append(f"complete root {probe['name']}")
    probe_root = canonical_sha({
        "target": probe["target_path"],
        "candidate_sha256": probe["candidate_sha256"],
        "source_root_sha256": source_root,
        "complete_sha256": complete,
    })
    if probe_root != probe["probe_root_sha256"]:
        failures.append(f"probe root {probe['name']}")
    return failures


def count_theory() -> dict[str, int]:
    excluded = {"CrtStage0Pair23", "CrtStage0Pair25"}
    current = 0
    budget = 0
    grids = 0
    for grid in sorted(LEAN.glob("CrtStage*Pair*")):
        if grid.name in excluded or GRID_RE.match(grid.name) is None:
            continue
        grids += 1
        for chunk_path in sorted(grid.glob("Chunk[0-9][0-9][0-9].lean")):
            chunk = int(chunk_path.stem[-3:])
            rows = [row_info(path) for path in row_paths(grid, chunk)]
            b_values = {tuple(row["b_values"]) for row in rows}
            if len(b_values) != 1:
                raise ValueError(f"b mismatch {grid.name}/{chunk_path.name}")
            bmax = len(rows[0]["b_values"])
            capacity = min(8, 136 // bmax)
            current += math.ceil(len(rows) / 2)
            budget += math.ceil(len(rows) / capacity)
    previous = json.loads(PREVIOUS_MAP.read_text(encoding="utf-8"))
    baseline = int(previous["prepared_pack_count"])
    active = sum(
        1
        for item in previous["packs"]
        if item["target_path"].startswith("lean/CrtStage0Pair25/")
    )
    return {
        "grids": grids,
        "current_same_scope": current,
        "recorded_current_same_scope": baseline - active,
        "budget": budget,
        "recorded_budget": 245,
        "reduction": current - budget,
        "recorded_reduction": (baseline - active) - 245,
        "naive_full_495_reduction": baseline - budget,
    }


def main() -> None:
    source_map = json.loads((OUT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
    freeze = json.loads((OUT / "FREEZE.json").read_text(encoding="utf-8"))
    receipt_map = receipts()
    failures = []
    candidate_lean = [
        path for path in (OUT / "candidate").rglob("*.lean")
        if path.is_file()
    ]
    if len(candidate_lean) != 2:
        failures.append(f"candidate count {len(candidate_lean)}")
    probes = source_map["probes"]
    if len(probes) != 2:
        failures.append("probe count")
    namespaces = set()
    for probe in probes:
        namespaces.add(probe["namespace"])
        failures.extend(verify_probe(probe, receipt_map))
    if len(namespaces) != len(probes):
        failures.append("namespace collision")
    counts = count_theory()
    if counts["current_same_scope"] != counts["recorded_current_same_scope"]:
        failures.append("current same-scope count")
    if counts["budget"] != counts["recorded_budget"]:
        failures.append("budget count")
    if counts["reduction"] != counts["recorded_reduction"]:
        failures.append("reduction count")
    if not freeze["invariants"]["no_Lean_invoked"]:
        failures.append("Lean flag")
    result = {
        "status": "STATIC_PASS_SOURCE_ONLY_NO_LEAN" if not failures else "STATIC_FAIL_SOURCE_ONLY",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "no_Lean_invoked": True,
        "checks": {
            "probe_count": len(probes),
            "candidate_lean_files": len(candidate_lean),
            "probe_cells": [item["cell_count"] for item in probes],
            "probe_prints": [item["print_count"] for item in probes],
            "data_statuses": [
                {
                    "name": item["name"],
                    "statuses": [source["verification_status"] for source in item["data_sources"]],
                }
                for item in probes
            ],
            "current_same_scope_pack_count": counts["current_same_scope"],
            "theoretical_budget_pack_count": counts["budget"],
            "theoretical_reduction_same_scope": counts["reduction"],
            "naive_reduction_against_full_495": counts["naive_full_495_reduction"],
        },
        "failure_count": len(failures),
        "failures": failures,
    }
    (OUT / "VERIFY.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps(result, ensure_ascii=False, indent=2))
    if failures:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
