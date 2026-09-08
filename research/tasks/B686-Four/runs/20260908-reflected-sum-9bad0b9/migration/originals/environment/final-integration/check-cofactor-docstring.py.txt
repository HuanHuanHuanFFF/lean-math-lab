#!/usr/bin/env python3
"""Recheck the sole 01:36 docstring revision; preserve earlier four-root evidence."""
import datetime as dt
import difflib
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


def remove_target_docstring(text):
    declaration = text.index("theorem original_sum_cofactor_bounds")
    start = text.rfind("/--", 0, declaration)
    end = text.index("-/", start) + 2
    assert text[end:declaration].strip() == ""
    return text[:start] + text[end:]


here = Path(__file__).resolve().parent
root = next(p for p in here.parents if (p / "lean-toolchain").is_file())
stamp = dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%SZ")
run = here / (stamp + "-cofactor-docstring")
run.mkdir(exist_ok=False)
prior = json.loads((here / "20260908T013056Z/evidence.json").read_text())
prefix = root / ".lake/round9-final-integration/20260908T013056Z/olean"
relative = Path("research/tasks/B686-Four/round9/main/SumCofactorBounds.lean")
source = root / relative
previous_source = root / ".lake/round9-final-integration/20260908T013056Z/policy/SumCofactorBounds/source.lean"
OLD_SHA = "77b6a20c300d0b3332bff7d1cba0f95132e10eccc6e7c8b5b0e598472f0a064c"
# Only the docstring quantifier changed: k,n,m,S bounded at fixed B;
# auxiliary p not dividing S need not be bounded. Statements/proofs unchanged.
EXPECTED_SHA = "8126290dcd084ea05aa27f602674a5fdf220012dce469e008b47974ee28e8fa5"
ignored = root / ".lake/round9-final-integration" / (stamp + "-cofactor-docstring")
policy = ignored / "policy"
policy.mkdir(parents=True, exist_ok=False)
output = ignored / "olean" / relative.with_suffix(".olean")
output.parent.mkdir(parents=True)
env = dict(os.environ, GIT_OPTIONAL_LOCKS="0", ELAN_HOME=str(root / ".tools/elan"),
           LEAN_PATH=str(prefix) + os.pathsep + str(root))
env["PATH"] = str(root / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
evidence = {"started_utc": utc(), "commands": [], "source": str(relative),
            "old_sha256": OLD_SHA, "expected_current_sha256": EXPECTED_SHA,
            "reused_three_root_evidence": "20260908T013056Z/evidence.json",
            "scope": "Only Cofactor recompiled; other three roots retain their earlier execution timestamps."}


def command(argv, label):
    start = time.monotonic()
    row = {"argv": argv, "cwd": str(root), "started_utc": utc()}
    with (run / (label + ".log")).open("xb") as log:
        p = subprocess.run(argv, cwd=root, env=env, stdout=log, stderr=subprocess.STDOUT, timeout=180)
    row.update(exit_code=p.returncode, ended_utc=utc(), elapsed_seconds=round(time.monotonic()-start, 3))
    evidence["commands"].append(row)
    print(json.dumps(row), flush=True)
    if p.returncode:
        raise RuntimeError("Command failed: " + label)
    return (run / (label + ".log")).read_text()


exit_code = 1
try:
    assert sha(previous_source) == OLD_SHA
    assert sha(source) == EXPECTED_SHA, "Current Cofactor source differs from the reviewed docstring revision"
    old, new = previous_source.read_text(), source.read_text()
    evidence["only_target_docstring_changed"] = remove_target_docstring(old) == remove_target_docstring(new)
    assert evidence["only_target_docstring_changed"]
    (run / "docstring.diff").write_text("".join(difflib.unified_diff(old.splitlines(keepends=True), new.splitlines(keepends=True),
        fromfile="verified-20260908T013056Z/SumCofactorBounds.lean", tofile="current/SumCofactorBounds.lean")))
    evidence["other_three_roots"] = []
    for row in prior["roots"][:3]:
        assert sha(root / row["source"]) == row["source_sha256_after"]
        assert sha(Path(row["output"])) == row["output_sha256"]
        evidence["other_three_roots"].append({"source": row["source"], "source_sha256": row["source_sha256_after"]})
    for row in prior["reused_dependencies"]:
        assert sha(root / row["source"]) == row["source_sha256"]
        assert sha(prefix / Path(row["source"]).with_suffix(".olean")) == row["olean_sha256"]
    for path, expected in prior["protected_after"].items():
        assert sha(root / path) == expected
    evidence["head_and_tree"] = command(["git", "rev-parse", "HEAD", "HEAD^{tree}"], "head").splitlines()
    assert "Lean (version 4.33.1," in command(["bash", "scripts/lean-work.sh", "lean", "--version"], "lean-version")
    shutil.copyfile(source, policy / "source.lean")
    command(["python3", "scripts/check-lean-policy.py", "--roots", str(policy)], "source-policy")
    mask = runpy.run_path(str(root / "scripts/check-lean-policy.py"))["mask_comments_and_strings"]
    masked = mask(new)
    evidence["guard_count"] = len(re.findall(r"^\s*#guard_msgs\b", masked, re.MULTILINE))
    evidence["axiom_prints"] = re.findall(r"^\s*#print\s+axioms\s+(\S+)", masked, re.MULTILINE)
    assert evidence["guard_count"] == len(evidence["axiom_prints"]) == 4
    command(["bash", "scripts/lean-work.sh", "lake", "env", "lean", "-o", str(output), str(relative)], "compile")
    evidence.update(source_sha256_after=sha(source), output=str(output), output_sha256=sha(output),
                    compile_output_empty=(run / "compile.log").stat().st_size == 0)
    assert sha(source) == EXPECTED_SHA
    assert all(sha(root / r["source"]) == r["source_sha256"] for r in evidence["other_three_roots"])
    command(["sha256sum", "--quiet", "-c", str(here.parent / "recovery-logs/SHA256SUMS")], "recovery-checksums")
    exit_code = 0
except Exception as error:
    evidence["error"] = str(error)
    print("FAILED: " + str(error), flush=True)
finally:
    evidence.update(ended_utc=utc(), exit_code=exit_code)
    (run / "evidence.json").write_text(json.dumps(evidence, indent=2) + "\n")
    print("Evidence: " + str(run / "evidence.json"), flush=True)
raise SystemExit(exit_code)
