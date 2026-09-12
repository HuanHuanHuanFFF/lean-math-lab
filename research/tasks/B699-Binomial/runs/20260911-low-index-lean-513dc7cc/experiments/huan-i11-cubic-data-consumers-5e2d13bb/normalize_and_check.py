from __future__ import annotations

import copy
import hashlib
import json
from pathlib import Path


HERE = Path(__file__).resolve().parent
RUN = HERE.parents[1]
REPO = RUN.parents[4]
OLD_RESULTS = REPO / "research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/results"
EXT = RUN / "experiments/huan-i11-cubic-block-extension-5e2d13bb"
PILOT_IMPORTS = [
    RUN / "lean/CubicBlock/Checker.lean",
    RUN / "lean/CubicBlock/Block.lean",
    RUN / "lean/CubicBlock/Arithmetic.lean",
    RUN / "lean/CubicBlock/Residues.lean",
    RUN / "experiments/huan-cubic-block-cover-5e2d13bb/Coverage.lean",
]
PAIRS = ((2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7))
W = 10
OLD_HEIGHT_BITS = 4096
HIGH_HEIGHT_BITS = 15360


class CheckFailure(RuntimeError):
    pass


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def repo_rel(path: Path) -> str:
    return path.relative_to(REPO).as_posix()


def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def as_v(raw: object) -> tuple[int, str]:
    if not isinstance(raw, str):
        raise CheckFailure("inverse witness must be a hex string in source JSON")
    value = int(raw, 16) if raw.lower().startswith("0x") else int(raw)
    if value <= 0:
        raise CheckFailure("inverse witness must be positive")
    return value, hex(value)


def normalize_block(raw: dict, source: Path, kind: str, index: int) -> dict:
    try:
        u = int(raw["K"] if "K" in raw else raw["u"])
        length = int(raw["L"])
        b0 = int(raw["B"] if "B" in raw else raw["b0"])
        witness = raw["inverse_hex"] if "inverse_hex" in raw else raw["v"]
        v, v_hex = as_v(witness)
    except (KeyError, TypeError, ValueError) as exc:
        raise CheckFailure(f"malformed {kind} block {source.name}[{index}]: {exc}") from exc
    return {
        "u": u,
        "L": length,
        "b0": b0,
        "v": v,
        "v_hex": v_hex,
        "source_kind": kind,
        "source_path": repo_rel(source),
        "source_index": index,
    }


def check_block(row: dict, p: int, q: int, expected_u: int) -> dict:
    u, length, b0, v = row["u"], row["L"], row["b0"], row["v"]
    if u != expected_u:
        raise CheckFailure(f"chain gap ({p},{q}): expected u={expected_u}, got {u}")
    if u < 0 or length < 0 or b0 < 1:
        raise CheckFailure(f"invalid block shape ({p},{q},{u})")
    P = p**u
    Q = q**b0
    if not (P > W and Q**3 <= (P - W) ** 2 < q ** (3 * (b0 + 1))):
        raise CheckFailure(f"modulus interval failed ({p},{q},{u})")
    if not (0 < v < Q and (P * v) % Q == 1):
        raise CheckFailure(f"inverse failed ({p},{q},{u})")
    bound = p ** (u + 3 * length)
    zero_to_Q = 0
    for displacement in range(-W, W + 1):
        raw = (displacement * v) % Q
        residue = Q if raw == 0 else raw
        zero_to_Q += int(raw == 0)
        if residue * residue <= bound:
            raise CheckFailure(f"signed residue failed ({p},{q},{u},{displacement})")
    return {"next_u": u + length + 1, "signed_checks": 2 * W + 1, "zero_to_Q": zero_to_Q}


def check_chain(rows: list[dict], p: int, q: int, start: int, stop: int) -> dict:
    next_u = start
    zero_to_Q = signed_checks = 0
    for row in rows:
        result = check_block(row, p, q, next_u)
        next_u = result["next_u"]
        zero_to_Q += result["zero_to_Q"]
        signed_checks += result["signed_checks"]
    if next_u != stop:
        raise CheckFailure(f"chain tail failed ({p},{q}): {next_u}!={stop}")
    return {
        "start": start,
        "stop_exclusive": stop,
        "blocks": len(rows),
        "signed_checks": signed_checks,
        "zero_to_Q": zero_to_Q,
    }


def endpoint(p: int, height_bits: int, amax: int) -> bool:
    return p**amax < (1 << height_bits) <= p ** (amax + 1)


def manifest_inputs() -> dict:
    files: list[tuple[str, Path, str]] = []
    for p, q in PAIRS:
        old = OLD_RESULTS / f"block_11_{p}_{q}.json"
        high = EXT / f"high_block_11_{p}_{q}.json"
        files.extend([
            (repo_rel(old), old, f"old source block ({p},{q})"),
            (repo_rel(high), high, f"relocated high candidate block ({p},{q})"),
        ])
    files.extend([
        (repo_rel(REPO / "research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/code/block_targets.py"), REPO / "research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/code/block_targets.py", "historical block generator source provenance"),
        (repo_rel(REPO / "research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/code/check_targets.py"), REPO / "research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/code/check_targets.py", "historical block checker source provenance"),
        (repo_rel(EXT / "old-source-summary.json"), EXT / "old-source-summary.json", "relocated extension provenance"),
        (repo_rel(EXT / "full-summary.json"), EXT / "full-summary.json", "relocated extension run summary"),
        (repo_rel(EXT / "SOURCE_MAP.json"), EXT / "SOURCE_MAP.json", "relocated field mapping"),
        (repo_rel(EXT / "artifact-sha256.json"), EXT / "artifact-sha256.json", "relocated artifact hashes"),
    ])
    for path in PILOT_IMPORTS:
        files.append((repo_rel(path), path, "pilot import source"))
    records = []
    for rel, path, role in files:
        if not path.is_file():
            raise CheckFailure(f"missing input: {path}")
        records.append({
            "path": str(path),
            "repo_relative": rel,
            "role": role,
            "bytes": path.stat().st_size,
            "sha256": sha256(path),
        })
    records.append({
        "path": str(HERE / "normalize_and_check.py"),
        "repo_relative": repo_rel(HERE / "normalize_and_check.py"),
        "role": "independent normalizer/checker source",
        "bytes": (HERE / "normalize_and_check.py").stat().st_size,
        "sha256": sha256(HERE / "normalize_and_check.py"),
    })
    return {
        "status": "fixed_input_manifest",
        "repo": str(REPO),
        "run": str(RUN),
        "old_height_bits": OLD_HEIGHT_BITS,
        "high_height_bits": HIGH_HEIGHT_BITS,
        "pairs": [list(pair) for pair in PAIRS],
        "files": records,
    }


def process_pair(p: int, q: int) -> tuple[dict, dict, dict]:
    old_path = OLD_RESULTS / f"block_11_{p}_{q}.json"
    high_path = EXT / f"high_block_11_{p}_{q}.json"
    old = load(old_path)
    high = load(high_path)
    if (old.get("i"), old.get("p"), old.get("q"), old.get("D"), old.get("source_height_bits")) != (11, p, q, W, OLD_HEIGHT_BITS):
        raise CheckFailure(f"old identity/height failed ({p},{q})")
    old_first, old_last = int(old["first_exponent"]), int(old["max_exponent"])
    old_cut = int(old["small_exponent_height_bits"])
    if not endpoint(p, OLD_HEIGHT_BITS, old_last):
        raise CheckFailure(f"old endpoint failed ({p},{q})")
    if not ((1 << old_cut) > W and ((1 << old_cut) - W) ** 2 > p ** (3 * (old_first - 1))):
        raise CheckFailure(f"old low cutoff failed ({p},{q})")
    old_rows = [normalize_block(row, old_path, "old", i) for i, row in enumerate(old["blocks"])]
    old_check = check_chain(old_rows, p, q, old_first, old_last + 1)
    if high.get("target_height_bits") != HIGH_HEIGHT_BITS or high.get("source_height_bits") != OLD_HEIGHT_BITS:
        raise CheckFailure(f"high height metadata failed ({p},{q})")
    if int(high["old_max_exponent"]) != old_last or int(high["first_exponent"]) != old_last + 1:
        raise CheckFailure(f"old-to-high start failed ({p},{q})")
    if high.get("transition", {}).get("no_gap") is not True:
        raise CheckFailure(f"serialized transition failed ({p},{q})")
    high_first, high_last = int(high["first_exponent"]), int(high["max_exponent"])
    if not endpoint(p, HIGH_HEIGHT_BITS, high_last):
        raise CheckFailure(f"high endpoint failed ({p},{q})")
    if high.get("endpoint", {}).get("verified") is not True:
        raise CheckFailure(f"serialized high endpoint failed ({p},{q})")
    high_rows = [normalize_block(row, high_path, "high", i) for i, row in enumerate(high["blocks"])]
    high_check = check_chain(high_rows, p, q, high_first, high_last + 1)
    if high_check["start"] != old_check["stop_exclusive"]:
        raise CheckFailure(f"connection failed ({p},{q})")
    if high.get("block_count") != high_check["blocks"] or high.get("signed_checks") != high_check["signed_checks"]:
        raise CheckFailure(f"serialized high counts failed ({p},{q})")
    pair_meta = {
        "p": p,
        "q": q,
        "w": W,
        "old": {
            "source_path": repo_rel(old_path),
            "source_sha256": sha256(old_path),
            "astart": old_first,
            "amax": old_last,
            "cut": old_cut,
            "height_bits": OLD_HEIGHT_BITS,
            "check": old_check,
        },
        "high": {
            "source_path": repo_rel(high_path),
            "source_sha256": sha256(high_path),
            "astart": high_first,
            "amax": high_last,
            "height_bits": HIGH_HEIGHT_BITS,
            "check": high_check,
        },
        "connection": {
            "old_stop_exclusive": old_last + 1,
            "high_start": high_first,
            "no_gap": old_last + 1 == high_first,
        },
    }
    normalized = {"pair": [p, q], "meta": pair_meta, "old_rows": old_rows, "high_rows": high_rows}
    return pair_meta, normalized, high


def tamper_checks(normalized: list[dict]) -> list[dict]:
    results = []
    for item in normalized:
        p, q = item["pair"]
        old_rows = item["old_rows"]
        high_rows = item["high_rows"]
        meta = item["meta"]
        inv = copy.deepcopy(high_rows[0])
        inv["v"] += 1
        inv["v_hex"] = hex(inv["v"])
        try:
            check_block(inv, p, q, meta["high"]["astart"])
            inverse_rejected = False
        except CheckFailure:
            inverse_rejected = True
        gap = copy.deepcopy(high_rows[0])
        gap["u"] += 1
        try:
            check_block(gap, p, q, meta["high"]["astart"])
            connection_rejected = False
        except CheckFailure:
            connection_rejected = True
        fake_amax = meta["high"]["amax"] + 1
        endpoint_rejected = not endpoint(p, HIGH_HEIGHT_BITS, fake_amax)
        results.append({
            "pair": [p, q],
            "inverse_plus_one_rejected": inverse_rejected,
            "first_u_plus_one_rejected": connection_rejected,
            "high_amax_plus_one_rejected": endpoint_rejected,
        })
    return results


def write_pilot(high: dict, high_path: Path) -> Path:
    block = high["blocks"][-1]
    v_hex = block["inverse_hex"]
    text = f'''/- Candidate-only numeric pilot. Source: {repo_rel(high_path)}\n   source SHA-256: {sha256(high_path)}\n   last new (2,3) block; no checker definition is copied here. -/\nimport research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Checker\nimport Mathlib.Tactic.Decide\n\nset_option autoImplicit false\nset_option relaxedAutoImplicit false\nset_option maxRecDepth 200000\nset_option maxHeartbeats 5000000\n\nnamespace Math.B699.CubicDataConsumersPilot\n\n/-- The final high candidate block for (p,q)=(2,3), checked through the\n    already supplied Math.B699.CubicExponentBlock.blockCheck definition. -/\ntheorem highest_new_block_23 :\n    Math.B699.CubicExponentBlock.blockCheck\n      2 3 {block['K']} {block['L']} {block['B']} 10 {v_hex} = true := by\n  decide\n\n#print axioms highest_new_block_23\n\nend Math.B699.CubicDataConsumersPilot\n'''
    path = HERE / "candidate" / "HighestNewBlock23.lean"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")
    return path


def main() -> int:
    HERE.mkdir(parents=True, exist_ok=True)
    pairs = []
    normalized = []
    high_inputs = []
    for p, q in PAIRS:
        meta, norm, high = process_pair(p, q)
        pairs.append(meta)
        normalized.append(norm)
        high_inputs.append((high, EXT / f"high_block_11_{p}_{q}.json"))
    total_old = sum(x["meta"]["old"]["check"]["blocks"] for x in normalized)
    total_high = sum(x["meta"]["high"]["check"]["blocks"] for x in normalized)
    total_signed = sum(
        x["meta"]["old"]["check"]["signed_checks"] + x["meta"]["high"]["check"]["signed_checks"]
        for x in normalized
    )
    if (total_old, total_high, total_signed) != (309, 78, 8127):
        raise CheckFailure(f"unexpected totals: {(total_old, total_high, total_signed)}")
    input_manifest = manifest_inputs()
    write_json(HERE / "input-manifest.json", input_manifest)
    write_json(HERE / "normalized-cubic-blocks.json", {
        "status": "independently_normalized_and_rechecked",
        "checker": "Math.B699.CubicExponentBlock.blockCheck (source only; no copied definition)",
        "w": W,
        "old_height_bits": OLD_HEIGHT_BITS,
        "high_height_bits": HIGH_HEIGHT_BITS,
        "total_old_blocks": total_old,
        "total_high_blocks": total_high,
        "total_blocks": total_old + total_high,
        "total_signed_checks": total_signed,
        "pairs": normalized,
    })
    mapping_pairs = []
    for item in normalized:
        meta = item["meta"]
        rows = item["old_rows"] + item["high_rows"]
        mapping_pairs.append({
            "p": meta["p"],
            "q": meta["q"],
            "w": W,
            "astart": meta["old"]["astart"],
            "amax": meta["high"]["amax"],
            "cut": meta["old"]["cut"],
            "H_expr": f"2^{HIGH_HEIGHT_BITS}",
            "source_rows": len(rows),
            "rows": [{"u": r["u"], "L": r["L"], "b0": r["b0"], "v": r["v"]} for r in rows],
        })
    write_json(HERE / "cover-blockdatum-map.json", {
        "status": "pure_numeric_mapping_only",
        "schema": "Math.B699.CubicBlockCover.BlockDatum",
        "checker_reuse": "consume existing Generic checker; no checker definition in this directory",
        "pairs": mapping_pairs,
    })
    pilot_path = write_pilot(high_inputs[0][0], high_inputs[0][1])
    tamper = tamper_checks(normalized)
    write_json(HERE / "tamper-results.json", tamper)
    pilot_text = pilot_path.read_text(encoding="utf-8")
    forbidden = {
        "copied_blockCheck_definition": "def blockCheck" in pilot_text,
        "copied_coverage_definition": "def coverageCheck" in pilot_text,
        "copied_residue_definition": "def residueChecks" in pilot_text,
        "native_decide": "native_decide" in pilot_text,
        "sorry": "sorry" in pilot_text,
        "admit": "admit" in pilot_text,
    }
    if any(forbidden.values()):
        raise CheckFailure(f"pilot source policy failed: {forbidden}")
    static = {
        "status": "PASS",
        "old_blocks": total_old,
        "high_blocks": total_high,
        "total_blocks": total_old + total_high,
        "signed_checks": total_signed,
        "all_pairs_no_gap": all(x["connection"]["no_gap"] for x in pairs),
        "all_old_endpoints": all(x["old"]["check"]["stop_exclusive"] == x["old"]["amax"] + 1 for x in pairs),
        "all_high_endpoints": all(x["high"]["check"]["stop_exclusive"] == x["high"]["amax"] + 1 for x in pairs),
        "zero_to_Q_checks": sum(x["meta"]["old"]["check"]["zero_to_Q"] + x["meta"]["high"]["check"]["zero_to_Q"] for x in normalized),
        "pilot_path": repo_rel(pilot_path),
        "pilot_source_sha256": sha256(pilot_path),
        "pilot_source_bytes": pilot_path.stat().st_size,
        "pilot_block": {"p": 2, "q": 3, "u": high_inputs[0][0]["blocks"][-1]["K"], "L": high_inputs[0][0]["blocks"][-1]["L"], "b0": high_inputs[0][0]["blocks"][-1]["B"]},
        "pilot_forbidden_tokens": forbidden,
        "tamper_all_rejected": all(all(v for k, v in result.items() if k != "pair") for result in tamper),
        "lean_run": False,
        "git_run": False,
        "generator_run": False,
        "network_run": False,
        "max_integer_bits": {"p_pow_u": 14437, "q_pow_b0": 9624, "v": 9624, "bound": 17206},
        "note": "Python standard-library normalization/check only; the Lean pilot is source-only and was not executed.",
    }
    write_json(HERE / "static-checks.json", static)
    print(json.dumps({k: static[k] for k in ("status", "old_blocks", "high_blocks", "total_blocks", "signed_checks", "all_pairs_no_gap", "all_high_endpoints", "tamper_all_rejected", "pilot_source_bytes")}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
