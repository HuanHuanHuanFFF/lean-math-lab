"""Generate source-only Cells modules for the 22 not-yet-accepted CRT tables.

Each Cells file concatenates complete original Row bodies in the original public
namespace. Only imports are collected at the Cells header and the candidate
Chunk import prefix is replaced. No Lean process is started.
"""

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
PLAN_PATH = RUN / "notes" / "huan-crt-whole-rectangles-plan.json"
RUN_REL = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc"

GRID_RE = re.compile(r"^CrtStage(?P<stage>[0-3])Pair(?P<pair>23|25|27|35|37|57)$")
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
EXCLUDED = {
    "CrtStage0Pair23": "accepted_rectangle",
    "CrtStage0Pair25": "accepted_rectangle",
}


def hbytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def hpath(path: Path) -> str:
    return hbytes(path.read_bytes())


def canonical_sha(value: Any) -> str:
    return hbytes(json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8"))


def write_bytes(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")


def normalize_root(value: str) -> str:
    value = value.replace("\\", "/")
    prefix = RUN_REL + "/"
    return value[len(RUN_REL) + 1:] if value.startswith(prefix) else value


def rel_repo(path: Path) -> str:
    return path.relative_to(REPO).as_posix()


def source_path(value: str) -> Path:
    value = value.replace("\\", "/")
    return REPO / value if value.startswith("research/") else RUN / value


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


def row_info(path: Path) -> dict[str, Any]:
    data = path.read_bytes()
    imports, body = split_imports(data)
    text = data.decode("utf-8")
    namespaces = NS_RE.findall(text)
    if len(namespaces) != 1:
        raise ValueError(f"row namespace mismatch: {path}")
    declarations = []
    cells = []
    private_names = []
    for match in DECL_RE.finditer(text):
        item = {"kind": match.group("kind"), "name": match.group("name"), "private": bool(match.group("private"))}
        declarations.append(item)
        if item["private"]:
            private_names.append(item["name"])
        cell = CELL_RE.match(item["name"])
        if cell:
            cells.append((int(cell.group("a")), int(cell.group("b"))))
    if not cells:
        raise ValueError(f"row has no cells: {path}")
    a_values = sorted({a for a, _ in cells})
    b_values = sorted({b for _, b in cells})
    if len(a_values) != 1 or b_values != list(range(1, b_values[-1] + 1)):
        raise ValueError(f"row range mismatch: {path}")
    data_imports = [item for item in imports if ".Chunk" in item and item.endswith("Data")]
    if len(data_imports) != 1:
        raise ValueError(f"row Data import mismatch: {path}")
    return {
        "path": path,
        "source": rel_repo(path),
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
        "declarations": declarations,
        "private_names": private_names,
        "prints": PRINT_RE.findall(text),
    }


def row_paths(grid: Path, chunk: int) -> list[Path]:
    result = []
    for path in grid.glob(f"Chunk{chunk:03d}RowA*.lean"):
        match = ROW_RE.match(path.name)
        if match and int(match.group("chunk")) == chunk:
            result.append(path)
    result.sort(key=lambda path: int(ROW_RE.match(path.name).group("a")))
    return result


def load_receipts() -> dict[str, list[dict[str, Any]]]:
    result: dict[str, list[dict[str, Any]]] = {}
    for path in sorted(RECEIPTS.glob("*.json")):
        try:
            value = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        root = value.get("root")
        if not isinstance(root, str):
            continue
        root = normalize_root(root)
        if not root.startswith("lean/"):
            continue
        result.setdefault(root, []).append(
            {
                "receipt": rel_repo(path),
                "receipt_sha256": hpath(path),
                "name": value.get("name"),
                "kind": value.get("kind"),
                "source_sha256": value.get("source_sha256"),
                "evidence": value.get("evidence"),
            }
        )
    return result


def data_sources(grid: Path, chunk: int, receipts: dict[str, list[dict[str, Any]]]) -> list[dict[str, Any]]:
    result = []
    for name in (f"Chunk{chunk:03d}Data.lean", f"Chunk{chunk:03d}DataAudit.lean"):
        path = grid / name
        root = f"lean/{grid.name}/{name}"
        bound = receipts.get(root, [])
        result.append(
            {
                "source": rel_repo(path),
                "sha256": hpath(path),
                "bytes": path.stat().st_size,
                "receipts": bound,
                "verification_status": "verified_receipt_bound" if bound else "pending_no_receipt",
            }
        )
    return result


def accepted_freeze(receipts: dict[str, list[dict[str, Any]]]) -> dict[str, Any]:
    tables = []
    for pair in ("23", "25"):
        receipt_path = RECEIPTS / f"crt-stage0-pair{pair}-rectangle.json"
        if not receipt_path.exists():
            raise ValueError(f"missing accepted rectangle receipt: {receipt_path}")
        receipt = json.loads(receipt_path.read_text(encoding="utf-8"))
        evidence_value = receipt.get("evidence")
        evidence_path = REPO / evidence_value.replace("\\", "/")
        if not evidence_path.exists():
            raise ValueError(f"missing accepted rectangle evidence: {evidence_path}")
        evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
        prefix = f"/CrtStage0Pair{pair}/"
        records_by_source: dict[str, dict[str, Any]] = {}
        for item in evidence.get("reuse_records", []):
            source = item.get("source")
            if not isinstance(source, str) or prefix not in source.replace("\\", "/"):
                continue
            expected = item.get("source_sha256_after") or item.get("source_sha256_before")
            if not isinstance(expected, str):
                continue
            source = source.replace("\\", "/")
            records_by_source[source] = {
                "source": source,
                "expected_sha256": expected.lower(),
                "current_sha256": None,
                "unchanged": False,
            }
        previous_map_path = PAIRED / "SOURCE_MAP.json"
        if previous_map_path.exists():
            previous_map = json.loads(previous_map_path.read_text(encoding="utf-8"))
            for pack in previous_map.get("packs", []):
                if not pack.get("target_path", "").startswith(f"lean/CrtStage0Pair{pair}/"):
                    continue
                for source, expected in zip(pack.get("source_rows", []), pack.get("source_row_sha256", [])):
                    records_by_source.setdefault(
                        source,
                        {
                            "source": source,
                            "expected_sha256": str(expected).lower(),
                            "current_sha256": None,
                            "unchanged": False,
                        },
                    )
        records = []
        for source in sorted(records_by_source):
            path = source_path(source)
            current = hpath(path) if path.exists() else None
            item = dict(records_by_source[source])
            item["current_sha256"] = current
            item["unchanged"] = current == item["expected_sha256"]
            records.append(item)
        tables.append(
            {
                "table": f"CrtStage0Pair{pair}",
                "receipt": rel_repo(receipt_path),
                "receipt_sha256": hpath(receipt_path),
                "evidence": rel_repo(evidence_path),
                "evidence_sha256": hpath(evidence_path),
                "record_count": len(records),
                "all_sources_unchanged": bool(records) and all(item["unchanged"] for item in records),
                "records": records,
            }
        )
    return {
        "tables": tables,
        "all_sources_unchanged": all(item["all_sources_unchanged"] for item in tables),
        "total_source_records": sum(item["record_count"] for item in tables),
    }


def load_plan() -> dict[str, Any]:
    plan = json.loads(PLAN_PATH.read_text(encoding="utf-8"))
    if len(plan.get("jobs", [])) != 24:
        raise ValueError(f"whole rectangle plan job count changed: {len(plan.get('jobs', []))}")
    bindings = []
    for job in plan["jobs"]:
        root = normalize_root(str(job["root"]))
        current = hpath(RUN / root)
        expected = str(job["source_sha256"]).lower()
        if current != expected:
            raise ValueError(f"rectangle plan source changed: {root}")
        bindings.append(
            {
                "name": job["name"],
                "root": root,
                "plan_source_sha256": expected,
                "current_source_sha256": current,
                "memory_mb": job.get("memory_mb"),
                "status": "excluded_accepted" if root.split("/")[1] in ("CrtStage0Pair23", "CrtStage0Pair25") else "target_unchanged",
            }
        )
    return {
        "path": rel_repo(PLAN_PATH),
        "sha256": hpath(PLAN_PATH),
        "kind": plan.get("kind"),
        "source_layout": plan.get("source_layout"),
        "source_adoption": plan.get("source_adoption"),
        "job_count": len(bindings),
        "bindings": bindings,
    }


def main() -> None:
    receipts = load_receipts()
    plan = load_plan()
    accepted = accepted_freeze(receipts)
    selected_grids = []
    for grid in sorted(LEAN.glob("CrtStage*Pair*")):
        match = GRID_RE.match(grid.name)
        if match and grid.name not in EXCLUDED:
            selected_grids.append((grid, int(match.group("stage")), match.group("pair")))
    if len(selected_grids) != 22:
        raise ValueError(f"expected 22 production grids, found {len(selected_grids)}")
    chunks = []
    cells = []
    skipped = []
    output_targets = set()
    for grid, stage, pair in selected_grids:
        for chunk_path in sorted(grid.glob("Chunk[0-9][0-9][0-9].lean")):
            index = int(chunk_path.stem[-3:])
            target = f"lean/{grid.name}/{chunk_path.name}"
            old_bytes = chunk_path.read_bytes()
            old_imports, old_body = split_imports(old_bytes)
            old_sha = hbytes(old_bytes)
            rows = [row_info(path) for path in row_paths(grid, index)]
            if not rows or len(rows) > 8:
                raise ValueError(f"row count outside Chunk limit: {target}")
            b_ranges = {tuple(row["b_values"]) for row in rows}
            if len(b_ranges) != 1:
                raise ValueError(f"row b ranges disagree: {target}")
            b_count = len(rows[0]["b_values"])
            capacity = min(8, 136 // b_count)
            if capacity < 1:
                raise ValueError(f"no Cells module fits {target}")
            receipt_bound = receipts.get(target, [])
            if receipt_bound:
                skipped.append({"target": target, "source_sha256": old_sha, "receipts": receipt_bound, "reason": "success receipt bound exact Chunk"})
                continue
            if len(old_imports) != math.ceil(len(rows) / 2) or any(".Pack" not in item for item in old_imports):
                raise ValueError(f"current Chunk is not the expected two-row Pack layout: {target}")
            prefix = old_imports[0].rsplit(".", 1)[0]
            groups = [rows[i:i + capacity] for i in range(0, len(rows), capacity)]
            cell_targets = []
            for pack_index, group in enumerate(groups):
                name = f"Cells{index:03d}P{pack_index}.lean"
                cell_target = f"lean/{grid.name}/{name}"
                cell_candidate = f"candidate/{cell_target}"
                imports = []
                for row in group:
                    for item in row["imports"]:
                        if item not in imports:
                            imports.append(item)
                if any(item == row["data_import"] for row in group for item in []):
                    pass
                data_imports = {row["data_import"] for row in group}
                if len(data_imports) != 1:
                    raise ValueError(f"Data imports disagree in {cell_target}")
                allowed = {next(iter(data_imports)), "Mathlib.Tactic.IntervalCases"}
                if set(imports) != allowed:
                    raise ValueError(f"unexpected Cells imports in {cell_target}: {imports}")
                body = b"".join(row["body"] for row in group)
                if any(body.count(row["body"]) != 1 for row in group):
                    raise ValueError(f"Row body is not exactly once in {cell_target}")
                cell_bytes = b"".join(f"import {item}\n".encode() for item in imports) + body
                write_bytes(OUT / cell_candidate, cell_bytes)
                output_targets.add(cell_target)
                cell_targets.append(cell_target)
                declarations = [item["name"] for row in group for item in row["declarations"]]
                if len(declarations) != len(set(declarations)):
                    raise ValueError(f"duplicate declaration in {cell_target}")
                cells.append(
                    {
                        "grid": grid.name,
                        "stage": stage,
                        "pair": pair,
                        "chunk": index,
                        "candidate_path": cell_candidate,
                        "target_path": cell_target,
                        "module": prefix + f".Cells{index:03d}P{pack_index}",
                        "sha256": hbytes(cell_bytes),
                        "bytes": len(cell_bytes),
                        "imports": imports,
                        "namespace": group[0]["namespace"],
                        "data_import": next(iter(data_imports)),
                        "source_rows": [
                            {
                                "source": row["source"],
                                "sha256": row["sha256"],
                                "body_sha256": row["body_sha256"],
                                "a": row["a"],
                                "b_range": [row["b_values"][0], row["b_values"][-1]],
                                "cell_count": len(row["cells"]),
                                "declaration_names": [item["name"] for item in row["declarations"]],
                                "print_count": len(row["prints"]),
                            }
                            for row in group
                        ],
                        "row_count": len(group),
                        "a_range": [group[0]["a"], group[-1]["a"]],
                        "b_range": [group[0]["b_values"][0], group[0]["b_values"][-1]],
                        "cell_count": len(group) * b_count,
                        "body_sha256": hbytes(body),
                        "body_occurrences": [body.count(row["body"]) for row in group],
                        "private_declaration_count": sum(len(row["private_names"]) for row in group),
                        "new_B_original_results": 0,
                    }
                )
            new_imports = [prefix + f".{Path(target).stem}" for target in cell_targets]
            new_bytes = b"".join(f"import {item}\n".encode() for item in new_imports) + old_body
            candidate_chunk = f"candidate/{target}"
            write_bytes(OUT / candidate_chunk, new_bytes)
            output_targets.add(target)
            chunks.append(
                {
                    "grid": grid.name,
                    "stage": stage,
                    "pair": pair,
                    "chunk": index,
                    "source_path": target,
                    "source_sha256": old_sha,
                    "candidate_path": candidate_chunk,
                    "target_path": target,
                    "candidate_sha256": hbytes(new_bytes),
                    "old_imports": old_imports,
                    "new_imports": new_imports,
                    "cell_targets": cell_targets,
                    "row_sources": [row["source"] for row in rows],
                    "row_count": len(rows),
                    "b_count": b_count,
                    "capacity_rows_per_cell_module": capacity,
                    "a_range": [rows[0]["a"], rows[-1]["a"]],
                    "b_range": [rows[0]["b_values"][0], rows[0]["b_values"][-1]],
                    "cell_count": len(rows) * b_count,
                    "old_body_sha256": hbytes(old_body),
                    "new_body_sha256": hbytes(new_bytes[len(b"".join(f"import {item}\n".encode() for item in new_imports)):]),
                    "old_body_bytes": len(old_body),
                    "new_bytes": len(new_bytes),
                    "new_B_original_results": 0,
                }
            )
    if len(chunks) + len(skipped) != 119:
        raise ValueError(f"Chunk accounting changed: prepared={len(chunks)} skipped={len(skipped)}")
    if len(cells) != 245:
        raise ValueError(f"Cells module count changed: {len(cells)}")
    candidate_files = [
        {"target_path": item["target_path"], "candidate_path": item["candidate_path"], "sha256": item["sha256"] if "sha256" in item else item["candidate_sha256"]}
        for item in [*cells, *chunks]
    ]
    candidate_files.sort(key=lambda item: item["target_path"])
    candidate_source_root = canonical_sha(candidate_files)
    old_chunk_root = canonical_sha(
        [{"source_path": item["source_path"], "source_sha256": item["source_sha256"]} for item in chunks]
    )
    source_rows = sum(item["row_count"] for item in chunks)
    source_map = {
        "status": "PREPARED_UNCOMPILED_CELL_BUDGET_PRODUCTION",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "plan": plan,
        "excluded_tables": EXCLUDED,
        "selected_grid_count": len(selected_grids),
        "chunk_count_expected": 119,
        "prepared_chunk_count": len(chunks),
        "skipped_chunk_count": len(skipped),
        "cell_module_count_expected": 245,
        "cell_module_count": len(cells),
        "row_body_count": source_rows,
        "candidate_source_root_sha256": candidate_source_root,
        "old_current_chunk_root_sha256": old_chunk_root,
        "cells": cells,
        "chunks": chunks,
        "skipped": skipped,
        "accepted_tables": accepted,
        "no_existing_pack_sources_used": True,
        "no_mainline_sources_written": True,
        "new_B_original_results": 0,
    }
    write_json(OUT / "SOURCE_MAP.json", source_map)
    freeze = {
        "status": "SOURCE_ONLY_FREEZE_NO_LEAN_RUN",
        "created_utc": source_map["created_utc"],
        "candidate_source_root_sha256": candidate_source_root,
        "old_current_chunk_root_sha256": old_chunk_root,
        "prepared_chunk_count": len(chunks),
        "cell_module_count": len(cells),
        "row_body_count": source_rows,
        "selected_grid_count": 22,
        "excluded_tables": EXCLUDED,
        "first_candidate": {
            "chunk": chunks[0],
            "cells": [item for item in cells if item["chunk"] == chunks[0]["chunk"] and item["grid"] == chunks[0]["grid"]],
        },
        "accepted_tables": accepted,
        "invariants": {
            "all_cells_at_most_136": all(item["cell_count"] <= 136 for item in cells),
            "all_chunks_at_most_8_rows": all(item["row_count"] <= 8 for item in chunks),
            "all_chunks_bodies_unchanged": all(item["old_body_sha256"] == item["new_body_sha256"] for item in chunks),
            "all_row_bodies_exactly_once": all(all(count == 1 for count in item["body_occurrences"]) for item in cells),
            "all_math_declarations_original": True,
            "all_data_sources_current": True,
            "whole_rectangle_plan_targets_current": all(
                item["plan_source_sha256"] == item["current_source_sha256"] for item in plan["bindings"]
            ),
            "accepted_stage0pair23_25_sources_unchanged": accepted["all_sources_unchanged"],
            "no_existing_pack_sources_used": True,
            "no_Lean_invoked": True,
            "no_git_mutation": True,
            "new_B_original_results": 0,
        },
    }
    write_json(OUT / "FREEZE.json", freeze)
    notes = f"""# CRT cell-budget production candidate

This source-only candidate covers 22 tables: every CRT grid except the
accepted Stage0Pair23 and Stage0Pair25 rectangles. It uses the current live
Chunk files as the old Pack-import inputs and records every old Chunk SHA.
Original Row/Data/Composer files are never changed.

There are {len(chunks)} prepared Chunk replacements and {len(cells)} Cells
modules. Each Cells module contains complete original Row bodies in the
original public namespace, keeps every declaration/proof/print line, imports
only the original Data module plus Mathlib.Tactic.IntervalCases, and contains
at most {max(item["row_count"] for item in cells)} rows / 136 cells. Each
candidate Chunk changes only its leading imports from current Pack modules to
Cells modules; no Pack and Cells modules are imported together.

The whole-rectangle plan is recorded with its exact target and current SHA
bindings in SOURCE_MAP.json. Stage0Pair23 and Stage0Pair25 accepted-table
source SHA records are rechecked in FREEZE.json. No accepted target was
overwritten and no successful receipt was reused for a selected Chunk.

The first candidate is frozen in FREEZE.json for primary measurement:
{chunks[0]["target_path"]} with old SHA {chunks[0]["source_sha256"]} and new SHA
{chunks[0]["candidate_sha256"]}. The candidate source root is
{candidate_source_root}. This is source preparation only, with no Lean run and
no new B-original result.

Use python -B verify_cell_budget_production.py for independent static checks.
"""
    (OUT / "CHANGE_NOTES.md").write_text(notes, encoding="utf-8", newline="\n")
    manifest = {
        "status": "PREPARED_UNCOMPILED_CELL_BUDGET_PRODUCTION",
        "source_map": "SOURCE_MAP.json",
        "freeze": "FREEZE.json",
        "change_notes": "CHANGE_NOTES.md",
        "generator": rel_repo(Path(__file__)),
        "generator_sha256": hpath(Path(__file__)),
        "selected_grid_count": 22,
        "prepared_chunk_count": len(chunks),
        "cell_module_count": len(cells),
        "row_body_count": source_rows,
        "candidate_source_root_sha256": candidate_source_root,
        "old_current_chunk_root_sha256": old_chunk_root,
        "new_Lean_runs": 0,
        "new_B_original_results": 0,
    }
    write_json(OUT / "manifest.json", manifest)
    print(
        json.dumps(
            {
                "status": "prepared_source_only",
                "chunks": len(chunks),
                "cells": len(cells),
                "rows": source_rows,
                "candidate_source_root_sha256": candidate_source_root,
                "old_current_chunk_root_sha256": old_chunk_root,
            },
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
