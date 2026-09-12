"""Read-only audit of this run's verification objects.

The script reads evidence/state JSON and file metadata only. It never removes
files, opens compile logs, runs Lean, or scans another run/worktree. A failed
timestamp is only a reclaim candidate when every hardlink in its file-identity
group is unprotected by any success=true evidence or receipt-like JSON.
"""

from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Iterable


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
WORKTREE = RUN.parents[4]
VERIFICATION = RUN / "verification"
TOOLS = WORKTREE / ".tools" / "20260911-low-index-lean-513dc7cc"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def resolve_object(value: str | None) -> Path | None:
    if not isinstance(value, str) or not value:
        return None
    normalized = value.replace("\\", "/")
    marker = ".tools/20260911-low-index-lean-513dc7cc/"
    if marker in normalized:
        tail = normalized.split(marker, 1)[1]
        return TOOLS / Path(tail)
    path = Path(value)
    if path.is_absolute():
        return path
    return None


def walk_strings(value: Any) -> Iterable[str]:
    if isinstance(value, str):
        yield value
    elif isinstance(value, dict):
        for item in value.values():
            yield from walk_strings(item)
    elif isinstance(value, list):
        for item in value:
            yield from walk_strings(item)


def json_files_for_receipt_scan() -> list[Path]:
    result: set[Path] = set()
    for path in RUN.rglob("*.json"):
        if "receipt" in path.name.lower():
            result.add(path)
    return sorted(result)


def record_from_evidence(path: Path, data: dict[str, Any]) -> dict[str, Any]:
    return {
        "path": str(path),
        "timestamp": path.parent.name,
        "success": bool(data.get("success")) if "success" in data else None,
        "exit_code": data.get("exit_code"),
        "kind": data.get("kind"),
        "root_sources": data.get("root_sources", []),
        "data": data,
    }


def evidence_records() -> list[dict[str, Any]]:
    result = []
    for path in sorted(VERIFICATION.rglob("evidence.json")):
        try:
            result.append(record_from_evidence(path, json.loads(path.read_text(encoding="utf-8"))))
        except Exception as exc:
            result.append({
                "path": str(path),
                "timestamp": path.parent.name,
                "success": None,
                "parse_error": repr(exc),
                "data": {},
            })
    return result


def output_records(evidence: list[dict[str, Any]]) -> tuple[dict[Path, list[dict[str, Any]]], set[Path], set[Path]]:
    refs: dict[Path, list[dict[str, Any]]] = defaultdict(list)
    success_paths: set[Path] = set()
    receipt_paths: set[Path] = set()
    for item in evidence:
        data = item.get("data", {})
        status = item.get("success")
        for field in ("compile_records", "reuse_records"):
            for record in data.get(field, []) or []:
                for key in ("output", "reused_from_output"):
                    obj = resolve_object(record.get(key))
                    if obj is None:
                        continue
                    ref = {
                        "evidence": item["path"],
                        "timestamp": item["timestamp"],
                        "success": status,
                        "field": field,
                        "source": record.get("source"),
                        "module": record.get("module"),
                        "key": key,
                    }
                    refs[obj].append(ref)
                    if status is True:
                        success_paths.add(obj)

    for path in json_files_for_receipt_scan():
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            continue
        for value in walk_strings(data):
            obj = resolve_object(value)
            if obj is not None and obj.suffix == ".olean":
                receipt_paths.add(obj)
    return refs, success_paths, receipt_paths


def timestamp_status(evidence: list[dict[str, Any]]) -> dict[str, list[dict[str, Any]]]:
    result: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for item in evidence:
        result[item["timestamp"]].append(item)
    return result


def object_files() -> list[Path]:
    return sorted(TOOLS.rglob("*.olean"))


def file_identity(path: Path) -> tuple[int, int]:
    stat = path.stat()
    return int(stat.st_dev), int(stat.st_ino)


def inspect_objects(
    evidence: list[dict[str, Any]],
    refs: dict[Path, list[dict[str, Any]]],
    success_paths: set[Path],
    receipt_paths: set[Path],
) -> tuple[dict[str, Any], dict[tuple[int, int], list[Path]]]:
    statuses = timestamp_status(evidence)
    groups: dict[tuple[int, int], list[Path]] = defaultdict(list)
    objects = object_files()
    for path in objects:
        groups[file_identity(path)].append(path)

    protected_paths = success_paths | receipt_paths
    group_records = []
    candidate_groups = []
    unknown_objects = []
    for identity, paths in sorted(groups.items()):
        size = paths[0].stat().st_size
        path_refs = [ref for path in paths for ref in refs.get(path, [])]
        timestamp_states = []
        for path in paths:
            try:
                rel = path.relative_to(TOOLS)
                timestamp = rel.parts[0]
            except ValueError:
                timestamp = None
            timestamp_states.append({
                "path": str(path),
                "bytes": path.stat().st_size,
                "timestamp": timestamp,
                "refs": refs.get(path, []),
            })
        protected = any(path in protected_paths for path in paths)
        failed_timestamp = False
        success_timestamp = False
        for entry in timestamp_states:
            timestamp = entry["timestamp"]
            if timestamp is None:
                continue
            states = statuses.get(timestamp, [])
            if any(state.get("success") is True for state in states):
                success_timestamp = True
            if any(state.get("success") is False for state in states):
                failed_timestamp = True
        if success_timestamp:
            protected = True
        classification = (
            "protected_success_or_receipt" if protected else
            "failed_unprotected_candidate" if failed_timestamp else
            "unclassified"
        )
        group = {
            "dev": identity[0],
            "ino": identity[1],
            "bytes": size,
            "link_count": len(paths),
            "classification": classification,
            "paths": timestamp_states,
            "refs": path_refs,
        }
        group_records.append(group)
        if classification == "failed_unprotected_candidate":
            candidate_groups.append(group)
        elif classification == "unclassified":
            unknown_objects.append(group)

    all_logical = sum(path.stat().st_size for path in objects)
    unique_physical = sum(group["bytes"] for group in group_records)
    candidate_logical = sum(
        path["bytes"] for group in candidate_groups for path in group["paths"]
    )
    candidate_physical = sum(group["bytes"] for group in candidate_groups)
    summary = {
        "object_file_count": len(objects),
        "identity_group_count": len(group_records),
        "logical_bytes_all_links": all_logical,
        "unique_physical_bytes_by_dev_ino": unique_physical,
        "protected_path_count": len(protected_paths),
        "success_evidence_protected_path_count": len(success_paths),
        "receipt_json_protected_path_count": len(receipt_paths),
        "failed_unprotected_candidate_group_count": len(candidate_groups),
        "failed_unprotected_candidate_path_count": sum(g["link_count"] for g in candidate_groups),
        "failed_unprotected_candidate_logical_bytes": candidate_logical,
        "failed_unprotected_candidate_unique_physical_bytes": candidate_physical,
        "unclassified_group_count": len(unknown_objects),
    }
    return {"summary": summary, "groups": group_records}, groups


def index_sha256(lines: list[str]) -> str:
    payload = "\n".join(lines).encode("utf-8")
    return hashlib.sha256(payload).hexdigest()


def input_indexes(evidence: list[dict[str, Any]], objects: list[Path]) -> dict[str, Any]:
    evidence_files = sorted(Path(item["path"]) for item in evidence)
    evidence_lines = [
        f"{path}|{sha256(path)}"
        for path in evidence_files
    ]
    object_lines = []
    for path in objects:
        stat = path.stat()
        object_lines.append(
            f"{path.relative_to(TOOLS)}|{stat.st_size}|{stat.st_dev}|{stat.st_ino}"
        )
    return {
        "evidence_file_count": len(evidence_files),
        "evidence_file_index_sha256": index_sha256(evidence_lines),
        "object_file_count": len(objects),
        "object_metadata_index_sha256": index_sha256(sorted(object_lines)),
    }


def evidence_summary(evidence: list[dict[str, Any]]) -> dict[str, Any]:
    counts = defaultdict(int)
    compile_counts = defaultdict(int)
    reuse_counts = defaultdict(int)
    for item in evidence:
        status = str(item.get("success"))
        counts[status] += 1
        data = item.get("data", {})
        compile_counts[status] += len(data.get("compile_records", []) or [])
        reuse_counts[status] += len(data.get("reuse_records", []) or [])
    return {
        "evidence_count": len(evidence),
        "evidence_by_success": dict(counts),
        "compile_records_by_success": dict(compile_counts),
        "reuse_records_by_success": dict(reuse_counts),
        "parse_errors": [item["path"] for item in evidence if "parse_error" in item],
    }


def targeted_object_sizes(evidence: list[dict[str, Any]]) -> dict[str, Any]:
    patterns = {
        "crt_stage0_pair23_chunk000": re.compile(r"CrtStage0Pair23/Chunk000"),
        "three_two_highest_leaf": re.compile(r"I11ThreeTwoLeaves/(?:QLeaf|ELeaf)(\d+)"),
    }
    result = {}
    for label, pattern in patterns.items():
        matches = []
        for item in evidence:
            if item.get("success") is not True:
                continue
            data = item.get("data", {})
            for rec in data.get("compile_records", []) or []:
                source = rec.get("source", "")
                if not pattern.search(source):
                    continue
                obj = resolve_object(rec.get("output"))
                if obj is None or not obj.exists():
                    continue
                matches.append({
                    "evidence": item["timestamp"],
                    "source": source,
                    "output": str(obj),
                    "bytes": obj.stat().st_size,
                    "sha256": rec.get("output_sha256"),
                    "file_id": list(file_identity(obj)),
                    "seconds": rec.get("seconds"),
                })
        unique = {}
        for match in matches:
            key = tuple(match["file_id"])
            unique.setdefault(key, match)
        result[label] = {
            "matched_compile_records": len(matches),
            "unique_object_count": len(unique),
            "unique_physical_bytes": sum(item["bytes"] for item in unique.values()),
            "objects": sorted(unique.values(), key=lambda item: item["output"]),
        }
    return result


def main() -> None:
    started = datetime.now(timezone.utc).isoformat()
    if not VERIFICATION.is_dir() or not TOOLS.is_dir():
        raise SystemExit("run verification or dedicated .tools root missing")
    evidence = evidence_records()
    refs, success_paths, receipt_paths = output_records(evidence)
    storage, _ = inspect_objects(evidence, refs, success_paths, receipt_paths)
    report = {
        "status": "READ_ONLY_STORAGE_AUDIT_NO_DELETE",
        "started_utc": started,
        "finished_utc": datetime.now(timezone.utc).isoformat(),
        "scope": {
            "run": str(RUN),
            "verification": str(VERIFICATION),
            "dedicated_tools": str(TOOLS),
            "other_runs_scanned": False,
            "other_worktrees_scanned": False,
            "lean_invocations": 0,
            "deletions": 0,
        },
        "verification": evidence_summary(evidence),
        "input_indexes": input_indexes(evidence, object_files()),
        "storage": storage["summary"],
        "targeted_verified_objects": targeted_object_sizes(evidence),
        "candidate_groups": [
            group for group in storage["groups"]
            if group["classification"] == "failed_unprotected_candidate"
        ],
        "protection_policy": {
            "preserve_all_source_log_evidence": True,
            "preserve_all_success_true_evidence_objects": True,
            "preserve_all_receipt_referenced_objects": True,
            "hardlink_identity": "st_dev+st_ino",
            "candidate_requires_failed_timestamp_and_no_success_or_receipt_link": True,
            "candidate_plan_only": True,
        },
        "resource_snapshot": {
            "D_free_bytes_after_scan": shutil.disk_usage("D:\\").free,
        },
    }
    (OUT / "storage-audit.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({
        "status": report["status"],
        "evidence": report["verification"],
        "storage": report["storage"],
        "targeted_verified_objects": {
            key: {
                field: value[field]
                for field in ("matched_compile_records", "unique_object_count", "unique_physical_bytes")
            }
            for key, value in report["targeted_verified_objects"].items()
        },
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
