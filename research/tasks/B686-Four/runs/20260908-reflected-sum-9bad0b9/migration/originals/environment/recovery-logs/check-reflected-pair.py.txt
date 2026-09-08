#!/usr/bin/env python3
"""Compile Geometry then PrimeReflectedSum as two separate recovery roots."""
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
run = here / (stamp + "-reflected-pair")
run.mkdir(exist_ok=False)
ignored = root / ".lake/round9-recovery" / (stamp + "-pair")
olean = ignored / "olean"
olean.mkdir(parents=True, exist_ok=False)
env = dict(os.environ, GIT_OPTIONAL_LOCKS="0", ELAN_HOME=str(root / ".tools/elan"),
           LEAN_PATH=str(olean) + os.pathsep + str(root))
env["PATH"] = str(root / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
evidence = {"started_utc": utc(), "commands": [], "seeded_dependencies": [], "roots": [],
            "scope": "Old 14 + 2 unchanged; separately compile Geometry then PrimeReflectedSum.",
            "lean_path": env["LEAN_PATH"]}


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
protected = [root / p for p in ["lean-toolchain", "lake-manifest.json",
             "research/tasks/B686-Four/round9/environment/verify-round9.sh"]]
try:
    evidence["protected_before"] = {str(p.relative_to(root)): sha(p) for p in protected}
    evidence["head_and_tree"] = command(["git", "rev-parse", "HEAD", "HEAD^{tree}"], "head").splitlines()
    assert (root / "lean-toolchain").read_text().strip() == "leanprover/lean4:v4.33.1"
    assert "Lean (version 4.33.1," in command(["bash", "scripts/lean-work.sh", "lean", "--version"], "lean-version")
    # Reuse only the existing sixteen verified outputs; do not rebuild their roots.
    previous = here / "20260908T005756Z-lean/verify-round9-logs"
    for log in sorted(previous.glob("*.lean.log")):
        text = log.read_text()
        relative = Path(re.search(r"^# source: (.+)$", text, re.MULTILINE)[1])
        expected = re.search(r"^# source sha256 after: (.+)$", text, re.MULTILINE)[1]
        assert sha(root / relative) == expected, "Dependency source changed: " + str(relative)
        old = root / ".lake/round9-verify/olean" / relative.with_suffix(".olean")
        target = olean / relative.with_suffix(".olean")
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(old, target)
        evidence["seeded_dependencies"].append({"source": str(relative), "source_sha256": expected,
                                                  "olean_sha256": sha(old)})
    assert len(evidence["seeded_dependencies"]) == 16
    mask = runpy.run_path(str(root / "scripts/check-lean-policy.py"))["mask_comments_and_strings"]
    for name, required in [("ReflectedGeometry", 6), ("PrimeReflectedSum", 3)]:
        relative = Path("research/tasks/B686-Four/round9/main") / (name + ".lean")
        source = root / relative
        row = {"source": str(relative), "source_sha256_before": sha(source)}
        evidence["roots"].append(row)
        policy = ignored / "policy" / name
        policy.mkdir(parents=True)
        shutil.copyfile(source, policy / "source.lean")
        command(["python3", "scripts/check-lean-policy.py", "--roots", str(policy)], name + "-policy")
        masked = mask(source.read_text())
        names = re.findall(r"^\s*#print\s+axioms\s+(\S+)", masked, re.MULTILINE)
        guards = len(re.findall(r"^\s*#guard_msgs\b", masked, re.MULTILINE))
        row.update(guard_count=guards, axiom_prints=names)
        assert guards == len(names) == required
        output = olean / relative.with_suffix(".olean")
        assert not output.exists(), "Expected a fresh output path"
        command(["bash", "scripts/lean-work.sh", "lake", "env", "lean", "-o", str(output), str(relative)], name + "-compile")
        row.update(compile_exit_code=0, output=str(output), output_sha256=sha(output),
                   source_sha256_after=sha(source), compile_output_empty=(run / (name + "-compile.log")).stat().st_size == 0)
        assert row["source_sha256_before"] == row["source_sha256_after"]
    evidence["protected_after"] = {str(p.relative_to(root)): sha(p) for p in protected}
    assert evidence["protected_before"] == evidence["protected_after"]
    exit_code = 0
except Exception as error:
    evidence["error"] = str(error)
    print("FAILED: " + str(error), flush=True)
finally:
    evidence.update(ended_utc=utc(), exit_code=exit_code)
    (run / "evidence.json").write_text(json.dumps(evidence, indent=2) + "\n")
    print("Evidence: " + str(run / "evidence.json"), flush=True)
raise SystemExit(exit_code)
