"""Prepare source-only two-row CRT modules and Chunk import replacements.

This script never invokes Lean and never edits the run's ``lean`` tree.  It
copies each selected row's non-import source bytes into a production namespace
pack, then rewrites only the import prefix of a candidate Chunk file.  The
candidate tree is written below this experiment directory.
"""

from __future__ import annotations

import hashlib
import json
import re
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
REPO = RUN.parents[4]
LEAN = RUN / "lean"
CANDIDATE_LEAN = OUT / "candidate" / "lean"
PLAN_PATH = RUN / "notes" / "huan-complete-crt-grid-plan.json"
RECEIPT_DIR = RUN / "verification" / "huan-prerequisites"
RUN_REL = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc"
PKG = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»"

GRID_RE = re.compile(r"^CrtStage(?P<stage>[0-3])Pair(?P<pair>23|25|27|35|37|57)$")
CHUNK_RE = re.compile(r"^Chunk(?P<index>\d{3})\.lean$")
ROW_RE = re.compile(r"^Chunk(?P<chunk>\d{3})RowA(?P<a>\d+)\.lean$")
IMPORT_RE = re.compile(r"^import\s+(.+?)(?:\r?\n)?$")
NAMESPACE_RE = re.compile(r"(?m)^namespace\s+([^\r\n]+)$")
END_NAMESPACE_RE = re.compile(r"(?m)^end\s+([^\r\n]+)$")
DECL_RE = re.compile(
    r"(?m)^\s*(?P<private>private\s+)?"
    r"(?P<kind>theorem|lemma|def|abbrev|opaque|instance|structure|class|inductive)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_']*)\b"
)
CELL_DECL_RE = re.compile(r"^cellA(?P<a>\d+)B(?P<b>\d+)_check$")
ROW_DECL_RE = re.compile(r"^rowA(?P<a>\d+)_(?:cell|block)_check$")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def write_bytes(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def write_json(path: Path, value: Any) -> None:
    text = json.dumps(value, ensure_ascii=False, indent=2) + "\n"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def canonical_sha(value: Any) -> str:
    text = json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def rel_run(path: Path) -> str:
    return path.relative_to(RUN).as_posix()


def rel_repo(path: Path) -> str:
    return path.relative_to(REPO).as_posix()


def normalize_root(value: str) -> str:
    value = value.replace("\\", "/")
    prefix = RUN_REL + "/"
    if value.startswith(prefix):
        return value[len(RUN_REL) + 1 :]
    return value


def module_for_target(target: str) -> str:
    parts = target.replace("\\", "/").split("/")
    if parts[0] != "lean" or not parts[-1].endswith(".lean"):
        raise ValueError(f"not a Lean target path: {target}")
    parts[-1] = parts[-1][:-5]
    return PKG + "." + ".".join(parts)


def split_imports(data: bytes) -> tuple[list[str], bytes]:
    """Return leading import names and the exact remaining source bytes."""

    lines = data.splitlines(keepends=True)
    imports: list[str] = []
    index = 0
    while index < len(lines):
        try:
            line = lines[index].decode("utf-8")
        except UnicodeDecodeError as exc:
            raise ValueError("source is not UTF-8") from exc
        match = IMPORT_RE.match(line)
        if match is None:
            break
        imports.append(match.group(1).strip())
        index += 1
    return imports, b"".join(lines[index:])


def source_records(data: bytes, source: str) -> dict[str, Any]:
    text = data.decode("utf-8")
    imports, body = split_imports(data)
    namespaces = NAMESPACE_RE.findall(text)
    ends = END_NAMESPACE_RE.findall(text)
    declarations = []
    private_declarations = []
    for match in DECL_RE.finditer(text):
        item = {
            "kind": match.group("kind"),
            "name": match.group("name"),
            "private": bool(match.group("private")),
        }
        declarations.append(item)
        if item["private"]:
            private_declarations.append(item["name"])
    cell_pairs = []
    row_numbers = []
    for item in declarations:
        cell = CELL_DECL_RE.match(item["name"])
        if cell:
            cell_pairs.append((int(cell.group("a")), int(cell.group("b"))))
        row = ROW_DECL_RE.match(item["name"])
        if row:
            row_numbers.append(int(row.group("a")))
    data_imports = [item for item in imports if ".Chunk" in item and item.endswith("Data")]
    return {
        "source": source,
        "source_sha256": sha256_bytes(data),
        "bytes": len(data),
        "imports": imports,
        "data_imports": data_imports,
        "body_sha256": sha256_bytes(body),
        "body_bytes": len(body),
        "body": body,
        "namespace": namespaces[0] if namespaces else None,
        "namespace_count": len(namespaces),
        "end_namespace": ends[-1] if ends else None,
        "end_namespace_count": len(ends),
        "declarations": declarations,
        "private_declarations": private_declarations,
        "cell_pairs": cell_pairs,
        "row_numbers": row_numbers,
    }


def load_receipts() -> dict[str, list[dict[str, Any]]]:
    by_root: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for path in sorted(RECEIPT_DIR.glob("*.json")):
        try:
            value = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        root = value.get("root")
        if not isinstance(root, str):
            continue
        root_key = normalize_root(root)
        if not root_key.startswith("lean/"):
            continue
        by_root[root_key].append(
            {
                "receipt": rel_repo(path),
                "receipt_sha256": sha256(path),
                "name": value.get("name"),
                "kind": value.get("kind"),
                "source_sha256": value.get("source_sha256"),
                "root": root,
                "evidence": value.get("evidence"),
            }
        )
    return dict(by_root)


def plan_job_name(stage: int, pair: str, index: int) -> str:
    return f"crt-stage{stage}-pair{pair}-chunk{index:03d}"


def grid_sort_key(path: Path) -> tuple[int, str]:
    match = GRID_RE.match(path.name)
    if match is None:
        return (99, path.name)
    return (int(match.group("stage")), path.name)


def get_plan_jobs() -> tuple[dict[str, Any], list[dict[str, Any]]]:
    plan = json.loads(PLAN_PATH.read_text(encoding="utf-8"))
    jobs = list(plan.get("jobs", []))
    if len(jobs) != 171:
        raise ValueError(f"source plan job count changed: {len(jobs)}")
    by_root = {normalize_root(str(job["root"])): job for job in jobs}
    if len(by_root) != len(jobs):
        raise ValueError("source plan contains duplicate roots")
    return plan, jobs


def accepted_rectangle_freeze() -> dict[str, Any]:
    receipt_path = RECEIPT_DIR / "crt-stage0-pair23-rectangle.json"
    if not receipt_path.exists():
        return {
            "receipt": rel_repo(receipt_path),
            "available": False,
            "all_sources_unchanged": False,
            "records": [],
        }
    receipt = json.loads(receipt_path.read_text(encoding="utf-8"))
    evidence_value = receipt.get("evidence")
    evidence_path = None
    if isinstance(evidence_value, str):
        evidence_path = REPO / normalize_repo_evidence(evidence_value)
    evidence: dict[str, Any] = {}
    if evidence_path is not None and evidence_path.exists():
        evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
    records_by_source: dict[str, dict[str, Any]] = {}
    for item in evidence.get("reuse_records", []):
        if not isinstance(item, dict) or not isinstance(item.get("source"), str):
            continue
        source = item["source"].replace("\\", "/")
        if "/CrtStage0Pair23/" not in source:
            continue
        if not source.endswith(".lean"):
            continue
        expected = item.get("source_sha256_after") or item.get("source_sha256_before")
        if not isinstance(expected, str):
            continue
        records_by_source[source] = {
            "source": source,
            "expected_sha256": expected.lower(),
            "current_sha256": None,
            "unchanged": False,
        }
    records: list[dict[str, Any]] = []
    for source in sorted(records_by_source):
        source_path = repo_source_path(source)
        current = sha256(source_path) if source_path.exists() else None
        item = dict(records_by_source[source])
        item["current_sha256"] = current
        item["unchanged"] = current == item["expected_sha256"]
        records.append(item)
    evidence_rel = rel_repo(evidence_path) if evidence_path is not None else None
    return {
        "receipt": rel_repo(receipt_path),
        "receipt_sha256": sha256(receipt_path),
        "receipt_source_sha256": receipt.get("source_sha256"),
        "evidence": evidence_rel,
        "evidence_sha256": sha256(evidence_path) if evidence_path is not None and evidence_path.exists() else None,
        "available": bool(records),
        "record_count": len(records),
        "all_sources_unchanged": bool(records) and all(item["unchanged"] for item in records),
        "records": records,
    }


def normalize_repo_evidence(value: str) -> str:
    value = value.replace("\\", "/")
    if value.startswith(RUN_REL + "/"):
        return value
    return value


def repo_source_path(source: str) -> Path:
    source = source.replace("\\", "/")
    if source.startswith("research/"):
        return REPO / source
    return RUN / source


def main() -> None:
    plan, plan_jobs = get_plan_jobs()
    receipts = load_receipts()
    accepted = accepted_rectangle_freeze()
    selected_grids = []
    skipped_grids = []
    for grid_dir in sorted(LEAN.glob("CrtStage*Pair*"), key=grid_sort_key):
        match = GRID_RE.match(grid_dir.name)
        if match is None:
            continue
        stage = int(match.group("stage"))
        pair = match.group("pair")
        if stage == 0 and pair == "23":
            skipped_grids.append(
                {
                    "grid": grid_dir.name,
                    "reason": "first accepted rectangle and bound Chunk receipts; no pack or import rewrite",
                    "receipt_roots": sorted(
                        root for root in receipts if root.startswith(f"lean/{grid_dir.name}/")
                    ),
                }
            )
        else:
            selected_grids.append((grid_dir, stage, pair))
    if len(selected_grids) != 23:
        raise ValueError(f"expected 23 unaccepted grids, found {len(selected_grids)}")

    prepared_chunks: list[dict[str, Any]] = []
    prepared_packs: list[dict[str, Any]] = []
    skipped_targets: list[dict[str, Any]] = []
    conflicts: list[dict[str, Any]] = []
    output_paths: set[str] = set()

    for grid_dir, stage, pair in selected_grids:
        for chunk_path in sorted(grid_dir.glob("Chunk[0-9][0-9][0-9].lean")):
            chunk_match = CHUNK_RE.match(chunk_path.name)
            assert chunk_match is not None
            index = int(chunk_match.group("index"))
            target = f"lean/{grid_dir.name}/{chunk_path.name}"
            old_bytes = chunk_path.read_bytes()
            old_sha = sha256_bytes(old_bytes)
            job_name = plan_job_name(stage, pair, index)
            plan_job = next((item for item in plan_jobs if item.get("name") == job_name), None)
            if plan_job is None:
                raise ValueError(f"missing source-plan job {job_name}")
            if normalize_root(str(plan_job["root"])) != target:
                raise ValueError(f"source-plan root mismatch for {target}")
            if str(plan_job.get("source_sha256", "")).lower() != old_sha:
                raise ValueError(f"source-plan SHA mismatch for {target}")
            receipt_items = receipts.get(target, [])
            if receipt_items:
                skipped_targets.append(
                    {
                        "target": target,
                        "job": job_name,
                        "reason": "existing receipt bound this exact Chunk; preserved for rollback",
                        "receipts": receipt_items,
                        "current_sha256": old_sha,
                    }
                )
                continue

            rows: list[dict[str, Any]] = []
            for row_path in grid_dir.glob(f"{chunk_path.stem}RowA*.lean"):
                row_match = ROW_RE.match(row_path.name)
                if row_match is None or int(row_match.group("chunk")) != index:
                    continue
                row_data = source_records(row_path.read_bytes(), rel_repo(row_path))
                row_data["a"] = int(row_match.group("a"))
                row_data["row_file"] = row_path.name
                rows.append(row_data)
            rows.sort(key=lambda item: item["a"])
            if not rows:
                raise ValueError(f"no row sources found for {target}")
            a_values = [item["a"] for item in rows]
            if a_values != list(range(a_values[0], a_values[-1] + 1)):
                raise ValueError(f"row a-range has a gap for {target}: {a_values}")
            chunk_imports, chunk_body = split_imports(old_bytes)
            expected_row_modules = [
                module_for_target(f"lean/{grid_dir.name}/{item['row_file']}") for item in rows
            ]
            if chunk_imports != expected_row_modules:
                raise ValueError(
                    f"Chunk imports do not equal row sources for {target}: "
                    f"{chunk_imports!r} != {expected_row_modules!r}"
                )
            namespaces = {item["namespace"] for item in rows}
            if len(namespaces) != 1 or None in namespaces:
                raise ValueError(f"row namespace mismatch for {target}: {namespaces}")
            for item in rows:
                if item["end_namespace"] != item["namespace"]:
                    raise ValueError(f"namespace end mismatch for {item['source']}")
                if item["namespace"] != f"Math.B699.CRTStage{stage}Pair{pair}.{chunk_path.stem}":
                    raise ValueError(f"public namespace changed in {item['source']}")
            data_import_sets = {tuple(item["data_imports"]) for item in rows}
            if len(data_import_sets) != 1 or not next(iter(data_import_sets)):
                raise ValueError(f"row Data imports disagree for {target}: {data_import_sets}")
            shared_data_imports = sorted(next(iter(data_import_sets)))
            all_b_values = set()
            for item in rows:
                pairs = [pair_value for pair_value in item["cell_pairs"] if pair_value[0] == item["a"]]
                b_values = sorted({b for _, b in pairs})
                if b_values != list(range(1, b_values[-1] + 1)):
                    raise ValueError(f"b-range has a gap for {item['source']}: {b_values}")
                all_b_values.update(b_values)
            b_values = sorted(all_b_values)

            declaration_names: dict[str, str] = {}
            pair_conflicts: list[dict[str, Any]] = []
            for item in rows:
                for decl in item["declarations"]:
                    name = decl["name"]
                    if name in declaration_names:
                        pair_conflicts.append(
                            {
                                "name": name,
                                "first": declaration_names[name],
                                "second": item["source"],
                                "private": decl["private"],
                            }
                        )
                    else:
                        declaration_names[name] = item["source"]
            if pair_conflicts:
                conflict = {
                    "target": target,
                    "rows": [item["source"] for item in rows],
                    "conflicts": pair_conflicts,
                    "action": "skipped; no declaration or private-name rewriting performed",
                }
                conflicts.append(conflict)
                skipped_targets.append(
                    {
                        "target": target,
                        "job": job_name,
                        "reason": "two-row declaration conflict",
                        "conflict_index": len(conflicts) - 1,
                        "current_sha256": old_sha,
                    }
                )
                continue

            chunk_pack_modules: list[str] = []
            chunk_pack_targets: list[str] = []
            for pack_index in range(0, len(rows), 2):
                pack_rows = rows[pack_index : pack_index + 2]
                pack_name = f"Pack{index:03d}P{pack_index // 2}.lean"
                pack_target = f"lean/{grid_dir.name}/{pack_name}"
                pack_candidate = f"candidate/{pack_target}"
                imports: list[str] = []
                for item in pack_rows:
                    for imported in item["imports"]:
                        if imported not in imports:
                            imports.append(imported)
                import_bytes = b"".join(f"import {item}\n".encode("utf-8") for item in imports)
                pack_body = b"".join(item["body"] for item in pack_rows)
                pack_bytes = import_bytes + pack_body
                if any(pack_body.count(item["body"]) != 1 for item in pack_rows):
                    raise ValueError(f"row body is not present exactly once in {pack_target}")
                if pack_target in output_paths:
                    raise ValueError(f"candidate target collision: {pack_target}")
                write_bytes(OUT / pack_candidate, pack_bytes)
                output_paths.add(pack_target)
                chunk_pack_modules.append(module_for_target(pack_target))
                chunk_pack_targets.append(pack_target)
                prepared_packs.append(
                    {
                        "candidate_path": pack_candidate,
                        "target_path": pack_target,
                        "module": module_for_target(pack_target),
                        "sha256": sha256_bytes(pack_bytes),
                        "bytes": len(pack_bytes),
                        "imports": imports,
                        "source_rows": [item["source"] for item in pack_rows],
                        "source_row_files": [item["row_file"] for item in pack_rows],
                        "source_row_sha256": [item["source_sha256"] for item in pack_rows],
                        "source_row_body_sha256": [item["body_sha256"] for item in pack_rows],
                        "body_occurrences": [pack_body.count(item["body"]) for item in pack_rows],
                        "row_count": len(pack_rows),
                        "a_range": [pack_rows[0]["a"], pack_rows[-1]["a"]],
                        "b_range": [b_values[0], b_values[-1]],
                        "namespace": next(iter(namespaces)),
                        "data_imports": shared_data_imports,
                        "declaration_names": [
                            decl["name"] for item in pack_rows for decl in item["declarations"]
                        ],
                    }
                )

            new_import_bytes = b"".join(
                f"import {module}\n".encode("utf-8") for module in chunk_pack_modules
            )
            new_bytes = new_import_bytes + chunk_body
            if new_bytes[len(new_import_bytes) :] != chunk_body:
                raise ValueError(f"Chunk body changed during replacement: {target}")
            chunk_candidate = f"candidate/{target}"
            write_bytes(OUT / chunk_candidate, new_bytes)
            output_paths.add(target)
            prepared_chunks.append(
                {
                    "source_path": target,
                    "source_sha256": old_sha,
                    "source_bytes": len(old_bytes),
                    "candidate_path": chunk_candidate,
                    "target_path": target,
                    "candidate_sha256": sha256_bytes(new_bytes),
                    "candidate_bytes": len(new_bytes),
                    "job": job_name,
                    "stage": stage,
                    "pair": pair,
                    "chunk": index,
                    "row_sources": [item["source"] for item in rows],
                    "row_files": [item["row_file"] for item in rows],
                    "row_count": len(rows),
                    "a_range": [a_values[0], a_values[-1]],
                    "b_range": [b_values[0], b_values[-1]],
                    "old_imports": chunk_imports,
                    "new_imports": chunk_pack_modules,
                    "new_pack_targets": chunk_pack_targets,
                    "old_body_sha256": sha256_bytes(chunk_body),
                    "old_body_bytes": len(chunk_body),
                    "new_body_sha256": sha256_bytes(new_bytes[len(new_import_bytes) :]),
                    "data_imports": shared_data_imports,
                    "namespace": next(iter(namespaces)),
                    "all_row_bodies_in_packs_exactly_once": all(
                        pack["body_occurrences"] == [1] * pack["row_count"]
                        for pack in prepared_packs[-((len(rows) + 1) // 2) :]
                    ),
                }
            )

    if conflicts:
        raise ValueError(f"cannot prepare {len(conflicts)} Chunk(s) due to declaration conflicts")

    # Every selected unreceipted source Chunk is expected to be prepared.
    selected_chunk_jobs = [
        job
        for job in plan_jobs
        if str(job.get("name", "")).startswith("crt-stage")
        and "-chunk" in str(job.get("name", ""))
        and "crt-stage0-pair23-" not in str(job.get("name", ""))
    ]
    if len(selected_chunk_jobs) != 133:
        raise ValueError(f"expected 133 selected Chunk jobs, found {len(selected_chunk_jobs)}")
    if len(prepared_chunks) + len(skipped_targets) != 133:
        raise ValueError(
            f"selected Chunk accounting mismatch: prepared={len(prepared_chunks)} "
            f"skipped={len(skipped_targets)}"
        )

    chunk_by_target = {item["source_path"]: item for item in prepared_chunks}
    plan_records: list[dict[str, Any]] = []
    for job in plan_jobs:
        root = normalize_root(str(job["root"]))
        root_path = RUN / root
        current_sha = sha256(root_path) if root_path.exists() else None
        old_sha = str(job.get("source_sha256", "")).lower()
        if current_sha != old_sha:
            raise ValueError(f"current source changed against plan: {root}")
        if root in chunk_by_target:
            item = chunk_by_target[root]
            candidate_sha = item["candidate_sha256"]
            status = "prepared_two_row_chunk_import_candidate"
            candidate_path = item["candidate_path"]
        else:
            candidate_sha = current_sha
            candidate_path = None
            if root.startswith("lean/CrtStage0Pair23/"):
                status = "skipped_first_accepted_rectangle_source"
            elif root.endswith(".lean") and "/CompleteComposer" in root:
                status = "unmodified_pending_rectangle_source"
            elif root.startswith("lean/"):
                status = "unmodified_pending_or_non_chunk_source"
            else:
                status = "unmodified_plan_source"
        plan_records.append(
            {
                "name": job["name"],
                "root": root,
                "source_sha256": old_sha,
                "candidate_target": root,
                "candidate_path": candidate_path,
                "candidate_sha256": candidate_sha,
                "status": status,
            }
        )
    if len(plan_records) != 171:
        raise ValueError("candidate plan mapping lost a source-plan job")

    source_root_records = [
        {
            "target_path": item["target_path"],
            "candidate_path": item["candidate_path"],
            "sha256": item["sha256"] if "sha256" in item else item["candidate_sha256"],
        }
        for item in [*prepared_packs, *prepared_chunks]
    ]
    source_root_records.sort(key=lambda item: item["target_path"])
    candidate_source_root_sha = canonical_sha(source_root_records)
    candidate_plan_root_sha = canonical_sha(plan_records)

    source_map = {
        "status": "PREPARED_UNCOMPILED_SOURCE_ONLY",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "plan": rel_repo(PLAN_PATH),
        "plan_sha256": sha256(PLAN_PATH),
        "candidate_new_root_sha256": candidate_plan_root_sha,
        "candidate_source_root_sha256": candidate_source_root_sha,
        "plan_job_count": len(plan_records),
        "chunk_job_count": 147,
        "prepared_chunk_count": len(prepared_chunks),
        "prepared_pack_count": len(prepared_packs),
        "skipped_target_count": len(skipped_targets),
        "rows_per_pack_max": 2,
        "memory_recommendation_mb": 1536,
        "memory_recommendation_basis": {
            "receipt": rel_repo(RECEIPT_DIR / "crt-two-row-packing-1536.json"),
            "qualification": "same 136-cell two-row pilot passed at 1536MiB; first new grid block still needs primary measurement",
        },
        "grids": {
            "total": 24,
            "prepared": 23,
            "skipped": skipped_grids,
        },
        "chunks": prepared_chunks,
        "packs": prepared_packs,
        "skipped_targets": skipped_targets,
        "conflicts": conflicts,
        "candidate_plan_records": plan_records,
        "candidate_source_root_records": source_root_records,
    }
    write_json(OUT / "SOURCE_MAP.json", source_map)

    freeze = {
        "status": "SOURCE_ONLY_FREEZE_NO_LEAN_RUN",
        "created_utc": source_map["created_utc"],
        "candidate_new_root_sha256": candidate_plan_root_sha,
        "candidate_source_root_sha256": candidate_source_root_sha,
        "plan_sha256": source_map["plan_sha256"],
        "plan_job_count": 171,
        "chunk_job_count": 147,
        "prepared_chunk_count": len(prepared_chunks),
        "prepared_pack_count": len(prepared_packs),
        "skipped_grid_count": len(skipped_grids),
        "skipped_target_count": len(skipped_targets),
        "rows_per_pack_max": 2,
        "memory_recommendation_mb": 1536,
        "memory_recommendation_basis": source_map["memory_recommendation_basis"],
        "first_accepted_rectangle": accepted,
        "invariants": {
            "all_prepared_row_bodies_once": all(
                all(count == 1 for count in pack["body_occurrences"])
                for pack in prepared_packs
            ),
            "all_prepared_packs_at_most_two_rows": all(pack["row_count"] <= 2 for pack in prepared_packs),
            "all_prepared_chunks_preserve_a_b_ranges": all(
                item["a_range"][0] <= item["a_range"][1]
                and item["b_range"] == [1, item["b_range"][1]]
                for item in prepared_chunks
            ),
            "all_prepared_rows_share_original_data": all(
                len(item["data_imports"]) == 1 for item in prepared_chunks
            ),
            "source_plan_quantity_same": len(plan_records) == 171,
            "first_accepted_rectangle_sources_unchanged": accepted.get("all_sources_unchanged", False),
            "no_lean_invoked": True,
            "no_git_mutation": True,
            "original_row_data_composer_unchanged": True,
        },
        "conflicts": conflicts,
        "candidate_files": source_root_records,
    }
    write_json(OUT / "FREEZE.json", freeze)

    notes = f"""# CRT paired source preparation

This experiment prepares a source-only candidate for the 23 unaccepted CRT
grids in the existing 171-job plan. It creates `{len(prepared_packs)}` short
production-namespace `PackNNNPk.lean` files and `{len(prepared_chunks)}` Chunk
import replacements. Every pack contains one or two original row bodies, with
the leading imports collected at the top. The public namespace, theorem names,
proof bodies, and `#print axioms` lines remain byte-identical inside each row
body. Every candidate Chunk keeps its original body bytes and changes only its
leading imports from Row modules to Pack modules.

The existing `CrtStage0Pair23` rectangle and its bound Chunk receipts were
skipped entirely. The `FREEZE.json` record rechecks all Stage0Pair23 source
SHA-256 values listed by the first accepted rectangle evidence. Original
Row/Data/Composer files remain in the run's `lean` tree and were not edited.

The candidate plan root SHA is `{candidate_plan_root_sha}`. It is a
deterministic SHA-256 over the 171 plan-job mappings and is a source-package
identity, not a Git commit and not Lean acceptance. The generated-source root
SHA is `{candidate_source_root_sha}`.

The 1536MiB recommendation comes from the independent two-row, 136-cell pilot
receipt `crt-two-row-packing-1536.json`. It is a starting value for the primary
task; the first new grid block still requires a fresh measurement, and this
source preparation itself runs no Lean.

Use `python -B generate_paired_sources.py` to rebuild the candidate and
`python -B verify_paired_sources.py` for the independent source-only checks.
"""
    (OUT / "CHANGE_NOTES.md").write_text(notes, encoding="utf-8", newline="\n")
    write_json(
        OUT / "manifest.json",
        {
            "status": "PREPARED_UNCOMPILED_SOURCE_ONLY",
            "source_map": "SOURCE_MAP.json",
            "freeze": "FREEZE.json",
            "change_notes": "CHANGE_NOTES.md",
            "generator": rel_repo(Path(__file__)),
            "generator_sha256": sha256(Path(__file__)),
            "candidate_new_root_sha256": candidate_plan_root_sha,
            "candidate_source_root_sha256": candidate_source_root_sha,
            "plan_job_count": 171,
            "chunk_job_count": 147,
            "prepared_chunk_count": len(prepared_chunks),
            "prepared_pack_count": len(prepared_packs),
            "skipped_grid_count": len(skipped_grids),
            "skipped_target_count": len(skipped_targets),
            "rows_per_pack_max": 2,
            "memory_recommendation_mb": 1536,
            "new_Lean_runs": 0,
            "git_mutations": 0,
        },
    )
    print(
        f"prepared {len(prepared_chunks)} chunks and {len(prepared_packs)} packs; "
        f"skipped {len(skipped_targets)} targets; candidate root {candidate_plan_root_sha}"
    )


if __name__ == "__main__":
    main()
