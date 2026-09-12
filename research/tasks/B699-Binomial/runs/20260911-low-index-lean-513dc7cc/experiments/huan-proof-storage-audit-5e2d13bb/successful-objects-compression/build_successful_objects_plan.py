"""Build a read-only plan for ended successful uncompressed OLEAN objects."""

from __future__ import annotations

import hashlib
import json
import re
import subprocess
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parents[2]
WORKTREE = RUN.parents[4]
VERIFICATION = RUN / "verification"
TOOLS = WORKTREE / ".tools" / "20260911-low-index-lean-513dc7cc"
V22_STATE = VERIFICATION / "huan-b-queue-20260912T003950725120Z" / "state.json"
TIMESTAMP_RE = re.compile(r"^\d{8}T\d{12}Z$")
MIN_BYTES = 1024 * 1024
MAX_OBJECTS = 256
COMPRESSED_ATTRIBUTE = 0x800


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def file_id(path: Path) -> tuple[int, int]:
    stat = path.stat()
    return int(stat.st_dev), int(stat.st_ino)


def resolve_object(value: Any) -> Path | None:
    if not isinstance(value, str):
        return None
    normalized = value.replace("\\", "/")
    marker = ".tools/20260911-low-index-lean-513dc7cc/"
    if marker not in normalized:
        return None
    return TOOLS / Path(normalized.split(marker, 1)[1])


def v22_cutoff() -> tuple[str, str]:
    state = json.loads(V22_STATE.read_text(encoding="utf-8"))
    cutoff = V22_STATE.parent.name.replace("huan-b-queue-", "")
    if not TIMESTAMP_RE.match(cutoff):
        raise ValueError(cutoff)
    return cutoff, state["started_utc"]


def compact_query(path: Path) -> dict[str, Any]:
    result = subprocess.run(
        ["compact.exe", "/Q", str(path)],
        shell=False,
        check=False,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    output = result.stdout + result.stderr
    return {
        "argv": ["compact.exe", "/Q", str(path)],
        "returncode": result.returncode,
        "stdout": result.stdout,
        "stderr": result.stderr,
        "uncompressed": (
            result.returncode == 0
            and "0 are compressed" in output
            and "not compressed" in output
        ),
    }


def ended_objects(cutoff: str) -> list[Path]:
    result = []
    for path in TOOLS.rglob("*.olean"):
        try:
            timestamp = path.relative_to(TOOLS).parts[0]
        except (ValueError, IndexError):
            continue
        if TIMESTAMP_RE.match(timestamp) and timestamp < cutoff:
            result.append(path)
    return result


def success_refs(cutoff: str) -> tuple[dict[Path, list[dict[str, Any]]], set[Path]]:
    refs: dict[Path, list[dict[str, Any]]] = defaultdict(list)
    verified: set[Path] = set()
    evidence_sha_cache: dict[Path, str] = {}
    for path in VERIFICATION.rglob("evidence.json"):
        timestamp = path.parent.name
        if TIMESTAMP_RE.match(timestamp) and timestamp >= cutoff:
            continue
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            continue
        if data.get("success") is not True:
            continue
        for field in ("compile_records", "reuse_records"):
            for record in data.get(field, []) or []:
                obj = resolve_object(record.get("output"))
                if obj is None:
                    obj = resolve_object(record.get("reused_from_output"))
                if obj is None:
                    continue
                verified.add(obj)
                refs[obj].append({
                    "evidence": str(path),
                    "evidence_sha256": evidence_sha_cache.setdefault(path, sha256(path)),
                    "field": field,
                    "source": record.get("source"),
                    "module": record.get("module"),
                    "source_sha256": record.get("source_sha256_after"),
                    "output_sha256": record.get("output_sha256"),
                })
    return refs, verified


def main() -> None:
    cutoff, v22_started = v22_cutoff()
    refs, verified = success_refs(cutoff)
    objects = ended_objects(cutoff)
    identity_paths: dict[tuple[int, int], list[Path]] = defaultdict(list)
    for path in objects:
        identity_paths[file_id(path)].append(path)
    excluded = defaultdict(int)
    candidates = []
    for identity, paths in identity_paths.items():
        representative = paths[0]
        size = representative.stat().st_size
        if size < MIN_BYTES:
            excluded["below_1MiB"] += 1
            continue
        planned_links = sorted(paths)
        verified_links = [path for path in planned_links if path in verified]
        if len(verified_links) != len(planned_links):
            excluded["link_not_success_verified"] += 1
            continue
        if representative.stat().st_nlink != len(verified_links):
            excluded["nlink_outside_verified_scope"] += 1
            continue
        attributes = getattr(representative.stat(), "st_file_attributes", None)
        if attributes is not None:
            query = {
                "argv": ["FILE_ATTRIBUTE_READONLY"],
                "returncode": 0,
                "stdout": "",
                "stderr": "",
                "attributes": attributes,
                "uncompressed": not bool(attributes & COMPRESSED_ATTRIBUTE),
                "probe": "st_file_attributes",
            }
        else:
            query = compact_query(representative)
        if query["returncode"] != 0:
            excluded["compact_query_failed"] += 1
            continue
        if not query["uncompressed"]:
            excluded["already_compressed"] += 1
            continue
        candidates.append({
            "bytes_per_identity": size,
            "identity": list(identity),
            "link_count": len(planned_links),
            "logical_bytes": size * len(planned_links),
            "physical_bytes": size,
            "compact_query": query,
            "candidate_paths": [str(path) for path in planned_links],
        })
    candidates.sort(key=lambda item: (-item["physical_bytes"], tuple(item["identity"])))
    selected = candidates[:MAX_OBJECTS]
    for item in selected:
        candidate_paths = [Path(path) for path in item.pop("candidate_paths")]
        representative = candidate_paths[0]
        item["compact_query_selected"] = compact_query(representative)
        if not item["compact_query_selected"]["uncompressed"]:
            raise RuntimeError(f"selected object became compressed during plan: {representative}")
        records = []
        for path in candidate_paths:
            records.append({
                "path": str(path),
                "relative_to_tools": str(path.relative_to(TOOLS)),
                "bytes": path.stat().st_size,
                "sha256": sha256(path),
                "file_id": list(file_id(path)),
                "nlink": path.stat().st_nlink,
                "success_evidence_refs": refs.get(path, []),
            })
        item["sha256"] = records[0]["sha256"]
        item["links"] = records
    if len(candidates) > MAX_OBJECTS:
        excluded["over_256_limit"] = len(candidates) - MAX_OBJECTS
    plan = {
        "status": "READ_ONLY_SUCCESS_OBJECT_COMPRESSION_PLAN_NO_MUTATION",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": {
            "run": str(RUN),
            "tools": str(TOOLS),
            "v22_started_utc": v22_started,
            "v22_object_cutoff_timestamp": cutoff,
            "other_runs_scanned": False,
            "other_worktrees_scanned": False,
            "lean_invocations": 0,
            "compact_c_mutations": 0,
        },
        "selection": {
            "minimum_bytes": MIN_BYTES,
            "maximum_identity_objects": MAX_OBJECTS,
            "ended_object_path_count": len(objects),
            "identity_group_count": len(identity_paths),
            "success_verified_uncompressed_candidate_count": len(candidates),
            "selected_identity_count": len(selected),
            "excluded_counts": dict(excluded),
            "selected_physical_bytes": sum(item["physical_bytes"] for item in selected),
            "selected_logical_bytes": sum(item["logical_bytes"] for item in selected),
        },
        "selected_objects": selected,
        "allowlist": sorted(
            link["relative_to_tools"]
            for item in selected
            for link in item["links"]
        ),
        "execution_rules": {
            "fixed_plan_sha_required_after_generation": True,
            "latest_queue_must_be_queue_finished": True,
            "no_run_lean_or_verifier_process": True,
            "command_shape": "compact.exe /C /Q <one exact selected path>",
            "shell": False,
            "no_recursive_compact": True,
            "preserve_all_paths_content_evidence": True,
            "no_compression_ratio_prediction": True,
            "recheck_sha_size_file_id_nlink_and_evidence_before_and_after": True,
        },
    }
    (OUT / "successful-objects-plan.json").write_text(
        json.dumps(plan, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({
        "status": plan["status"],
        "ended_paths": len(objects),
        "identity_groups": len(identity_paths),
        "candidates": len(candidates),
        "selected": len(selected),
        "selected_physical_bytes": plan["selection"]["selected_physical_bytes"],
        "excluded": dict(excluded),
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
