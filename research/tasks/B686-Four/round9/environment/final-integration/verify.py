#!/usr/bin/env python3
"""Bounded final source compilation; explicit roots, unchanged dependencies and logs."""
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
base = Path("research/tasks/B686-Four/round9")
stamp = dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%SZ")
run = here / stamp
run.mkdir(exist_ok=False)
ignored = root / ".lake/round9-final-integration" / stamp
olean = ignored / "olean"
olean.mkdir(parents=True, exist_ok=False)
recovery = here.parent / "recovery-logs"
env = dict(os.environ, GIT_OPTIONAL_LOCKS="0", ELAN_HOME=str(root / ".tools/elan"),
           LEAN_PATH=str(olean) + os.pathsep + str(root))
env["PATH"] = str(root / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
ROOTS = [
    ("a/ReflectedPrimePower.lean", 5, "original-equation high-branch contact interface"),
    ("main/SumPrimePowerExclusion.lean", 5, "complete original-equation prime-power reflected-sum exclusion"),
    ("b/SumTwoPositionGap.lean", 11, "two-position bound conditional on complete factor groups and square contacts"),
    ("main/SumCofactorBounds.lean", 4, "source-only complementary-factor length and height bounds"),
]
evidence = {"started_utc": utc(), "commands": [], "roots": [], "reused_dependencies": [],
            "root_order": [p for p, _, _ in ROOTS], "lean_path": env["LEAN_PATH"],
            "boundary": "Final group is exactly Acore, prime-power exclusion, conditional Bnorm, cofactor. Historical root sets unchanged."}


def command(argv, label, cwd=root, timeout=180):
    row = {"argv": argv, "cwd": str(cwd), "started_utc": utc()}
    started = time.monotonic()
    with (run / (label + ".log")).open("xb") as log:
        try:
            result = subprocess.run(argv, cwd=cwd, env=env, stdout=log,
                                    stderr=subprocess.STDOUT, timeout=timeout)
            row["exit_code"] = result.returncode
        except subprocess.TimeoutExpired:
            row.update(exit_code=None, timed_out=True)
    row.update(ended_utc=utc(), elapsed_seconds=round(time.monotonic() - started, 3), log=label + ".log")
    evidence["commands"].append(row)
    print(json.dumps(row), flush=True)
    if row["exit_code"] != 0:
        raise RuntimeError("Command failed or timed out: " + label)
    return (run / (label + ".log")).read_text()


protected = [root / p for p in ["lean-toolchain", "lake-manifest.json", "lakefile.toml",
              "scripts/lean-work.sh", "scripts/check-lean-policy.py", "scripts/verify.ps1"]]
protected += [here.parent / "verify-round9.sh", recovery / "SHA256SUMS"]
exit_code = 1
try:
    evidence["protected_before"] = {str(p.relative_to(root)): sha(p) for p in protected}
    evidence["root_source_hashes_before"] = {p: sha(root / base / p) for p, _, _ in ROOTS}
    evidence["head_and_tree"] = command(["git", "rev-parse", "HEAD", "HEAD^{tree}"], "head").splitlines()
    command(["sha256sum", "--quiet", "-c", str(recovery / "SHA256SUMS")], "recovery-checksums-before")
    assert (root / "lean-toolchain").read_text().strip() == "leanprover/lean4:v4.33.1"
    assert "Lean (version 4.33.1," in command(["bash", "scripts/lean-work.sh", "lean", "--version"], "lean-version")
    command(["bash", "scripts/lean-work.sh", "lake", "--version"], "lake-version")
    lean = Path(command(["elan", "which", "lean"], "lean-path").strip())
    evidence["lean_binary"] = {"path": str(lean), "sha256": sha(lean)}
    evidence["packages"] = []
    for package in json.loads((root / "lake-manifest.json").read_text())["packages"]:
        actual = command(["git", "rev-parse", "HEAD"], "pin-" + package["name"],
                         cwd=root / ".lake/packages" / package["name"]).strip()
        evidence["packages"].append({"name": package["name"], "locked": package["rev"], "actual": actual})
        assert actual == package["rev"], "Dependency revision changed"
    previous = json.loads((recovery / "20260908T011015Z-reflected-pair/evidence.json").read_text())
    required = {"research/tasks/B686-Four/independent/TargetBridge.lean",
                "research/tasks/B686-Four/round8/continuation/SizeBounds.lean",
                str(base / "main/HitSemantics.lean"), str(base / "main/PrimeSynchronization.lean")}
    candidates = [(r["source"], r["source_sha256"],
                   root / ".lake/round9-verify/olean" / Path(r["source"]).with_suffix(".olean"),
                   r["olean_sha256"]) for r in previous["seeded_dependencies"] if r["source"] in required]
    geometry = previous["roots"][0]
    candidates.append((geometry["source"], geometry["source_sha256_after"],
                       Path(geometry["output"]), geometry["output_sha256"]))
    assert len(candidates) == 5
    for source_name, expected_source, old_output, expected_output in candidates:
        assert sha(root / source_name) == expected_source, "Reused dependency source changed: " + source_name
        assert sha(old_output) == expected_output, "Reused olean changed: " + source_name
        target = olean / Path(source_name).with_suffix(".olean")
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(old_output, target)
        evidence["reused_dependencies"].append({"source": source_name, "source_sha256": expected_source,
                                                 "input_olean": str(old_output), "olean_sha256": expected_output})
    mask = runpy.run_path(str(root / "scripts/check-lean-policy.py"))["mask_comments_and_strings"]
    for relative, required_guards, claim_kind in ROOTS:
        source = root / base / relative
        name = source.stem
        row = {"source": str(base / relative), "claim_kind": claim_kind,
               "source_sha256_before": sha(source), "required_guards": required_guards}
        evidence["roots"].append(row)
        assert row["source_sha256_before"] == evidence["root_source_hashes_before"][relative]
        policy = ignored / "policy" / name
        policy.mkdir(parents=True)
        shutil.copyfile(source, policy / "source.lean")
        command(["python3", "scripts/check-lean-policy.py", "--roots", str(policy)], name + "-policy")
        masked = mask(source.read_text())
        row["imports"] = re.findall(r"^import\s+(.+)$", masked, re.MULTILINE)
        row["axiom_prints"] = re.findall(r"^\s*#print\s+axioms\s+(\S+)", masked, re.MULTILINE)
        row["guard_count"] = len(re.findall(r"^\s*#guard_msgs\b", masked, re.MULTILINE))
        assert row["guard_count"] == len(row["axiom_prints"]) == required_guards, "Source guard count changed: " + relative
        output = olean / (base / relative).with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        assert not output.exists()
        command(["bash", "scripts/lean-work.sh", "lake", "env", "lean", "-o", str(output), str(base / relative)], name + "-compile")
        row.update(compile_exit_code=0, output=str(output), output_sha256=sha(output),
                   source_sha256_after=sha(source), compile_output_empty=(run / (name + "-compile.log")).stat().st_size == 0)
        assert row["source_sha256_before"] == row["source_sha256_after"]
    assert all(sha(root / d["source"]) == d["source_sha256"] for d in evidence["reused_dependencies"])
    evidence["root_source_hashes_after"] = {p: sha(root / base / p) for p, _, _ in ROOTS}
    assert evidence["root_source_hashes_before"] == evidence["root_source_hashes_after"]
    command(["sha256sum", "--quiet", "-c", str(recovery / "SHA256SUMS")], "recovery-checksums-after")
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
