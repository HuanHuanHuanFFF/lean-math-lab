#!/usr/bin/env python3
"""Safety-gated, default-dry-run cooperative pause design for one verifier.

This candidate never performs process control. The ctypes bindings are kept as
an auditable sketch only; --apply is deliberately rejected. The live target
must be reviewed by the primary task before any future implementation.
"""
from __future__ import annotations

import argparse
import ctypes
import hashlib
import json
import os
import subprocess
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Any, Iterable

TARGET_ROOT = (
    "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/"
    "lean/rows/Row035J2/Original.lean"
)
TARGET_SCRIPT = "verify_huan.py"
MAX_HOLD_SECONDS = 300
REAL_CONTROL_ENABLED = False


class SafetyError(RuntimeError):
    pass


@dataclass(frozen=True)
class Process:
    pid: int
    ppid: int
    creation_time: str
    name: str
    command_line: str


def _norm(value: str) -> str:
    return str(value).replace("/", "\\").rstrip("\\").casefold()


def _command_sha(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def process_from_row(row: dict[str, Any]) -> Process:
    return Process(
        pid=int(row["ProcessId"] if "ProcessId" in row else row["pid"]),
        ppid=int(row["ParentProcessId"] if "ParentProcessId" in row else row["ppid"]),
        creation_time=str(row.get("CreationDate", row.get("creation_time", ""))),
        name=str(row.get("Name", row.get("name", ""))),
        command_line=str(row.get("CommandLine", row.get("command_line", "")) or ""),
    )


def parse_snapshot(value: str | Path) -> list[Process]:
    raw = json.loads(Path(value).read_text(encoding="utf-8"))
    if isinstance(raw, dict):
        raw = [raw]
    if not isinstance(raw, list):
        raise SafetyError("snapshot must be a JSON object list")
    return [process_from_row(row) for row in raw]


def query_snapshot_readonly() -> list[Process]:
    command = [
        "powershell.exe",
        "-NoProfile",
        "-NonInteractive",
        "-Command",
        (
            "Get-CimInstance Win32_Process | "
            "Select-Object ProcessId,ParentProcessId,CreationDate,Name,CommandLine | "
            "ConvertTo-Json -Compress"
        ),
    ]
    result = subprocess.run(command, capture_output=True, text=True, check=True)
    return parse_rows(json.loads(result.stdout))


def parse_rows(raw: Any) -> list[Process]:
    if isinstance(raw, dict):
        raw = [raw]
    if not isinstance(raw, list):
        raise SafetyError("process query did not return a list")
    return [process_from_row(row) for row in raw]


def descendants(records: Iterable[Process], pid: int) -> list[Process]:
    rows = list(records)
    by_parent: dict[int, list[Process]] = {}
    for row in rows:
        by_parent.setdefault(row.ppid, []).append(row)
    result: list[Process] = []
    pending = [pid]
    seen = {pid}
    while pending:
        parent = pending.pop()
        for row in by_parent.get(parent, []):
            if row.pid in seen:
                continue
            seen.add(row.pid)
            result.append(row)
            pending.append(row.pid)
    return result


def _is_python(row: Process) -> bool:
    return row.name.casefold() in {"python", "python.exe", "py.exe"}


def _is_lean(row: Process) -> bool:
    command = row.command_line.casefold().replace("/", "\\")
    return row.name.casefold() in {"lean", "lean.exe"} or "\\lean.exe " in command


def select_unique_target(
    records: Iterable[Process], repo: str | Path, target_root: str = TARGET_ROOT
) -> Process:
    repo_token = _norm(str(repo))
    root_token = _norm(target_root)
    candidates = [
        row for row in records
        if _is_python(row)
        and TARGET_SCRIPT.casefold() in row.command_line.casefold()
        and root_token in _norm(row.command_line)
        and repo_token in _norm(row.command_line)
    ]
    if len(candidates) != 1:
        raise SafetyError(
            f"expected one exact verifier command with absolute repo token; "
            f"found {len(candidates)}"
        )
    return candidates[0]


def assert_pause_boundary(
    records: Iterable[Process], target: Process, *, max_hold_seconds: int
) -> dict[str, Any]:
    if type(max_hold_seconds) is not int or not (1 <= max_hold_seconds <= MAX_HOLD_SECONDS):
        raise SafetyError("hold duration must be an integer in [1, 300]")
    children = descendants(records, target.pid)
    if children:
        names = sorted({row.name for row in children})
        raise SafetyError(
            "target has live descendants; refuse pause before a child-free boundary: "
            + ", ".join(names)
        )
    return {
        "eligible": True,
        "target_pid": target.pid,
        "parent_pid": target.ppid,
        "creation_time": target.creation_time,
        "command_line_sha256": _command_sha(target.command_line),
        "hold_seconds": max_hold_seconds,
        "descendant_count": 0,
        "control_scope": "target verifier PID only; no parent or child control",
        "watchdog_required": True,
        "real_control_enabled": REAL_CONTROL_ENABLED,
    }


def revalidate_identity(
    records: Iterable[Process],
    previous: Process,
    repo: str | Path,
    target_root: str = TARGET_ROOT,
) -> Process:
    current = select_unique_target(records, repo, target_root)
    if (
        current.pid != previous.pid
        or current.creation_time != previous.creation_time
        or _command_sha(current.command_line) != _command_sha(previous.command_line)
    ):
        raise SafetyError("PID identity or exact command changed; possible PID reuse")
    assert_pause_boundary(records, current, max_hold_seconds=1)
    return current


def watchdog_plan(identity: dict[str, Any]) -> dict[str, Any]:
    return {
        "mode": "independent_watchdog_plan_only",
        "target_pid": identity["target_pid"],
        "creation_time": identity["creation_time"],
        "command_line_sha256": identity["command_line_sha256"],
        "action": "revalidate PID, creation time, command SHA, and child-free state, then resume once",
        "deadline_seconds": identity["hold_seconds"],
        "must_not": ["resume a reused PID", "touch ancestors", "touch descendants", "kill any process"],
    }


def _nt_process_control_api() -> tuple[Any, Any]:
    if os.name != "nt":
        raise SafetyError("NtSuspendProcess/NtResumeProcess are Windows-only")
    ntdll = ctypes.WinDLL("ntdll")
    suspend = ntdll.NtSuspendProcess
    resume = ntdll.NtResumeProcess
    suspend.argtypes = [ctypes.c_void_p]
    resume.argtypes = [ctypes.c_void_p]
    suspend.restype = ctypes.c_long
    resume.restype = ctypes.c_long
    return suspend, resume


def disabled_control_call(*_args: Any, **_kwargs: Any) -> None:
    raise SafetyError("real process control is disabled in this candidate")


def dry_run(records: list[Process], repo: str | Path, hold_seconds: int) -> dict[str, Any]:
    target = select_unique_target(records, repo)
    plan = assert_pause_boundary(records, target, max_hold_seconds=hold_seconds)
    plan["watchdog"] = watchdog_plan(plan)
    plan["action"] = "dry_run_only"
    return plan


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", required=True)
    parser.add_argument("--snapshot-json", type=Path)
    parser.add_argument("--hold-seconds", type=int, default=MAX_HOLD_SECONDS)
    parser.add_argument("--apply", action="store_true", help="always rejected in this candidate")
    args = parser.parse_args(argv)
    if args.apply:
        raise SystemExit("refusing --apply: candidate has REAL_CONTROL_ENABLED=false")
    records = (
        parse_snapshot(args.snapshot_json)
        if args.snapshot_json
        else query_snapshot_readonly()
    )
    print(json.dumps(dry_run(records, args.repo, args.hold_seconds), ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
