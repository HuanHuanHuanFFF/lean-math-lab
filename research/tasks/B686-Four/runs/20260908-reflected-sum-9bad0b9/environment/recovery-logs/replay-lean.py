#!/usr/bin/env python3
"""Replay the unchanged round-9 verifier with fresh adjacent logs; no Git writes."""
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import time


def utc():
    return dt.datetime.now(dt.timezone.utc).isoformat()


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


here = Path(__file__).resolve().parent
root = next(p for p in here.parents if (p / "lean-toolchain").is_file())
environment = here.parent
run = here / (dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%SZ") + "-lean")
run.mkdir(exist_ok=False)
env = dict(os.environ, GIT_OPTIONAL_LOCKS="0", ELAN_HOME=str(root / ".tools/elan"))
env["PATH"] = str(root / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
env.pop("LEAN_PATH", None)
evidence = {"started_utc": utc(), "repo": str(root), "commands": [],
            "note": "Actual recovered local execution; earlier offline V8 diagnostics remain computation, not Lean."}


def command(args, label, cwd=root, timeout=600):
    start = time.monotonic()
    record = {"argv": args, "cwd": str(cwd), "started_utc": utc()}
    with (run / (label + ".log")).open("xb") as log:
        result = subprocess.run(args, cwd=cwd, env=env, stdout=log,
                                stderr=subprocess.STDOUT, timeout=timeout)
    record.update(exit_code=result.returncode, ended_utc=utc(),
                  elapsed_seconds=round(time.monotonic() - start, 3),
                  log=label + ".log")
    evidence["commands"].append(record)
    print(json.dumps(record), flush=True)
    if result.returncode:
        raise RuntimeError("Command failed: " + label)
    return (run / (label + ".log")).read_text().strip()


def protected_snapshot():
    paths = [p for p in environment.rglob("*") if p.is_file()
             and here not in p.parents and p.name != "runtime-recovery.md"]
    paths += [root / p for p in ["lean-toolchain", "lake-manifest.json", "lakefile.toml",
                                "scripts/lean-work.sh", "scripts/verify.ps1",
                                "scripts/check-lean-policy.py"]]
    paths += list((environment.parent / "main").glob("*.lean"))
    paths += [root / "research/tasks/B686-Four/independent/TargetBridge.lean",
              root / "research/tasks/B686-Four/round8/continuation/SizeBounds.lean"]
    return {str(p.relative_to(root)): sha(p) for p in sorted(set(paths))}


exit_code = 1
try:
    evidence["protected_before"] = protected_snapshot()
    evidence["head_before"] = command(["git", "rev-parse", "HEAD", "HEAD^{tree}"], "head-before").splitlines()
    assert (root / "lean-toolchain").read_text().strip() == "leanprover/lean4:v4.33.1"
    evidence["packages"] = []
    for package in json.loads((root / "lake-manifest.json").read_text())["packages"]:
        actual = command(["git", "rev-parse", "HEAD"], "pin-" + package["name"],
                         cwd=root / ".lake/packages" / package["name"])
        evidence["packages"].append({"name": package["name"], "locked": package["rev"],
                                      "actual": actual, "match": actual == package["rev"]})
        assert actual == package["rev"], "Dependency pin mismatch: " + package["name"]
    command([str(root / ".tools/elan/bin/elan"), "--version"], "elan-version")
    binary = Path(command([str(root / ".tools/elan/bin/elan"), "which", "lean"], "lean-path"))
    evidence["lean_binary"] = {"path": str(binary), "sha256": sha(binary)}
    source = environment / "verify-round9.sh"
    copied = run / "verify-round9.sh"
    shutil.copyfile(source, copied)
    evidence["verifier_sha256"] = sha(source)
    assert sha(source) == sha(copied)
    command(["bash", str(copied)], "verifier", cwd=root.parent)
    lean_logs = sorted((run / "verify-round9-logs").glob("*.lean.log"))
    kinds = {kind: sum(("# root kind: " + kind + "\n") in p.read_text() for p in lean_logs)
             for kind in ["proof", "diagnostic", "legacy"]}
    evidence["compiled_kinds"] = kinds
    assert kinds == {"proof": 13, "diagnostic": 1, "legacy": 2}, kinds
    exit_code = 0
except Exception as error:
    evidence["error"] = str(error)
    print("FAILED: " + str(error), flush=True)
finally:
    evidence["protected_after"] = protected_snapshot()
    evidence["protected_unchanged"] = evidence.get("protected_before") == evidence["protected_after"]
    if not evidence["protected_unchanged"]:
        exit_code = 1
    evidence["ended_utc"] = utc()
    evidence["exit_code"] = exit_code
    (run / "evidence.json").write_text(json.dumps(evidence, indent=2) + "\n")
    print("Evidence: " + str(run / "evidence.json"), flush=True)
raise SystemExit(exit_code)
