"""Build a read-only post-v31 NTFS compression candidate plan."""
from __future__ import annotations
import argparse, hashlib, json, re
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

OUT = Path(__file__).resolve().parent
RUN = OUT.parents[2]
WORKTREE = RUN.parents[4]
VERIFICATION = RUN / "verification"
TOOLS = WORKTREE / ".tools" / "20260911-low-index-lean-513dc7cc"
V31_STATE = VERIFICATION / "huan-b-queue-20260912T030958206763Z" / "state.json"
TIMESTAMP_RE = re.compile(r"^\d{8}T\d{12}Z$")
MIN_BYTES = 256 * 1024
MAX_OBJECTS = 256
COMPRESSED_ATTRIBUTE = 0x800
MARKER = ".tools/20260911-low-index-lean-513dc7cc/"

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
    if MARKER not in normalized:
        return None
    path = TOOLS / Path(normalized.split(MARKER, 1)[1])
    return path if path.is_file() else None

def v31_cutoff(include_finished_v31: bool) -> tuple[str, str]:
    state = json.loads(V31_STATE.read_text(encoding="utf-8"))
    started = state["started_utc"]
    if include_finished_v31:
        if state.get("status") != "queue_finished":
            raise RuntimeError("include_finished_v31 requires the v31 queue to be queue_finished")
        boundary = state.get("finished_utc")
        if not boundary:
            raise RuntimeError("queue_finished state lacks finished_utc")
    else:
        boundary = started
    stamp = datetime.fromisoformat(boundary.replace("Z", "+00:00"))
    cutoff = stamp.strftime("%Y%m%dT%H%M%S%fZ")
    if not TIMESTAMP_RE.match(cutoff):
        raise ValueError(cutoff)
    return cutoff, started


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

def receipt_evidence_paths() -> list[Path]:
    result = []
    for directory in (VERIFICATION / "huan-prerequisites", VERIFICATION / "huan-accepted"):
        if not directory.is_dir():
            continue
        for receipt in sorted(directory.glob("*.json")):
            try:
                data = json.loads(receipt.read_text(encoding="utf-8"))
            except (OSError, json.JSONDecodeError):
                continue
            value = data.get("evidence")
            if not isinstance(value, str):
                continue
            evidence = Path(value)
            if not evidence.is_absolute():
                evidence = WORKTREE / evidence
            if evidence.is_file():
                result.append(evidence)
    return sorted(set(result))


def successful_refs(cutoff: str) -> tuple[
    dict[Path, list[dict[str, Any]]], set[Path], dict[str, Any]
]:
    refs: dict[Path, list[dict[str, Any]]] = defaultdict(list)
    compile_success: set[Path] = set()
    evidence_hashes: dict[Path, str] = {}
    indexed_evidence = 0
    receipts = receipt_evidence_paths()
    for evidence in receipts:
        timestamp = evidence.parent.name
        if TIMESTAMP_RE.match(timestamp) and timestamp >= cutoff:
            continue
        try:
            data = json.loads(evidence.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        if data.get("success") is not True:
            continue
        indexed_evidence += 1
        if evidence not in evidence_hashes:
            evidence_hashes[evidence] = sha256(evidence)
        for field in ("compile_records", "reuse_records"):
            for record in data.get(field, []) or []:
                obj = resolve_object(record.get("output"))
                if obj is None:
                    obj = resolve_object(record.get("reused_from_output"))
                if obj is None:
                    continue
                if field == "compile_records":
                    compile_success.add(obj)
                refs[obj].append({
                    "evidence": str(evidence),
                    "evidence_sha256": evidence_hashes[evidence],
                    "success": True,
                    "field": field,
                    "source": record.get("source"),
                    "module": record.get("module"),
                    "source_sha256": record.get("source_sha256_after"),
                    "output_sha256": record.get("output_sha256"),
                })
    return refs, compile_success, {
        "receipt_directories": [
            str(VERIFICATION / "huan-prerequisites"),
            str(VERIFICATION / "huan-accepted"),
        ],
        "receipt_path_count": len(receipts),
        "success_evidence_indexed": indexed_evidence,
        "historical_failure_evidence_parsed": False,
            "evidence_index_scope": "successful receipts only: huan-prerequisites and huan-accepted",
    }


def uncompressed_probe(path: Path) -> dict[str, Any]:
    attributes = getattr(path.stat(), "st_file_attributes", None)
    if attributes is None:
        return {"probe": "st_file_attributes", "returncode": None, "uncompressed": None}
    return {
        "probe": "st_file_attributes",
        "returncode": 0,
        "attributes": int(attributes),
        "compressed_attribute": COMPRESSED_ATTRIBUTE,
        "uncompressed": not bool(attributes & COMPRESSED_ATTRIBUTE),
    }

def link_record(path: Path, refs: dict[Path, list[dict[str, Any]]]) -> dict[str, Any]:
    stat = path.stat()
    return {
        "path": str(path),
        "relative_to_tools": str(path.relative_to(TOOLS)),
        "bytes": int(stat.st_size),
        "sha256": sha256(path),
        "file_id": list(file_id(path)),
        "nlink": int(getattr(stat, "st_nlink", 0)),
        "success_evidence_refs": refs.get(path, []),
    }

def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--include-finished-v31",
        action="store_true",
        help="include v31 output directories only after its queue is queue_finished",
    )
    args = parser.parse_args()
    cutoff, started = v31_cutoff(args.include_finished_v31)
    refs, compile_success, evidence_index = successful_refs(cutoff)
    objects = ended_objects(cutoff)
    identity_paths: dict[tuple[int, int], list[Path]] = defaultdict(list)
    for path in objects:
        identity_paths[file_id(path)].append(path)
    excluded: dict[str, int] = defaultdict(int)
    candidates: list[dict[str, Any]] = []
    for identity, paths in identity_paths.items():
        paths = sorted(paths)
        representative = paths[0]
        size = int(representative.stat().st_size)
        if size < MIN_BYTES:
            excluded["below_256KiB"] += 1
            continue
        if representative not in compile_success:
            excluded["no_success_compile_record"] += 1
            continue
        if representative.stat().st_nlink != len(paths):
            excluded["nlink_has_unenumerated_alias"] += 1
            continue
        probe = uncompressed_probe(representative)
        if probe["uncompressed"] is not True:
            excluded["already_compressed_or_unreadable_attributes"] += 1
            continue
        candidates.append({
            "bytes_per_identity": size,
            "identity": list(identity),
            "link_count": len(paths),
            "physical_bytes": size,
            "logical_bytes": size * len(paths),
            "uncompressed_probe": probe,
            "candidate_paths": paths,
        })
    candidates.sort(key=lambda item: (-item["physical_bytes"], tuple(item["identity"])))
    selected = candidates[:MAX_OBJECTS]
    for item in selected:
        paths = item.pop("candidate_paths")
        item["representative"] = str(paths[0])
        item["relative_to_tools"] = str(paths[0].relative_to(TOOLS))
        item["sha256"] = sha256(paths[0])
        item["nlink"] = int(paths[0].stat().st_nlink)
        item["links"] = [link_record(path, refs) for path in paths]
        item["success_evidence_refs"] = refs.get(paths[0], [])
        item["source_paths"] = sorted({ref.get("source", "") for ref in item["success_evidence_refs"] if ref.get("source")})
    if len(candidates) > MAX_OBJECTS:
        excluded["over_256_identity_limit"] = len(candidates) - MAX_OBJECTS
    plan = {
        "status": "READ_ONLY_POST_V31_COMPRESSION_PLAN_NO_MUTATION",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": {
            "run": str(RUN),
            "tools": str(TOOLS),
            "v31_started_utc": started,
            "v31_object_cutoff_timestamp": cutoff,
            "active_v31_objects_excluded": not args.include_finished_v31,
            "include_finished_v31": args.include_finished_v31,
            "other_runs_scanned": False,
            "other_worktrees_scanned": False,
            "historical_failure_evidence_parsed": False,
            "evidence_index_scope": "successful receipts only: huan-prerequisites and huan-accepted",
            "lean_invocations": 0,
            "compact_c_or_u_mutations": 0,
        },
        "selection": {
            "minimum_bytes": MIN_BYTES,
            "minimum_policy_change": "256KiB instead of prior 1MiB; this does not change the 512MiB reserve gate",
            "maximum_identity_objects": MAX_OBJECTS,
            "ended_object_path_count": len(objects),
            "identity_group_count": len(identity_paths),
            "success_compile_bound_candidate_count": len(candidates),
            "selected_identity_count": len(selected),
            "excluded_counts": dict(excluded),
            "selected_physical_bytes": sum(x["physical_bytes"] for x in selected),
            "selected_logical_bytes": sum(x["logical_bytes"] for x in selected),
            "estimated_reclaimable_bytes": None,
            "estimated_reclaimable_policy": "No compression ratio predicted; physical bytes are candidate capacity only",
        },
        "selected_objects": selected,
        "allowlist": sorted(link["relative_to_tools"] for item in selected for link in item["links"]),
        "execution_rules": {
            "fixed_plan_sha_required": True,
            "latest_queue_must_be_queue_finished": True,
            "no_run_lean_or_verifier_process": True,
            "fresh_full_identity_link_source_evidence_recheck": True,
            "all_links_must_remain_under_this_tools_root": True,
            "command_shape": "compact.exe /C /Q <one exact selected path>",
            "shell": False,
            "no_recursive_compact": True,
            "preserve_all_paths_content_evidence": True,
            "512MiB_reserve_gate_unchanged": True,
            "no_delete_replace_or_hardlink": True,
        },
        "evidence_index": evidence_index,
        "historical_reference": {
            "reviewed_executor": "reviews/huan-successful-objects-compression-v24-5e2d13bb/execute_primary_checked.py",
            "historical_observed_release_bytes": 605614336,
            "historical_observed_release_note": "v24 256-object run; reference only, not a prediction for this plan",
        },
    }
    (OUT / "post-v31-compression-plan.json").write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({
        "status": plan["status"],
        "cutoff": cutoff,
        "ended_paths": len(objects),
        "identity_groups": len(identity_paths),
        "candidates": len(candidates),
        "selected": len(selected),
        "selected_physical_bytes": plan["selection"]["selected_physical_bytes"],
        "selected_logical_bytes": plan["selection"]["selected_logical_bytes"],
        "excluded": dict(excluded),
    }, ensure_ascii=False))

if __name__ == "__main__":
    main()
