"""Small read-only capacity probe for the v31 CRT object run."""

from __future__ import annotations

import ctypes
import json
import re
import shutil
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parents[2]
VERIFICATION = RUN / "verification"
WORKTREE = RUN.parents[4]
TOOLS = WORKTREE / ".tools" / "20260911-low-index-lean-513dc7cc"
V31_STATE = VERIFICATION / "huan-b-queue-20260912T030958206763Z" / "state.json"
CUTOFF = "20260912T030958491427Z"
TIMESTAMP_RE = re.compile(r"^\d{8}T\d{12}Z$")


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


def allocated_bytes(path: Path) -> int | None:
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    fn = kernel32.GetCompressedFileSizeW
    fn.argtypes = [ctypes.c_wchar_p, ctypes.POINTER(ctypes.c_uint32)]
    fn.restype = ctypes.c_uint32
    high = ctypes.c_uint32(0)
    low = fn(str(path), ctypes.byref(high))
    if low == 0xFFFFFFFF and ctypes.get_last_error() != 0:
        return None
    return (int(high.value) << 32) | int(low)


def ended_objects() -> list[Path]:
    result = []
    for path in TOOLS.rglob("*.olean"):
        try:
            timestamp = path.relative_to(TOOLS).parts[0]
        except (ValueError, IndexError):
            continue
        if TIMESTAMP_RE.match(timestamp) and timestamp < CUTOFF:
            result.append(path)
    return result


def success_sources() -> dict[Path, list[dict[str, Any]]]:
    refs: dict[Path, list[dict[str, Any]]] = defaultdict(list)
    for evidence in VERIFICATION.rglob("evidence.json"):
        timestamp = evidence.parent.name
        if TIMESTAMP_RE.match(timestamp) and timestamp >= CUTOFF:
            continue
        try:
            data = json.loads(evidence.read_text(encoding="utf-8"))
        except Exception:
            continue
        if data.get("success") is not True:
            continue
        for record in data.get("compile_records", []) or []:
            path = resolve_object(record.get("output"))
            if path is None or not path.is_file():
                continue
            refs[path].append({
                "source": record.get("source"),
                "evidence": str(evidence),
                "output_sha256": record.get("output_sha256"),
            })
    return refs


def main() -> None:
    ended = ended_objects()
    refs = success_sources()
    identities: dict[tuple[int, int], list[Path]] = defaultdict(list)
    for path in ended:
        identities[file_id(path)].append(path)
    selected: dict[tuple[int, int], dict[str, Any]] = {}
    for path, source_refs in refs.items():
        normalized = str(path).replace("\\", "/")
        if not any(
            token in normalized
            for token in ("CrtStage0Pair23", "CrtStage0Pair25", "I11Terminal")
        ):
            continue
        identity = file_id(path)
        if identity in selected:
            continue
        if path.stat().st_size == 0:
            continue
        selected[identity] = {
            "path": str(path),
            "bytes": path.stat().st_size,
            "allocated_bytes": allocated_bytes(path),
            "file_id": list(identity),
            "source_refs": source_refs,
            "links": [
                {
                    "path": str(link),
                    "bytes": link.stat().st_size,
                    "allocated_bytes": allocated_bytes(link),
                    "file_id": list(file_id(link)),
                }
                for link in sorted(identities[identity])
            ],
        }

    pair_groups: dict[str, list[dict[str, Any]]] = defaultdict(list)
    terminal_groups: list[dict[str, Any]] = []
    module_groups: dict[str, dict[str, dict[tuple[int, int], int]]] = defaultdict(lambda: defaultdict(dict))
    for identity, item in selected.items():
        text = " ".join(ref.get("source") or "" for ref in item["source_refs"])
        if "CrtStage0Pair23" in text:
            pair_groups["stage0_pair23"].append(item)
        elif "CrtStage0Pair25" in text:
            pair_groups["stage0_pair25"].append(item)
        elif "I11Terminal" in text:
            terminal_groups.append(item)
        for match in re.finditer(r"CrtStage0Pair(23|25)[/.]Chunk(\d+)", text):
            module_groups[f"stage0_pair{match.group(1)}"][f"Chunk{match.group(2)}"][identity] = item["bytes"]

    def stats(items: list[dict[str, Any]]) -> dict[str, Any]:
        values = [item["bytes"] for item in items]
        return {
            "identity_objects": len(items),
            "logical_bytes_one_per_identity": sum(values),
            "allocated_bytes_known": sum(
                item["allocated_bytes"] or 0 for item in items
            ),
            "min_object_bytes": min(values) if values else 0,
            "max_object_bytes": max(values) if values else 0,
            "mean_object_bytes": (sum(values) / len(values)) if values else 0,
        }

    pair_stats = {key: stats(value) for key, value in pair_groups.items()}
    module_stats = {}
    for pair, modules in module_groups.items():
        values = [sum(identity_bytes.values()) for identity_bytes in modules.values()]
        module_stats[pair] = {
            "module_count": len(values),
            "module_bytes": values,
            "min_module_bytes": min(values) if values else 0,
            "max_module_bytes": max(values) if values else 0,
            "mean_module_bytes": (sum(values) / len(values)) if values else 0,
            "sum_module_bytes": sum(values),
        }
    all_object_bytes = sum(path.stat().st_size for path in ended)
    all_allocated = sum(allocated_bytes(path) or 0 for path in ended)
    stage_means = [
        value["mean_module_bytes"]
        for value in module_stats.values()
        if value["module_count"]
    ]
    stage_mins = [
        value["min_module_bytes"]
        for value in module_stats.values()
        if value["module_count"]
    ]
    stage_maxs = [
        value["max_module_bytes"]
        for value in module_stats.values()
        if value["module_count"]
    ]
    crt_low = 22 * min(stage_mins) if stage_mins else 0
    crt_high = 22 * max(stage_maxs) if stage_maxs else 0
    terminal_baseline = stats(terminal_groups)
    free_now = shutil.disk_usage("D:\\").free
    report = {
        "status": "READ_ONLY_V31_CAPACITY_PRECHECK",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": {
            "run": str(RUN),
            "tools": str(TOOLS),
            "v31_started_utc": json.loads(V31_STATE.read_text(encoding="utf-8"))["started_utc"],
            "object_cutoff": CUTOFF,
            "other_worktrees_scanned": False,
            "lean_invocations": 0,
        },
        "disk": {
            "free_bytes_at_probe": free_now,
            "reserve_gate_bytes": 512 * 1024 * 1024,
            "free_minus_reserve_bytes": free_now - 512 * 1024 * 1024,
        },
        "ended_object_inventory": {
            "path_count": len(ended),
            "identity_group_count": len(identities),
            "logical_bytes": all_object_bytes,
            "allocated_bytes_known": all_allocated,
        },
        "observed_success_modules": {
            "stage0_pair23": pair_stats.get("stage0_pair23", {}),
            "stage0_pair25": pair_stats.get("stage0_pair25", {}),
            "stage_module_stats": module_stats,
            "terminal_sources": terminal_baseline,
        },
        "estimates": {
            "remaining_crt_modules": 22,
            "crt_only_low_from_observed_module_min": crt_low,
            "crt_only_high_from_observed_module_max": crt_high,
            "terminal_measured_baseline_not_forecast": terminal_baseline.get("logical_bytes_one_per_identity", 0),
            "interpretation": "CRT range is an estimate from observed complete chunk-module min/max; terminal baseline is measured, not a forecast of all remaining terminal work.",
        },
        "decision": {
            "free_minus_512MiB_bytes": free_now - 512 * 1024 * 1024,
            "disk_headroom_is_not_currently_below_gate": free_now - 512 * 1024 * 1024 >= 0,
            "v31_can_still_block_if_new_objects_exceed_remaining_headroom": True,
            "no_claim_of_Lean_acceptance": True,
        },
    }
    (OUT / "capacity-report.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps(report, ensure_ascii=False))


if __name__ == "__main__":
    main()
