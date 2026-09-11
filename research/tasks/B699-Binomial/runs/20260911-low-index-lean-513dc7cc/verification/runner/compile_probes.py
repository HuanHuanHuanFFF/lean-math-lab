#!/usr/bin/env python3
"""Serial measured representative checks after this run's fresh FiniteCover root."""
from __future__ import annotations
import json
import os
import shutil
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")


def resources():
    data = {"disk": list(shutil.disk_usage(".")), "cpu_count": os.cpu_count()}
    if Path("/proc/meminfo").is_file():
        data["meminfo"] = [line for line in Path("/proc/meminfo").read_text().splitlines()
                           if line.startswith(("MemTotal:", "MemAvailable:"))]
    for name in ["memory.max", "memory.current", "cpu.max"]:
        p = Path("/sys/fs/cgroup") / name
        data[name] = p.read_text().strip() if p.exists() else None
    procs = subprocess.run(["ps", "-eo", "pid,ppid,rss,comm", "--sort=-rss"],
                           capture_output=True, text=True)
    data["processes"] = procs.stdout[:1800] if procs.returncode == 0 else procs.stderr[:300]
    return data


def evidence():
    return sorted((RUN / "verification").glob("20*/evidence.json"))


def main():
    roots = json.loads((RUN / "verification/runner/probe-roots.json").read_text())
    existing = evidence()
    parents = []
    target = "research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/FiniteCover.lean"
    for path in existing:
        data = json.loads(path.read_text())
        if data.get("success") and target in data.get("root_sources", []) and data.get("all_new_project_closure_compiled"):
            parents = [path]
    if not parents:
        raise RuntimeError("A fresh successful fixed FiniteCover root is required first")
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    output = RUN / "verification" / ("probes-" + stamp)
    output.mkdir(parents=True, exist_ok=False)
    records = []
    for ordinal, root in enumerate(roots):
        record = {"root": root, "before": resources(), "started_utc": datetime.now(timezone.utc).isoformat()}
        print("PROBE_START", root, json.dumps(record["before"]), flush=True)
        log = output / ("%02d-command.log" % ordinal)
        timing = output / ("%02d-time.log" % ordinal)
        cmd = [sys.executable, str(RUN / "verification/runner/verify_incremental.py"),
               "--repo", ".", "--root", root, "--memory-mb", "3072", "--timeout", "900"]
        for path in parents:
            cmd += ["--reuse", str(path)]
        record["command"] = cmd
        if Path("/usr/bin/time").is_file():
            cmd = ["/usr/bin/time", "-v", "-o", str(timing), *cmd]
        started = time.monotonic()
        with log.open("w") as handle:
            process = subprocess.Popen(cmd, stdout=handle, stderr=subprocess.STDOUT)
            while process.poll() is None:
                try:
                    process.wait(timeout=20)
                    break
                except subprocess.TimeoutExpired:
                    pass
                print("PROBE_PROGRESS", root, round(time.monotonic() - started, 1),
                      json.dumps({k: v for k, v in resources().items() if k != "processes"}), flush=True)
        record.update(exit_code=process.returncode, seconds=time.monotonic() - started,
                      after=resources(), log=str(log), timing=str(timing))
        text = log.read_text()
        print(text[-12000:], flush=True)
        for path in evidence():
            if path not in existing:
                data = json.loads(path.read_text())
                if data.get("success"):
                    parents.append(path)
                existing.append(path)
        records.append(record)
        (output / "resources.json").write_text(json.dumps(records, indent=2) + "\n")
    return 0 if all(r["exit_code"] == 0 for r in records) else 1


if __name__ == "__main__":
    raise SystemExit(main())
