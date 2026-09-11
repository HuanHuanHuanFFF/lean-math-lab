#!/usr/bin/env python3
"""Stage only current-checkout B699 evidence and the exact row candidates."""
from __future__ import annotations
import argparse
import json
import shutil
import subprocess
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
RAW = Path(".tools") / RUN.name


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--i", type=int)
    args = parser.parse_args()
    if args.i is not None and args.i != 29 and not 35 <= args.i <= 184:
        parser.error("Outside phase A")
    commit = subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip()
    destination = RAW / "evidence-export" / ("shared" if args.i is None else "row%03d" % args.i)
    destination.mkdir(parents=True, exist_ok=False)
    files = set()
    for path in sorted((RUN / "verification").glob("20*/evidence.json")):
        report = json.loads(path.read_text())
        if report.get("source_commit") != commit:
            continue
        files.add(path)
        for row in [*report.get("compile_records", []), *report.get("reuse_records", [])]:
            files.add(Path(row["log"]))
        for command in report.get("commands", []):
            files.add(Path(command["log"]))
        if report.get("policy"):
            files.add(Path(report["policy"]["log"]))
        for row in report.get("source_closure", []):
            source = Path(row["source"])
            if source.is_relative_to(RUN / "lean"):
                files.add(source)
    if args.i is not None:
        plan = RUN / "verification/plans" / ("row-%d-%s.json" % (args.i, commit))
        if plan.is_file():
            files.add(plan)
            files.update(Path(row["path"]) for row in json.loads(plan.read_text())["outputs"])
    missing = []
    for source in sorted(files):
        if not source.is_relative_to(RUN) or ".." in source.parts:
            raise RuntimeError("Evidence staging escaped this run")
        if not source.is_file():
            missing.append(str(source))
            continue
        target = destination / source
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, target)
    summary = {"source_commit": commit, "i": args.i, "files": len(files),
               "missing": missing, "acceptance": "Determined by raw Lean evidence, never by upload status"}
    (destination / "staging.json").write_text(json.dumps(summary, indent=2) + "\n")
    print("B699_EVIDENCE_STAGING " + json.dumps(summary))


if __name__ == "__main__":
    main()
