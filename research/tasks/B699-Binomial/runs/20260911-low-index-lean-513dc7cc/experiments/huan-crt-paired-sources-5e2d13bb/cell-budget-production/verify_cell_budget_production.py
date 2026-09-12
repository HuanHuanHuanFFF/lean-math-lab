"""Independent verifier for the source-only cell-budget production candidate."""

from __future__ import annotations

import hashlib
import json
import math
import re
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

OUT = Path(__file__).resolve().parent
RUN = OUT.parents[2]
REPO = RUN.parents[4]
LEAN = RUN / "lean"
RECEIPTS = RUN / "verification" / "huan-prerequisites"
PLAN_PATH = RUN / "notes" / "huan-crt-whole-rectangles-plan.json"

IMPORT_RE = re.compile(r"^import\s+(.+?)(?:\r?\n)?$")
NS_RE = re.compile(r"(?m)^namespace\s+([^\r\n]+)$")
DECL_RE = re.compile(
    r"(?m)^\s*(?P<private>private\s+)?"
    r"(?P<kind>theorem|lemma|def|abbrev|opaque|instance|structure|class|inductive)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_']*)\b"
)
CELL_RE = re.compile(r"^cellA(?P<a>[0-9]+)B(?P<b>[0-9]+)_check$")
ROW_RE = re.compile(r"^Chunk(?P<chunk>[0-9]{3})RowA(?P<a>[0-9]+)\.lean$")


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
    prefix = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/"
    return value[len(prefix):] if value.startswith(prefix) else value


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


def declarations(data: bytes) -> list[dict[str, Any]]:
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
    for item in declarations(data):
        match = CELL_RE.match(item["name"])
        if match:
            cells.append((int(match.group("a")), int(match.group("b"))))
    if len(namespaces) != 1 or not cells:
        raise ValueError(f"row shape mismatch {path}")
    a_values = sorted({a for a, _ in cells})
    b_values = sorted({b for _, b in cells})
    if len(a_values) != 1 or b_values != list(range(1, b_values[-1] + 1)):
        raise ValueError(f"row range mismatch {path}")
    data_imports = [item for item in imports if ".Chunk" in item and item.endswith("Data")]
    if len(data_imports) != 1:
        raise ValueError(f"row Data import mismatch {path}")
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
        "cells": cells,
        "declarations": declarations(data),
    }


def row_paths(grid: Path, chunk: int) -> list[Path]:
    result = []
    for path in grid.glob(f"Chunk{chunk:03d}RowA*.lean"):
        match = ROW_RE.match(path.name)
        if match and int(match.group("chunk")) == chunk:
            result.append(path)
    result.sort(key=lambda path: int(ROW_RE.match(path.name).group("a")))
    return result


def receipt_map() -> dict[str, list[dict[str, Any]]]:
    result: dict[str, list[dict[str, Any]]] = {}
    for path in RECEIPTS.glob("*.json"):
        try:
            value = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        root = value.get("root")
        if isinstance(root, str):
            root = normalize_root(root)
            result.setdefault(root, []).append({"name": value.get("name"), "kind": value.get("kind")})
    return result


def verify_cell(item: dict[str, Any], failures: list[str]) -> None:
    candidate = OUT / item["candidate_path"]
    if not candidate.exists():
        failures.append(f"missing Cells {item['candidate_path']}")
        return
    data = candidate.read_bytes()
    imports, body = split_imports(data)
    if hbytes(data) != item["sha256"]:
        failures.append(f"Cells SHA {item['target_path']}")
    if imports != item["imports"]:
        failures.append(f"Cells imports {item['target_path']}")
    if any(".Pack" in value or "RowA" in value for value in imports):
        failures.append(f"Cells imports Pack/Row {item['target_path']}")
    rows = [row_info(source_path(row["source"])) for row in item["source_rows"]]
    expected_imports = []
    for row in rows:
        for value in row["imports"]:
            if value not in expected_imports:
                expected_imports.append(value)
        if row["sha256"] != next(mapped["sha256"] for mapped in item["source_rows"] if mapped["source"] == row["source"]):
            failures.append(f"Row SHA changed {row['source']}")
    if imports != expected_imports:
        failures.append(f"Cells original import map {item['target_path']}")
    if body != b"".join(row["body"] for row in rows):
        failures.append(f"Cells body changed {item['target_path']}")
    if any(body.count(row["body"]) != 1 for row in rows):
        failures.append(f"Cells body occurrence {item['target_path']}")
    expected_names = [decl["name"] for row in rows for decl in row["declarations"]]
    actual_names = [decl["name"] for decl in declarations(body)]
    if expected_names != actual_names:
        failures.append(f"Cells declaration sequence {item['target_path']}")
    if len(actual_names) != len(set(actual_names)):
        failures.append(f"Cells declaration duplicate {item['target_path']}")
    if item["row_count"] > 8 or item["cell_count"] > 136:
        failures.append(f"Cells budget {item['target_path']}")
    if item["cell_count"] != len(rows) * len(rows[0]["b_values"]):
        failures.append(f"Cells count {item['target_path']}")
    if item["data_import"] not in imports or len({row["data_import"] for row in rows}) != 1:
        failures.append(f"Cells Data import {item['target_path']}")
    if item["body_sha256"] != hbytes(body):
        failures.append(f"Cells body SHA {item['target_path']}")
    if item["body_occurrences"] != [1] * len(rows):
        failures.append(f"Cells recorded body count {item['target_path']}")
    if item["private_declaration_count"] != 0:
        failures.append(f"unexpected private declaration {item['target_path']}")


def verify_chunk(item: dict[str, Any], cells_by_target: dict[str, dict[str, Any]], failures: list[str]) -> None:
    source = source_path(item["source_path"])
    candidate = OUT / item["candidate_path"]
    if not source.exists() or not candidate.exists():
        failures.append(f"missing Chunk source/candidate {item['source_path']}")
        return
    old = source.read_bytes()
    new = candidate.read_bytes()
    if hbytes(old) != item["source_sha256"]:
        failures.append(f"current old Chunk SHA {item['source_path']}")
    if hbytes(new) != item["candidate_sha256"]:
        failures.append(f"candidate Chunk SHA {item['target_path']}")
    old_imports, old_body = split_imports(old)
    new_imports, new_body = split_imports(new)
    if old_imports != item["old_imports"] or new_imports != item["new_imports"]:
        failures.append(f"Chunk imports {item['target_path']}")
    if new_body != old_body:
        failures.append(f"Chunk body changed {item['target_path']}")
    if hbytes(old_body) != item["old_body_sha256"] or hbytes(new_body) != item["new_body_sha256"]:
        failures.append(f"Chunk body SHA {item['target_path']}")
    rows = [row_info(source_path(value)) for value in item["row_sources"]]
    if len(rows) > 8:
        failures.append(f"Chunk row budget {item['target_path']}")
    if len(old_imports) != math.ceil(len(rows) / 2) or any(".Pack" not in value for value in old_imports):
        failures.append(f"old Chunk is not current two-row Pack layout {item['target_path']}")
    expected_cells = []
    for target in item["cell_targets"]:
        cell = cells_by_target.get(target)
        if cell is None:
            failures.append(f"missing Cells map {target}")
        else:
            expected_cells.append(cell["module"])
    if new_imports != expected_cells:
        failures.append(f"new Cells import map {item['target_path']}")
    if len(new_imports) != math.ceil(len(rows) / item["capacity_rows_per_cell_module"]):
        failures.append(f"Cells import count {item['target_path']}")
    if item["a_range"] != [rows[0]["a"], rows[-1]["a"]]:
        failures.append(f"Chunk a range {item['target_path']}")
    if item["b_range"] != [rows[0]["b_values"][0], rows[0]["b_values"][-1]]:
        failures.append(f"Chunk b range {item['target_path']}")


def verify_plan(source_map: dict[str, Any], failures: list[str]) -> None:
    plan = json.loads(PLAN_PATH.read_text(encoding="utf-8"))
    if hpath(PLAN_PATH) != source_map["plan"]["sha256"]:
        failures.append("whole rectangle plan SHA")
    bindings = source_map["plan"]["bindings"]
    if len(bindings) != 24 or len(plan.get("jobs", [])) != 24:
        failures.append("whole rectangle plan quantity")
    for item in bindings:
        path = RUN / item["root"]
        if not path.exists() or hpath(path) != item["plan_source_sha256"] or item["current_source_sha256"] != item["plan_source_sha256"]:
            failures.append(f"rectangle target SHA {item['root']}")


def verify_accepted(freeze: dict[str, Any], failures: list[str]) -> None:
    for table in freeze["accepted_tables"]["tables"]:
        if not table["all_sources_unchanged"]:
            failures.append(f"accepted table freeze flag {table['table']}")
        for item in table["records"]:
            path = source_path(item["source"])
            current = hpath(path) if path.exists() else None
            if current != item["expected_sha256"] or current != item["current_sha256"] or not item["unchanged"]:
                failures.append(f"accepted source changed {item['source']}")


def main() -> None:
    source_map = json.loads((OUT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
    freeze = json.loads((OUT / "FREEZE.json").read_text(encoding="utf-8"))
    failures = []
    cells = source_map["cells"]
    chunks = source_map["chunks"]
    cells_by_target = {item["target_path"]: item for item in cells}
    if len(cells) != 245:
        failures.append(f"Cells count {len(cells)}")
    if len(chunks) != 119 or source_map["skipped_chunk_count"] != 0:
        failures.append(f"Chunk count {len(chunks)} / skipped {source_map['skipped_chunk_count']}")
    if any("CrtStage0Pair23" in item["target_path"] or "CrtStage0Pair25" in item["target_path"] for item in [*cells, *chunks]):
        failures.append("accepted table leaked into production candidate")
    for item in cells:
        verify_cell(item, failures)
    for item in chunks:
        verify_chunk(item, cells_by_target, failures)
    candidate_files = sorted(
        [
            {"target_path": item["target_path"], "candidate_path": item["candidate_path"], "sha256": item["sha256"]}
            for item in cells
        ] + [
            {"target_path": item["target_path"], "candidate_path": item["candidate_path"], "sha256": item["candidate_sha256"]}
            for item in chunks
        ],
        key=lambda item: item["target_path"],
    )
    if canonical_sha(candidate_files) != source_map["candidate_source_root_sha256"]:
        failures.append("candidate source root SHA")
    old_root = canonical_sha(
        [{"source_path": item["source_path"], "source_sha256": item["source_sha256"]} for item in chunks]
    )
    if old_root != source_map["old_current_chunk_root_sha256"]:
        failures.append("old current Chunk root SHA")
    verify_plan(source_map, failures)
    verify_accepted(freeze, failures)
    invariants = freeze["invariants"]
    if any(value is False for value in invariants.values() if isinstance(value, bool)):
        failures.append("FREEZE invariant false")
    candidate_lean = [path for path in (OUT / "candidate").rglob("*.lean") if path.is_file()]
    if len(candidate_lean) != 364:
        failures.append(f"candidate file count {len(candidate_lean)}")
    result = {
        "status": "STATIC_PASS_SOURCE_ONLY_NO_LEAN" if not failures else "STATIC_FAIL_SOURCE_ONLY",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "no_Lean_invoked": True,
        "checks": {
            "grid_count": source_map["selected_grid_count"],
            "chunk_count": len(chunks),
            "cells_count": len(cells),
            "row_body_count": source_map["row_body_count"],
            "candidate_files": len(candidate_lean),
            "accepted_source_records": source_map["accepted_tables"]["total_source_records"],
            "candidate_source_root_sha256": source_map["candidate_source_root_sha256"],
            "old_current_chunk_root_sha256": source_map["old_current_chunk_root_sha256"],
        },
        "failure_count": len(failures),
        "failures": failures,
    }
    (OUT / "VERIFY.json").write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps(result, ensure_ascii=False, indent=2))
    if failures:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
