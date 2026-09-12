from __future__ import annotations

import hashlib
import json
from pathlib import Path


HERE = Path(__file__).resolve().parent
CONSUMER = HERE.parent
RUN = HERE.parents[2]
REPO = RUN.parents[4]
NORMALIZED = CONSUMER / "normalized-cubic-blocks.json"
INPUT_MANIFEST = CONSUMER / "input-manifest.json"
COVERAGE_SOURCE = RUN / "experiments/huan-cubic-block-cover-5e2d13bb/Coverage.lean"
CHUNK_SIZE = 4
PAIRS = ((2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7))


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


def load_pair_rows() -> list[dict]:
    data = json.loads(NORMALIZED.read_text(encoding="utf-8"))
    return data["pairs"]


def pair_entry(entries: list[dict], p: int, q: int) -> dict:
    for entry in entries:
        if entry["pair"] == [p, q]:
            return entry
    raise KeyError((p, q))


def row_plan(row: dict) -> dict:
    return {
        "source_kind": row["source_kind"],
        "source_path": row["source_path"],
        "source_index": row["source_index"],
        "u": row["u"],
        "L": row["L"],
        "b0": row["b0"],
    }


def make_chunks(rows: list[dict], kind: str, source_sha256: str) -> list[dict]:
    chunks = []
    for offset in range(0, len(rows), CHUNK_SIZE):
        group = rows[offset : offset + CHUNK_SIZE]
        start = group[0]["u"]
        stop = group[-1]["u"] + group[-1]["L"] + 1
        chunks.append({
            "kind": kind,
            "chunk_index": offset // CHUNK_SIZE,
            "row_count": len(group),
            "start": start,
            "stop_exclusive": stop,
            "source_sha256": source_sha256,
            "rows": [row_plan(row) for row in group],
        })
    return chunks


def make_plan(entries: list[dict]) -> dict:
    pair_plans = []
    for p, q in PAIRS:
        entry = pair_entry(entries, p, q)
        meta = entry["meta"]
        old_rows = entry["old_rows"]
        high_rows = entry["high_rows"]
        old_chunks = make_chunks(old_rows, "old", meta["old"]["source_sha256"])
        high_chunks = make_chunks(high_rows, "high", meta["high"]["source_sha256"])
        pair_plans.append({
            "pair": [p, q],
            "w": 10,
            "old_astart": meta["old"]["astart"],
            "old_amax": meta["old"]["amax"],
            "high_astart": meta["high"]["astart"],
            "high_amax": meta["high"]["amax"],
            "cut": meta["old"]["cut"],
            "old_source_sha256": meta["old"]["source_sha256"],
            "high_source_sha256": meta["high"]["source_sha256"],
            "old_block_count": len(old_rows),
            "high_block_count": len(high_rows),
            "old_chunks": old_chunks,
            "high_chunks": high_chunks,
            "chunks": old_chunks + high_chunks,
        })
    return {
        "status": "chunk_plan_only",
        "schema": "Math.B699.CubicBlockCover.BlockDatum",
        "chunk_size": CHUNK_SIZE,
        "pairs": pair_plans,
        "total_old_blocks": sum(x["old_block_count"] for x in pair_plans),
        "total_high_blocks": sum(x["high_block_count"] for x in pair_plans),
        "total_blocks": sum(x["old_block_count"] + x["high_block_count"] for x in pair_plans),
        "total_chunks": sum(len(x["chunks"]) for x in pair_plans),
        "proof_files_generated": [
            "candidate/Old23Head0004.lean",
            "candidate/New23Tail0004.lean",
        ],
    }


def lean_rows(rows: list[dict]) -> str:
    lines = ["  ["]
    for row in rows:
        lines.append(
            f"    {{ u := {row['u']}, L := {row['L']}, b0 := {row['b0']}, v := {row['v_hex']} }},"
        )
    lines.append("  ]")
    return "\n".join(lines)


def write_chunk_source(path: Path, namespace: str, rows_name: str, theorem_name: str,
                       p: int, q: int, rows: list[dict], source_sha256: str) -> None:
    start = rows[0]["u"]
    stop = rows[-1]["u"] + rows[-1]["L"] + 1
    text = f'''/- Candidate-only chunk data.
   source rows SHA-256: {source_sha256}
   This file consumes the frozen Coverage API and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-cubic-block-cover-5e2d13bb».Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 800000

namespace Math.B699.CubicDataConsumersV2.{namespace}

def {rows_name} : List Math.B699.CubicBlockCover.BlockDatum :=
{lean_rows(rows)}

theorem {theorem_name} :
    Math.B699.CubicBlockCover.coverageCheck
      {p} {q} 10 {start} {stop} {rows_name} = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV2.{namespace}.{theorem_name}

end Math.B699.CubicDataConsumersV2.{namespace}
'''
    path.write_text(text, encoding="utf-8")


def source_record(path: Path, role: str) -> dict:
    return {
        "path": str(path),
        "repo_relative": repo_rel(path),
        "role": role,
        "bytes": path.stat().st_size,
        "sha256": sha256(path),
    }


def make_input_manifest() -> dict:
    prior = json.loads(INPUT_MANIFEST.read_text(encoding="utf-8"))
    records = []
    for item in prior["files"]:
        path = Path(item["path"])
        if not path.is_file() or sha256(path) != item["sha256"]:
            raise RuntimeError(f"prior input changed: {item['path']}")
        records.append(dict(item))
    extra = [
        (NORMALIZED, "normalized 387-row input"),
        (CONSUMER / "cover-blockdatum-map.json", "frozen BlockDatum numeric map"),
        (INPUT_MANIFEST, "base input manifest"),
        (COVERAGE_SOURCE, "frozen Generic Coverage source"),
        (HERE / "generate_chunk_v2.py", "chunk generator source"),
    ]
    seen = {x["repo_relative"] for x in records}
    for path, role in extra:
        item = source_record(path, role)
        if item["repo_relative"] not in seen:
            records.append(item)
            seen.add(item["repo_relative"])
    return {
        "status": "fixed_generator_v2_inputs",
        "chunk_size": CHUNK_SIZE,
        "normalized_sha256": sha256(NORMALIZED),
        "coverage_source_sha256": sha256(COVERAGE_SOURCE),
        "files": records,
    }


def write_readme(plan: dict) -> None:
    (HERE / "README.md").write_text(f'''# generator-v2 chunk staging

This directory is run-owned and reads only the already normalized 387-row input and the frozen Generic Coverage source. The location-dependent extension generator is never invoked here. Chunk size is {CHUNK_SIZE}; the plan covers {plan["total_blocks"]} rows in {plan["total_chunks"]} chunks across all six pairs.

Only two proof-source candidates are generated: the first four old (2,3) rows and the last four new (2,3) rows. Each declares List Math.B699.CubicBlockCover.BlockDatum, calls the existing Math.B699.CubicBlockCover.coverageCheck with w=10, proves the concrete Bool equality with by decide, and prints axioms using its complete theorem name. No checker definition is copied, and no Lean command is run.

The remaining rows appear only in chunk-plan.json and the exact input manifest. Later assembly may use the planned coverage append lemma; this directory does not assume that lemma or generate the remaining proof files.
''', encoding="utf-8")


def main() -> int:
    entries = load_pair_rows()
    plan = make_plan(entries)
    if (plan["total_old_blocks"], plan["total_high_blocks"], plan["total_blocks"]) != (309, 78, 387):
        raise RuntimeError("unexpected normalized totals")
    (HERE / "candidate").mkdir(parents=True, exist_ok=True)
    p23 = pair_entry(entries, 2, 3)
    write_chunk_source(
        HERE / "candidate/Old23Head0004.lean",
        "Old23Head0004",
        "old23Head0004Rows",
        "old23Head0004Coverage",
        2, 3, p23["old_rows"][:4], p23["meta"]["old"]["source_sha256"],
    )
    write_chunk_source(
        HERE / "candidate/New23Tail0004.lean",
        "New23Tail0004",
        "new23Tail0004Rows",
        "new23Tail0004Coverage",
        2, 3, p23["high_rows"][-4:], p23["meta"]["high"]["source_sha256"],
    )
    write_json(HERE / "chunk-plan.json", plan)
    write_json(HERE / "input-manifest-v2.json", make_input_manifest())
    write_readme(plan)
    old_source = (HERE / "candidate/Old23Head0004.lean").read_text(encoding="utf-8")
    new_source = (HERE / "candidate/New23Tail0004.lean").read_text(encoding="utf-8")
    forbidden = {
        "old_copied_checker": "def blockCheck" in old_source or "def coverageCheck" in old_source,
        "new_copied_checker": "def blockCheck" in new_source or "def coverageCheck" in new_source,
        "mathlib_tactic_decide_import": "Mathlib.Tactic.Decide" in old_source or "Mathlib.Tactic.Decide" in new_source,
        "native_decide": "native_decide" in old_source or "native_decide" in new_source,
        "sorry": "sorry" in old_source or "sorry" in new_source,
        "admit": "admit" in old_source or "admit" in new_source,
    }
    if any(forbidden.values()):
        raise RuntimeError(f"source policy failed: {forbidden}")
    static = {
        "status": "PASS",
        "chunk_size": CHUNK_SIZE,
        "total_old_blocks": plan["total_old_blocks"],
        "total_high_blocks": plan["total_high_blocks"],
        "total_blocks": plan["total_blocks"],
        "total_chunks": plan["total_chunks"],
        "representative_chunks": [
            {"path": repo_rel(HERE / "candidate/Old23Head0004.lean"), "rows": 4},
            {"path": repo_rel(HERE / "candidate/New23Tail0004.lean"), "rows": 4},
        ],
        "source_policy": forbidden,
        "coverage_source_sha256": sha256(COVERAGE_SOURCE),
        "normalized_sha256": sha256(NORMALIZED),
        "lean_run": False,
        "generator_run": True,
        "git_run": False,
        "note": "Plan/data generation only; no Lean proof file was executed.",
    }
    write_json(HERE / "static-checks-v2.json", static)
    output_files = [
        p for p in HERE.rglob("*")
        if p.is_file() and p.name != "output-sha256-v2.json"
    ]
    write_json(HERE / "output-sha256-v2.json", {
        "status": "generated_output_hashes",
        "files": {repo_rel(p): sha256(p) for p in sorted(output_files)},
    })
    print(json.dumps({
        "status": static["status"],
        "chunk_size": CHUNK_SIZE,
        "total_blocks": plan["total_blocks"],
        "total_chunks": plan["total_chunks"],
        "lean_run": False,
        "forbidden": forbidden,
    }, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
