"""Guarded execution script for the fixed successful-object NTFS compression plan.

Default mode is preflight only. Compression requires an explicit --execute and
then uses only structured subprocess arguments:
    compact.exe /C /Q <one exact file>

The script never recurses, changes directory attributes, removes files, or
replaces paths. It records a result JSON beside this script when run.
"""

from __future__ import annotations

import argparse
import ctypes
import hashlib
import json
import os
import shutil
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parents[2]
WORKTREE = RUN.parents[4]
VERIFICATION = RUN / "verification"
TOOLS = WORKTREE / ".tools" / "20260911-low-index-lean-513dc7cc"
PLAN = (
    RUN
    / "experiments/huan-proof-storage-audit-5e2d13bb/post-v31-compression/post-v31-compression-plan.json"
)
PLAN_SHA256 = "bca13be79d4107d3e5f2f25e35bdd01b7fda0d32ca15ef242b234368f60f104e"
RUN_ID = "20260911-low-index-lean-513dc7cc"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def file_id(path: Path) -> tuple[int, int]:
    stat = path.stat()
    return int(stat.st_dev), int(stat.st_ino)


def resolve_object(value: str) -> Path | None:
    normalized = value.replace("\\", "/")
    marker = ".tools/20260911-low-index-lean-513dc7cc/"
    if marker not in normalized:
        return None
    return TOOLS / Path(normalized.split(marker, 1)[1])


def within(path: Path, root: Path) -> bool:
    try:
        path.resolve().relative_to(root.resolve())
        return True
    except ValueError:
        return False


def get_attributes(path: Path) -> int | None:
    stat = path.stat()
    return getattr(stat, "st_file_attributes", None)


def allocated_bytes(path: Path) -> int | None:
    # GetCompressedFileSizeW is read-only and reports the allocated size.
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    fn = kernel32.GetCompressedFileSizeW
    fn.argtypes = [ctypes.c_wchar_p, ctypes.POINTER(ctypes.c_uint32)]
    fn.restype = ctypes.c_uint32
    high = ctypes.c_uint32(0)
    low = fn(str(path), ctypes.byref(high))
    if low == 0xFFFFFFFF:
        error = ctypes.get_last_error()
        if error != 0:
            return None
    return (int(high.value) << 32) | int(low)


def snapshot(path: Path) -> dict[str, Any]:
    stat = path.stat()
    return {
        "path": str(path),
        "bytes": stat.st_size,
        "sha256": sha256(path),
        "file_id": list(file_id(path)),
        "nlink": getattr(stat, "st_nlink", None),
        "attributes": get_attributes(path),
        "allocated_bytes": allocated_bytes(path),
    }


def content_identity(snapshot_value: dict[str, Any]) -> dict[str, Any]:
    return {
        key: snapshot_value[key]
        for key in ("path", "bytes", "sha256", "file_id")
    }


_identity_inventories: dict[str, dict[tuple[int, int], list[Path]]] = {}


def ended_same_identity_links(identity: tuple[int, int], cutoff: str) -> list[Path]:
    # One full inventory. Every query rechecks every known link and the exact
    # NTFS link count, so added/removed/retargeted links cannot pass unnoticed.
    if cutoff not in _identity_inventories:
        inventory: dict[tuple[int, int], list[Path]] = {}
        for candidate in TOOLS.rglob("*.olean"):
            timestamp = candidate.relative_to(TOOLS).parts[0]
            if timestamp < cutoff:
                inventory.setdefault(file_id(candidate), []).append(candidate)
        _identity_inventories[cutoff] = inventory
    result = sorted(_identity_inventories[cutoff].get(identity, []))
    if len({path.resolve() for path in result}) != len(result):
        raise RuntimeError("aliased or duplicate resolved paths in link inventory")
    for path in result:
        stat = path.stat()
        if (int(stat.st_dev), int(stat.st_ino)) != identity:
            raise RuntimeError("file identity drift in verified link inventory")
        if stat.st_nlink != len(result):
            raise RuntimeError("exact link count no longer equals verified full path set")
    return result

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
    return {
        "argv": ["compact.exe", "/Q", str(path)],
        "returncode": result.returncode,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }


def queue_states() -> list[tuple[Path, dict[str, Any]]]:
    result = []
    for path in VERIFICATION.glob("huan-b-queue-*/state.json"):
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except Exception:
            continue
        result.append((path, data))
    return result


def latest_queue_finished() -> dict[str, Any]:
    states = queue_states()
    if not states:
        raise RuntimeError("no queue state found")
    states.sort(key=lambda item: item[1].get("started_utc", ""))
    path, state = states[-1]
    if state.get("status") != "queue_finished":
        raise RuntimeError(
            f"latest queue is not finished: {path} status={state.get('status')}"
        )
    return {
        "path": str(path),
        "sha256": sha256(path),
        "status": state.get("status"),
        "started_utc": state.get("started_utc"),
        "finished_utc": state.get("finished_utc"),
        "plan": state.get("plan"),
    }


def run_process_probe() -> list[dict[str, Any]]:
    own_pid = os.getpid()
    parent_pid = os.getppid()
    script = (
        "$needle='"
        + RUN_ID
        + "'; $excluded=@("
        + str(own_pid)
        + ","
        + str(parent_pid)
        + "); Get-CimInstance Win32_Process | "
        "Where-Object { $excluded -notcontains $_.ProcessId -and "
        "$_.CommandLine -and $_.CommandLine.Contains($needle) -and "
        "((@('lean.exe','lake.exe') -contains $_.Name) -or "
        "($_.Name -match '^(python|python3)(\\.exe)?$' -and "
        "$_.CommandLine -match '(?i)verify_huan[^\"\\s]*\\.py')) } | "
        "Select-Object ProcessId,Name,CommandLine | ConvertTo-Json -Compress"
    )
    result = subprocess.run(
        ["powershell.exe", "-NoProfile", "-NonInteractive", "-Command", script],
        shell=False,
        check=False,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    if result.returncode != 0:
        raise RuntimeError("process probe failed: " + result.stderr)
    if not result.stdout.strip():
        return []
    value = json.loads(result.stdout)
    return value if isinstance(value, list) else [value]


def load_and_validate_plan() -> tuple[dict[str, Any], list[dict[str, Any]]]:
    if sha256(PLAN) != PLAN_SHA256:
        raise RuntimeError("compression plan SHA changed")
    plan = json.loads(PLAN.read_text(encoding="utf-8"))
    selected = plan.get("selected_objects", [])
    if not selected or len(selected) > 256:
        raise RuntimeError("selected object count changed")
    planned_allowlist = {
        value.replace("\\", "/") for value in plan.get("allowlist", [])
    }
    actual_allowlist = {
        link["relative_to_tools"].replace("\\", "/")
        for item in selected
        for link in item.get("links", [])
    }
    if actual_allowlist != planned_allowlist:
        raise RuntimeError("complete selected path allowlist changed")
    cutoff = plan["scope"]["v31_object_cutoff_timestamp"]
    for item in selected:
        links = item.get("links", [])
        if not links:
            raise RuntimeError("selected object lacks links")
        path = Path(links[0]["path"])
        if not within(path, TOOLS):
            raise RuntimeError(f"path outside tools root: {path}")
        if not path.is_file():
            raise RuntimeError(f"selected object missing: {path}")
        if item.get("sha256", "").lower() != sha256(path).lower():
            raise RuntimeError(f"selected object SHA changed: {path}")
        if item["bytes_per_identity"] != path.stat().st_size:
            raise RuntimeError(f"selected object size changed: {path}")
        if list(file_id(path)) != item.get("identity"):
            raise RuntimeError(f"selected object identity changed: {path}")
        if not any(
            ref.get("success") is True
            for link in links
            for ref in link.get("success_evidence_refs", [])
        ):
            raise RuntimeError(f"selected object lacks success evidence: {path}")
        actual_links = ended_same_identity_links(file_id(path), cutoff)
        planned_paths = {str(Path(link["path"])) for link in links}
        actual_paths = {str(link) for link in actual_links}
        if actual_paths != planned_paths:
            raise RuntimeError(
                f"same-identity link enumeration mismatch for {path}: "
                f"planned={len(planned_paths)} actual={len(actual_paths)}"
            )
        if path.stat().st_nlink != len(planned_paths):
            raise RuntimeError(
                f"st_nlink exceeds ended plan and may include unchecked link(s): {path}"
            )
        for link in links:
            link_path = Path(link["path"])
            if not within(link_path, TOOLS):
                raise RuntimeError(f"link outside tools root: {link_path}")
            if not link_path.is_file():
                raise RuntimeError(f"recorded link missing: {link_path}")
            if sha256(link_path) != link["sha256"] or link_path.stat().st_size != link["bytes"]:
                raise RuntimeError(f"recorded link changed: {link_path}")
            if list(file_id(link_path)) != link["file_id"]:
                raise RuntimeError(f"recorded link identity changed: {link_path}")
        item["_verified_link_paths"] = [str(link) for link in actual_links]
    return plan, selected


def evidence_binding(selected: list[dict[str, Any]]) -> dict[str, Any]:
    # Rebuild the evidence index on each call, including the final recheck.
    indices: dict[Path, dict[Path, set[str]]] = {}
    checked = []
    for item in selected:
        matched = set()
        for link in item.get("links", []):
            path = Path(link["path"])
            for ref in link.get("success_evidence_refs", []):
                ep = Path(ref["evidence"])
                if ep not in indices:
                    data = json.loads(ep.read_text(encoding="utf-8"))
                    index: dict[Path, set[str]] = {}
                    if data.get("success") is True:
                        for field in ("compile_records", "reuse_records"):
                            for record in data.get(field, []) or []:
                                digest = record.get("output_sha256")
                                if not digest:
                                    continue
                                for key in ("output", "reused_from_output"):
                                    output = resolve_object(record.get(key, ""))
                                    if output is not None:
                                        index.setdefault(output, set()).add(digest.lower())
                    indices[ep] = index
                digests = indices[ep].get(path, set())
                if digests:
                    if any(digest != link["sha256"].lower() for digest in digests):
                        raise RuntimeError(f"evidence output SHA mismatch: {path}")
                    matched.add(str(ep))
        if not matched:
            raise RuntimeError("no success evidence binding for selected physical object")
        checked.append({"paths": [x["path"] for x in item["links"]],
                        "success_evidence": sorted(matched)})
    return {"checked_objects": checked}

def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--execute",
        action="store_true",
        help="perform the fixed allowlist compact /C /Q operations after all guards",
    )
    args = parser.parse_args()
    plan, selected = load_and_validate_plan()
    queue = latest_queue_finished()
    processes = run_process_probe()
    if processes:
        raise RuntimeError("run Lean process(es) still active: " + json.dumps(processes))
    binding = evidence_binding(selected)
    before_free = shutil.disk_usage("D:\\").free
    result: dict[str, Any] = {
        "status": "PREFLIGHT_PASS_NO_MUTATION" if not args.execute else "EXECUTION_REQUESTED",
        "plan_sha256": PLAN_SHA256,
        "queue": queue,
        "lean_processes": processes,
        "disk_free_before": before_free,
        "evidence_binding": binding,
        "objects": [],
        "mutations": 0,
    }
    result_path = OUT / "compression-probe-result.json"

    def persist() -> None:
        result_path.write_text(
            json.dumps(result, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
            newline="\n",
        )

    if not args.execute:
        persist()
        print(json.dumps(result, ensure_ascii=False))
        return

    compact_path = shutil.which("compact.exe")
    if compact_path is None:
        raise RuntimeError("compact.exe not found")
    persist()
    for item in selected:
        path = Path(item["links"][0]["path"])
        link_paths = [Path(link) for link in item["_verified_link_paths"]]
        before = {
            "selected": snapshot(path),
            "links": [snapshot(link) for link in link_paths],
        }
        query_before = compact_query(path)
        command = [compact_path, "/C", "/Q", str(path)]
        completed = subprocess.run(
            command,
            shell=False,
            check=False,
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
        )
        after = {
            "selected": snapshot(path),
            "links": [snapshot(link) for link in link_paths],
        }
        query_after = compact_query(path)
        link_enumeration_error = None
        try:
            current_links = ended_same_identity_links(
                file_id(path), plan["scope"]["v31_object_cutoff_timestamp"]
            )
            if {str(link) for link in current_links} != {str(link) for link in link_paths}:
                raise RuntimeError("same-identity link set changed")
            if path.stat().st_nlink != len(link_paths):
                raise RuntimeError("st_nlink exceeds verified link set")
        except Exception as exc:
            link_enumeration_error = str(exc)
        unchanged = (
            content_identity(before["selected"]) == content_identity(after["selected"])
            and [content_identity(value) for value in before["links"]]
            == [content_identity(value) for value in after["links"]]
            and link_enumeration_error is None
        )
        entry = {
            "path": str(path),
            "command": command,
            "returncode": completed.returncode,
            "stdout": completed.stdout,
            "stderr": completed.stderr,
            "compact_query_before": query_before,
            "compact_query_after": query_after,
            "before": before,
            "after": after,
            "content_path_identity_unchanged": unchanged,
            "link_enumeration_error": link_enumeration_error,
            "locked_or_failed": completed.returncode != 0,
        }
        result["objects"].append(entry)
        persist()
        if not unchanged:
            result["status"] = "EXECUTION_ABORTED_CONTENT_IDENTITY_MISMATCH"
            persist()
            raise RuntimeError("content/path/file-ID changed after compression: " + str(path))
        if completed.returncode != 0:
            # Content and identity were checked even if compact failed or was locked.
            continue
        result["mutations"] += 1
        persist()
    try:
        result["evidence_binding_after"] = evidence_binding(selected)
    except Exception as exc:
        result["status"] = "EXECUTION_ABORTED_EVIDENCE_BINDING_MISMATCH"
        result["evidence_binding_after_error"] = str(exc)
        persist()
        raise
    result["disk_free_after"] = shutil.disk_usage("D:\\").free
    result["status"] = (
        "EXECUTION_COMPLETE_RECHECK_PASS"
        if all(
            item["returncode"] == 0
            and item["content_path_identity_unchanged"]
            for item in result["objects"]
        )
        else "EXECUTION_PARTIAL_LOCK_OR_FAILURE"
    )
    persist()
    print(json.dumps(result, ensure_ascii=False))


if __name__ == "__main__":
    main()
