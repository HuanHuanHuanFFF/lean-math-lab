"""Recheck the third-round research checkpoint with the repository's pinned Lean.

Run from any directory in Linux. This supplements scripts/verify.ps1; research files are
intentionally outside the accepted-library gate. No full B686 claim is made.
"""
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import subprocess
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
TASK = HERE.parent.relative_to(ROOT)
OUTPUT = HERE / "round3-lean-verification.json"
LEAN_FILES = [
    "independent/TargetBridge.lean",
    "independent/PrimeSupport.lean",
    "independent/GapBounds.lean",
    "independent/K12.lean",
    "lean/Round3TwoScaleGap.lean",
    "lean/Round3K5PointWitnesses.lean",
    "lean/Round3SmallGapCertificates.lean",
    "lean/Round3GapDivisibility.lean",
]
ARITHMETIC_CHECKS = [
    "check_k12.py", "check_round3_even.py",
    "check_round3_frobenius.py", "check_round3_small_gap.py",
    "check_round3_gap_support.py",
]


def arithmetic_command(name):
    command = [sys.executable, str(TASK / "independent" / name)]
    if name == "check_round3_even.py":
        command += [str(TASK / "experiments/round3-even-effective-bound-2026-09-07.json"),
                    "--output", str(TASK / "independent/round3-even-verification.json")]
    return command


def main():
    report = {"started_at": datetime.now(timezone.utc).isoformat(),
              "status": "running", "full_original_target_solved": False,
              "external_literature_formalized": False,
              "repository_pins": {}, "checks": []}
    for name in ("lean-toolchain", "lake-manifest.json", "scripts/lean-work.sh", "scripts/lean-proc-self.c",
                 str(TASK / "independent/verify_round3.py")):
        report["repository_pins"][name] = hashlib.sha256((ROOT / name).read_bytes()).hexdigest()
    commands = [(["bash", "scripts/lean-work.sh", "lean", "--version"], None)]
    imports = sorted({line.removeprefix("import ").strip()
                      for name in LEAN_FILES for line in (ROOT / TASK / name).read_text().splitlines()
                      if line.startswith("import ")})
    # A fresh checkout may have built only the accepted library's mathlib imports.
    commands.append((["bash", "scripts/lean-work.sh", "lake", "build", *imports], None))
    commands += [(arithmetic_command(name), TASK / "independent" / name)
                 for name in ARITHMETIC_CHECKS]
    commands += [(["bash", "scripts/lean-work.sh", "lake", "env", "lean", str(TASK / name)], TASK / name)
                 for name in LEAN_FILES]
    try:
        for command, source in commands:
            before = None if source is None else hashlib.sha256((ROOT / source).read_bytes()).hexdigest()
            result = subprocess.run(command, cwd=ROOT, capture_output=True, text=True, timeout=180)
            after = None if source is None else hashlib.sha256((ROOT / source).read_bytes()).hexdigest()
            record = {"command": command, "exit_code": result.returncode,
                      "output": result.stdout + result.stderr,
                      "source_sha256": after, "source_stable_during_check": before == after}
            if source is not None and source.suffix == ".lean":
                record["embedded_axiom_guards"] = "#guard_msgs" in (ROOT / source).read_text()
                assert record["embedded_axiom_guards"], str(source)
            report["checks"].append(record)
            print(json.dumps({"target": command[-1], "exit_code": result.returncode}), flush=True)
            if result.returncode != 0 or before != after:
                raise RuntimeError(result.stdout + result.stderr or "source changed during check")
        report["status"] = "passed"
    except Exception as error:
        report["status"] = "failed"
        report["failure"] = str(error)
        raise
    finally:
        report["finished_at"] = datetime.now(timezone.utc).isoformat()
        OUTPUT.write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n")
    print(f"Verified {len(LEAN_FILES)} Lean files and {len(ARITHMETIC_CHECKS)} arithmetic audits.")


if __name__ == "__main__":
    main()
