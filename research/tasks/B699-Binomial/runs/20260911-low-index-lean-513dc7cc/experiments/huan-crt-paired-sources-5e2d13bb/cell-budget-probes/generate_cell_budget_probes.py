"""Prepare two independent source-only CRT cell-budget probes.

The probes are built from original Row/Data sources. This script never imports
the existing paired Pack candidates and never invokes Lean.
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
PREVIOUS_MAP = PAIRED / "SOURCE_MAP.json"
RUN_REL = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc"

GRID_RE = re.compile(r"^CrtStage(?P<stage>[0-3])Pair(?P<pair>23|25|27|35|37|57)$")
ROW_RE = re.compile(r"^Chunk(?P<chunk>[0-9]{3})RowA(?P<a>[0-9]+)\.lean$")
IMPORT_RE = re.compile(r"^import\s+(.+?)(?:\r?\n)?$")
NAMESPACE_RE = re.compile(r"(?m)^namespace\s+([^\r\n]+)$")
END_NAMESPACE_RE = re.compile(r"(?m)^end\s+([^\r\n]+)$")
DECL_RE = re.compile(
    r"(?m)^\s*(?P<private>private\s+)?"
    r"(?P<kind>theorem|lemma|def|abbrev|opaque|instance|structure|class|inductive)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_']*)\b"
)
CELL_RE = re.compile(r"^cellA(?P<a>[0-9]+)B(?P<b>[0-9]+)_check$")
ROW_DECL_RE = re.compile(r"^rowA(?P<a>[0-9]+)_(?:cell|block)_check$")
PRINT_RE = re.compile(r"(?m)^#print axioms ([^\r\n]+)$")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def canonical_sha(value: Any) -> str:
    text = json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def write_bytes(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(value, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )


def normalize_root(value: str) -> str:
    value = value.replace("\\", "/")
    prefix = RUN_REL + "/"
    if value.startswith(prefix):
        return value[len(RUN_REL) + 1 :]
    return value


def rel_repo(path: Path) -> str:
    return path.relative_to(REPO).as_posix()


def split_imports(data: bytes) -> tuple[list[str], bytes]:
    lines = data.splitlines(keepends=True)
    imports: list[str] = []
    index = 0
    while index < len(lines):
        line = lines[index].decode("utf-8")
        match = IMPORT_RE.match(line)
        if match is None:
            break
        imports.append(match.group(1).strip())
        index += 1
    return imports, b"".join(lines[index:])


def parse_row(path: Path) -> dict[str, Any]:
    data = path.read_bytes()
    text = data.decode("utf-8")
    imports, body = split_imports(data)
    namespaces = NAMESPACE_RE.findall(text)
    ends = END_NAMESPACE_RE.findall(text)
    if len(namespaces) != 1 or len(ends) != 1 or namespaces[0] != ends[0]:
        raise ValueError(f"namespace structure mismatch: {path}")
    declarations = []
    private_names = []
    cells: list[tuple[int, int]] = []
    row_names: list[str] = []
    for match in DECL_RE.finditer(text):
        item = {
            "kind": match.group("kind"),
            "name": match.group("name"),
            "private": bool(match.group("private")),
        }
        declarations.append(item)
        if item["private"]:
            private_names.append(item["name"])
        cell = CELL_RE.match(item["name"])
        if cell:
            cells.append((int(cell.group("a")), int(cell.group("b"))))
        if ROW_DECL_RE.match(item["name"]):
            row_names.append(item["name"])
    prints = PRINT_RE.findall(text)
    if not cells:
        raise ValueError(f"no cell declarations: {path}")
    a_values = sorted({a for a, _ in cells})
    b_values = sorted({b for _, b in cells})
    if a_values != [a_values[0]]:
        raise ValueError(f"row contains multiple a values: {path}")
    if b_values != list(range(1, b_values[-1] + 1)):
        raise ValueError(f"row b range has a gap: {path}")
    data_imports = [item for item in imports if ".Chunk" in item and item.endswith("Data")]
    if len(data_imports) != 1:
        raise ValueError(f"expected one original Data import: {path}")
    return {
        "source": rel_repo(path),
        "path": path,
        "bytes": len(data),
        "sha256": sha256_bytes(data),
        "imports": imports,
        "body": body,
        "body_sha256": sha256_bytes(body),
        "namespace": namespaces[0],
        "data_import": data_imports[0],
        "declarations": declarations,
        "private_names": private_names,
        "cells": cells,
        "a": a_values[0],
        "b_values": b_values,
        "row_names": row_names,
        "print_names": prints,
    }


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
                "receipt_sha256": sha256(path),
                "name": value.get("name"),
                "kind": value.get("kind"),
                "source_sha256": value.get("source_sha256"),
                "evidence": value.get("evidence"),
            }
        )
    return result


def row_paths(grid_dir: Path, chunk_index: int) -> list[Path]:
    result = []
    for path in grid_dir.glob(f"Chunk{chunk_index:03d}RowA*.lean"):
        match = ROW_RE.match(path.name)
        if match is not None and int(match.group("chunk")) == chunk_index:
            result.append(path)
    result.sort(key=lambda path: int(ROW_RE.match(path.name).group("a")))
    return result


def data_sources(grid_dir: Path, chunk_index: int, receipts: dict[str, list[dict[str, Any]]]) -> list[dict[str, Any]]:
    result = []
    for name in (
        f"Chunk{chunk_index:03d}Data.lean",
        f"Chunk{chunk_index:03d}DataAudit.lean",
    ):
        path = grid_dir / name
        root = f"lean/{grid_dir.name}/{name}"
        items = receipts.get(root, [])
        result.append(
            {
                "source": rel_repo(path),
                "sha256": sha256(path),
                "bytes": path.stat().st_size,
                "receipt_bound": bool(items),
                "receipts": items,
                "verification_status": "verified_receipt_bound" if items else "pending_no_receipt",
            }
        )
    return result


def transform_body(row: dict[str, Any], probe_namespace: str) -> bytes:
    old_namespace = row["namespace"]
    text = row["body"].decode("utf-8")
    text = text.replace(old_namespace, probe_namespace)
    marker = f"namespace {probe_namespace}\n"
    if marker not in text:
        raise ValueError(f"transformed namespace missing: {row['source']}")
    text = text.replace(
        marker,
        marker + f"open {old_namespace}\n",
        1,
    )
    return text.encode("utf-8")


def make_probe(
    *,
    name: str,
    stage: int,
    pair: str,
    rows: list[dict[str, Any]],
    requested_rows: int,
    requested_b: int,
    selection_reason: str,
    receipts: dict[str, list[dict[str, Any]]],
) -> dict[str, Any]:
    if len(rows) == 0 or len(rows) > 8:
        raise ValueError(f"invalid selected row count for {name}: {len(rows)}")
    namespaces = {row["namespace"] for row in rows}
    data_imports = {row["data_import"] for row in rows}
    if len(namespaces) != 1 or len(data_imports) != 1:
        raise ValueError(f"selected rows disagree on namespace/Data for {name}")
    original_namespace = next(iter(namespaces))
    data_import = next(iter(data_imports))
    imports: list[str] = []
    for row in rows:
        for item in row["imports"]:
            if item not in imports:
                imports.append(item)
    if data_import not in imports or "Mathlib.Tactic.IntervalCases" not in imports:
        raise ValueError(f"missing required imports for {name}")
    if any(item not in {data_import, "Mathlib.Tactic.IntervalCases"} for item in imports):
        raise ValueError(f"unexpected import in probe {name}: {imports}")
    a_values = [row["a"] for row in rows]
    if a_values != list(range(a_values[0], a_values[-1] + 1)):
        raise ValueError(f"selected a range is not contiguous for {name}")
    b_values = sorted(set().union(*(set(row["b_values"]) for row in rows)))
    if any(row["b_values"] != b_values for row in rows):
        raise ValueError(f"selected rows disagree on b range for {name}")
    cell_count = len(rows) * len(b_values)
    if cell_count > 136:
        raise ValueError(f"probe exceeds 136 cells: {name}")
    probe_namespace = f"Math.B699.CRTBudgetProbe.{name}"
    transformed_bodies = [transform_body(row, probe_namespace) for row in rows]
    probe_data = b"".join(
        f"import {item}\n".encode("utf-8") for item in imports
    ) + b"".join(transformed_bodies)
    target = f"lean/CrtBudgetProbes/{name}.lean"
    candidate = f"candidate/{target}"
    write_bytes(OUT / candidate, probe_data)
    candidate_sha = sha256_bytes(probe_data)
    declaration_matches = [
        match
        for body in transformed_bodies
        for match in DECL_RE.finditer(body.decode("utf-8"))
    ]
    declaration_names = [match.group("name") for match in declaration_matches]
    if len(declaration_names) != len(set(declaration_names)):
        raise ValueError(f"duplicate declaration in probe {name}")
    print_names = PRINT_RE.findall(probe_data.decode("utf-8"))
    expected_prints = cell_count + len(rows) * 2
    if len(print_names) != expected_prints:
        raise ValueError(
            f"print count mismatch in {name}: {len(print_names)} != {expected_prints}"
        )
    if any(not item.startswith(probe_namespace + ".") for item in print_names):
        raise ValueError(f"print target escaped probe namespace: {name}")
    source_items = [
        {"source": row["source"], "sha256": row["sha256"], "kind": "row"}
        for row in rows
    ]
    source_items.extend(
        {"source": item["source"], "sha256": item["sha256"], "kind": "data_source"}
        for item in data_sources(LEAN / f"CrtStage{stage}Pair{pair}", 0, receipts)
    )
    source_items.sort(key=lambda item: item["source"])
    source_root_sha = canonical_sha(source_items)
    complete_payload = {
        "name": name,
        "target": target,
        "candidate": candidate,
        "namespace": probe_namespace,
        "original_namespace": original_namespace,
        "data_import": data_import,
        "imports": imports,
        "rows": [row["source"] for row in rows],
        "a_range": [a_values[0], a_values[-1]],
        "b_range": [b_values[0], b_values[-1]],
        "cell_count": cell_count,
        "print_count": len(print_names),
        "candidate_sha256": candidate_sha,
        "source_root_sha256": source_root_sha,
    }
    complete_sha = canonical_sha(complete_payload)
    probe_root_sha = canonical_sha(
        {
            "target": target,
            "candidate_sha256": candidate_sha,
            "source_root_sha256": source_root_sha,
            "complete_sha256": complete_sha,
        }
    )
    return {
        "name": name,
        "stage": stage,
        "pair": pair,
        "candidate_path": candidate,
        "target_path": target,
        "candidate_sha256": candidate_sha,
        "candidate_bytes": len(probe_data),
        "probe_root_sha256": probe_root_sha,
        "complete_sha256": complete_sha,
        "source_root_sha256": source_root_sha,
        "namespace": probe_namespace,
        "original_data_namespace": original_namespace,
        "imports": imports,
        "data_import": data_import,
        "data_sources": data_sources(LEAN / f"CrtStage{stage}Pair{pair}", 0, receipts),
        "rows": [
            {
                "source": row["source"],
                "sha256": row["sha256"],
                "bytes": row["bytes"],
                "body_sha256": row["body_sha256"],
                "a": row["a"],
                "b_range": [row["b_values"][0], row["b_values"][-1]],
                "cell_count": len(row["cells"]),
                "declaration_names": [item["name"] for item in row["declarations"]],
                "private_names": row["private_names"],
                "print_count": len(row["print_names"]),
            }
            for row in rows
        ],
        "requested_rows": requested_rows,
        "requested_b": requested_b,
        "selection_reason": selection_reason,
        "selected_rows": len(rows),
        "a_range": [a_values[0], a_values[-1]],
        "b_range": [b_values[0], b_values[-1]],
        "cell_count": cell_count,
        "print_count": len(print_names),
        "private_declaration_count": sum(len(row["private_names"]) for row in rows),
        "declaration_conflicts": [],
        "new_B_original_results": 0,
    }


def theory_counts(receipts: dict[str, list[dict[str, Any]]]) -> dict[str, Any]:
    excluded = {
        "CrtStage0Pair23": "accepted_rectangle",
        "CrtStage0Pair25": "active_primary_v27",
    }
    grids = []
    for grid_dir in sorted(LEAN.glob("CrtStage*Pair*")):
        match = GRID_RE.match(grid_dir.name)
        if match is None or grid_dir.name in excluded:
            continue
        stage = int(match.group("stage"))
        pair = match.group("pair")
        chunks = []
        for chunk_path in sorted(grid_dir.glob("Chunk[0-9][0-9][0-9].lean")):
            chunk_match = re.match(r"^Chunk([0-9]{3})\.lean$", chunk_path.name)
            if chunk_match is None:
                continue
            index = int(chunk_match.group(1))
            rows = row_paths(grid_dir, index)
            if len(rows) == 0 or len(rows) > 8:
                raise ValueError(f"unexpected Chunk row count: {grid_dir.name}/{chunk_path.name}")
            parsed = [parse_row(path) for path in rows]
            b_ranges = {tuple(row["b_values"]) for row in parsed}
            if len(b_ranges) != 1:
                raise ValueError(f"grid b ranges disagree: {grid_dir.name}/{chunk_path.name}")
            bmax = len(parsed[0]["b_values"])
            rows_per_module = min(8, 136 // bmax)
            if rows_per_module < 1:
                raise ValueError(f"no 136-cell module fits b={bmax}")
            chunks.append(
                {
                    "chunk": index,
                    "rows": len(rows),
                    "bmax": bmax,
                    "current_two_row_packs": math.ceil(len(rows) / 2),
                    "budget_rows_per_pack": rows_per_module,
                    "budget_packs": math.ceil(len(rows) / rows_per_module),
                }
            )
        grids.append(
            {
                "grid": grid_dir.name,
                "stage": stage,
                "pair": pair,
                "amax": sum(item["rows"] for item in chunks),
                "bmax": sorted({item["bmax"] for item in chunks}),
                "chunk_count": len(chunks),
                "current_two_row_packs": sum(item["current_two_row_packs"] for item in chunks),
                "budget_packs": sum(item["budget_packs"] for item in chunks),
                "chunks": chunks,
            }
        )
    previous = json.loads(PREVIOUS_MAP.read_text(encoding="utf-8"))
    baseline = int(previous["prepared_pack_count"])
    active_count = sum(
        1
        for item in previous["packs"]
        if item["target_path"].startswith("lean/CrtStage0Pair25/")
    )
    current_scope = baseline - active_count
    budget_total = sum(item["budget_packs"] for item in grids)
    return {
        "scope": "remaining_22_unverified_tables_excluding_Stage0Pair25_active_v27",
        "excluded": excluded,
        "baseline_previous_pack_count": baseline,
        "excluded_active_Stage0Pair25_pack_count": active_count,
        "current_two_row_pack_count_same_scope": current_scope,
        "theoretical_budget_pack_count": budget_total,
        "theoretical_reduction_same_scope": current_scope - budget_total,
        "naive_reduction_against_full_495": baseline - budget_total,
        "grid_count": len(grids),
        "grids": grids,
        "new_B_original_results": 0,
        "no_large_candidate_generated": True,
    }


def main() -> None:
    receipts = load_receipts()
    stage0_dir = LEAN / "CrtStage0Pair27"
    stage3_dir = LEAN / "CrtStage3Pair23"
    rows0_all = [parse_row(path) for path in row_paths(stage0_dir, 0)]
    rows3_all = [parse_row(path) for path in row_paths(stage3_dir, 0)]
    if len(rows0_all) != 8 or len(rows3_all) != 8:
        raise ValueError("both target Chunk000 sources must have eight rows")
    b0 = len(rows0_all[0]["b_values"])
    b3 = len(rows3_all[0]["b_values"])
    if b0 != 38:
        raise ValueError(f"Stage0Pair27 actual b range is {b0}, expected 38")
    if any(len(row["b_values"]) != b0 for row in rows0_all):
        raise ValueError("Stage0Pair27 rows disagree on b range")
    if any(len(row["b_values"]) != b3 for row in rows3_all):
        raise ValueError("Stage3Pair23 rows disagree on b range")
    if b3 == 17:
        rows3 = rows3_all
        stage3_reason = "actual b range is 17; full eight rows fit exactly 136 cells"
    else:
        max_rows = min(8, 136 // b3)
        rows3 = rows3_all[:max_rows]
        stage3_reason = (
            f"actual b range is {b3}, not 17; selected {max_rows} full rows "
            f"with all actual b columns, <=136 cells"
        )
    probes = [
        make_probe(
            name="Stage0Pair27Chunk000114",
            stage=0,
            pair="27",
            rows=rows0_all[:3],
            requested_rows=3,
            requested_b=38,
            selection_reason="first three original rows and all 38 original columns; preserves Stage00 exponentMax2=108 / 2^109 scale",
            receipts=receipts,
        ),
        make_probe(
            name=f"Stage3Pair23Chunk000{len(rows3) * b3}",
            stage=3,
            pair="23",
            rows=rows3,
            requested_rows=8,
            requested_b=17,
            selection_reason=stage3_reason,
            receipts=receipts,
        ),
    ]
    counts = theory_counts(receipts)
    source_map = {
        "status": "PREPARED_UNCOMPILED_CELL_BUDGET_PROBES",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "probes": probes,
        "theory_counts": counts,
        "no_existing_pack_sources_used": True,
        "no_mainline_sources_written": True,
        "new_B_original_results": 0,
    }
    write_json(OUT / "SOURCE_MAP.json", source_map)
    freeze = {
        "status": "SOURCE_ONLY_FREEZE_NO_LEAN_RUN",
        "created_utc": source_map["created_utc"],
        "probe_count": len(probes),
        "probes": [
            {
                "name": item["name"],
                "target_path": item["target_path"],
                "candidate_sha256": item["candidate_sha256"],
                "source_root_sha256": item["source_root_sha256"],
                "complete_sha256": item["complete_sha256"],
                "probe_root_sha256": item["probe_root_sha256"],
                "data_verification_status": [source["verification_status"] for source in item["data_sources"]],
            }
            for item in probes
        ],
        "theory_counts": counts,
        "invariants": {
            "all_probe_cells_at_most_136": all(item["cell_count"] <= 136 for item in probes),
            "all_probe_rows_at_most_8": all(item["selected_rows"] <= 8 for item in probes),
            "all_probe_rows_preserve_original_data": all(
                item["data_import"] in item["imports"] for item in probes
            ),
            "all_probe_namespaces_independent": len({item["namespace"] for item in probes}) == len(probes),
            "all_probe_prints_preserved": all(
                item["print_count"] == item["cell_count"] + item["selected_rows"] * 2
                for item in probes
            ),
            "no_existing_pack_sources_used": True,
            "no_Lean_invoked": True,
            "no_git_mutation": True,
            "new_B_original_results": 0,
        },
    }
    write_json(OUT / "FREEZE.json", freeze)
    notes = f"""# CRT cell budget probes

This directory contains two source-only resource probes built directly from
original Row and Data sources. Existing paired Pack files were not imported or
copied, and Stage0Pair25 sources were excluded because the primary v27 run owns
that table.

- Stage0Pair27 Chunk000: first three rows, all 38 columns, 114 cells. The
  source metadata keeps Stage00 exponentMax2=108, so the probe retains the
  2^109 boundary scale.
- Stage3Pair23 Chunk000: {probes[1]["selected_rows"]} rows, all {probes[1]["b_range"][1]} actual columns,
  {probes[1]["cell_count"]} cells. {probes[1]["selection_reason"]}

Each probe uses a fresh namespace, opens the original Data namespace, imports
only the original Data module and Mathlib.Tactic.IntervalCases, and retains
every selected Row declaration, proof body, cell print, and row print. The
Data and DataAudit source hashes are recorded separately. Both target Data
sources currently have no bound success receipt, so they remain pending source
inputs rather than accepted results.

For the remaining 22 tables, the theoretical budget count uses at most eight
rows per Chunk and at most 136 cells per module. Same-scope comparison is
{counts["current_two_row_pack_count_same_scope"]} existing two-row modules versus
{counts["theoretical_budget_pack_count"]} theoretical budget modules, a reduction
of {counts["theoretical_reduction_same_scope"]}. The arithmetic comparison
against the full previous 495 count is {counts["naive_reduction_against_full_495"]},
which includes the excluded active Stage0Pair25 table and is therefore not the
same scope. No large candidate version was generated and no B-original result
was added.

The independent candidate, source-root, complete, and probe-root SHA values are
in SOURCE_MAP.json and FREEZE.json. Run
python -B verify_cell_budget_probes.py
for static checks only; it does not invoke Lean.
"""
    (OUT / "CHANGE_NOTES.md").write_text(notes, encoding="utf-8", newline="\n")
    manifest = {
        "status": "PREPARED_UNCOMPILED_CELL_BUDGET_PROBES",
        "source_map": "SOURCE_MAP.json",
        "freeze": "FREEZE.json",
        "counts": "SOURCE_MAP.json::theory_counts",
        "change_notes": "CHANGE_NOTES.md",
        "generator": rel_repo(Path(__file__)),
        "generator_sha256": sha256(Path(__file__)),
        "probe_count": len(probes),
        "probe_root_sha256": [item["probe_root_sha256"] for item in probes],
        "candidate_sha256": [item["candidate_sha256"] for item in probes],
        "new_Lean_runs": 0,
        "new_B_original_results": 0,
        "no_large_candidate_generated": True,
    }
    write_json(OUT / "manifest.json", manifest)
    print(
        json.dumps(
            {
                "status": "prepared_source_only",
                "probe_count": len(probes),
                "probes": [
                    {
                        "name": item["name"],
                        "cells": item["cell_count"],
                        "candidate_sha256": item["candidate_sha256"],
                        "probe_root_sha256": item["probe_root_sha256"],
                    }
                    for item in probes
                ],
                "theory_counts": {
                    "current_same_scope": counts["current_two_row_pack_count_same_scope"],
                    "budget": counts["theoretical_budget_pack_count"],
                    "reduction": counts["theoretical_reduction_same_scope"],
                },
            },
            ensure_ascii=False,
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
