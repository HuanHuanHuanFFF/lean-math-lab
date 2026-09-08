#!/usr/bin/env python3
"""Run a bounded kernel-cost probe against generated Data/Check modules."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("directory", type=Path)
    ap.add_argument("--objects", type=Path, required=True)
    ap.add_argument("--timeout", type=int, default=120)
    args = ap.parse_args()
    root = next(p for p in Path(__file__).resolve().parents if (p / "lake-manifest.json").is_file())
    out, objects = args.directory.resolve(), args.objects.resolve()
    report_path = out / "kernel-cost.json"
    if report_path.exists():
        raise RuntimeError("Refusing to overwrite a prior probe")
    env = dict(os.environ, ELAN_HOME=str(root / ".tools/elan"), LEAN_PATH=str(objects))
    env["PATH"] = str(root / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
    records = []
    for name in ("Data", "Check"):
        src = out / (name + ".lean")
        obj = objects / src.relative_to(root).with_suffix(".olean")
        obj.parent.mkdir(parents=True, exist_ok=True)
        cmd = ["bash", str(root / "scripts/lean-work.sh"), "lean", "-DautoImplicit=false",
               "-DrelaxedAutoImplicit=false", "--root=" + str(root), "-o", str(obj), str(src)]
        started = time.monotonic()
        try:
            result = subprocess.run(cmd, cwd=root, env=env, stdout=subprocess.PIPE,
                                    stderr=subprocess.STDOUT, text=True, timeout=args.timeout)
            code, log = result.returncode, result.stdout
        except subprocess.TimeoutExpired as exc:
            code = 124
            log = exc.stdout or ""
            if isinstance(log, bytes):
                log = log.decode(errors="replace")
            log += f"\nBounded cost probe exceeded {args.timeout} seconds.\n"
        (out / (name + ".log")).write_text(log)
        rec = {"name": name, "command": cmd, "seconds": time.monotonic() - started,
               "exit_code": code, "source_sha256": hashlib.sha256(src.read_bytes()).hexdigest(),
               "log_sha256": hashlib.sha256(log.encode()).hexdigest(),
               "olean_sha256": hashlib.sha256(obj.read_bytes()).hexdigest() if obj.exists() else None}
        records.append(rec)
        report_path.write_text(json.dumps(records, indent=2) + "\n")
        print(rec, flush=True)
        print(log[-4000:], flush=True)
        if code:
            return code
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
