"""Reproduce this package's finite checks. No network, Lean, or n/j search.

Default path uses the Python standard library. --exploration also requires the
versions in requirements-exploration.txt. Assertions must remain enabled.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
import platform
import subprocess
import sys
import time
import zipfile
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPLAY = ROOT / "replay"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def verify_input() -> dict:
    packet = ROOT / "input/task_bundle.zip"
    with zipfile.ZipFile(packet) as z:
        provenance = json.loads(z.read("provenance.json"))
        if provenance["source_commit"] != "63a04b064d62e7e8752b1edd75c186d07dc57a20":
            raise ValueError("unexpected input source commit")
        checked = []
        for entry in provenance["files"]:
            content = z.read(entry["packet_path"])
            if len(content) != entry["bytes"] or hashlib.sha256(content).hexdigest() != entry["sha256"]:
                raise ValueError("input provenance mismatch: " + entry["packet_path"])
            checked.append(entry["packet_path"])
        if z.read("TASKS.md") != (ROOT / "input/TASKS.md").read_bytes():
            raise ValueError("TASKS copy mismatch")
        if z.read("provenance.json") != (ROOT / "input/provenance.json").read_bytes():
            raise ValueError("provenance copy mismatch")
    return {"zip_sha256": sha256(packet), "source_commit": provenance["source_commit"],
            "verified_files": checked, "status": "passed"}


def main() -> int:
    if not __debug__ or sys.flags.optimize:
        raise RuntimeError("Do not use -O: this research checker uses assertions.")
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--exploration", action="store_true")
    args = parser.parse_args()
    REPLAY.mkdir(exist_ok=True)
    (ROOT / "outputs").mkdir(exist_ok=True)
    result = {"started_utc": datetime.now(timezone.utc).isoformat(),
              "scope": "Finite algebra/certificates only; external BFT/BEG and Lean are not checked",
              "python": sys.version, "platform": platform.platform(),
              "exploration_requested": args.exploration, "input": verify_input(), "steps": []}
    scripts = ["height_probe.py", "verify_core.py", "graph_diagnostic.py"]
    if args.exploration:
        scripts += ["quartic_probe.py", "conic_cover_probe.py"]
    env = dict(os.environ)
    env.pop("PYTHONOPTIMIZE", None)
    env["PYTHONDONTWRITEBYTECODE"] = "1"
    for script in scripts:
        command = [sys.executable, "code/" + script]
        started = time.monotonic()
        proc = subprocess.run(command, cwd=ROOT, env=env, capture_output=True, text=True, check=False)
        elapsed = time.monotonic() - started
        stem = script.removesuffix(".py")
        stdout = REPLAY / (stem + ".stdout.txt")
        stderr = REPLAY / (stem + ".stderr.txt")
        stdout.write_text(proc.stdout, encoding="utf-8")
        stderr.write_text(proc.stderr, encoding="utf-8")
        if script == "quartic_probe.py" and proc.returncode == 0:
            (ROOT / "outputs/quartic_probe.txt").write_text(proc.stdout, encoding="utf-8")
        row = {"command": command, "cwd": "package root", "returncode": proc.returncode,
               "elapsed_seconds": elapsed, "script_sha256": sha256(ROOT / "code" / script),
               "stdout": str(stdout.relative_to(ROOT)), "stderr": str(stderr.relative_to(ROOT))}
        result["steps"].append(row)
        print(f"{script}: exit={proc.returncode}, seconds={elapsed:.3f}", flush=True)
        if proc.returncode:
            result["status"] = "failed"
            (REPLAY / "reproduction.json").write_text(json.dumps(result, indent=2) + "\n")
            return proc.returncode
    result["status"] = "passed"
    result["finished_utc"] = datetime.now(timezone.utc).isoformat()
    result["output_sha256"] = {str(p.relative_to(ROOT)): sha256(p)
                                for p in sorted((ROOT / "outputs").glob("*")) if p.is_file()}
    result["code_sha256"] = {str(p.relative_to(ROOT)): sha256(p)
                              for p in sorted((ROOT / "code").glob("*.py"))}
    (REPLAY / "reproduction.json").write_text(json.dumps(result, indent=2) + "\n")
    print("All requested finite checks passed; no claim of external-theorem or Lean verification.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
