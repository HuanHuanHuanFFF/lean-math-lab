"""Read-only NTFS compression probe and execution plan.

The script selects three ended, successful OLEAN objects from this run,
records their source/evidence SHA and all ended hardlink identities, and
queries compact.exe /Q. It never invokes compact /C or /U and never mutates
files.
"""

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
V20_STATE = VERIFICATION / "huan-b-queue-20260912T000040732118Z" / "state.json"
TIMESTAMP_RE = re.compile(r"^\d{8}T\d{12}Z$")
SELECTED = [
    TOOLS / "20260911T075845744821Z/olean/research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Factorial/Factorial25D17.olean",
    TOOLS / "20260911T234100743107Z/olean/research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11ThreeTwoLeaves/QLeaf003.olean",
    TOOLS / "20260911T234100743107Z/olean/research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11ThreeTwoLeaves/QLeaf004.olean",
]


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


def v20_cutoff() -> tuple[str, str]:
    state = json.loads(V20_STATE.read_text(encoding="utf-8"))
    cutoff = V20_STATE.parent.name.replace("huan-b-queue-", "")
    if not TIMESTAMP_RE.match(cutoff):
        raise ValueError(cutoff)
    return cutoff, state["started_utc"]


def ended_object_paths(cutoff: str) -> list[Path]:
    result = []
    for path in TOOLS.rglob("*.olean"):
        rel = path.relative_to(TOOLS)
        timestamp = rel.parts[0]
        if TIMESTAMP_RE.match(timestamp) and timestamp < cutoff:
            result.append(path)
    return result


def compact_query(path: Path) -> str:
    completed = subprocess.run(
        ["compact.exe", "/Q", str(path)],
        check=False,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    return (completed.stdout + completed.stderr).strip()


def evidence_refs(cutoff: str) -> dict[Path, list[dict[str, Any]]]:
    refs: dict[Path, list[dict[str, Any]]] = defaultdict(list)
    for path in VERIFICATION.rglob("evidence.json"):
        timestamp = path.parent.name
        if TIMESTAMP_RE.match(timestamp) and timestamp >= cutoff:
            continue
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            continue
        for record in data.get("compile_records", []) or []:
            obj = resolve_object(record.get("output"))
            if obj is not None:
                refs[obj].append({
                    "evidence": str(path),
                    "success": data.get("success"),
                    "source": record.get("source"),
                    "source_sha256": record.get("source_sha256_after"),
                    "output_sha256": record.get("output_sha256"),
                    "module": record.get("module"),
                })
    return refs


def main() -> None:
    cutoff, v20_started = v20_cutoff()
    ended = ended_object_paths(cutoff)
    ended_by_identity: dict[tuple[int, int], list[Path]] = defaultdict(list)
    for path in ended:
        ended_by_identity[file_id(path)].append(path)
    refs = evidence_refs(cutoff)
    objects = []
    for path in SELECTED:
        if not path.is_file():
            raise FileNotFoundError(path)
        rel = path.relative_to(TOOLS)
        timestamp = rel.parts[0]
        if timestamp >= cutoff:
            raise AssertionError(f"selected object crosses v20 cutoff: {path}")
        digest = sha256(path)
        identity = file_id(path)
        objects.append({
            "path": str(path),
            "relative_to_tools": str(rel),
            "timestamp": timestamp,
            "bytes": path.stat().st_size,
            "sha256": digest,
            "file_id": list(identity),
            "ntfs_compact_query": compact_query(path),
            "evidence_refs": refs.get(path, []),
            "all_ended_same_identity_links": [
                {
                    "path": str(link),
                    "bytes": link.stat().st_size,
                    "sha256": sha256(link),
                    "file_id": list(file_id(link)),
                }
                for link in sorted(ended_by_identity[identity])
            ],
        })
    if sum(item["bytes"] for item in objects) <= 15 * 1024 * 1024:
        raise AssertionError("selected probe is unexpectedly small")
    plan = {
        "status": "READ_ONLY_NTFS_COMPRESSION_PLAN_NO_MUTATION",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": {
            "run": str(RUN),
            "tools": str(TOOLS),
            "v20_started_utc": v20_started,
            "v20_object_cutoff_timestamp": cutoff,
            "other_runs_scanned": False,
            "other_worktrees_scanned": False,
            "lean_invocations": 0,
            "compression_mutations": 0,
        },
        "filesystem": {
            "drive": "D:",
            "type": "NTFS",
            "read_probe": "Get-CimInstance Win32_LogicalDisk -Filter DeviceID='D:'",
            "compact_mode": "compact.exe /Q only",
        },
        "selected_objects": objects,
        "selected_total_bytes": sum(item["bytes"] for item in objects),
        "execution_scope": {
            "candidate_count": len(objects),
            "candidate_min_bytes": 5 * 1024 * 1024,
            "allowed_future_command_shape": "compact.exe /C /Q <exact-selected-path>",
            "current_command_shape_used": "compact.exe /Q <exact-selected-path>",
            "preserve_paths": True,
            "preserve_content_sha": True,
            "preserve_all_hardlink_paths": True,
            "no_prediction_of_compressed_size": True,
        },
        "future_verification": [
            "re-read v20 state and reject any selected timestamp that is active or at/after its start",
            "recompute selected SHA-256, size, and every same-file-ID link before mutation",
            "verify every path remains under this dedicated tools root",
            "run compact /Q after compression and record compressed/uncompressed bytes and ratio",
            "recompute SHA-256 and file IDs for every selected path and all same-identity links",
            "verify all source/log/evidence paths and their hashes remain unchanged",
            "abort on any path, SHA, file-ID, or evidence-reference mismatch",
        ],
    }
    (OUT / "compression-plan.json").write_text(
        json.dumps(plan, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({
        "status": plan["status"],
        "selected_count": len(objects),
        "selected_total_bytes": plan["selected_total_bytes"],
        "cutoff": cutoff,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
