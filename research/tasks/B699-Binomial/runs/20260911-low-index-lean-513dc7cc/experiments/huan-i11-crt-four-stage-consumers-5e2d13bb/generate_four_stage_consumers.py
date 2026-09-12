"""Generate source-only consumers for the four checked CRT stages.

The generated modules consume PairGridData, SixPairGrids, the existing
CompleteComposer.rectangle_check roots, and actual_i11_next_height. They do
not redefine any checker or re-decide a rectangle.
"""

from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
PREVIOUS = RUN / "experiments/huan-crt-complete-grid-sources-5e2d13bb"
PREVIOUS_MANIFEST = PREVIOUS / "manifest.json"
METADATA = RUN / "lean/I11CrtStages/NumericMetadata.lean"
PKG = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»"
LEAN_BASE = PKG + ".lean"
META = LEAN_BASE + ".I11CrtStep.Meta"
ACTUAL = LEAN_BASE + ".I11CrtStep.ActualStep"
NUMERIC = LEAN_BASE + ".I11CrtStages.NumericMetadata"
OPTIONS = """set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1024
"""


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def stage_name(stage: int) -> str:
    return f"Stage{stage:02d}"


def pair_tag(p: int, q: int) -> str:
    return f"{p}{q}"


def composer_module(stage: int, p: int, q: int) -> str:
    return f"{LEAN_BASE}.CrtStage{stage}Pair{pair_tag(p, q)}.CompleteComposer"


def consumer_ns(stage: int) -> str:
    return f"Math.B699.I11CRTConsumers.Stage{stage:02d}"


def load_inputs() -> tuple[dict[str, Any], dict[str, dict[str, Any]], dict[str, Any]]:
    manifest = json.loads(PREVIOUS_MANIFEST.read_text(encoding="utf-8"))
    if manifest["grid_count"] != 24 or manifest["cell_count"] != 35545:
        raise ValueError("unexpected complete-grid manifest")
    grids = {grid["tag"]: grid for grid in manifest["grids"]}
    metadata_text = METADATA.read_text(encoding="utf-8")
    metadata = {}
    for stage in range(5):
        name = stage_name(stage)
        match = re.search(
            rf"namespace {name}(?P<body>.*?)end {name}",
            metadata_text,
            re.S,
        )
        if match is None:
            raise ValueError(f"missing metadata namespace {name}")
        body = match["body"]
        values = {}
        for field in ("H", "M", "upper", "exponentMax2", "exponentMax3",
                      "exponentMax5", "exponentMax7"):
            item = re.search(rf"def {field} : ℕ := (\d+)", body)
            if item is not None:
                values[field] = int(item.group(1))
        metadata[name] = values
    return manifest, grids, metadata


def stage_grid(grids: dict[str, dict[str, Any]], stage: int, p: int, q: int) -> dict[str, Any]:
    key = f"stage{stage}_pair{p}{q}"
    if key not in grids:
        raise ValueError(f"missing grid {key}")
    return grids[key]


def header(stage: int, imports: list[str]) -> str:
    return (
        "\n".join(f"import {item}" for item in imports)
        + "\n\n/-! UNCOMPILED source-only consumer. It wires existing grid roots to "
        "the fixed CRT API; it does not rebuild any grid. -/\n"
        + OPTIONS + "\n"
        + f"namespace {consumer_ns(stage)}\n"
        + "open B699LowIndex.I11CrtStageMetadata\n"
        + "open Math.B699.I11CRTSixPair\n\n"
    )


def pair_def(stage: int, p: int, q: int, grid: dict[str, Any]) -> str:
    meta = stage_name(stage)
    pair = pair_tag(p, q)
    composer_ns = f"Math.B699.CRTStage{stage}Pair{pair}.CompleteComposer"
    return (
        f"def grid{pair} : Math.B699.I11CRTSixPair.PairGridData where\n"
        f"  amax := {grid['amax']}\n"
        f"  bmax := {grid['bmax']}\n"
        f"  cells := {composer_ns}.globalData\n\n"
    )


def cutoff_theorem(stage: int, p: int, q: int, grid: dict[str, Any]) -> str:
    meta = stage_name(stage)
    pair = pair_tag(p, q)
    pf, qf = f"exponentMax{p}", f"exponentMax{q}"
    return (
        f"theorem grid{pair}_cutoff :\n"
        f"    Math.B699.I11CRTSixPair.cutoffCheck {p} {q} {meta}.H "
        f"grid{pair} = true := by\n"
        f"  have hp : {meta}.H ≤ ({p} : ℕ) ^ ({grid['amax']} + 1) := by\n"
        f"    simpa only [{meta}.{pf}] using {meta}.cutoff_{p}\n"
        f"  have hq : {meta}.H ≤ ({q} : ℕ) ^ ({grid['bmax']} + 1) := by\n"
        f"    simpa only [{meta}.{qf}] using {meta}.cutoff_{q}\n"
        f"  have hprop : 1 < ({p} : ℕ) ∧ 1 < ({q} : ℕ) ∧\n"
        f"      {meta}.H ≤ ({p} : ℕ) ^ ({grid['amax']} + 1) ∧\n"
        f"      {meta}.H ≤ ({q} : ℕ) ^ ({grid['bmax']} + 1) :=\n"
        f"    ⟨by decide, by decide, hp, hq⟩\n"
        f"  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid{pair}]\n"
        f"    using (decide_eq_true hprop)\n\n"
    )


def pair_check_theorem(stage: int, p: int, q: int) -> str:
    meta = stage_name(stage)
    pair = pair_tag(p, q)
    composer_ns = f"Math.B699.CRTStage{stage}Pair{pair}.CompleteComposer"
    return (
        f"theorem grid{pair}_pair_check :\n"
        f"    Math.B699.I11CRTSixPair.pairGridCheck {p} {q} {meta}.H "
        f"{meta}.M {meta}.upper grid{pair} = true := by\n"
        f"  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid{pair}_cutoff\n"
        f"    (by simpa only [grid{pair}] using {composer_ns}.rectangle_check)\n\n"
    )


def stage_source(stage: int, grids: dict[str, dict[str, Any]]) -> tuple[str, list[str]]:
    pairs = [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
    imports = [
        composer_module(stage, p, q) for p, q in pairs
    ] + [META, ACTUAL, NUMERIC]
    text = header(stage, imports)
    for p, q in pairs:
        text += pair_def(stage, p, q, stage_grid(grids, stage, p, q))
    for p, q in pairs:
        text += cutoff_theorem(stage, p, q, stage_grid(grids, stage, p, q))
        text += pair_check_theorem(stage, p, q)
    text += (
        f"theorem stage{stage:02d}_constants :\n"
        f"    Math.B699.I11CRTSixPair.stageConstantsCheck "
        f"Stage{stage:02d}.H Stage{stage:02d}.M = true := by\n"
        f"  unfold Math.B699.I11CRTSixPair.stageConstantsCheck\n"
        f"  exact decide_eq_true ⟨Stage{stage:02d}.cap_positive, "
        f"Stage{stage:02d}.cofactor_certificate⟩\n\n"
        f"def stage{stage:02d}Data : Math.B699.I11CRTSixPair.SixPairGrids where\n"
        "  grid23 := grid23\n"
        "  grid25 := grid25\n"
        "  grid27 := grid27\n"
        "  grid35 := grid35\n"
        "  grid37 := grid37\n"
        "  grid57 := grid57\n\n"
        f"theorem stage{stage:02d}_pair_checks :\n"
        "    Math.B699.I11CRTSixPair.pairGridCheck 2 3 "
        f"Stage{stage:02d}.H Stage{stage:02d}.M Stage{stage:02d}.upper "
        f"stage{stage:02d}Data.grid23 = true ∧\n"
        "    Math.B699.I11CRTSixPair.pairGridCheck 2 5 "
        f"Stage{stage:02d}.H Stage{stage:02d}.M Stage{stage:02d}.upper "
        f"stage{stage:02d}Data.grid25 = true ∧\n"
        "    Math.B699.I11CRTSixPair.pairGridCheck 2 7 "
        f"Stage{stage:02d}.H Stage{stage:02d}.M Stage{stage:02d}.upper "
        f"stage{stage:02d}Data.grid27 = true ∧\n"
        "    Math.B699.I11CRTSixPair.pairGridCheck 3 5 "
        f"Stage{stage:02d}.H Stage{stage:02d}.M Stage{stage:02d}.upper "
        f"stage{stage:02d}Data.grid35 = true ∧\n"
        "    Math.B699.I11CRTSixPair.pairGridCheck 3 7 "
        f"Stage{stage:02d}.H Stage{stage:02d}.M Stage{stage:02d}.upper "
        f"stage{stage:02d}Data.grid37 = true ∧\n"
        "    Math.B699.I11CRTSixPair.pairGridCheck 5 7 "
        f"Stage{stage:02d}.H Stage{stage:02d}.M Stage{stage:02d}.upper "
        f"stage{stage:02d}Data.grid57 = true := by\n"
        f"  exact ⟨by simpa only [stage{stage:02d}Data] using grid23_pair_check,\n"
        f"    by simpa only [stage{stage:02d}Data] using grid25_pair_check,\n"
        f"    by simpa only [stage{stage:02d}Data] using grid27_pair_check,\n"
        f"    by simpa only [stage{stage:02d}Data] using grid35_pair_check,\n"
        f"    by simpa only [stage{stage:02d}Data] using grid37_pair_check,\n"
        f"    by simpa only [stage{stage:02d}Data] using grid57_pair_check⟩\n\n"
        f"end {consumer_ns(stage)}\n\n"
    )
    roots = []
    for p, q in pairs:
        pair = pair_tag(p, q)
        roots += [f"grid{pair}_cutoff", f"grid{pair}_pair_check"]
    roots += [f"stage{stage:02d}_constants", f"stage{stage:02d}_pair_checks"]
    text += "\n".join(f"#print axioms {consumer_ns(stage)}.{root}" for root in roots) + "\n"
    return text, roots


def link_proof(stage: int) -> str:
    meta = stage_name(stage)
    nxt = stage_name(stage + 1)
    theorem = f"next_height_{stage:02d}"
    metadata_link = f"{meta}.next_height_{stage:02d}"
    return (
        f"theorem {theorem} :\n"
        f"    Math.B699.I11CRTSixPair.nextHeight {meta}.M {meta}.upper = {nxt}.H := by\n"
        f"  change max {meta}.M (max 109 {meta}.upper) + 1 = {nxt}.H\n"
        f"  have hM : {meta}.M ≤ {meta}.upper := by decide +kernel\n"
        f"  have h109 : 109 ≤ {meta}.upper := by decide +kernel\n"
        "  rw [Nat.max_eq_right hM, Nat.max_eq_right h109]\n"
        f"  exact {metadata_link}.symm\n\n"
    )


def connection(stage: int) -> str:
    meta = stage_name(stage)
    nxt = stage_name(stage + 1)
    ns = f"Math.B699.I11CRTConsumers.Stage{stage:02d}"
    args = "\n".join(
        f"    (by simpa only [{ns}.stage{stage:02d}Data] using "
        f"{ns}.grid{p}{q}_pair_check)"
        for p, q in [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
    )
    return (
        f"theorem connect_{stage:02d} {{n j : ℕ}}\n"
        "    (hij : 11 < j) (hjn : j ≤ n / 2)\n"
        "    (hno : ¬ Common n 11 j)\n"
        f"    (hnH : n < {meta}.H) : n < {nxt}.H := by\n"
        f"  have h := Math.B699.I11CRTSixPair.actual_i11_next_height\n"
        f"    (data := {ns}.stage{stage:02d}Data)\n"
        f"    {ns}.stage{stage:02d}_constants\n"
        f"{args}\n"
        "    hij hjn hno hnH\n"
        f"  simpa only [next_height_{stage:02d}] using h\n\n"
    )


def all_stages_source() -> str:
    imports = [
        f"{LEAN_BASE}.I11CRTConsumers.Stage{stage:02d}" for stage in range(4)
    ] + [ACTUAL, NUMERIC]
    text = (
        "\n".join(f"import {item}" for item in imports) + "\n\n"
        "/-! UNCOMPILED source-only four-stage connection. The only inputs to "
        "the original-index root are hij, hjn, hno, and n < 2^109. -/\n"
        + OPTIONS + "\n"
        + "namespace Math.B699.I11CRTConsumers.AllStages\n"
        + "open B699LargePrimeStructure\n"
        + "open B699LowIndex.I11CrtStageMetadata\n\n"
    )
    for stage in range(4):
        text += link_proof(stage)
    for stage in range(4):
        text += connection(stage)
    text += (
        "theorem initial_to_stage04 {n j : ℕ}\n"
        "    (hij : 11 < j) (hjn : j ≤ n / 2)\n"
        "    (hno : ¬ Common n 11 j)\n"
        "    (hn109 : n < (2 : ℕ) ^ 109) : n < Stage04.H := by\n"
        "  have hn00 : n < Stage00.H := by\n"
        "    simpa only [Stage00.initial_height] using hn109\n"
        "  have hn01 := connect_00 hij hjn hno hn00\n"
        "  have hn02 := connect_01 hij hjn hno hn01\n"
        "  have hn03 := connect_02 hij hjn hno hn02\n"
        "  exact connect_03 hij hjn hno hn03\n\n"
        "theorem initial_to_29294603 {n j : ℕ}\n"
        "    (hij : 11 < j) (hjn : j ≤ n / 2)\n"
        "    (hno : ¬ Common n 11 j)\n"
        "    (hn109 : n < (2 : ℕ) ^ 109) : n < 29294603 := by\n"
        "  have h := initial_to_stage04 hij hjn hno hn109\n"
        "  simpa only [Stage04.H] using h\n\n"
        "end Math.B699.I11CRTConsumers.AllStages\n\n"
    )
    roots = [f"next_height_{stage:02d}" for stage in range(4)]
    roots += [f"connect_{stage:02d}" for stage in range(4)]
    roots += ["initial_to_stage04", "initial_to_29294603"]
    text += "\n".join(
        f"#print axioms Math.B699.I11CRTConsumers.AllStages.{root}" for root in roots
    ) + "\n"
    return text


def main() -> None:
    manifest, grids, metadata = load_inputs()
    for stage in range(4):
        values = metadata[stage_name(stage)]
        if not all(field in values for field in ("H", "M", "upper")):
            raise ValueError(f"incomplete metadata {stage_name(stage)}")
        stage_records = [
            stage_grid(grids, stage, p, q)
            for p, q in [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
        ]
        if len({(r["H"], r["M"], r["T"]) for r in stage_records}) != 1:
            raise ValueError(f"inconsistent stage metadata {stage}")
        if (values["H"], values["M"], values["upper"]) != (
            stage_records[0]["H"], stage_records[0]["M"], stage_records[0]["T"]
        ):
            raise ValueError(f"manifest/metadata mismatch {stage_name(stage)}")

    stage_records = []
    for stage in range(4):
        text, roots = stage_source(stage, grids)
        path = OUT / "candidate" / "lean" / "I11CRTConsumers" / f"Stage{stage:02d}.lean"
        write(path, text)
        audit = path.with_name(f"Stage{stage:02d}Audit.lean")
        write(
            audit,
            f"import {LEAN_BASE}.I11CRTConsumers.Stage{stage:02d}\n\n"
            + "\n".join(
                f"#print axioms {consumer_ns(stage)}.{root}" for root in roots
            ) + "\n",
        )
        stage_records.append({
            "stage": stage,
            "source": str(path),
            "source_sha256": sha256(path),
            "audit": str(audit),
            "audit_sha256": sha256(audit),
            "roots": roots,
            "grid_tags": [
                f"stage{stage}_pair{p}{q}"
                for p, q in [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
            ],
        })
    all_stages = OUT / "candidate" / "lean" / "I11CRTConsumers" / "AllStages.lean"
    write(all_stages, all_stages_source())
    all_audit = all_stages.with_name("AllStagesAudit.lean")
    all_ns = "Math.B699.I11CRTConsumers.AllStages"
    all_roots = [
        *[f"next_height_{stage:02d}" for stage in range(4)],
        *[f"connect_{stage:02d}" for stage in range(4)],
        "initial_to_stage04", "initial_to_29294603",
    ]
    write(
        all_audit,
        f"import {LEAN_BASE}.I11CRTConsumers.AllStages\n\n"
        + "\n".join(f"#print axioms {all_ns}.{root}" for root in all_roots) + "\n",
    )

    composer_inputs = []
    for item in manifest["composers"]:
        path = Path(item["source"])
        if sha256(path) != item["source_sha256"]:
            raise ValueError(f"composer changed: {path}")
        composer_inputs.append({
            "grid": item["grid"],
            "path": str(path),
            "sha256": item["source_sha256"],
        })
    output_files = []
    for path in sorted((OUT / "candidate").rglob("*.lean")):
        output_files.append({
            "path": str(path.relative_to(OUT)),
            "bytes": path.stat().st_size,
            "sha256": sha256(path),
        })
    out_manifest = {
        "status": "UNCOMPILED_FOUR_STAGE_CONSUMER_CANDIDATE",
        "new_Lean_runs": 0,
        "stage_count": 4,
        "pair_count_per_stage": 6,
        "stage_records": stage_records,
        "all_stages": {
            "source": str(all_stages),
            "source_sha256": sha256(all_stages),
            "audit": str(all_audit),
            "audit_sha256": sha256(all_audit),
            "roots": all_roots,
        },
        "inputs": {
            "complete_grid_manifest": str(PREVIOUS_MANIFEST),
            "complete_grid_manifest_sha256": sha256(PREVIOUS_MANIFEST),
            "numeric_metadata": str(METADATA),
            "numeric_metadata_sha256": sha256(METADATA),
            "composer_inputs": composer_inputs,
        },
        "stage_metadata": {
            stage_name(stage): metadata[stage_name(stage)] for stage in range(5)
        },
        "connections": [
            {
                "from_stage": stage,
                "input_H": metadata[stage_name(stage)]["H"],
                "M": metadata[stage_name(stage)]["M"],
                "T": metadata[stage_name(stage)]["upper"],
                "output_H": metadata[stage_name(stage + 1)]["H"],
                "theorem": f"connect_{stage:02d}",
                "height_link": f"next_height_{stage:02d}",
            }
            for stage in range(4)
        ],
        "generated_source_files": output_files,
    }
    write(OUT / "manifest.json", json.dumps(out_manifest, ensure_ascii=False, indent=2) + "\n")
    freeze = {
        "status": "SOURCE_ONLY_FREEZE_NO_LEAN",
        "manifest_sha256": sha256(OUT / "manifest.json"),
        "generator_sha256": sha256(Path(__file__)),
        "stage_count": 4,
        "pair_count": 24,
        "generated_lean_files": len(output_files),
        "no_checker_redefinition": True,
        "new_Lean_runs": 0,
    }
    write(OUT / "FREEZE.json", json.dumps(freeze, ensure_ascii=False, indent=2) + "\n")
    print(f"generated {len(output_files)} Lean consumer/audit files")


if __name__ == "__main__":
    main()
