#!/usr/bin/env python3
"""Measure and compile one generated original root using the verified shared cache.

Writes only workspace evidence. Branch publication belongs to the main session.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import runpy
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
RAW = Path(".tools") / RUN.name


def emit_file(path, kind):
    content = path.read_text()
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    parts = [content[k:k+7000] for k in range(0, len(content), 7000)] or [""]
    for k, part in enumerate(parts):
        print("B699_FILE_CHUNK " + json.dumps({"path": str(path), "kind": kind,
            "sha256": digest, "chunk": k, "chunks": len(parts), "content": part},
            ensure_ascii=False), flush=True)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--plan", type=Path, required=True)
    args = p.parse_args()
    plan = json.loads(args.plan.read_text())
    i = plan["i"]
    if i != 29 and not 35 <= i <= 184:
        raise RuntimeError("Outside phase A")
    state = json.loads((RUN / "target-status.json").read_text())
    if i != 29 and not next(r for r in state["targets"] if r["i"] == 29)["full_original_statement_accepted"]:
        raise RuntimeError("Full Row029 acceptance must precede the remaining 150 rows")
    sources = [Path(r["path"]) for r in plan["outputs"]]
    for source in sources:
        if not source.is_relative_to(RUN / "lean"):
            raise RuntimeError("Generated source is outside this run")
    inspect = runpy.run_path(str(RUN / "verification/runner/compile_probes.py"))["resources"]
    before = inspect()
    directory = RUN / "verification" / ("row%03d-driver-" % i +
        datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ"))
    directory.mkdir(parents=True, exist_ok=False)
    log = directory / "command.log"
    timing = directory / "time.log"
    parents = (RAW / "shared-evidence.txt").read_text().strip()
    command = [sys.executable, str(RUN / "verification/runner/verify_incremental.py"),
               "--repo", ".", "--root", plan["root"], "--reuse", parents,
               "--memory-mb", "3072", "--timeout", "900"]
    print("B699_ROW_START " + json.dumps({"i": i, "resources": before,
        "command": command}, ensure_ascii=False), flush=True)
    actual = ["/usr/bin/time", "-v", "-o", str(timing), *command] if Path("/usr/bin/time").is_file() else command
    existing = set((RUN / "verification").glob("20*/evidence.json"))
    with log.open("w") as out:
        status = subprocess.run(actual, stdout=out, stderr=subprocess.STDOUT).returncode
    resources = {"i": i, "before": before, "after": inspect(), "exit_code": status,
                 "command": command, "log": str(log), "timing": str(timing)}
    (directory / "resources.json").write_text(json.dumps(resources, indent=2) + "\n")
    print(log.read_text()[-12000:], flush=True)
    added = set((RUN / "verification").glob("20*/evidence.json")) - existing
    matches = [f for f in sorted(added) if json.loads(f.read_text()).get("root_sources") == [plan["root"]]]
    if len(matches) != 1:
        print("B699_ROW_RESULT " + json.dumps({"i": i, "success": False,
            "failure": "missing unambiguous root evidence", "exit_code": status}), flush=True)
        return 1
    evidence = matches[0]
    d = json.loads(evidence.read_text())
    complete = bool(status == 0 and d.get("success"))
    print("B699_ROW_RESULT " + json.dumps({"i": i, "success": complete,
        "root": plan["root"], "evidence": str(evidence),
        "source_commit": d.get("source_commit"), "failure": d.get("failure"),
        "axioms": [r["axiom_audit"] for r in d["compile_records"] if r["source"] == plan["root"]]},
        ensure_ascii=False), flush=True)
    files = {args.plan, evidence, Path(parents), directory / "resources.json",
             RUN / "verification/cache-restorations" / (Path(parents).parent.name + ".json")}
    if timing.exists():
        files.add(timing)
    files.update(sources)
    for report in [d, json.loads(Path(parents).read_text())]:
        for record in [*report.get("compile_records", []), *report.get("reuse_records", [])]:
            files.add(Path(record["log"]))
        policy = report.get("policy")
        if policy:
            files.add(Path(policy["log"]))
        for cmd in report.get("commands", []):
            files.add(Path(cmd["log"]))
    for file in sorted(files):
        if not file.is_relative_to(RUN):
            raise RuntimeError("Evidence export escaped this run")
        emit_file(file, "source" if file.suffix == ".lean" else "evidence")
    return 0 if complete else 1


if __name__ == "__main__":
    raise SystemExit(main())
