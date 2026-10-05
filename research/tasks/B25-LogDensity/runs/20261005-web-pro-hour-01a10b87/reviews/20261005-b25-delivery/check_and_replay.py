"""Bounded review evidence; never changes supplied artifacts."""
import ctypes
from datetime import datetime, timezone
from fractions import Fraction
import hashlib
import json
import math
import os
from pathlib import Path
import platform
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parent.parent / "delivery" / "originals" / "Erdos25-B-20261005"
LOGS = HERE / "logs"
LOGS.mkdir(exist_ok=True)

def write_json(name, data):
    (LOGS / name).write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

class MemoryStatus(ctypes.Structure):
    _fields_ = [("length", ctypes.c_ulong), ("load_percent", ctypes.c_ulong)] + [
        (name, ctypes.c_ulonglong) for name in ["total_physical", "available_physical",
        "total_page_file", "available_page_file", "total_virtual", "available_virtual",
        "available_extended_virtual"]]

resource = {"time_utc": datetime.now(timezone.utc).isoformat(),
    "platform": platform.platform(), "python": sys.version, "executable": sys.executable,
    "logical_cpu_count": os.cpu_count(), "cgroup": "not applicable to native Windows",
    "cpu_quota": "not independently exposed; tests serial and bounded",
    "job_memory_limit": "not independently exposed; host memory is not a sandbox limit",
    "cim_preflight": "Win32_OperatingSystem/Processor access denied; used GlobalMemoryStatusEx"}
memory = MemoryStatus()
memory.length = ctypes.sizeof(memory)
if ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(memory)):
    resource["host_memory"] = {name: getattr(memory, name) for name, _ in memory._fields_}
resource["disk_usage_D"] = dict(zip(("total", "used", "free"), shutil.disk_usage("D:/")))
write_json("resource-preflight.json", resource)

inputs = ["REPORT.md", "HANDOFF.md", "CLAIMS.json", "SELF_AUDIT.md", "source-map.md",
    "proofs/universal-modulus-budget.md", "proofs/finite-integer-centers.md",
    "proofs/subsequence-extraction.md", "proofs/486-singleton-capacity.md",
    "proofs/first-kill-obstruction.md", "experiments/verify_capacity_and_tower.py",
    "experiments/audit_finite_lemmas.py"]
baseline = {p: {"bytes": (SOURCE / p).stat().st_size, "sha256": digest(SOURCE / p)} for p in inputs}
write_json("fixed-inputs.json", {"source_relative_to_run": "delivery/originals/Erdos25-B-20261005",
    "supplied_archive_sha256": "c52b51dfc9106c846c13339915b8f7edae21a1ca65c9a3865efda10d9b1b46a6",
    "archive_hash_status": "Leader supplied; archive intake verification belongs to Leader", "files": baseline})

replays = []
for script, stem in [("verify_capacity_and_tower.py", "capacity_and_tower"),
                     ("audit_finite_lemmas.py", "finite_lemma_audit")]:
    target = LOGS / (stem + ".json")
    cmd = [sys.executable, "-B", str(SOURCE / "experiments" / script), "--out", str(target)]
    run = subprocess.run(cmd, cwd=HERE, capture_output=True, text=True, encoding="utf-8", timeout=60)
    (LOGS / (stem + ".log")).write_text(run.stdout + run.stderr, encoding="utf-8")
    if run.returncode:
        raise RuntimeError(f"{script}: exit {run.returncode}; inspect saved log")
    fresh = json.loads(target.read_text(encoding="utf-8"))
    expected = json.loads((SOURCE / "data" / (stem + ".json")).read_text(encoding="utf-8"))
    fresh.pop("seconds", None)
    expected.pop("seconds", None)
    assert fresh == expected, stem
    replays.append({"script": "experiments/" + script, "exit_code": run.returncode,
                    "matches_reference_except_seconds": True, "output": "logs/" + target.name})

def active(rows, limit):
    return {x for x in range(1, limit + 1) if any(x >= n and (x-a) % n == 0 for n, a in rows)}

def mass(xs):
    return sum((Fraction(1, x) for x in xs), Fraction())

rows = [(2, 0), (3, 0), (5, 2)]
shifted, centered = active(rows, 24), active([(n, 0) for n, _ in rows], 24)
gain = mass(shifted) - mass(centered)
assert gain == Fraction(1, 595)
checks = {"N24": {"only_shifted": sorted(shifted-centered), "only_centered": sorted(centered-shifted),
                    "gain": str(gain)}, "exponential_partial_sums": {}, "extra_tower_cases": []}
for t, rhs in [(Fraction(3, 5), Fraction(9, 5)), (Fraction(7, 10), Fraction(2))]:
    partial = sum((t**k / math.factorial(k) for k in range(5)), Fraction())
    assert partial > rhs
    checks["exponential_partial_sums"][str(t)] = {"first_five_terms": str(partial), "exceeds": str(rhs)}
for r in range(1, 9):
    for u in [2, 3, 6]:
        q = u * 3**r
        earlier = [(u * 2**(r-j) * 3**j, q * (1 + 2**(r-j-1))) for j in range(r)]
        kept = [v for v in range(1, 2**r + 1) if all(q*v < n or (q*v-a) % n for n, a in earlier)]
        assert kept == [1]
        checks["extra_tower_cases"].append({"r": r, "u": u, "surviving_quotients": kept})
write_json("independent-small-checks.json", checks)
assert all(digest(SOURCE / p) == item["sha256"] for p, item in baseline.items())
summary = {"all_selected_checks_passed": True, "replays": replays,
    "independent_extra_tower_cases": len(checks["extra_tower_cases"]), "source_hashes_unchanged": True,
    "lean_executed": False,
    "not_replayed": ["exhaust_small.py", "search_finite_inequality.py", "search_coprime_inequality.py"],
    "completed_utc": datetime.now(timezone.utc).isoformat()}
write_json("summary.json", summary)
print(json.dumps(summary, ensure_ascii=False))
