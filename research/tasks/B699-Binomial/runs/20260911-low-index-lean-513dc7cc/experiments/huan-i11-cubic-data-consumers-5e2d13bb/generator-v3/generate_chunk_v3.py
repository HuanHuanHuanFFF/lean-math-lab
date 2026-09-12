from __future__ import annotations
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
CONSUMER = HERE.parent
RUN = HERE.parents[2]
REPO = RUN.parents[4]
NORMALIZED = CONSUMER / "normalized-cubic-blocks.json"
BASE_MANIFEST = CONSUMER / "input-manifest.json"
COVERAGE = RUN / "lean/CubicCover/Coverage.lean"
OLD_SIZE = 16
NEW_SIZE = 13
PAIRS = ((2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7))
COVERAGE_SHA = "3f3e0b1058292cfe4cb1cb88129ffdc91e6a108999bc92540c6bbff641406d56"

def sha(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def rel(path: Path) -> str:
    return path.relative_to(REPO).as_posix()

def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n", encoding="utf-8")

def pair(entries, p, q):
    return next(x for x in entries if x["pair"] == [p, q])

def row_info(row):
    return {k: row[k] for k in ("source_kind", "source_path", "source_index", "u", "L", "b0")}

def make_chunks(rows, kind, size, source_sha):
    out = []
    for index in range((len(rows) + size - 1) // size):
        group = rows[index * size : (index + 1) * size]
        out.append({
            "kind": kind,
            "chunk_index": index,
            "row_count": len(group),
            "start": group[0]["u"],
            "stop_exclusive": group[-1]["u"] + group[-1]["L"] + 1,
            "source_sha256": source_sha,
            "rows": [row_info(x) for x in group],
        })
    return out

def make_plan(entries):
    plans = []
    for p, q in PAIRS:
        item = pair(entries, p, q)
        meta = item["meta"]
        old = make_chunks(item["old_rows"], "old", OLD_SIZE, meta["old"]["source_sha256"])
        high = make_chunks(item["high_rows"], "high", NEW_SIZE, meta["high"]["source_sha256"])
        plans.append({
            "pair": [p, q], "w": 10,
            "old_astart": meta["old"]["astart"], "old_amax": meta["old"]["amax"],
            "high_astart": meta["high"]["astart"], "high_amax": meta["high"]["amax"],
            "cut": meta["old"]["cut"],
            "old_source_sha256": meta["old"]["source_sha256"],
            "high_source_sha256": meta["high"]["source_sha256"],
            "old_block_count": len(item["old_rows"]),
            "high_block_count": len(item["high_rows"]),
            "old_chunk_size": OLD_SIZE, "new_chunk_size": NEW_SIZE,
            "old_chunks": old, "high_chunks": high, "chunks": old + high,
        })
    return {
        "status": "chunk_plan_only",
        "schema": "Math.B699.CubicBlockCover.BlockDatum",
        "old_chunk_size": OLD_SIZE, "new_chunk_size": NEW_SIZE,
        "preserve_old_new_boundary": True,
        "pairs": plans,
        "total_old_blocks": sum(x["old_block_count"] for x in plans),
        "total_high_blocks": sum(x["high_block_count"] for x in plans),
        "total_blocks": sum(x["old_block_count"] + x["high_block_count"] for x in plans),
        "total_chunks": sum(len(x["chunks"]) for x in plans),
        "proof_files_generated": ["candidate/Old23Head0016.lean", "candidate/New23Full0013.lean"],
    }

def lean_rows(rows):
    return "\n".join(
        ["  ["] + [
            f"    {{ u := {x['u']}, L := {x['L']}, b0 := {x['b0']}, v := {x['v_hex']} }},"
            for x in rows
        ] + ["  ]"]
    )

def write_lean(path, namespace, rows_name, theorem_name, p, q, rows, source_sha):
    start = rows[0]["u"]
    stop = rows[-1]["u"] + rows[-1]["L"] + 1
    path.write_text(f'''/- Candidate-only chunk data.
   source rows SHA-256: {source_sha}
   This file consumes CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV3.{namespace}

def {rows_name} : List Math.B699.CubicBlockCover.BlockDatum :=
{lean_rows(rows)}

theorem {theorem_name} :
    Math.B699.CubicBlockCover.coverageCheck
      {p} {q} 10 {start} {stop} {rows_name} = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV3.{namespace}.{theorem_name}

end Math.B699.CubicDataConsumersV3.{namespace}
''', encoding="utf-8")

def manifest():
    base = json.loads(BASE_MANIFEST.read_text(encoding="utf-8"))
    records = []
    for item in base["files"]:
        p = Path(item["path"])
        if not p.is_file() or sha(p) != item["sha256"]:
            raise RuntimeError("base input changed: " + item["path"])
        records.append(dict(item))
    extras = [
        (NORMALIZED, "normalized 387-row input"),
        (CONSUMER / "cover-blockdatum-map.json", "frozen numeric map"),
        (BASE_MANIFEST, "base input manifest"),
        (COVERAGE, "accepted CubicCover Coverage source"),
        (HERE / "generate_chunk_v3.py", "v3 generator"),
    ]
    seen = {x["repo_relative"] for x in records}
    for p, role in extras:
        item = {"path": str(p), "repo_relative": rel(p), "role": role,
                "bytes": p.stat().st_size, "sha256": sha(p)}
        if item["repo_relative"] not in seen:
            records.append(item)
            seen.add(item["repo_relative"])
    return {"status": "fixed_generator_v3_inputs", "old_chunk_size": OLD_SIZE,
            "new_chunk_size": NEW_SIZE, "coverage_source_sha256": sha(COVERAGE),
            "files": records}

def main():
    entries = json.loads(NORMALIZED.read_text(encoding="utf-8"))["pairs"]
    if sha(COVERAGE) != COVERAGE_SHA:
        raise RuntimeError("CubicCover Coverage SHA mismatch")
    plan = make_plan(entries)
    if (plan["total_old_blocks"], plan["total_high_blocks"], plan["total_blocks"]) != (309, 78, 387):
        raise RuntimeError("unexpected totals")
    (HERE / "candidate").mkdir(parents=True, exist_ok=True)
    item = pair(entries, 2, 3)
    write_lean(HERE / "candidate/Old23Head0016.lean", "Old23Head0016",
               "old23Head0016Rows", "old23Head0016Coverage", 2, 3,
               item["old_rows"][:OLD_SIZE], item["meta"]["old"]["source_sha256"])
    write_lean(HERE / "candidate/New23Full0013.lean", "New23Full0013",
               "new23Full0013Rows", "new23Full0013Coverage", 2, 3,
               item["high_rows"], item["meta"]["high"]["source_sha256"])
    write_json(HERE / "chunk-plan-v3.json", plan)
    write_json(HERE / "input-manifest-v3.json", manifest())
    (HERE / "README.md").write_text(
        f"""# generator-v3 chunk staging

v3 uses the accepted run module lean.CubicCover.Coverage (SHA {COVERAGE_SHA}).
Old rows use chunk size {OLD_SIZE}; each new pair remains one complete {NEW_SIZE}-row
chunk. The plan covers {plan["total_blocks"]} rows in {plan["total_chunks"]} chunks
without crossing an old/new boundary.

Only Old23Head0016.lean and New23Full0013.lean are generated. Both set
maxRecDepth=100000, maxHeartbeats=5000000, exponentiation.threshold=1000000,
call existing coverageCheck by decide, and print the complete theorem name.
No checker is copied and no Lean command is run.
""", encoding="utf-8")
    old_text = (HERE / "candidate/Old23Head0016.lean").read_text(encoding="utf-8")
    new_text = (HERE / "candidate/New23Full0013.lean").read_text(encoding="utf-8")
    text = old_text + "\n" + new_text
    forbidden = {
        "copied_checker": "def blockCheck" in text or "def coverageCheck" in text,
        "native_decide": "native_decide" in text,
        "mathlib_tactic_decide_import": "Mathlib.Tactic.Decide" in text,
        "sorry": "sorry" in text, "admit": "admit" in text,
    }
    if any(forbidden.values()):
        raise RuntimeError(str(forbidden))
    static = {
        "status": "PASS", "old_chunk_size": OLD_SIZE, "new_chunk_size": NEW_SIZE,
        "total_old_blocks": plan["total_old_blocks"],
        "total_high_blocks": plan["total_high_blocks"],
        "total_blocks": plan["total_blocks"], "total_chunks": plan["total_chunks"],
        "coverage_source_sha256": sha(COVERAGE), "normalized_sha256": sha(NORMALIZED),
        "representative_files": [
            {"path": rel(HERE / "candidate/Old23Head0016.lean"), "rows": OLD_SIZE},
            {"path": rel(HERE / "candidate/New23Full0013.lean"), "rows": NEW_SIZE},
        ],
        "source_policy": forbidden, "lean_run": False, "generator_run": True,
        "git_run": False,
        "note": "Data/plan generation only; candidates await real Lean compilation.",
    }
    write_json(HERE / "static-checks-v3.json", static)
    output = [p for p in HERE.rglob("*") if p.is_file() and p.name != "output-sha256-v3.json"]
    write_json(HERE / "output-sha256-v3.json", {
        "status": "generated_output_hashes",
        "files": {rel(p): sha(p) for p in sorted(output)},
    })
    print(json.dumps({"status": "PASS", "old_chunk_size": OLD_SIZE,
                      "new_chunk_size": NEW_SIZE, "total_blocks": plan["total_blocks"],
                      "total_chunks": plan["total_chunks"], "lean_run": False,
                      "forbidden": forbidden}, sort_keys=True))

if __name__ == "__main__":
    raise SystemExit(main())
