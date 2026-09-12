#!/usr/bin/env python3
"""Independent, bounded candidate generator for the i=11 high block range.

This file deliberately does not import the historical generator or checker.  It
recomputes the source rows, the six old chains, and the proposed continuation
from the integer definitions used by those files.  It is a research candidate:
the H=15360 endpoint is not a proved global bound and this script never runs
Lean or the CRT search.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
import platform
import sys
import time
from pathlib import Path


REPO = Path(__file__).resolve().parents[2]
OLD_RUN = REPO / "research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery"
OLD_CODE = OLD_RUN / "code"
OLD_RESULTS = OLD_RUN / "results"
OUT = Path(__file__).resolve().parent
TARGET_I = 11
OLD_HEIGHT_BITS = 4096
TARGET_HEIGHT_BITS = 15360
D = TARGET_I - 1
PAIRS = ((2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7))
MAX_BYTES = 192 * 1024 * 1024


class CandidateError(RuntimeError):
    pass


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def memory_snapshot() -> dict[str, int | str | None]:
    """Return process-local memory; no child process is created by this script."""
    if os.name == "nt":
        import ctypes

        class Counters(ctypes.Structure):
            _fields_ = [
                ("cb", ctypes.c_ulong),
                ("PageFaultCount", ctypes.c_ulong),
                ("PeakWorkingSetSize", ctypes.c_size_t),
                ("WorkingSetSize", ctypes.c_size_t),
                ("QuotaPeakPagedPoolUsage", ctypes.c_size_t),
                ("QuotaPagedPoolUsage", ctypes.c_size_t),
                ("QuotaPeakNonPagedPoolUsage", ctypes.c_size_t),
                ("QuotaNonPagedPoolUsage", ctypes.c_size_t),
                ("PagefileUsage", ctypes.c_size_t),
                ("PeakPagefileUsage", ctypes.c_size_t),
            ]

        # A pseudo-handle is rejected by the Windows image used for this
        # worktree, so open this exact PID with query-only access.  No child
        # process is involved and the handle is closed on every sample.
        kernel = ctypes.WinDLL("kernel32", use_last_error=True)
        psapi = ctypes.WinDLL("psapi", use_last_error=True)
        kernel.GetCurrentProcessId.restype = ctypes.c_ulong
        kernel.OpenProcess.argtypes = [ctypes.c_ulong, ctypes.c_int, ctypes.c_ulong]
        kernel.OpenProcess.restype = ctypes.c_void_p
        kernel.CloseHandle.argtypes = [ctypes.c_void_p]
        kernel.CloseHandle.restype = ctypes.c_int
        psapi.GetProcessMemoryInfo.argtypes = [
            ctypes.c_void_p,
            ctypes.POINTER(Counters),
            ctypes.c_ulong,
        ]
        psapi.GetProcessMemoryInfo.restype = ctypes.c_int
        pid = kernel.GetCurrentProcessId()
        handle = kernel.OpenProcess(0x0410, 0, pid)  # QUERY_INFORMATION | VM_READ
        c = Counters()
        c.cb = ctypes.sizeof(c)
        ok = bool(handle) and bool(
            psapi.GetProcessMemoryInfo(handle, ctypes.byref(c), ctypes.sizeof(c))
        )
        if handle:
            kernel.CloseHandle(handle)
        if ok:
            return {
                "platform": "windows",
                "working_set_bytes": int(c.WorkingSetSize),
                "peak_working_set_bytes": int(c.PeakWorkingSetSize),
            }
    try:
        import resource

        rss = int(resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
        if platform.system() != "Darwin":
            rss *= 1024
        return {"platform": "posix", "peak_working_set_bytes": rss}
    except (ImportError, AttributeError):
        return {"platform": platform.system(), "peak_working_set_bytes": None}


def guard_memory() -> dict[str, int | str | None]:
    snap = memory_snapshot()
    peak = snap.get("peak_working_set_bytes")
    if peak is not None and int(peak) > MAX_BYTES:
        raise CandidateError(f"process peak exceeds 192 MiB: {peak}")
    return snap


def ilog(n: int, p: int) -> int:
    if n < 1 or p < 2:
        raise CandidateError("ilog domain")
    lo, hi = 0, n.bit_length() + 1
    while hi - lo > 1:
        mid = (lo + hi) // 2
        if p**mid <= n:
            lo = mid
        else:
            hi = mid
    return lo


def pair_path(p: int, q: int) -> Path:
    return OLD_RESULTS / f"block_11_{p}_{q}.json"


def old_source_manifest() -> dict:
    paths = [OLD_CODE / "block_targets.py", OLD_CODE / "check_targets.py"]
    paths += [pair_path(p, q) for p, q in PAIRS]
    return {
        str(path.relative_to(REPO)).replace("\\", "/"): sha256_file(path)
        for path in paths
    }


def load_old(p: int, q: int) -> dict:
    path = pair_path(p, q)
    if not path.is_file():
        raise CandidateError(f"missing old source row: {path}")
    data = json.loads(path.read_text(encoding="utf-8"))
    if (data.get("i"), data.get("p"), data.get("q"), data.get("D")) != (11, p, q, D):
        raise CandidateError(f"old row identity mismatch: {path.name}")
    return data


def check_block(block: dict, p: int, q: int, *, expected_u: int | None = None) -> dict:
    try:
        u, length, b0 = (int(block[k]) for k in ("K", "L", "B"))
        v = int(block["inverse_hex"], 16)
    except (KeyError, TypeError, ValueError) as exc:
        raise CandidateError(f"malformed block: {exc}") from exc
    if expected_u is not None and u != expected_u:
        raise CandidateError(f"chain gap: expected u={expected_u}, got {u}")
    if u < 0 or length < 0 or b0 < 1:
        raise CandidateError("negative block length or nonpositive b0")
    P = p**u
    Q = q**b0
    if P <= D:
        raise CandidateError("P <= D")
    modulus_square = (P - D) ** 2
    if not (Q**3 <= modulus_square < q ** (3 * (b0 + 1))):
        raise CandidateError("modulus interval failed")
    if not (0 < v < Q and (P * v) % Q == 1):
        raise CandidateError("inverse failed")
    bound = p ** (u + 3 * length)
    zero_maps = 0
    for shift in range(-D, D + 1):
        raw = (shift * v) % Q
        residue = Q if raw == 0 else raw
        if raw == 0:
            zero_maps += 1
        if residue * residue <= bound:
            raise CandidateError(f"signed residue failed at d={shift}")
    guard_memory()
    return {
        "u": u,
        "L": length,
        "b0": b0,
        "v": block["inverse_hex"],
        "zero_maps_to_Q": zero_maps,
        "signed_checks": 2 * D + 1,
        "next_u": u + length + 1,
    }


def check_old_row(data: dict, p: int, q: int) -> dict:
    required = {"first_exponent", "max_exponent", "small_exponent_height_bits", "blocks"}
    if not required.issubset(data):
        raise CandidateError(f"old row missing fields: {sorted(required - set(data))}")
    if data["source_height_bits"] != OLD_HEIGHT_BITS:
        raise CandidateError("old source height changed")
    first, last = int(data["first_exponent"]), int(data["max_exponent"])
    if not (p**last < (1 << OLD_HEIGHT_BITS) <= p ** (last + 1)):
        raise CandidateError(f"old endpoint failed for ({p},{q})")
    h = int(data["small_exponent_height_bits"])
    if not ((1 << h) > D and ((1 << h) - D) ** 2 > p ** (3 * (first - 1))):
        raise CandidateError(f"old low cutoff failed for ({p},{q})")
    next_u = first
    zero_maps = 0
    for raw in data["blocks"]:
        checked = check_block(raw, p, q, expected_u=next_u)
        zero_maps += int(checked["zero_maps_to_Q"])
        next_u = checked["next_u"]
    if next_u != last + 1:
        raise CandidateError(f"old chain tail failed for ({p},{q})")
    return {
        "pair": [p, q],
        "source_height_bits": OLD_HEIGHT_BITS,
        "first_exponent": first,
        "max_exponent": last,
        "small_exponent_height_bits": h,
        "blocks": len(data["blocks"]),
        "signed_checks": len(data["blocks"]) * (2 * D + 1),
        "zero_maps_to_Q": zero_maps,
        "discarded_failure_exponents": list(data.get("discarded_failure_exponents", [])),
    }


def generate_high(old: dict, p: int, q: int) -> tuple[dict, dict]:
    start = int(old["max_exponent"]) + 1
    bound = ilog((1 << TARGET_HEIGHT_BITS) - 1, p)
    K = start
    rows: list[dict] = []
    failures: list[int] = []
    started = time.perf_counter()
    memory_start = memory_snapshot()
    while K <= bound:
        P = p**K
        B = ilog((P - D) ** 2, q) // 3
        if B < 1:
            raise CandidateError(f"b0 is not positive at K={K}")
        Q = q**B
        if not (Q**3 <= (P - D) ** 2 < q ** (3 * (B + 1))):
            raise CandidateError(f"modulus interval failed at K={K}")
        v = pow(P, -1, Q)
        min_residue = min(((shift * v) % Q or Q) for shift in range(-D, D + 1))
        max_pow = ilog(min_residue * min_residue - 1, p) if min_residue > 1 else -1
        length = (max_pow - K) // 3
        if length < 0:
            failures.append(K)
            raise CandidateError(f"high continuation has uncovered K={K}")
        length = min(length, bound - K)
        raw = {"K": K, "L": length, "B": B, "inverse_hex": hex(v)}
        checked = check_block(raw, p, q, expected_u=K)
        rows.append({**raw, **checked})
        K = checked["next_u"]
        guard_memory()
    if K != bound + 1:
        raise CandidateError("high endpoint chain gap")
    result = {
        "i": TARGET_I,
        "p": p,
        "q": q,
        "D": D,
        "source_height_bits": OLD_HEIGHT_BITS,
        "target_height_bits": TARGET_HEIGHT_BITS,
        "old_max_exponent": int(old["max_exponent"]),
        "first_exponent": start,
        "max_exponent": bound,
        "transition": {
            "old_last": int(old["max_exponent"]),
            "new_first": start,
            "no_gap": start == int(old["max_exponent"]) + 1,
        },
        "old_cutoff": {
            "cut": int(old["small_exponent_height_bits"]),
            "strict_first": f"2^{int(old['small_exponent_height_bits'])} > {D}",
            "strict_square": (
                f"(2^{int(old['small_exponent_height_bits'])}-{D})^2 > "
                f"{p}^{3 * (int(old['first_exponent']) - 1)}"
            ),
            "verified": (
                (1 << int(old["small_exponent_height_bits"])) > D
                and ((1 << int(old["small_exponent_height_bits"])) - D) ** 2
                > p ** (3 * (int(old["first_exponent"]) - 1))
            ),
        },
        "endpoint": {
            "strict_lower": f"{p}^{bound} < 2^{TARGET_HEIGHT_BITS}",
            "strict_upper": f"2^{TARGET_HEIGHT_BITS} <= {p}^{bound + 1}",
            "verified": p**bound < (1 << TARGET_HEIGHT_BITS) <= p ** (bound + 1),
        },
        "blocks": rows,
        "block_count": len(rows),
        "signed_checks": len(rows) * (2 * D + 1),
        "zero_maps_to_Q": sum(int(row["zero_maps_to_Q"]) for row in rows),
        "failed_start_attempts": failures,
        "elapsed_seconds": time.perf_counter() - started,
        "memory_start": memory_start,
        "memory_end": memory_snapshot(),
        "memory_limit_bytes": MAX_BYTES,
        "status": "candidate_only",
    }
    return result, {
        "pair": [p, q],
        "blocks": len(rows),
        "signed_checks": len(rows) * (2 * D + 1),
        "seconds": result["elapsed_seconds"],
        "peak_working_set_bytes": result["memory_end"].get("peak_working_set_bytes"),
        "old_last": int(old["max_exponent"]),
        "new_last": bound,
    }


def validate_candidate(data: dict, old: dict, p: int, q: int) -> None:
    if data["transition"]["new_first"] != int(old["max_exponent"]) + 1:
        raise CandidateError("candidate transition has a gap")
    if not data["endpoint"]["verified"]:
        raise CandidateError("candidate target endpoint failed")
    next_u = int(data["first_exponent"])
    for row in data["blocks"]:
        checked = check_block(row, p, q, expected_u=next_u)
        if checked["next_u"] != int(row["next_u"]):
            raise CandidateError("serialized next_u mismatch")
        next_u = checked["next_u"]
    if next_u != int(data["max_exponent"]) + 1:
        raise CandidateError("candidate tail gap")


def tamper_checks(candidate: dict, old: dict, p: int, q: int) -> dict:
    first = json.loads(json.dumps(candidate))
    first["blocks"][0]["inverse_hex"] = hex(int(first["blocks"][0]["inverse_hex"], 16) + 1)
    first["blocks"][0]["v"] = first["blocks"][0]["inverse_hex"]
    try:
        validate_candidate(first, old, p, q)
        inverse_rejected = False
    except CandidateError:
        inverse_rejected = True
    second = json.loads(json.dumps(candidate))
    second["first_exponent"] += 1
    second["transition"]["new_first"] += 1
    try:
        validate_candidate(second, old, p, q)
        gap_rejected = False
    except CandidateError:
        gap_rejected = True
    return {
        "pair": [p, q],
        "inverse_plus_one_rejected": inverse_rejected,
        "transition_plus_one_rejected": gap_rejected,
    }


def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def lean_nat(hex_literal: str) -> str:
    return hex_literal if hex_literal.startswith("0x") else "0x" + hex_literal


def write_lean_table(candidates: list[dict]) -> None:
    """Emit a standalone table plus a small Bool checker matching the consumer API."""
    lines = [
        "/- Candidate only: generated from exact Nat arithmetic; no Lean run is claimed. -/",
        "import Mathlib",
        "namespace HuanI11CubicBlockExtension",
        "",
        "structure BlockDatum where",
        "  u : Nat",
        "  L : Nat",
        "  b0 : Nat",
        "  v : Nat",
        "deriving DecidableEq",
        "",
        "def offsets : List Int := [-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]",
        "def rho (Q v : Nat) (d : Int) : Nat :=",
        "  let r := Int.toNat (((v : Int) * d) % (Q : Int))",
        "  if r = 0 then Q else r",
        "def signedChecks (p q : Nat) (b : BlockDatum) : Bool :=",
        "  let Q := q ^ b.b0",
        "  let upper := p ^ (b.u + 3 * b.L)",
        "  offsets.all (fun d => let r := rho Q b.v d; decide (r * r > upper))",
        "def blockCheck (p q w : Nat) (b : BlockDatum) : Bool :=",
        "  let P := p ^ b.u",
        "  let Q := q ^ b.b0",
        "  let gap := (P - w) ^ 2",
        "  decide (P > w ∧ Q ^ 3 ≤ gap ∧ gap < q ^ (3 * (b.b0 + 1)) ∧",
        "    0 < b.v ∧ b.v < Q ∧ (P * b.v) % Q = 1) && signedChecks p q b",
        "def coverageCheck (p q w start stop : Nat) (rows : List BlockDatum) : Bool :=",
        "  match rows with",
        "  | [] => decide (start = stop)",
        "  | b :: rest => decide (b.u = start) && blockCheck p q w b && coverageCheck p q w (b.u + b.L + 1) stop rest",
        "def lowCutoffCheck (p w start cut : Nat) : Bool :=",
        "  decide (2 ^ cut > w ∧ (2 ^ cut - w) ^ 2 > p ^ (3 * (start - 1)))",
        "",
    ]
    for cand in candidates:
        p, q = cand["p"], cand["q"]
        name = f"rows_{p}_{q}"
        lines.append(f"def {name} : List BlockDatum := [")
        for block in cand["blocks"]:
            lines.append(
                f"  {{ u := {block['K']}, L := {block['L']}, b0 := {block['B']}, v := {lean_nat(block['inverse_hex'])} }},"
            )
        lines.append("]")
        lines.append("")
        stop = int(cand["max_exponent"]) + 1
        lines.append(
            f"def {name}_complete : Bool := coverageCheck {p} {q} {D} {cand['first_exponent']} {stop} {name}"
        )
        lines.append("")
    lines += [
        "def allHighChains : Bool := "
        + " && ".join(f"rows_{p}_{q}_complete" for p, q in PAIRS),
        "end HuanI11CubicBlockExtension",
        "",
    ]
    (OUT / "CubicBlockExtensionTable.lean").write_text("\n".join(lines), encoding="utf-8")


def run(mode: str) -> dict:
    OUT.mkdir(parents=True, exist_ok=True)
    source = old_source_manifest()
    old_rows = {f"{p},{q}": load_old(p, q) for p, q in PAIRS}
    old_summary = [check_old_row(old_rows[f"{p},{q}"], p, q) for p, q in PAIRS]
    write_json(OUT / "old-source-summary.json", {
        "status": "old_sources_verified_independently",
        "source_height_bits": OLD_HEIGHT_BITS,
        "pairs": old_summary,
        "source_sha256": source,
    })
    selected = PAIRS if mode == "full" else ((2, 3),)
    candidates: list[dict] = []
    resource_rows: list[dict] = []
    for p, q in selected:
        candidate, resource = generate_high(old_rows[f"{p},{q}"], p, q)
        validate_candidate(candidate, old_rows[f"{p},{q}"], p, q)
        candidates.append(candidate)
        resource_rows.append(resource)
        write_json(OUT / (f"high_block_11_{p}_{q}.json" if mode == "full" else f"pilot_high_block_11_{p}_{q}.json"), candidate)
    tamper = [
        tamper_checks(candidate, old_rows[f"{p},{q}"], p, q)
        for candidate, (p, q) in zip(candidates, selected)
    ]
    write_json(OUT / ("tamper-results.json" if mode == "full" else "pilot-tamper-results.json"), tamper)
    if mode == "full":
        write_lean_table(candidates)
    summary = {
        "status": "candidate_only",
        "mode": mode,
        "source_height_bits": OLD_HEIGHT_BITS,
        "target_height_bits": TARGET_HEIGHT_BITS,
        "pairs_processed": [list(x) for x in selected],
        "resources": resource_rows,
        "tamper_checks": tamper,
        "memory_limit_bytes": MAX_BYTES,
        "lean_run": False,
        "git_run": False,
        "network_run": False,
        "source_sha256": source,
        "generator_sha256": sha256_file(Path(__file__)),
    }
    summary_path = OUT / ("pilot-summary.json" if mode == "pilot" else "full-summary.json")
    write_json(summary_path, summary)
    artifact_names = sorted(
        p.name for p in OUT.iterdir()
        if p.is_file() and p.name != "artifact-sha256.json"
    )
    write_json(OUT / "artifact-sha256.json", {
        "status": "candidate_artifact_manifest",
        "generator_sha256": sha256_file(Path(__file__)),
        "files": {name: sha256_file(OUT / name) for name in artifact_names},
    })
    return summary


def main() -> int:
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("--pilot", action="store_true")
    group.add_argument("--full", action="store_true")
    args = parser.parse_args()
    try:
        result = run("pilot" if args.pilot else "full")
    except CandidateError as exc:
        write_json(OUT / ("pilot-failure.json" if args.pilot else "full-failure.json"), {
            "status": "candidate_failed",
            "error": str(exc),
            "memory_limit_bytes": MAX_BYTES,
            "source_height_bits": OLD_HEIGHT_BITS,
            "target_height_bits": TARGET_HEIGHT_BITS,
        })
        print(json.dumps({"status": "candidate_failed", "error": str(exc)}), flush=True)
        return 2
    print(json.dumps({
        "status": result["status"],
        "mode": result["mode"],
        "pairs": result["pairs_processed"],
        "resources": result["resources"],
        "tamper_checks": result["tamper_checks"],
    }, sort_keys=True), flush=True)
    return 0


if __name__ == "__main__":
    sys.exit(main())
