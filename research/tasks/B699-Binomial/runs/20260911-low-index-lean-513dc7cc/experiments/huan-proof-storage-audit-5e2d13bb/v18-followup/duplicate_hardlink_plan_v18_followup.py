"""Plan exact-content hardlink deduplication for ended proof objects.

This script is deliberately dry-run only. It excludes the current v17 start
timestamp and any active timestamp, hashes one representative per file
identity, and emits a path-preserving plan. It never calls os.link,
os.replace, unlink, or any other mutation.
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
RUN = OUT.parents[2]
VERIFICATION = RUN / "verification"
WORKTREE = RUN.parents[4]
TOOLS = WORKTREE / ".tools" / "20260911-low-index-lean-513dc7cc"
V17_STATE = VERIFICATION / "huan-b-queue-20260911T235437363723Z" / "state.json"
TIMESTAMP_RE = re.compile(r"^\d{8}T\d{12}Z$")


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def resolve_object(value: Any) -> Path | None:
    if not isinstance(value, str):
        return None
    normalized = value.replace("\\", "/")
    marker = ".tools/20260911-low-index-lean-513dc7cc/"
    if marker not in normalized:
        return None
    return TOOLS / Path(normalized.split(marker, 1)[1])


def file_id(path: Path) -> tuple[int, int]:
    stat = path.stat()
    return int(stat.st_dev), int(stat.st_ino)


def v17_boundary() -> tuple[str, str]:
    state = json.loads(V17_STATE.read_text(encoding="utf-8"))
    started = state["started_utc"]
    # The queue directory timestamp is the authoritative object-tree cutoff.
    cutoff = V17_STATE.parent.name.replace("huan-b-queue-", "")
    if not TIMESTAMP_RE.match(cutoff):
        raise ValueError(f"unexpected v19 timestamp {cutoff}")
    return cutoff, started


def active_timestamp_prefixes() -> set[str]:
    result = set()
    for path in VERIFICATION.rglob("state.json"):
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            continue
        if data.get("status") not in {"running", "started"}:
            continue
        name = path.parent.name
        if TIMESTAMP_RE.match(name):
            result.add(name)
    return result


def ended_objects(cutoff: str, active: set[str]) -> list[Path]:
    result = []
    for path in TOOLS.rglob("*.olean"):
        try:
            rel = path.relative_to(TOOLS)
        except ValueError:
            continue
        timestamp = rel.parts[0] if rel.parts else ""
        if not TIMESTAMP_RE.match(timestamp):
            continue
        if timestamp >= cutoff or timestamp in active:
            continue
        result.append(path)
    return sorted(result)


def evidence_records(cutoff: str) -> list[dict[str, Any]]:
    result = []
    for path in sorted(VERIFICATION.rglob("evidence.json")):
        timestamp = path.parent.name
        if TIMESTAMP_RE.match(timestamp) and timestamp >= cutoff:
            continue
        try:
            result.append({
                "path": str(path),
                "timestamp": timestamp,
                "data": json.loads(path.read_text(encoding="utf-8")),
            })
        except Exception:
            continue
    return result


def source_refs(evidence: list[dict[str, Any]]) -> tuple[dict[Path, list[dict[str, Any]]], set[Path]]:
    refs: dict[Path, list[dict[str, Any]]] = defaultdict(list)
    success_paths: set[Path] = set()
    for item in evidence:
        data = item["data"]
        for field in ("compile_records", "reuse_records"):
            for record in data.get(field, []) or []:
                for key in ("output", "reused_from_output"):
                    obj = resolve_object(record.get(key))
                    if obj is None:
                        continue
                    ref = {
                        "evidence": item["path"],
                        "timestamp": item["timestamp"],
                        "success": data.get("success"),
                        "field": field,
                        "source": record.get("source"),
                        "module": record.get("module"),
                        "key": key,
                    }
                    refs[obj].append(ref)
                    if data.get("success") is True:
                        success_paths.add(obj)
    return refs, success_paths


def build_plan() -> dict[str, Any]:
    cutoff, started = v17_boundary()
    active = active_timestamp_prefixes()
    objects = ended_objects(cutoff, active)
    identity_paths: dict[tuple[int, int], list[Path]] = defaultdict(list)
    for path in objects:
        identity_paths[file_id(path)].append(path)
    by_size: dict[int, list[tuple[int, int]]] = defaultdict(list)
    for identity, paths in identity_paths.items():
        by_size[paths[0].stat().st_size].append(identity)
    refs, success_paths = source_refs(evidence_records(cutoff))

    identity_sha: dict[tuple[int, int], str] = {}
    for size, identities in by_size.items():
        if len(identities) < 2:
            continue
        for identity in identities:
            identity_sha[identity] = sha256(identity_paths[identity][0])
    sha_identities: dict[str, list[tuple[int, int]]] = defaultdict(list)
    for identity, digest in identity_sha.items():
        sha_identities[digest].append(identity)

    groups = []
    for digest, identities in sorted(sha_identities.items()):
        if len(identities) < 2:
            continue
        identities = sorted(identities)
        size = identity_paths[identities[0]][0].stat().st_size
        paths = []
        for identity in identities:
            for path in sorted(identity_paths[identity]):
                paths.append({
                    "path": str(path),
                    "relative_to_tools": str(path.relative_to(TOOLS)),
                    "bytes": path.stat().st_size,
                    "sha256": digest,
                    "file_id": list(identity),
                    "source_refs": refs.get(path, []),
                    "success_referenced": path in success_paths,
                })
        canonical = next(
            item["path"] for item in paths if item["success_referenced"]
        ) if any(item["success_referenced"] for item in paths) else paths[0]["path"]
        groups.append({
            "sha256": digest,
            "bytes_per_identity": size,
            "identity_group_count": len(identities),
            "path_count": len(paths),
            "canonical_target": canonical,
            "potential_physical_savings": size * (len(identities) - 1),
            "paths": paths,
        })

    all_objects_bytes = sum(path.stat().st_size for path in objects)
    unique_bytes = sum(paths[0].stat().st_size for paths in identity_paths.values())
    potential_savings = sum(group["potential_physical_savings"] for group in groups)
    return {
        "status": "READ_ONLY_EXACT_CONTENT_HARDLINK_PLAN_NO_MUTATION",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": {
            "run": str(RUN),
            "tools": str(TOOLS),
            "v19_started_utc": started,
            "v19_object_cutoff_timestamp": cutoff,
            "active_timestamp_prefixes_excluded": sorted(active),
            "other_runs_scanned": False,
            "other_worktrees_scanned": False,
            "mutations": 0,
        },
        "ended_object_inventory": {
            "path_count": len(objects),
            "identity_group_count": len(identity_paths),
            "logical_bytes": all_objects_bytes,
            "unique_physical_bytes": unique_bytes,
        },
        "duplicate_content": {
            "content_group_count": len(groups),
            "potential_identity_savings_bytes": potential_savings,
            "groups": groups,
        },
        "execution_plan": {
            "recheck_before_execution": [
                "reload v17 state and preserve its started_utc cutoff",
                "rescan active state directories and exclude every active timestamp",
                "recompute every listed path SHA-256, size, and st_dev/st_ino",
                "verify every source and canonical target remains below the cutoff and under this tools root",
                "verify each duplicate group still has one content SHA and equal sizes",
                "prefer the listed canonical target, preserving all paths",
                "replace only noncanonical paths using same-directory temporary hardlink plus os.replace",
                "after each replacement, recheck path bytes, SHA, and identity; abort on any mismatch",
            ],
            "forbidden_now": ["os.link", "os.replace", "unlink", "delete", "Lean", "Git"],
            "success_evidence_policy": "A success-referenced path may be a canonical hardlink target; it is never removed.",
        },
    }


def verify_plan(path: Path) -> dict[str, Any]:
    plan = json.loads(path.read_text(encoding="utf-8"))
    cutoff, _ = v17_boundary()
    if plan["scope"]["v19_object_cutoff_timestamp"] != cutoff:
        raise AssertionError("v17 cutoff changed")
    active = active_timestamp_prefixes()
    for group in plan["duplicate_content"]["groups"]:
        canonical = Path(group["canonical_target"])
        if not canonical.is_file() or not str(canonical).startswith(str(TOOLS)):
            raise AssertionError(f"canonical target invalid: {canonical}")
        canonical_sha = sha256(canonical)
        if canonical_sha != group["sha256"]:
            raise AssertionError(f"canonical SHA changed: {canonical}")
        for item in group["paths"]:
            path = Path(item["path"])
            timestamp = path.relative_to(TOOLS).parts[0]
            if timestamp >= cutoff or timestamp in active:
                raise AssertionError(f"path crossed excluded boundary: {path}")
            if sha256(path) != item["sha256"] or path.stat().st_size != item["bytes"]:
                raise AssertionError(f"path changed: {path}")
            if list(file_id(path)) != item["file_id"]:
                raise AssertionError(f"file identity changed: {path}")
    return {
        "status": "RECHECK_PASS_NO_MUTATION",
        "groups_rechecked": len(plan["duplicate_content"]["groups"]),
        "paths_rechecked": sum(group["path_count"] for group in plan["duplicate_content"]["groups"]),
    }


def main() -> None:
    plan_path = OUT / "duplicate-hardlink-plan.json"
    plan = build_plan()
    plan_path.write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    result = verify_plan(plan_path)
    (OUT / "duplicate-hardlink-recheck.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({
        "status": plan["status"],
        "duplicate_content": {
            "groups": plan["duplicate_content"]["content_group_count"],
            "potential_savings_bytes": plan["duplicate_content"]["potential_identity_savings_bytes"],
        },
        "recheck": result,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
