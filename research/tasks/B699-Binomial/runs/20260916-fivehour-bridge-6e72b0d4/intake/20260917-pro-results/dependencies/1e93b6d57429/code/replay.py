"""Run this release's NEW checks only. No network, git, or historical replay."""
from pathlib import Path
import json
import subprocess
import sys
import time

BASE = Path(__file__).resolve().parents[1]

def main() -> None:
    if not __debug__:
        raise RuntimeError("Do not run evidence acceptance with Python -O")
    started = time.monotonic()
    stages = []
    for name in ("generate.py", "check.py", "regression.py", "mutations.py"):
        t0 = time.monotonic()
        proc = subprocess.run(
            [sys.executable, str(BASE / "code" / name)],
            cwd=BASE, text=True, capture_output=True, check=False,
        )
        if proc.returncode:
            raise RuntimeError(f"{name} failed:\n{proc.stdout}\n{proc.stderr}")
        print(proc.stdout.strip())
        stages.append({"script": name, "returncode": proc.returncode,
                       "seconds": time.monotonic() - t0})
    receipt = {"status": "PASS_NEW_CHAIN_ONLY", "stages": stages,
               "seconds": time.monotonic() - started,
               "python": sys.version, "historical_chain_replayed": False,
               "repository_modified": False, "Lean": False}
    (BASE / "outputs/replay.json").write_text(
        json.dumps(receipt, ensure_ascii=False, sort_keys=True, indent=2) + "\n"
    )
    print(json.dumps({"status": receipt["status"], "seconds": receipt["seconds"]}))

if __name__ == "__main__":
    main()
