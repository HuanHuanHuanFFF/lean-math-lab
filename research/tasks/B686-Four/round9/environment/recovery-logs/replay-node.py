#!/usr/bin/env python3
"""Execute saved finite JS diagnostics with Node and compare immutable JSON evidence."""
import datetime as dt
from decimal import Decimal
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import time


def utc():
    return dt.datetime.now(dt.timezone.utc).isoformat()


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def exact(a, b):
    if type(a) is not type(b):
        return False
    if isinstance(a, dict):
        return a.keys() == b.keys() and all(exact(a[k], b[k]) for k in a)
    if isinstance(a, list):
        return len(a) == len(b) and all(exact(x, y) for x, y in zip(a, b))
    return a == b


here = Path(__file__).resolve().parent
root = next(p for p in here.parents if (p / "lean-toolchain").is_file())
main = here.parent.parent / "main"
run = here / (dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%SZ") + "-node")
run.mkdir(exist_ok=False)
node = shutil.which("node")
if node is None:
    raise SystemExit("Node is unavailable; no installation attempted")
pairs = [
    ("offline-certificates-independent.js", "offline-certificates-output.json"),
    ("three-moment-independent.js", "three-moment-independent-output.json"),
    ("three-moment-coefficient-check.js", "three-moment-coefficient-output.json"),
    ("twice-prime-power-finite.js", "twice-prime-power-finite-output.json"),
]
evidence = {"started_utc": utc(), "node": node,
            "node_version": subprocess.check_output([node, "--version"], text=True).strip(),
            "node_sha256": sha(Path(node)), "results": [],
            "note": "Node finite diagnostics replay earlier V8 computations; these are not Lean proofs."}
exit_code = 0
for source_name, expected_name in pairs:
    source, expected = main / source_name, main / expected_name
    output = run / expected_name
    row = {"source": str(source.relative_to(root)), "expected": str(expected.relative_to(root)),
           "argv": [node, str(source)], "cwd": str(root), "started_utc": utc()}
    started = time.monotonic()
    try:
        row.update(source_sha256_before=sha(source), expected_sha256_before=sha(expected))
        shutil.copyfile(expected, run / (expected_name + ".saved"))
        with output.open("xb") as stdout, (run / (source_name + ".stderr.log")).open("xb") as stderr:
            process = subprocess.run([node, str(source)], cwd=root, stdout=stdout, stderr=stderr, timeout=300)
        row.update(exit_code=process.returncode, source_sha256_after=sha(source),
                   expected_sha256_after=sha(expected), output_sha256=sha(output))
        row["byte_equal"] = output.read_bytes() == expected.read_bytes()
        row["json_exact_equal"] = exact(json.loads(output.read_text(), parse_float=Decimal),
                                          json.loads(expected.read_text(), parse_float=Decimal))
        row["source_and_expected_unchanged"] = (
            row["source_sha256_before"] == row["source_sha256_after"] and
            row["expected_sha256_before"] == row["expected_sha256_after"])
        row["passed"] = process.returncode == 0 and row["json_exact_equal"] and row["source_and_expected_unchanged"]
    except Exception as error:
        row.update(error=str(error), passed=False)
    row.update(ended_utc=utc(), elapsed_seconds=round(time.monotonic() - started, 3))
    evidence["results"].append(row)
    print(json.dumps(row), flush=True)
    if not row["passed"]:
        exit_code = 1
evidence["unlisted_js"] = sorted(p.name for p in main.glob("*.js") if p.name not in dict(pairs))
evidence["ended_utc"] = utc()
evidence["exit_code"] = exit_code
(run / "evidence.json").write_text(json.dumps(evidence, indent=2) + "\n")
print("Evidence: " + str(run / "evidence.json"), flush=True)
raise SystemExit(exit_code)
