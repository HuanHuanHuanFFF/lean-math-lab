from __future__ import annotations
import hashlib
import json
from collections import Counter
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
OUT = EXP / "candidate/lean/CrtGrid"
OUT.mkdir(parents=True, exist_ok=True)

SOURCE_ROOT = RUN / "lean/CrtGrid"
PROBE_DIR = EXP.parent / "huan-i11-crt-descent-probe-5e2d13bb"
PROBE_RESULT = PROBE_DIR / "result.json"
PROBE_SCRIPT = PROBE_DIR / "probe.py"

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def rho_value(v: int, Q: int, d: int) -> int:
    return (d * v) % Q or Q

def bounds_for(P: int, Q: int, v: int, cap_a: int, cap_c: int, d: int):
    rho = rho_value(v, Q, d)
    assert (P * rho - d) % Q == 0
    c0 = (P * rho - d) // Q
    lo = max(0, (1 - c0 + P - 1) // P)
    hi = min((cap_a - rho) // Q, (cap_c - c0) // P)
    empty = hi < lo
    upper = min(P * (rho + hi), Q * (c0 + P * hi)) + 10
    if not empty:
        A = rho + Q * hi
        C = c0 + P * hi
        assert 1 <= A <= cap_a and 1 <= C <= cap_c
        assert P * A - Q * C == d
    assert lo <= 0 or c0 + P * (lo - 1) < 1
    assert cap_a < rho + Q * (hi + 1) or cap_c < c0 + P * (hi + 1)
    return {
        "d": d, "rho": rho, "c0": c0, "lo": lo, "hi": hi,
        "empty": empty, "upper": upper,
        "hi_minus_one": hi - 1,
        "has_positive_t": (not empty and hi > 0),
    }

def int_lit(value: int) -> str:
    return str(value)

def bounds_expr(rows, default_pair):
    default_lo, default_hi = default_pair
    expr = f"⟨{int_lit(default_lo)}, {int_lit(default_hi)}⟩"
    for row in reversed(rows):
        lo, hi = row["lo"], row["hi"]
        expr = f"if d = ({row['d']} : ℤ) then ⟨{int_lit(lo)}, {int_lit(hi)}⟩ else {expr}"
    return expr

def cell_source(cell):
    name = cell["name"]
    expr = bounds_expr(cell["exceptions"], tuple(cell["default"]))
    return f"""def {name} : CellData where
  inverse := {cell['inverse']}
  bounds := fun d => {expr}
"""

def block_source(block):
    ns = block["namespace"]
    source = f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid

/-! Numeric pilot only. Data is generated from the exact CRT affine bounds;
the default CellData is outside the checked rectangle and is not coverage. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTGrid.{ns}
open Math.B699.CRTPairMax

def stageH : ℕ := {block['H']}
def stageM : ℕ := {block['M']}
def stageT : ℕ := {block['T']}
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

"""
    source += "\n".join(cell_source(c) for c in block["cells"])
    source += "\n\ndef pilotData : ℕ → ℕ → CellData :=\n  fun a b =>\n"
    branches = []
    for cell in block["cells"]:
        branches.append(f"    if a = {cell['a']} ∧ b = {cell['b']} then {cell['name']}")
    source += "\n".join(branches)
    source += "\n    else outsideCell\n\n"
    source += f"""theorem block_check :
    blockCheck {block['p']} {block['q']} stageH stageM stageT
      {block['aStart']} {block['aCount']} {block['bStart']} {block['bCount']} pilotData = true := by
  decide

end Math.B699.CRTGrid.{ns}
#print axioms Math.B699.CRTGrid.{ns}.block_check
"""
    return source

result = json.loads(PROBE_RESULT.read_text(encoding="utf-8"))
stage_by_id = {item["stage"]: item for item in result["stages"]}
blocks = [
    {
        "id": "stage0_23_a1_b1to8", "namespace": "PilotStage0_23_A1_B1to8",
        "stage": 0, "p": 2, "q": 3, "aStart": 1, "aCount": 1,
        "bStart": 1, "bCount": 8,
    },
    {
        "id": "stage0_37_a21to24_b11to14", "namespace": "PilotStage0_37_A21to24_B11to14",
        "stage": 0, "p": 3, "q": 7, "aStart": 21, "aCount": 4,
        "bStart": 11, "bCount": 4,
    },
    {
        "id": "stage0_23_a105to108_b65to68", "namespace": "PilotStage0_23_A105to108_B65to68",
        "stage": 0, "p": 2, "q": 3, "aStart": 105, "aCount": 4,
        "bStart": 65, "bCount": 4,
    },
    {
        "id": "stage4_57_rectangle", "namespace": "PilotStage4_57_Rectangle",
        "stage": 4, "p": 5, "q": 7, "aStart": 1, "aCount": 10,
        "bStart": 1, "bCount": 8,
    },
]

all_metadata = []
feature_counts = Counter()
for block in blocks:
    stage = stage_by_id[block["stage"]]
    block.update({
        "H": stage["H"], "M": stage["M"], "T": stage["output_upper"],
        "stage_power_counts": stage["power_counts"],
        "stage_output_upper": stage["output_upper"],
        "source_ordered_rows_sha256": stage["ordered_rows_sha256"],
    })
    block["cells"] = []
    for a in range(block["aStart"], block["aStart"] + block["aCount"]):
        P = block["p"] ** a
        for b in range(block["bStart"], block["bStart"] + block["bCount"]):
            Q = block["q"] ** b
            v = pow(P, -1, Q)
            cap_a = min(block["M"], (block["H"] - 1) // P)
            cap_c = min(block["M"], (block["H"] - 1) // Q)
            rows = [bounds_for(P, Q, v, cap_a, cap_c, d) for d in range(-10, 11)]
            common = Counter((r["lo"], r["hi"]) for r in rows).most_common()
            default_pair = common[0][0]
            exceptions = [{"d": r["d"], "lo": r["lo"], "hi": r["hi"]} for r in rows if (r["lo"], r["hi"]) != default_pair]
            cell = {
                "name": f"cellA{a}B{b}",
                "a": a, "b": b, "P": P, "Q": Q, "inverse": v,
                "capA": cap_a, "capC": cap_c,
                "default": list(default_pair),
                "exceptions": exceptions,
                "rows": rows,
            }
            block["cells"].append(cell)
            feature_counts["cells"] += 1
            feature_counts["signed_rows"] += len(rows)
            feature_counts["negative_c0_rows"] += sum(r["c0"] < 0 for r in rows)
            feature_counts["lo_positive_rows"] += sum(r["lo"] > 0 for r in rows)
            feature_counts["positive_t_rows"] += sum(r["has_positive_t"] for r in rows)
            feature_counts["hi_minus_one_rows"] += sum(not r["empty"] and r["hi"] - r["lo"] >= 2 for r in rows)
            feature_counts["capA_active_cells"] += cap_a < block["M"]
            feature_counts["capC_active_cells"] += cap_c < block["M"]
            feature_counts["zero_residue_rows"] += sum(r["rho"] == Q for r in rows)
    block["cell_count"] = len(block["cells"])
    block["signed_rows"] = len(block["cells"]) * 21
    block["source_file"] = f"{block['id']}.lean"
    all_metadata.append(block)

for block in blocks:
    source = block_source(block)
    path = OUT / block["source_file"]
    path.write_text(source, encoding="utf-8")
    block["source_sha256"] = sha(path)
    block["source_bytes"] = path.stat().st_size
    for cell in block["cells"]:
        cell.pop("rows", None)

metadata = {
    "status": "generated_uncompiled_numeric_pilots",
    "input": {
        "probe_result": str(PROBE_RESULT).replace("\\", "/"),
        "probe_result_sha256": sha(PROBE_RESULT),
        "probe_script": str(PROBE_SCRIPT).replace("\\", "/"),
        "probe_script_sha256": sha(PROBE_SCRIPT),
    },
    "checker_sources": {
        path.name: {"path": str(path).replace("\\", "/"), "sha256": sha(path)}
        for path in sorted(SOURCE_ROOT.glob("*.lean"))
    },
    "blocks": all_metadata,
    "feature_counts": dict(feature_counts),
    "bounds_formula": "rho=(d*v)%Q or Q; C0=(P*rho-d)//Q; lo=max(0,ceil((1-C0)/P)); hi=min(floor((capA-rho)/Q),floor((capC-C0)/P))",
    "shifts": list(range(-10, 11)),
    "domain_default_not_coverage": True,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
(EXP / "cells.json").write_text(json.dumps(metadata, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

plan = {
    "status": "generated_uncompiled_numeric_pilots",
    "blocks": [
        {
            "id": b["id"], "stage": b["stage"], "p": b["p"], "q": b["q"],
            "H": b["H"], "M": b["M"], "T": b["T"],
            "aStart": b["aStart"], "aCount": b["aCount"],
            "bStart": b["bStart"], "bCount": b["bCount"],
            "cells": b["cell_count"], "signed_rows": b["signed_rows"],
            "source_file": b["source_file"], "source_sha256": b["source_sha256"],
        }
        for b in all_metadata
    ],
    "stage_source_ordered_rows_sha256": {str(k): v["ordered_rows_sha256"] for k, v in stage_by_id.items()},
    "feature_counts": dict(feature_counts),
    "uses_integrated_checker": True,
    "checker_copied": False,
    "maxRecDepth": 100000,
    "maxHeartbeats": 5000000,
    "exponentiation_threshold": 512,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
(EXP / "generation-plan.json").write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
(EXP / "README.md").write_text(f"""# i11 CRT numeric pilots

本目录只生成四个有界 blockCheck 数值候选，不生成全表、不复制 checker、不运行 Lean。

试点为 stage0 (2,3) 的 1×8 与 4×4 两块、stage0 (3,7) 的 4×4 高段块，以及 stage4 (5,7) 的完整 10×8 矩形。每块使用 probe 的原始 H/M/T；每个 CellData 的 inverse、21 个 signed displacement、cap、rho、C0、lo、hi 均由整数公式重新计算。域外 outsideCell 只满足函数总定义，不计入 block 覆盖。

Lean 候选直接导入已集成 Math.B699.CRTGrid.Grid，使用 decide + kernel，设置 maxRecDepth=100000、maxHeartbeats=5000000、exponentiation.threshold=512；不使用 native_decide。组合审计复用四个 block theorem，不重新复制 checker 或重算组合。

cells.json 保存逐格映射、default+exceptions 压缩及 probe/source SHA；独立静态检查将反解析 Lean 源映射并重算全部格与 21 个位移。候选未运行 Lean/Git。
""", encoding="utf-8")
print(json.dumps({
    "status": metadata["status"],
    "blocks": [(b["id"], b["cell_count"], b["signed_rows"], b["source_sha256"]) for b in all_metadata],
    "feature_counts": dict(feature_counts),
}, ensure_ascii=False))
