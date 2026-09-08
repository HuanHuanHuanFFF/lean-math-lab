#!/usr/bin/env python3
"""Check ReflectedGeometry separately from the unchanged fourteen-root verifier."""
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import runpy
import shutil
import subprocess
import time


def utc():
    return dt.datetime.now(dt.timezone.utc).isoformat()


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


here = Path(__file__).resolve().parent
root = next(p for p in here.parents if (p / "lean-toolchain").is_file())
stamp = dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%SZ")
run = here / (stamp + "-reflected")
run.mkdir(exist_ok=False)
relative = Path("research/tasks/B686-Four/round9/main/ReflectedGeometry.lean")
source = root / relative
ignored = root / ".lake/round9-recovery" / stamp
policy = ignored / "policy"
output = ignored / "olean" / relative.with_suffix(".olean")
policy.mkdir(parents=True, exist_ok=False)
output.parent.mkdir(parents=True, exist_ok=True)
env = dict(os.environ, GIT_OPTIONAL_LOCKS="0", ELAN_HOME=str(root / ".tools/elan"),
           LEAN_PATH=str(root / ".lake/round9-verify/olean") + os.pathsep + str(root))
env["PATH"] = str(root / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
evidence = {"started_utc": utc(), "source": str(relative), "commands": [],
            "scope": "One separate new proof root; old accepted set stays 14 + 2 legacy dependencies.",
            "lean_path": env["LEAN_PATH"], "output": str(output)}


def command(argv, label):
    started = time.monotonic()
    row = {"argv": argv, "cwd": str(root), "started_utc": utc()}
    with (run / (label + ".log")).open("xb") as log:
        result = subprocess.run(argv, cwd=root, env=env, stdout=log,
                                stderr=subprocess.STDOUT, timeout=180)
    row.update(exit_code=result.returncode, ended_utc=utc(),
               elapsed_seconds=round(time.monotonic() - started, 3), log=label + ".log")
    evidence["commands"].append(row)
    print(json.dumps(row), flush=True)
    if result.returncode:
        raise RuntimeError("Command failed: " + label)
    return (run / (label + ".log")).read_text()


exit_code = 1
try:
    evidence["head_and_tree"] = command(["git", "rev-parse", "HEAD", "HEAD^{tree}"], "head").splitlines()
    evidence["source_sha256_before"] = sha(source)
    verifier = here.parent / "verify-round9.sh"
    evidence["old_verifier_sha256_before"] = sha(verifier)
    evidence["pins_before"] = {p: sha(root / p) for p in ["lean-toolchain", "lake-manifest.json"]}
    assert (root / "lean-toolchain").read_text().strip() == "leanprover/lean4:v4.33.1"
    version = command(["bash", "scripts/lean-work.sh", "lean", "--version"], "lean-version")
    assert "Lean (version 4.33.1," in version
    shutil.copyfile(source, policy / "source.lean")
    command(["python3", "scripts/check-lean-policy.py", "--roots", str(policy)], "source-policy")
    mask = runpy.run_path(str(root / "scripts/check-lean-policy.py"))["mask_comments_and_strings"]
    masked = mask(source.read_text())
    names = re.findall(r"^\s*#print\s+axioms\s+(\S+)", masked, re.MULTILINE)
    guards = len(re.findall(r"^\s*#guard_msgs\b", masked, re.MULTILINE))
    evidence.update(guard_count=guards, axiom_prints=names)
    assert guards == len(names) == 6, "Expected six executable axiom guards"
    command(["bash", "scripts/lean-work.sh", "lake", "env", "lean", "-o", str(output), str(relative)], "compile")
    assert output.is_file(), "Lean did not create the fresh output"
    evidence["output_sha256"] = sha(output)
    evidence["compile_output_empty"] = (run / "compile.log").stat().st_size == 0
    evidence["source_sha256_after"] = sha(source)
    evidence["old_verifier_sha256_after"] = sha(verifier)
    evidence["pins_after"] = {p: sha(root / p) for p in evidence["pins_before"]}
    assert evidence["source_sha256_before"] == evidence["source_sha256_after"]
    assert evidence["old_verifier_sha256_before"] == evidence["old_verifier_sha256_after"]
    assert evidence["pins_before"] == evidence["pins_after"]
    exit_code = 0
except Exception as error:
    evidence["error"] = str(error)
    print("FAILED: " + str(error), flush=True)
finally:
    evidence.update(ended_utc=utc(), exit_code=exit_code)
    (run / "evidence.json").write_text(json.dumps(evidence, indent=2) + "\n")
    print("Evidence: " + str(run / "evidence.json"), flush=True)
raise SystemExit(exit_code)
