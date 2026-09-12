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
V3_PLAN = CONSUMER / "generator-v3/chunk-plan-v3.json"
COVERAGE = RUN / "lean/CubicCover/Coverage.lean"
COMPOSITION = RUN / "lean/CubicCover/Composition.lean"
PAIR_API = RUN / "lean/CubicCover/Pair.lean"
OLD_SIZE = 16
NEW_SIZE = 13
PAIRS = ((2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7))
PREFIX = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»"
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


def pair_entry(entries, p, q):
    return next(x for x in entries if x["pair"] == [p, q])


def batch_id(kind: str, p: int, q: int, index: int) -> str:
    return f"{'Old' if kind == 'old' else 'New'}{p}{q}Chunk{index:02d}"


def batch_rows(item: dict, kind: str, index: int) -> list[dict]:
    rows = item["old_rows"] if kind == "old" else item["high_rows"]
    size = OLD_SIZE if kind == "old" else NEW_SIZE
    return rows[index * size : (index + 1) * size]


def batch_module_data(kind: str, p: int, q: int, index: int, item: dict) -> dict:
    bid = batch_id(kind, p, q, index)
    rows = batch_rows(item, kind, index)
    meta = item["meta"]["old" if kind == "old" else "high"]
    accepted = bid == "Old23Chunk00" or bid == "New23Chunk00"
    if accepted:
        if bid == "Old23Chunk00":
            root = f"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/CubicData/Old23Head0016.lean"
            module = f"{PREFIX}.lean.CubicData.Old23Head0016"
            namespace = "Math.B699.CubicDataConsumersV3.Old23Head0016"
            rows_name = "old23Head0016Rows"
            proof = "old23Head0016Coverage"
        else:
            root = f"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/CubicData/New23Full0013.lean"
            module = f"{PREFIX}.lean.CubicData.New23Full0013"
            namespace = "Math.B699.CubicDataConsumersV3.New23Full0013"
            rows_name = "new23Full0013Rows"
            proof = "new23Full0013Coverage"
        module_sha = sha(REPO / root)
        candidate_path = None
    else:
        root = f"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/CubicBatches/{bid}.lean"
        module = f"{PREFIX}.lean.CubicBatches.{bid}"
        namespace = f"Math.B699.CubicDataConsumersV4.{bid}"
        rows_name = bid[0].lower() + bid[1:] + "Rows"
        proof = bid[0].lower() + bid[1:] + "Coverage"
        candidate_path = HERE / "candidate" / f"{bid}.lean"
        module_sha = None
    return {
        "id": bid,
        "pair": [p, q],
        "kind": kind,
        "index": index,
        "accepted_reuse": accepted,
        "root": root,
        "candidate_path": str(candidate_path) if candidate_path else None,
        "module": module,
        "fullnamespace": namespace,
        "rows": f"{namespace}.{rows_name}",
        "rows_local": rows_name,
        "proof": f"{namespace}.{proof}",
        "proof_local": proof,
        "start": rows[0]["u"],
        "stop": rows[-1]["u"] + rows[-1]["L"] + 1,
        "row_count": len(rows),
        "data_source_path": meta["source_path"],
        "data_source_sha256": meta["source_sha256"],
        "module_source_sha256": module_sha,
        "rows_data": rows,
    }


def all_batches(entries: list[dict]) -> list[dict]:
    result = []
    for p, q in PAIRS:
        item = pair_entry(entries, p, q)
        for kind in ("old", "high"):
            rows = item["old_rows"] if kind == "old" else item["high_rows"]
            size = OLD_SIZE if kind == "old" else NEW_SIZE
            for index in range((len(rows) + size - 1) // size):
                info = batch_module_data(kind, p, q, index, item)
                if not info["accepted_reuse"]:
                    result.append(info)
    return result


def lean_rows(rows: list[dict]) -> str:
    return "\n".join(
        ["  ["]
        + [f"    {{ u := {x['u']}, L := {x['L']}, b0 := {x['b0']}, v := {x['v_hex']} }},"
           for x in rows]
        + ["  ]"]
    )


def write_batch_source(info: dict) -> None:
    rows = info["rows_data"]
    path = Path(info["candidate_path"])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(f'''/- Candidate-only chunk data.
   data source SHA-256: {info["data_source_sha256"]}
   future integrated module: {info["module"]}
   This file uses accepted CubicCover Coverage and defines no checker. -/
import {PREFIX}.lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace {info["fullnamespace"]}

def {info["rows_local"]} : List Math.B699.CubicBlockCover.BlockDatum :=
{lean_rows(rows)}

theorem {info["proof_local"]} :
    Math.B699.CubicBlockCover.coverageCheck
      {info["pair"][0]} {info["pair"][1]} 10 {info["start"]} {info["stop"]} {info["rows_local"]} = true := by
  decide

#print axioms {info["fullnamespace"]}.{info["proof_local"]}

end {info["fullnamespace"]}
''', encoding="utf-8")
    info["module_source_sha256"] = sha(path)


def batch_refs_for(entries: list[dict], p: int, q: int) -> list[dict]:
    item = pair_entry(entries, p, q)
    refs = []
    for kind in ("old", "high"):
        rows = item["old_rows"] if kind == "old" else item["high_rows"]
        size = OLD_SIZE if kind == "old" else NEW_SIZE
        for index in range((len(rows) + size - 1) // size):
            info = batch_module_data(kind, p, q, index, item)
            if not info["accepted_reuse"]:
                info["module_source_sha256"] = sha(Path(info["candidate_path"]))
            refs.append(info)
    return refs


def qualified_rows(info: dict) -> str:
    return info["rows"]


def qualified_proof(info: dict) -> str:
    return info["proof"]


def write_pair_source(entries: list[dict], p: int, q: int, refs: list[dict]) -> dict:
    item = pair_entry(entries, p, q)
    pair_name = f"Pair{p}{q}"
    namespace = f"Math.B699.CubicDataConsumersV4.{pair_name}"
    rows_name = f"rows{p}{q}"
    coverage_name = f"pair{p}{q}Coverage"
    check_name = f"pair{p}{q}Check"
    final_stop = refs[-1]["stop"]
    imports = [
        f"import {PREFIX}.lean.CubicCover.Composition",
        f"import {PREFIX}.lean.CubicCover.Pair",
    ]
    for info in refs:
        imports.append(f"import {info['module']}")
    lines = [
        f"/- Candidate-only composed pair {p},{q}.",
        "   The rows are right-associated ++; coverage is proved only by",
        "   coverageCheck_append applied to the supplied batch proofs.",
        "   No checker is copied and no full-list decide is used. -/",
        *imports,
        "",
        "set_option autoImplicit false",
        "set_option relaxedAutoImplicit false",
        "set_option maxRecDepth 100000",
        "set_option maxHeartbeats 5000000",
        "set_option exponentiation.threshold 1000000",
        "",
        f"namespace {namespace}",
        "",
    ]
    # Tail definitions are explicitly right-associated.
    tail_names = {}
    for i in range(len(refs) - 1, 0, -1):
        tail = f"{rows_name}Tail{i:02d}"
        tail_names[i] = tail
        if i == len(refs) - 1:
            rhs = qualified_rows(refs[i])
        else:
            rhs = f"{qualified_rows(refs[i])} ++ {tail_names[i + 1]}"
        lines += [
            f"def {tail} : List Math.B699.CubicBlockCover.BlockDatum := {rhs}",
            "",
        ]
    lines += [
        f"def {rows_name} : List Math.B699.CubicBlockCover.BlockDatum :=",
        f"  {qualified_rows(refs[0])} ++ {tail_names[1]}",
        "",
    ]
    # Compose tail proofs from right to left.
    tail_proof_names = {}
    for i in range(len(refs) - 1, 0, -1):
        proof_local = f"{rows_name}Tail{i:02d}Coverage"
        tail_proof_names[i] = proof_local
        if i == len(refs) - 1:
            lines += [
                f"theorem {proof_local} : Math.B699.CubicBlockCover.coverageCheck",
                f"    {p} {q} 10 {refs[i]['start']} {final_stop} {qualified_rows(refs[i])} = true :=",
                f"  {qualified_proof(refs[i])}",
                "",
            ]
        else:
            left = refs[i]
            right_rows = tail_names[i + 1]
            lines += [
                f"theorem {proof_local} : Math.B699.CubicBlockCover.coverageCheck",
                f"    {p} {q} 10 {left['start']} {final_stop} {tail_names[i]} = true := by",
                f"  change Math.B699.CubicBlockCover.coverageCheck {p} {q} 10",
                f"    {left['start']} {final_stop} ({qualified_rows(left)} ++ {right_rows}) = true",
                f"  exact Math.B699.CubicBlockCover.coverageCheck_append",
                f"    {p} {q} 10 {qualified_rows(left)} {right_rows}",
                f"    (start := {left['start']}) (mid := {left['stop']}) (stop := {final_stop})",
                f"    {qualified_proof(left)} {tail_proof_names[i + 1]}",
                "",
            ]
    first = refs[0]
    lines += [
        f"theorem {coverage_name} :",
        f"    Math.B699.CubicBlockCover.coverageCheck",
        f"      {p} {q} 10 {first['start']} {final_stop} {rows_name} = true := by",
        f"  change Math.B699.CubicBlockCover.coverageCheck {p} {q} 10",
        f"    {first['start']} {final_stop} ({qualified_rows(first)} ++ {tail_names[1]}) = true",
        f"  exact Math.B699.CubicBlockCover.coverageCheck_append",
        f"    {p} {q} 10 {qualified_rows(first)} {tail_names[1]}",
        f"    (start := {first['start']}) (mid := {first['stop']}) (stop := {final_stop})",
        f"    {qualified_proof(first)} {tail_proof_names[1]}",
        "",
        f"theorem {check_name} :",
        f"    Math.B699.CubicBlockCover.pairCheck",
        f"      {p} {q} 10 {item['meta']['old']['astart']} {item['meta']['high']['amax']}",
        f"      {item['meta']['old']['cut']} ((2 : ℕ) ^ 15360) {rows_name} = true := by",
        "  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]",
        "  constructor",
        "  · decide",
        f"  · exact {coverage_name}",
        "",
        f"#print axioms {namespace}.{coverage_name}",
        f"#print axioms {namespace}.{check_name}",
        "",
        f"end {namespace}",
        "",
    ]
    path = HERE / "candidate" / f"{pair_name}.lean"
    path.write_text("\n".join(lines), encoding="utf-8")
    return {
        "id": pair_name,
        "pair": [p, q],
        "root": f"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/CubicBatches/{pair_name}.lean",
        "candidate_path": rel(path),
        "module": f"{PREFIX}.lean.CubicBatches.{pair_name}",
        "fullnamespace": namespace,
        "rows": f"{namespace}.{rows_name}",
        "coverage_proof": f"{namespace}.{coverage_name}",
        "pair_check_proof": f"{namespace}.{check_name}",
        "start": first["start"],
        "stop": final_stop,
        "amax": item["meta"]["high"]["amax"],
        "cut": item["meta"]["old"]["cut"],
        "imports": [x["module"] for x in refs],
        "batch_ids": [x["id"] for x in refs],
        "source_sha256": [x["data_source_sha256"] for x in refs],
        "module_source_sha256": sha(path),
    }


def make_input_manifest(batches: list[dict], pairs: list[dict]) -> dict:
    base = json.loads(BASE_MANIFEST.read_text(encoding="utf-8"))
    records = []
    for item in base["files"]:
        path = Path(item["path"])
        if not path.is_file() or sha(path) != item["sha256"]:
            raise RuntimeError(f"base input changed: {item['path']}")
        records.append(dict(item))
    extras = [
        (NORMALIZED, "normalized 387-row input"),
        (CONSUMER / "cover-blockdatum-map.json", "numeric BlockDatum input"),
        (CONSUMER / "generator-v3/chunk-plan-v3.json", "v3 batch plan"),
        (BASE_MANIFEST, "base input manifest"),
        (COVERAGE, "accepted Coverage source"),
        (COMPOSITION, "accepted append composition source"),
        (PAIR_API, "accepted pairCheck source"),
        (RUN / "lean/CubicData/Old23Head0016.lean", "accepted reused old batch"),
        (RUN / "lean/CubicData/New23Full0013.lean", "accepted reused new batch"),
        (HERE / "generate_v4.py", "v4 generator"),
    ]
    seen = {x["repo_relative"] for x in records}
    for path, role in extras:
        item = {"path": str(path), "repo_relative": rel(path), "role": role,
                "bytes": path.stat().st_size, "sha256": sha(path)}
        if item["repo_relative"] not in seen:
            records.append(item)
            seen.add(item["repo_relative"])
    return {"status": "fixed_generator_v4_inputs", "files": records,
            "coverage_sha256": sha(COVERAGE), "composition_sha256": sha(COMPOSITION),
            "pair_api_sha256": sha(PAIR_API), "batch_count": len(batches),
            "pair_count": len(pairs)}


def main():
    entries = json.loads(NORMALIZED.read_text(encoding="utf-8"))["pairs"]
    if sha(COVERAGE) != COVERAGE_SHA:
        raise RuntimeError("Coverage SHA mismatch")
    (HERE / "candidate").mkdir(parents=True, exist_ok=True)
    new_batches = all_batches(entries)
    for info in new_batches:
        write_batch_source(info)
    all_refs = []
    for p, q in PAIRS:
        all_refs.extend(batch_refs_for(entries, p, q))
    pair_outputs = [write_pair_source(entries, p, q, refs)
                    for p, q in PAIRS
                    for refs in [batch_refs_for(entries, p, q)]]
    # Refresh module SHA for new refs after writing.
    all_batches_final = []
    for p, q in PAIRS:
        all_batches_final.extend(batch_refs_for(entries, p, q))
    batches_manifest = []
    for info in all_batches_final:
        batches_manifest.append({
            k: v for k, v in info.items()
            if k not in ("rows_data", "candidate_path", "proof_local", "rows_local")
        })
    for accepted_id, path in (
        ("Old23Chunk00", RUN / "lean/CubicData/Old23Head0016.lean"),
        ("New23Chunk00", RUN / "lean/CubicData/New23Full0013.lean"),
    ):
        # Accepted entries are already in all_refs; update their source SHA from actual integrated files.
        for info in batches_manifest:
            if info["id"] == accepted_id:
                info["module_source_sha256"] = sha(path)
    pair_outputs = [dict(x) for x in pair_outputs]
    input_manifest = make_input_manifest(batches_manifest, pair_outputs)
    write_json(HERE / "input-manifest-v4.json", input_manifest)
    write_json(HERE / "manifest-v4.json", {
        "status": "candidate_only",
        "accepted_reuse": [
            "Math.B699.CubicDataConsumersV3.Old23Head0016.old23Head0016Coverage",
            "Math.B699.CubicDataConsumersV3.New23Full0013.new23Full0013Coverage",
        ],
        "batch_count": len(batches_manifest),
        "new_chunk_count": len(new_batches),
        "pair_count": len(pair_outputs),
        "batches": batches_manifest,
        "pairs": pair_outputs,
        "coverage_source_sha256": sha(COVERAGE),
        "composition_source_sha256": sha(COMPOSITION),
        "pair_source_sha256": sha(PAIR_API),
    })
    (HERE / "README.md").write_text(f"""# generator-v4 full batch candidates

v4 reuses the two accepted CubicData modules and generates the remaining 27
chunk sources. New modules use the future lean.CubicBatches prefix. Old rows
retain chunk size {OLD_SIZE}; each new pair is one complete {NEW_SIZE}-row
chunk. The six pair candidates import accepted CubicCover Composition and Pair,
define right-associated list append trees, use coverageCheck_append with each
batch proof, and use decide only for pair metadata in pairCheck. No full
387-row decide is used.

All sources set maxRecDepth=100000, maxHeartbeats=5000000, and
exponentiation.threshold=1000000. No checker is copied. This directory is
source-only and was not compiled.
""", encoding="utf-8")
    all_source = "\n".join(p.read_text(encoding="utf-8")
                           for p in (HERE / "candidate").glob("*.lean"))
    forbidden = {
        "copied_checker": "def blockCheck" in all_source or "def coverageCheck" in all_source,
        "native_decide": "native_decide" in all_source,
        "sorry": "sorry" in all_source,
        "admit": "admit" in all_source,
        "wrong_experimental_coverage_import": "experiments.«huan-cubic-block-cover-5e2d13bb»" in all_source,
        "missing_composition": "CubicCover.Composition" not in all_source,
        "missing_pair": "CubicCover.Pair" not in all_source,
    }
    if any(forbidden.values()):
        raise RuntimeError(str(forbidden))
    static = {
        "status": "PASS",
        "new_chunk_count": len(new_batches),
        "batch_count": len(batches_manifest),
        "pair_count": len(pair_outputs),
        "old_chunk_size": OLD_SIZE,
        "new_chunk_size": NEW_SIZE,
        "coverage_source_sha256": sha(COVERAGE),
        "composition_source_sha256": sha(COMPOSITION),
        "pair_source_sha256": sha(PAIR_API),
        "source_policy": forbidden,
        "lean_run": False,
        "git_run": False,
        "note": "27 chunk and 6 composition candidates generated; no Lean execution.",
    }
    write_json(HERE / "static-checks-v4.json", static)
    outputs = [p for p in HERE.rglob("*") if p.is_file() and p.name != "output-sha256-v4.json"]
    write_json(HERE / "output-sha256-v4.json", {
        "status": "generated_output_hashes",
        "files": {rel(p): sha(p) for p in sorted(outputs)},
    })
    print(json.dumps(static, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
