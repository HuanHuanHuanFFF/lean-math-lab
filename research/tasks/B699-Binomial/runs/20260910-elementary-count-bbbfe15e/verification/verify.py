#!/usr/bin/env python3
"""Focused EC acceptance. Never installs packages or builds the whole repository.

Use from a checkout with the pinned toolchain and focused mathlib caches present.
A blocked preflight is NOT a Lean result. Each invocation writes fresh evidence.
"""
import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import time

RUN = Path(__file__).resolve().parents[1]
ROOT = RUN.parents[4]
EXPECTED_MATHLIB = "0df444a360eaa60ab8c11dca51a86af692955474"
EXPECTED_TOOLCHAIN = "leanprover/lean4:v4.33.1"
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
DECLARATIONS = [
    "B699ElementaryCount.elementary_primeCounting_bound",
    "B699ElementaryCount.primeCounting_128",
    "B699ElementaryCount.primorial_128_lower",
    "B699ElementaryCount.denominator_pos",
]


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--lake", default="lake", help="Lake executable in the fixed environment")
    parser.add_argument("--memory-mib", type=int, default=4096)
    args = parser.parse_args()
    stamp = dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%S.%fZ")
    out = RUN / "verification" / stamp
    out.mkdir()
    src = RUN / "lean" / "ElementaryCount.lean"
    started = time.monotonic()
    evidence = {
        "started_utc": stamp, "status": "running", "root": str(ROOT),
        "source": str(src.relative_to(ROOT)), "source_sha256": digest(src),
        "verification_script_sha256": digest(Path(__file__)),
        "source_git_blob": None,
        "expected_toolchain": EXPECTED_TOOLCHAIN,
        "expected_mathlib": EXPECTED_MATHLIB,
        "allowed_axioms": sorted(ALLOWED), "commands": [],
        "lean_compilation_ran": False, "independent_kernel_ran": False,
        "accepted_declarations": [], "blocking_reasons": [],
    }

    def finish(code):
        evidence["elapsed_seconds"] = time.monotonic() - started
        evidence["finished_utc"] = dt.datetime.now(dt.timezone.utc).isoformat()
        (out / "evidence.json").write_text(json.dumps(evidence, ensure_ascii=False, indent=2) + "\n")
        print(json.dumps({"status": evidence["status"], "evidence": str(out / "evidence.json"),
                          "blocking_reasons": evidence["blocking_reasons"]}, ensure_ascii=False))
        return code

    def call(argv, name, timeout=600):
        log = out / (name + ".log")
        before = time.monotonic()
        try:
            result = subprocess.run(argv, cwd=ROOT, stdout=subprocess.PIPE,
                                    stderr=subprocess.STDOUT, text=True, timeout=timeout)
            text, code = result.stdout, result.returncode
        except (OSError, subprocess.TimeoutExpired) as exc:
            text, code = str(exc) + "\n", 124
        log.write_text(text)
        evidence["commands"].append({"argv": argv, "exit_code": code,
                                     "elapsed_seconds": time.monotonic() - before,
                                     "log": str(log.relative_to(RUN)), "log_sha256": digest(log)})
        return code, text

    code, text = call(["git", "hash-object", str(src)], "source-blob")
    if code == 0:
        evidence["source_git_blob"] = text.strip()
    evidence["lean_toolchain_file"] = (ROOT / "lean-toolchain").read_text().strip()
    if evidence["lean_toolchain_file"] != EXPECTED_TOOLCHAIN:
        evidence["blocking_reasons"].append("lean-toolchain mismatch")
    manifest_path = ROOT / "lake-manifest.json"
    evidence["manifest_sha256"] = digest(manifest_path)
    manifest = json.loads(manifest_path.read_text())
    pins = []
    for package in manifest["packages"]:
        path = ROOT / ".lake" / "packages" / package["name"]
        pin = {"name": package["name"], "expected": package["rev"], "present": path.is_dir()}
        if path.is_dir():
            code, text = call(["git", "-C", str(path), "rev-parse", "HEAD"], "pin-" + package["name"])
            pin["actual"] = text.strip() if code == 0 else None
            pin["matches"] = pin["actual"] == pin["expected"]
            code, text = call(["git", "-C", str(path), "diff", "--name-only", "HEAD", "--", "*.lean"],
                              "source-clean-" + package["name"])
            pin["tracked_lean_sources_clean"] = code == 0 and not text.strip()
        else:
            pin["matches"] = False
        pins.append(pin)
    evidence["package_pins"] = pins
    mathlib_pin = next(p for p in pins if p["name"] == "mathlib")
    if mathlib_pin["expected"] != EXPECTED_MATHLIB:
        evidence["blocking_reasons"].append("mathlib manifest mismatch")
    # Cli is an unused optional Lake dependency; each other pinned package is required here.
    bad = [p["name"] for p in pins if p["name"] != "Cli" and
           (not p["matches"] or not p.get("tracked_lean_sources_clean", False))]
    if bad:
        evidence["blocking_reasons"].append("Missing/mismatched/modified packages: " + ", ".join(bad))
    content = src.read_text()
    # Do not classify comments as proof tokens. This deliberately rejects any banned token in code.
    code_text = re.sub(r"/\-.*?\-/|--[^\n]*", "", content, flags=re.S)
    banned = re.findall(r"\b(?:sorry|admit|axiom|sorryAx|native_decide|ofReduceBool)\b", code_text)
    evidence["source_policy_banned_tokens"] = banned
    if banned:
        evidence["blocking_reasons"].append("Forbidden proof tokens: " + ", ".join(banned))
    lake = shutil.which(args.lake)
    evidence["lake_executable"] = lake
    if lake is None:
        # Actually attempt the requested command and retain the OS failure as evidence.
        call([args.lake, "env", "lean", "--version"], "lean-version")
        evidence["blocking_reasons"].append("No runnable Lake/Lean executable")
    else:
        code, version = call([lake, "env", "lean", "--version"], "lean-version", 60)
        evidence["actual_lean_version"] = version.strip()
        if code or "version 4.33.1" not in version:
            evidence["blocking_reasons"].append("Lean 4.33.1 did not run")
    if evidence["blocking_reasons"]:
        evidence["status"] = "blocked_before_compilation"
        return finish(2)
    assert lake is not None
    # Record the actual import objects before compiling. Missing imports must fail, not trigger a build.
    code, deps = call([lake, "env", "lean", "--deps", str(src.relative_to(ROOT))], "dependencies", 60)
    evidence["direct_dependency_objects"] = []
    if code:
        evidence["status"] = "blocked_before_compilation"
        evidence["blocking_reasons"].append("Imports unavailable; restore focused caches first")
        return finish(2)
    for line in deps.splitlines():
        obj = Path(line.strip())
        if not obj.is_absolute():
            obj = ROOT / obj
        if obj.is_file():
            evidence["direct_dependency_objects"].append({"path": str(obj), "sha256": digest(obj)})
    build = ROOT / ".lake" / "ec-acceptance" / stamp
    build.mkdir(parents=True)
    target = build / "ElementaryCount.olean"
    argv = [lake, "env", "lean", "-j1", "-M" + str(args.memory_mib),
            "-DElab.async=false", "-DautoImplicit=false", "-o", str(target), str(src.relative_to(ROOT))]
    evidence["lean_compilation_ran"] = True
    code, result = call(argv, "compile-and-axioms")
    if code:
        evidence["status"] = "lean_failed"
        return finish(1)
    audits = {}
    for name in DECLARATIONS:
        match = re.search(re.escape("'" + name + "' depends on axioms:") + r"\s*\[([^\]]*)\]", result)
        no_axioms = "'" + name + "' does not depend on any axioms" in result
        if match:
            axioms = {x.strip() for x in match.group(1).split(",") if x.strip()}
        elif no_axioms:
            axioms = set()
        else:
            evidence["blocking_reasons"].append("Missing actual axiom output: " + name)
            continue
        audits[name] = sorted(axioms)
        if not axioms.issubset(ALLOWED):
            evidence["blocking_reasons"].append("Unexpected transitive axioms: " + name)
    evidence["actual_axioms"] = audits
    if "sorryAx" in result or "declaration uses 'sorry'" in result:
        evidence["blocking_reasons"].append("Compiler admitted a placeholder")
    if digest(src) != evidence["source_sha256"]:
        evidence["blocking_reasons"].append("Source changed during acceptance")
    if evidence["blocking_reasons"]:
        evidence["status"] = "audit_failed"
        return finish(1)
    evidence["object_sha256"] = digest(target)
    evidence["accepted_declarations"] = DECLARATIONS
    evidence["status"] = "accepted"
    return finish(0)


if __name__ == "__main__":
    sys.exit(main())
