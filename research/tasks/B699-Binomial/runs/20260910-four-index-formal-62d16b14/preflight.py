#!/usr/bin/env python3
"""Repeat the environment gate without overwriting this run's earlier evidence."""
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import signal
import subprocess
import sys


def read_optional(path):
    try:
        return Path(path).read_text().strip()
    except OSError:
        return None


def main():
    run = Path(__file__).resolve().parent
    repo = run.parents[4]
    frozen = run / "verification" / "preflight"
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S.%fZ")
    out = run / "verification" / stamp
    out.mkdir(parents=True, exist_ok=False)
    pins = {}
    for name in ("lean-toolchain", "lake-manifest.json"):
        actual = (repo / name).read_bytes()
        expected = (frozen / name).read_bytes()
        pins[name] = {
            "sha256": hashlib.sha256(actual).hexdigest(),
            "matches_frozen": actual == expected,
        }
    environment = {
        "utc": stamp,
        "pins": pins,
        "memory_max": read_optional("/sys/fs/cgroup/memory.max"),
        "memory_current": read_optional("/sys/fs/cgroup/memory.current"),
        "memory_events": read_optional("/sys/fs/cgroup/memory.events"),
        "cpu_max": read_optional("/sys/fs/cgroup/cpu.max"),
        "disk_free_bytes": shutil.disk_usage(repo).free,
        "tools": {name: shutil.which(name) for name in ("lean", "lake", "elan")},
        "mathlib_cache_exists": (repo / ".lake/packages/mathlib").exists(),
        "lean_started": False,
        "scope": "Init import only; no mathlib consumer or transitive axiom acceptance",
    }
    cmd = ["lake", "env", "lean", "-j1", "-M4096",
           str((frozen / "MinimalImport.lean").relative_to(repo))]
    environment["command"] = cmd
    with (out / "compile.log").open("w") as log:
        log.write("COMMAND " + " ".join(cmd) + "\n")
        log.flush()
        if not all(p["matches_frozen"] for p in pins.values()):
            rc = 2
            log.write("STOP: pins differ from the frozen startup pins.\n")
        elif not environment["tools"]["lake"]:
            rc = 127
            log.write("STOP: lake not found; Lean was not started.\n")
        else:
            try:
                proc = subprocess.Popen(cmd, cwd=repo, stdout=log,
                                        stderr=subprocess.STDOUT, start_new_session=True)
                try:
                    rc = proc.wait(timeout=60)
                except subprocess.TimeoutExpired:
                    # Only the process group created by this probe is stopped.
                    os.killpg(proc.pid, signal.SIGKILL)
                    proc.wait()
                    raise
                environment["lean_started"] = "inspect compile.log; Lake was invoked"
            except subprocess.TimeoutExpired:
                rc = 124
                log.write("STOP: 60-second environment probe timeout.\n")
            except OSError as error:
                rc = 126
                log.write("STOP: " + str(error) + "\n")
        log.write("EXIT " + str(rc) + "\n")
    environment["exit"] = rc
    (out / "environment.json").write_text(
        json.dumps(environment, ensure_ascii=False, indent=2) + "\n")
    print(json.dumps({"output": str(out.relative_to(repo)), "exit": rc,
                      "init_probe_passed": rc == 0,
                      "full_b699_acceptance": False}, ensure_ascii=False))
    return rc


if __name__ == "__main__":
    sys.exit(main())
