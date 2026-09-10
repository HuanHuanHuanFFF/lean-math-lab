#!/usr/bin/env python3
"""Print bounded, machine-readable acceptance evidence to the job log."""
import hashlib
import json
import subprocess
from pathlib import Path
run = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
source_commit = subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip()
for path in sorted((run / "verification").glob("20*/evidence.json")):
    d = json.loads(path.read_text())
    # Historical evidence remains frozen; emit only this checkout's actual run.
    if d.get("source_commit") != source_commit:
        continue
    result = {k: d.get(k) for k in ["success", "exit_code", "root_sources", "manifest_sha256",
              "toolchain", "compiled_count", "reused_count", "failure"]}
    result["evidence"] = str(path)
    result["evidence_sha256"] = hashlib.sha256(path.read_bytes()).hexdigest()
    result["pins"] = [{k: p.get(k) for k in ["name", "manifest_rev", "observed_head", "head_matches", "clean"]}
                      for p in d.get("pins", [])]
    print("B699_EVIDENCE " + json.dumps(result, ensure_ascii=False))
    for record in d.get("compile_records", []):
        row = {k: record.get(k) for k in ["source", "source_sha256_before", "source_sha256_after",
               "output_sha256", "seconds", "exit_code", "failure", "log", "log_sha256", "axiom_audit"]}
        print("B699_COMPILE " + json.dumps(row, ensure_ascii=False))
        if row["failure"]:
            print((Path(record["log"])).read_text()[-8000:])
