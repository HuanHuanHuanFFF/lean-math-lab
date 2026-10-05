"""Independent bounded integer check. No delivery code imports or writes."""
from collections import Counter
from datetime import datetime, timezone
from itertools import combinations_with_replacement, permutations, product
from pathlib import Path
import ctypes, hashlib, json, math, os, platform, shutil, sys, time

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parents[1] / "delivery/originals/Erdos156-A-20261005"

def preflight():
    class MemoryStatus(ctypes.Structure):
        _fields_ = [("length", ctypes.c_ulong), ("load", ctypes.c_ulong)] + [(n, ctypes.c_ulonglong) for n in ["total_physical", "available_physical", "total_pagefile", "available_pagefile", "total_virtual", "available_virtual", "available_extended_virtual"]]
    m = MemoryStatus()
    m.length = ctypes.sizeof(m)
    if not ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m)):
        raise OSError("GlobalMemoryStatusEx failed")
    info = {"observed_at_utc": datetime.now(timezone.utc).isoformat(), "python": sys.version, "python_executable": sys.executable, "platform": platform.platform(), "logical_cpus": os.cpu_count(), "windows_total_physical_bytes": m.total_physical, "windows_available_physical_bytes": m.available_physical, "memory_load_percent": m.load, "D_disk_free_bytes": shutil.disk_usage(HERE).free, "cgroup_limits": "native Windows process; not applicable", "job_object_limits": "not inspected", "cim_precheck": "Win32_OperatingSystem/Processor access denied; native memory API used", "planned_work": "serial 80640 assignments; integer pair-sum bitsets; N=513"}
    (HERE / "resource-preflight.json").write_text(json.dumps(info, indent=2), encoding="utf-8")
    assert m.available_physical >= 512 * 1024**2 and info["D_disk_free_bytes"] >= 100 * 1024**2
    print("RESOURCE_PREFLIGHT", json.dumps(info), flush=True)

def load(name):
    return json.loads((SOURCE / "data" / name).read_text(encoding="utf-8"))

def sums(A):
    assert len(A) == len(set(A))
    ss = [a + b for a, b in combinations_with_replacement(sorted(A), 2)]
    assert len(ss) == len(set(ss)), "integer strong Sidon collision"
    return ss

def direct(A, N):
    old = set(sums(A)); out = []
    assert all(1 <= a <= N for a in A)
    for x in range(1, N + 1):
        if x in A: continue
        new = [x + a for a in A] + [2 * x]
        if len(new) == len(set(new)) and old.isdisjoint(new): out.append(x)
    return out

def bit_residual(A, N):
    ss = sums(A)
    assert all(1 <= a <= N for a in A)
    old = sum(1 << s for s in ss); blocked = sum(1 << a for a in A)
    for a in A: blocked |= old >> a
    for s in ss:
        if s % 2 == 0: blocked |= 1 << (s // 2)
    return ((1 << (N + 1)) - 2) & ~blocked

def points(mask):
    out = []
    while mask:
        low = mask & -mask; out.append(low.bit_length() - 1); mask ^= low
    return out

def check():
    start = time.perf_counter()
    row = next(r for r in load("paired_lift_checks.json")["results"] if r["kind"] == "all_permutations_lower_zero" and r["p"] == 7)
    low = load("paired_lower_check.json")
    p, q, M, N, B = row["p"], row["q"], row["M"], row["N"], row["B"]
    assert (p, q, M, N) == (7, 57, 9, 513) and B == [2, 7, 8, 10, 20, 39, 43, 50]
    diffs = Counter((a - b) % q for a in B for b in B if a != b)
    assert len(diffs) == q - 1 and set(diffs.values()) == {1}
    mods = [(a + b) % q for a, b in combinations_with_replacement(B, 2)]
    assert len(mods) == len(set(mods))
    off_mask = sum(1 << x for x in range(1, N + 1) if x % q not in {b % q for b in B})
    hist = Counter(); count = 0; best = None
    for gaps in permutations(range(1, p + 2)):
        A = sorted(B + [b + q * g for b, g in zip(B, gaps)])
        R = bit_residual(A, N); key = ((R & off_mask).bit_count(), R.bit_count())
        hist[key] += 1; count += 1
        if best is None or key < tuple(best["key"]):
            best = {"key": list(key), "gaps": list(gaps), "A": A, "residual": points(R)}
    assert count == math.factorial(8) == row["assignments"] == 40320
    assert hist == Counter({(r["off_base_holes"], r["all_holes"]): r["assignments"] for r in row["histogram"]})
    assert best["key"] == row["best"]["key"] == [5, 5]
    for k in best: assert best[k] == row["best"][k]
    assert direct(best["A"], N) == best["residual"]
    print("P7_ZERO_LOWER_ALL_GAPS", count, "minimum_off_and_total", best["key"], flush=True)
    gaps = low["gaps"]
    assert gaps == [1, 8, 2, 3, 6, 4, 5, 7]
    assert low["B"] == B and (low["q"], low["M"], low["N"]) == (q, M, N)
    lower_hist = Counter(); lower_count = 0; lower_best = None
    for d in product(*(range(M - g) for g in gaps)):
        A = sorted([b + q * z for b, z in zip(B, d)] + [b + q * (z + g) for b, z, g in zip(B, d, gaps)])
        R = bit_residual(A, N); key = R.bit_count()
        lower_hist[key] += 1; lower_count += 1
        if lower_best is None or key < lower_best["residual_count"]:
            lower_best = {"lower_heights": list(d), "A": A, "residual_count": key, "residual": points(R)}
    assert lower_count == math.prod(M - g for g in gaps) == 40320
    assert low["entire_space_exhausted"] and lower_count == low["lower_vectors_examined_in_lexicographic_order"]
    assert lower_best == low["best"] and lower_best["residual"] == [314, 455]
    assert direct(lower_best["A"], N) == [314, 455]
    T = sorted(lower_best["A"] + [314])
    assert T == low["one_step_completion"]["T"] and direct(T, N) == []
    assert 314 + 314 == 455 + 173 == 628 and 173 in T
    print("P7_FIXED_GAP_ALL_LOWERS", lower_count, "minimum_total", lower_best["residual_count"], flush=True)
    print("MAXIMAL_INTEGER_CERTIFICATE", {"N": N, "size": len(T), "T": T, "remaining": []}, flush=True)
    files = ["MANIFEST.json", "REPORT.md", "HANDOFF.md", "DATA_DICTIONARY.md", "SESSION_STATE.json", "proofs/PROOFS.md", "input/FIXED-TARGETS.json", "input/FormalConjectures-156-current.lean", "code/core.py", "code/verify.py", "code/paired_lift_checks.py", "code/paired_lower_check.py", "data/paired_lift_checks.json", "data/paired_lower_check.json"]
    result = {"checked_at_utc": datetime.now(timezone.utc).isoformat(), "elapsed_seconds": time.perf_counter() - start, "implementation": "independent integer two-sum bitsets; direct per-point checks for minimizers", "imports_delivery_core": False, "source_files": [{"path": f, "bytes": (SOURCE / f).stat().st_size, "sha256": hashlib.sha256((SOURCE / f).read_bytes()).hexdigest()} for f in files], "p7_zero_lower": {"assignments": count, "minimum": best, "histogram_matches_original": True}, "p7_fixed_gap": {"assignments": lower_count, "minimum": lower_best, "histogram": [{"holes": k, "assignments": v} for k, v in sorted(lower_hist.items())]}, "one_step_completion": {"N": N, "size": len(T), "T": T, "all_integer_points_checked": N, "strong_sidon": True, "maximal": True}, "scope_limit": "No joint gap/lower space, infinite theorem, source dependency, or Lean acceptance."}
    (HERE / "independent-results.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
    print("ALL_BOUNDED_INDEPENDENT_CHECKS_PASSED", "elapsed_seconds", result["elapsed_seconds"], flush=True)

if __name__ == "__main__":
    preflight()
    if "--preflight" not in sys.argv: check()
