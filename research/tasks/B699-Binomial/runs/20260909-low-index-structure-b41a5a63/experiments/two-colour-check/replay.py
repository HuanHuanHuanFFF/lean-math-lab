#!/usr/bin/env python3
"""Replay the finite-cover checks and record real execution evidence.

This script intentionally performs no shell interpolation. It runs the final
three-stage checker and the independent scalar parameter checker with argv
lists, captures complete stdout/stderr, and writes a fresh timestamped replay
directory. The caller may run it after the main Lean pipeline has finished.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Sequence


RUN_ROOT = Path(__file__).resolve().parents[2]
EXPERIMENT_ROOT = Path(__file__).resolve().parent
DEFAULT_PYTHON = Path(r"C:\Python314\python.exe")
INPUT_RELATIVE = (
  Path("notes/heights/two-colour-cover.json"),
  Path("notes/heights/topprime-residual.json"),
  Path("notes/heights/actual-v-filter.json"),
)
CHECKER_RELATIVE = (
  Path("experiments/two-colour-check/check.py"),
  Path("experiments/two-colour-check/check_all.py"),
  Path("experiments/two-colour-check/parameter_audit.py"),
  Path("experiments/two-colour-check/replay.py"),
  Path("reviews/independent-math/audit_snapshot.ps1"),
)


def utc_now() -> str:
  return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def sha256_file(path: Path) -> str:
  digest = hashlib.sha256()
  with path.open("rb") as stream:
    for block in iter(lambda: stream.read(1024 * 1024), b""):
      digest.update(block)
  return digest.hexdigest()


def relative_to_run(path: Path) -> str:
  try:
    return path.resolve().relative_to(RUN_ROOT.resolve()).as_posix()
  except ValueError:
    return os.path.relpath(path.resolve(), RUN_ROOT.resolve()).replace(os.sep, "/")


def snapshot(paths: Sequence[Path]) -> list[dict[str, Any]]:
  result: list[dict[str, Any]] = []
  for path in paths:
    resolved = path.resolve()
    if not resolved.is_file():
      raise FileNotFoundError(resolved)
    result.append(
      {
        "path": relative_to_run(resolved),
        "sha256": sha256_file(resolved),
        "size": resolved.stat().st_size,
      }
    )
  return result


def allocate_output() -> tuple[Path, str]:
  base = datetime.now(timezone.utc).strftime("replay-%Y%m%dT%H%M%SZ")
  for suffix in ("", *[f"-{index:02d}" for index in range(1, 1000)]):
    name = base + suffix
    output = EXPERIMENT_ROOT / name
    try:
      output.mkdir(parents=True)
    except FileExistsError:
      continue
    return output, name
  raise RuntimeError("could not allocate a fresh replay output directory")


def run_argv(
  label: str,
  argv: Sequence[str],
  cwd: Path,
  output_root: Path,
  timeout_seconds: int,
) -> dict[str, Any]:
  started = utc_now()
  monotonic = time.monotonic()
  timed_out = False
  try:
    process = subprocess.run(
      list(argv),
      cwd=str(cwd),
      env={**os.environ, "PYTHONDONTWRITEBYTECODE": "1"},
      capture_output=True,
      text=True,
      encoding="utf-8",
      errors="replace",
      timeout=timeout_seconds,
      check=False,
      shell=False,
    )
    stdout = process.stdout or ""
    stderr = process.stderr or ""
    exit_code = process.returncode
  except subprocess.TimeoutExpired as error:
    timed_out = True
    stdout = error.stdout.decode("utf-8", errors="replace") if isinstance(error.stdout, bytes) else (error.stdout or "")
    stderr = error.stderr.decode("utf-8", errors="replace") if isinstance(error.stderr, bytes) else (error.stderr or "")
    exit_code = 124
  finished = utc_now()
  elapsed = round(time.monotonic() - monotonic, 3)
  stdout_path = output_root / f"{label}.stdout.txt"
  stderr_path = output_root / f"{label}.stderr.txt"
  stdout_path.write_bytes(stdout.encode("utf-8"))
  stderr_path.write_bytes(stderr.encode("utf-8"))
  return {
    "label": label,
    "argv": [str(item) for item in argv],
    "cwd_relative_to_run": relative_to_run(cwd),
    "started_utc": started,
    "finished_utc": finished,
    "seconds": elapsed,
    "timeout_seconds": timeout_seconds,
    "timed_out": timed_out,
    "exit_code": exit_code,
    "stdout": stdout,
    "stderr": stderr,
    "stdout_log": stdout_path.name,
    "stdout_log_sha256": sha256_file(stdout_path),
    "stderr_log": stderr_path.name,
    "stderr_log_sha256": sha256_file(stderr_path),
  }


def parse_args() -> argparse.Namespace:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--python", type=Path, default=DEFAULT_PYTHON)
  parser.add_argument("--timeout", type=int, default=300)
  return parser.parse_args()


def main() -> int:
  args = parse_args()
  started = utc_now()
  output_root, output_name = allocate_output()
  python_executable = args.python.resolve()
  if not python_executable.is_file():
    raise FileNotFoundError(python_executable)
  input_paths = [RUN_ROOT / path for path in INPUT_RELATIVE]
  checker_paths = [RUN_ROOT / path for path in CHECKER_RELATIVE]
  tracked_paths = input_paths + checker_paths
  before = snapshot(tracked_paths)
  check_all = RUN_ROOT / "experiments/two-colour-check/check_all.py"
  parameter_audit = RUN_ROOT / "experiments/two-colour-check/parameter_audit.py"
  cover_arg = "notes/heights/two-colour-cover.json"
  topprime_arg = "notes/heights/topprime-residual.json"
  actual_v_arg = "notes/heights/actual-v-filter.json"
  commands = [
    run_argv(
      "check_all",
      [
        str(python_executable),
        "-B",
        str(check_all.resolve()),
        "--cover",
        cover_arg,
        "--topprime",
        topprime_arg,
        "--actual-v",
        actual_v_arg,
        "--tamper-test",
      ],
      RUN_ROOT,
      output_root,
      args.timeout,
    ),
    run_argv(
      "parameter_audit",
      [
        str(python_executable),
        "-B",
        str(parameter_audit.resolve()),
        "--input",
        cover_arg,
      ],
      RUN_ROOT,
      output_root,
      args.timeout,
    ),
  ]
  after = snapshot(tracked_paths)
  before_map = {entry["path"]: entry for entry in before}
  after_map = {entry["path"]: entry for entry in after}
  unchanged = all(
    before_map[path]["sha256"] == after_map[path]["sha256"]
    for path in before_map
  )
  success = unchanged and all(
    command["exit_code"] == 0 and not command["timed_out"]
    for command in commands
  )
  evidence = {
    "schema_version": 1,
    "kind": "real-subprocess-finite-cover-replay",
    "run_name": output_name,
    "started_utc": started,
    "finished_utc": utc_now(),
    "project_run": relative_to_run(RUN_ROOT),
    "python": {
      "executable": str(python_executable),
      "version": sys.version,
    },
    "inputs_before": before[: len(input_paths)],
    "inputs_after": after[: len(input_paths)],
    "checker_scripts_before": before[len(input_paths) :],
    "checker_scripts_after": after[len(input_paths) :],
    "all_tracked_files_unchanged": unchanged,
    "commands": commands,
    "success": success,
    "exit_code": 0 if success else 1,
    "boundaries": {
      "lean_run": False,
      "j_enumeration": False,
      "old_run_modified": False,
      "reviewer_reference": "reviews/independent-math/audit_snapshot.ps1",
    },
  }
  evidence_path = output_root / "evidence.json"
  evidence_path.write_text(
    json.dumps(evidence, ensure_ascii=False, indent=2) + "\n",
    encoding="utf-8",
  )
  print(json.dumps({"output": relative_to_run(output_root), "success": success, "exit_code": evidence["exit_code"]}, ensure_ascii=False))
  return int(evidence["exit_code"])


if __name__ == "__main__":
  raise SystemExit(main())
