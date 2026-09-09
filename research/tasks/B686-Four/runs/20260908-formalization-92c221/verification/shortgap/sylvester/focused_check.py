#!/usr/bin/env python3
"""Compile the chosen Sylvester-Schur sources through a fresh project output closure."""
from __future__ import annotations

import datetime
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[8]
HERE = Path(__file__).resolve().parent
stamp = datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
OUT = HERE / stamp
BUILD = OUT / "build"
OUT.mkdir(parents=True)
LEAN = ROOT / ".tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean"
shim = ROOT / ".tools/lean-work/proc-self.so"
env = os.environ.copy()
env["LD_PRELOAD"] = str(shim)
search = [BUILD] + sorted((ROOT / ".lake/packages").glob("*/.lake/build/lib/lean"))
env["LEAN_PATH"] = ":".join(map(str, search))

def imports(path: Path):
    for line in path.read_text().splitlines():
        match = re.match(r"^(?:public\s+)?import\s+(.+)$", line)
        if match:
            for name in match.group(1).split():
                parts = [p.strip("«»") for p in name.split(".")]
                candidate = ROOT.joinpath(*parts).with_suffix(".lean")
                if candidate.is_file():
                    yield candidate

targets = [ROOT / arg for arg in sys.argv[1:]]
if not targets:
    targets = sorted((ROOT / "research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester").glob("*.lean"))
order, seen = [], set()

def visit(path):
    if path in seen:
        return
    seen.add(path)
    for imported in imports(path):
        visit(imported)
    order.append(path)

for target in targets:
    visit(target)

version = subprocess.run([str(LEAN), "--version"], cwd=ROOT, env=env,
    text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
report = {"timestamp": stamp, "project_output": str(BUILD.relative_to(ROOT)),
    "lean_version": version.stdout.strip(),
    "manifest_sha256": hashlib.sha256((ROOT / "lake-manifest.json").read_bytes()).hexdigest(),
    "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"],
    "sources": [], "success": True}
for source in order:
    relative = source.relative_to(ROOT)
    source_text = source.read_text()
    if re.search(r"\b(?:sorry|admit|native_decide)\b|^\s*axiom\s", source_text, re.M):
        print("SOURCE_POLICY_FAIL", str(relative), flush=True)
        report["success"] = False
        break
    output = BUILD / relative.with_suffix(".olean")
    output.parent.mkdir(parents=True, exist_ok=True)
    command = [str(LEAN), "-o", str(output), str(source)]
    result = subprocess.run(command, cwd=ROOT, env=env, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    log = OUT / relative.with_suffix(".log")
    log.parent.mkdir(parents=True, exist_ok=True)
    log.write_text(result.stdout)
    report["sources"].append({"path": str(relative), "sha256": hashlib.sha256(source.read_bytes()).hexdigest(), "exit_code": result.returncode, "command": command, "log": str(log.relative_to(ROOT))})
    print(str(relative), "PASS" if result.returncode == 0 else "FAIL", flush=True)
    if result.returncode:
        print(result.stdout, flush=True)
        report["success"] = False
        break
if report["success"] and any(source.name == "AxiomAudit.lean" for source in order):
    negative = OUT / "NegativeAudit.lean"
    negative.write_text(
        "import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.shortgap.sylvester.AxiomAudit\n"
        "run_cmd B686SylvesterSchurAudit.checkAllowedAxioms "
        "#[`B686SylvesterSchur.sylvester_schur_product] #[]\n")
    command = [str(LEAN), str(negative)]
    result = subprocess.run(command, cwd=ROOT, env=env, text=True,
        stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    (OUT / "negative-audit.log").write_text(result.stdout)
    expected = result.returncode != 0 and "Unexpected transitive axioms" in result.stdout
    report["negative_audit"] = {"command": command, "exit_code": result.returncode,
        "expected_rejection_observed": expected,
        "purpose": "Reject the existing target with an empty whitelist; introduces no axiom."}
    print("NEGATIVE_AXIOM_GUARD", "PASS" if expected else "FAIL", flush=True)
    report["success"] = report["success"] and expected
(OUT / "verification.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n")
print(str(OUT.relative_to(ROOT)), flush=True)
sys.exit(0 if report["success"] else 1)
