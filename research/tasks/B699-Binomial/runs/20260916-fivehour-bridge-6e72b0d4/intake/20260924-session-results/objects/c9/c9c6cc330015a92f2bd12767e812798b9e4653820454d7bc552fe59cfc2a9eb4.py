#!/usr/bin/env python3
"""Replay local evidence without network, repositories, or Lean.
Default verification requires only the Python standard library.
The separate derive.py command additionally requires the pinned SymPy version.
All new output goes to a new user-specified directory or a temporary directory.
"""
import argparse
import contextlib
import runpy
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

NAMES = ("all0_center", "all0_noncenter", "all4", "mixed")

def run(command, log_path, env):
    with log_path.open("w", encoding="utf-8") as log:
        process = subprocess.run(command, stdout=log, stderr=subprocess.STDOUT, env=env)
    print(log_path.read_text(encoding="utf-8"), end="", flush=True)
    if process.returncode:
        raise RuntimeError(f"Command failed with status {process.returncode}; see {log_path}")

def main():
    if not __debug__:
        raise RuntimeError("Do not disable assertions with -O.")
    if sys.version_info < (3, 11):
        raise RuntimeError("Python 3.11 or later is required.")
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    if args.output_dir is None:
        output = Path(tempfile.mkdtemp(prefix="b699-m2-no14-replay-"))
    else:
        output = args.output_dir.resolve()
        output.mkdir(parents=True, exist_ok=False)
    env = os.environ.copy()
    env["PYTHONDONTWRITEBYTECODE"] = "1"
    env["PYTHONHASHSEED"] = "0"
    steps = []
    run([sys.executable, "-B", str(root/"src/check_standard.py"), str(root/"certificates"),
         str(output/"standard_check.json")], output/"standard_check.log", env)
    steps.append("STANDARD_LIBRARY_IDEAL_MEMBERSHIP=PASS")
    run([sys.executable, "-B", str(root/"src/check_applications.py"),
         str(output/"applications.json")], output/"applications.log", env)
    steps.append("ORIGINAL_CONNECTION_AND_FAILURE_CHECKS=PASS")
    for filename in ("standard_check.json", "applications.json"):
        baseline = root/"outputs"/filename
        if baseline.exists() and baseline.read_bytes() != (output/filename).read_bytes():
            raise RuntimeError(f"Frozen-output mismatch: {filename}")
    steps.append("STANDARD_OUTPUTS_BYTE_IDENTICAL=PASS")
    certificate_hashes = {}
    for name in NAMES:
        p = root/"certificates"/(name+".json")
        certificate_hashes[p.name] = hashlib.sha256(p.read_bytes()).hexdigest()
    receipt = {"status":"PASS", "steps":steps, "regenerated":False,
               "certificate_sha256":certificate_hashes,
               "scope":"Exact polynomial identities and finite certificates; not Lean or independent mathematical review."}
    (output/"replay_receipt.json").write_text(json.dumps(receipt, ensure_ascii=False, indent=2, sort_keys=True)+"\n",
                                             encoding="utf-8")
    for step in steps:
        print(step)
    print("M2_NO14_REPLAY=PASS")
    print("OUTPUT_DIRECTORY="+str(output))

if __name__ == "__main__":
    main()
