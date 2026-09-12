from __future__ import annotations
import hashlib
import json
import re
from collections import Counter
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
OUT = EXP / "candidate/lean/CrtGrid"
CELLS = json.loads((EXP / "cells.json").read_text(encoding="utf-8"))
PLAN = json.loads((EXP / "generation-plan.json").read_text(encoding="utf-8"))
PROBE = EXP.parent / "huan-i11-crt-descent-probe-5e2d13bb"
RESULT_PATH = PROBE / "result.json"
SCRIPT_PATH = PROBE / "probe.py"
SOURCE_ROOT = RUN / "lean/CrtGrid"
AUDIT_PATH = OUT / "PilotAudit.lean"

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def bounds_for(P: int, Q: int, v: int, cap_a: int, cap_c: int, d: int):
    rho = (d * v) % Q or Q
    assert (P * rho - d) % Q == 0
    c0 = (P * rho - d) // Q
    lo = max(0, (1 - c0 + P - 1) // P)
    hi = min((cap_a - rho) // Q, (cap_c - c0) // P)
    empty = hi < lo
    upper = min(P * (rho + Q * hi), Q * (c0 + P * hi)) + 10
    return {
        "d": d, "rho": rho, "c0": c0, "lo": lo, "hi": hi,
        "empty": empty, "upper": upper,
        "hi_minus_one": hi - 1,
        "has_positive_t": (not empty and hi > 0),
    }

def parse_cell_defs(source: str):
    pattern = re.compile(
        r"def (cellA\d+B\d+) : CellData where\n"
        r"  inverse := (\d+)\n"
        r"  bounds := fun d => (.*?)(?=\ndef cell|\ndef pilotData)",
        re.S,
    )
    parsed = {}
    for match in pattern.finditer(source):
        name, inverse, expr = match.groups()
        pairs = [(int(d), (int(lo), int(hi))) for d, lo, hi in re.findall(
            r"if d = \((-?\d+) : ℤ\) then ⟨(-?\d+), (-?\d+)⟩ else", expr
        )]
        default_match = re.search(r"⟨(-?\d+), (-?\d+)⟩\s*$", expr.strip())
        assert default_match, name
        parsed[name] = {
            "inverse": int(inverse),
            "default": [int(default_match.group(1)), int(default_match.group(2))],
            "exceptions": [{"d": d, "lo": lo, "hi": hi} for d, (lo, hi) in pairs],
        }
    return parsed

def check_data_mapping(source: str, cells):
    match = re.search(r"def pilotData : ℕ → ℕ → CellData :=\n  fun a b =>\n(.*?)\n    else outsideCell", source, re.S)
    assert match
    branches = re.findall(r"if a = (\d+) ∧ b = (\d+) then (cellA\d+B\d+)", match.group(1))
    expected = [(str(c["a"]), str(c["b"]), c["name"]) for c in cells]
    assert branches == expected

result = json.loads(RESULT_PATH.read_text(encoding="utf-8"))
stages = {item["stage"]: item for item in result["stages"]}
assert CELLS["input"]["probe_result_sha256"] == sha(RESULT_PATH)
assert CELLS["input"]["probe_script_sha256"] == sha(SCRIPT_PATH)
assert CELLS["shifts"] == list(range(-10, 11))
assert CELLS["domain_default_not_coverage"] is True

expected_checker = {
    path.name: sha(path)
    for path in sorted(SOURCE_ROOT.glob("*.lean"))
}
assert CELLS["checker_sources"] == {
    name: {"path": CELLS["checker_sources"][name]["path"], "sha256": digest["sha256"]}
    for name, digest in CELLS["checker_sources"].items()
}
assert {name for name in CELLS["checker_sources"]} == set(expected_checker)
for name, digest in expected_checker.items():
    assert CELLS["checker_sources"][name]["sha256"] == digest

feature_counts = Counter()
for block in CELLS["blocks"]:
    stage = stages[block["stage"]]
    assert block["H"] == stage["H"]
    assert block["M"] == stage["M"]
    assert block["T"] == stage["output_upper"]
    assert block["source_ordered_rows_sha256"] == stage["ordered_rows_sha256"]
    assert block["cell_count"] == block["aCount"] * block["bCount"]
    assert block["signed_rows"] == block["cell_count"] * 21
    source_path = OUT / block["source_file"]
    assert source_path.is_file()
    source = source_path.read_text(encoding="utf-8")
    assert sha(source_path) == block["source_sha256"]
    assert source.count("\n") + 1 > 20
    assert "\\n" not in source
    assert "native_decide" not in source
    assert "sorry" not in source and "axiom " not in source
    assert "import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid" in source
    assert "set_option maxRecDepth 100000" in source
    assert "set_option maxHeartbeats 5000000" in source
    assert "set_option exponentiation.threshold 512" in source
    assert f"blockCheck {block['p']} {block['q']} stageH stageM stageT" in source
    assert "by\n  decide" in source
    assert f"#print axioms Math.B699.CRTGrid.{block['namespace']}.block_check" in source
    parsed = parse_cell_defs(source)
    assert set(parsed) == {cell["name"] for cell in block["cells"]}
    check_data_mapping(source, block["cells"])
    for cell in block["cells"]:
        P, Q = cell["P"], cell["Q"]
        assert cell["inverse"] == pow(P, -1, Q)
        assert cell["capA"] == min(block["M"], (block["H"] - 1) // P)
        assert cell["capC"] == min(block["M"], (block["H"] - 1) // Q)
        rows = [bounds_for(P, Q, cell["inverse"], cell["capA"], cell["capC"], d) for d in range(-10, 11)]
        common = Counter((row["lo"], row["hi"]) for row in rows).most_common()
        expected_default = list(common[0][0])
        expected_exceptions = [
            {"d": row["d"], "lo": row["lo"], "hi": row["hi"]}
            for row in rows if (row["lo"], row["hi"]) != tuple(expected_default)
        ]
        assert cell["default"] == expected_default
        assert cell["exceptions"] == expected_exceptions
        parsed_cell = parsed[cell["name"]]
        assert parsed_cell["inverse"] == cell["inverse"]
        assert parsed_cell["default"] == cell["default"]
        assert parsed_cell["exceptions"] == cell["exceptions"]
        feature_counts["cells"] += 1
        feature_counts["signed_rows"] += 21
        feature_counts["negative_c0_rows"] += sum(row["c0"] < 0 for row in rows)
        feature_counts["lo_positive_rows"] += sum(row["lo"] > 0 for row in rows)
        feature_counts["positive_t_rows"] += sum(row["has_positive_t"] for row in rows)
        feature_counts["hi_minus_one_rows"] += sum(
            not row["empty"] and row["hi"] - row["lo"] >= 2 for row in rows
        )
        feature_counts["capA_active_cells"] += cell["capA"] < block["M"]
        feature_counts["capC_active_cells"] += cell["capC"] < block["M"]
        feature_counts["zero_residue_rows"] += sum(row["rho"] == Q for row in rows)

assert feature_counts["negative_c0_rows"] > 0
assert feature_counts["lo_positive_rows"] > 0
assert feature_counts["positive_t_rows"] > 0
assert feature_counts["hi_minus_one_rows"] > 0
assert feature_counts["capA_active_cells"] > 0
assert feature_counts["capC_active_cells"] > 0
assert feature_counts["zero_residue_rows"] > 0

audit = AUDIT_PATH.read_text(encoding="utf-8")
assert audit.count("import research.tasks") == 4
assert "theorem all_pilot_blocks" in audit
assert "by\n  exact ⟨" in audit
assert not re.search(r"native_decide|sorry|axiom ", audit)
assert audit.count("#print axioms Math.B699.CRTGrid.PilotsAudit.all_pilot_blocks") == 1

PLAN["combination_audit"] = {
    "file": "candidate/lean/CrtGrid/PilotAudit.lean",
    "sha256": sha(AUDIT_PATH),
    "fully_qualified_prints": 1,
    "reuses_block_theorems": 4,
}
PLAN["checker_sources"] = CELLS["checker_sources"]
(EXP / "generation-plan.json").write_text(json.dumps(PLAN, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

source_map = {
    "status": "candidate_source_map",
    "probe": {
        "result_path": str(RESULT_PATH).replace("\\", "/"),
        "result_sha256": sha(RESULT_PATH),
        "script_path": str(SCRIPT_PATH).replace("\\", "/"),
        "script_sha256": sha(SCRIPT_PATH),
    },
    "integrated_checker_sources": CELLS["checker_sources"],
    "blocks": [
        {
            "id": block["id"],
            "source": block["source_file"],
            "sha256": block["source_sha256"],
            "stage": block["stage"],
            "p": block["p"], "q": block["q"],
            "H": block["H"], "M": block["M"], "T": block["T"],
            "rectangle": [block["aStart"], block["aCount"], block["bStart"], block["bCount"]],
            "cells": block["cell_count"],
            "signed_rows": block["signed_rows"],
        }
        for block in CELLS["blocks"]
    ],
    "combination_audit": {
        "path": str(AUDIT_PATH).replace("\\", "/"),
        "sha256": sha(AUDIT_PATH),
    },
    "checker_copied": False,
    "formula": CELLS["bounds_formula"],
    "scope_boundary": "numeric pilot only; no full table and no Lean/Git run",
}
(EXP / "SOURCE_MAP.json").write_text(json.dumps(source_map, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

static = {
    "status": "independent_static_checks_passed_uncompiled",
    "blocks": len(CELLS["blocks"]),
    "cells": feature_counts["cells"],
    "signed_rows": feature_counts["signed_rows"],
    "feature_counts": dict(feature_counts),
    "fully_qualified_block_prints": 4,
    "combination_audit_prints": 1,
    "checker_copied": False,
    "all_formula_rechecks": True,
    "all_source_mappings_reparsed": True,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
(EXP / "static-checks-independent.json").write_text(json.dumps(static, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

frozen_files = {}
for path in sorted(EXP.rglob("*")):
    if path.is_file() and path.name != "FREEZE.json":
        frozen_files[str(path.relative_to(EXP)).replace("\\", "/")] = {
            "bytes": path.stat().st_size,
            "sha256": sha(path),
        }
freeze = {
    "status": "frozen_uncompiled_numeric_pilots",
    "scope": "four closed CRT blockCheck candidates plus reused-proof combination audit",
    "probe_result_sha256": sha(RESULT_PATH),
    "integrated_checker_source_sha256": {name: item["sha256"] for name, item in CELLS["checker_sources"].items()},
    "candidate_source_map_sha256": sha(EXP / "SOURCE_MAP.json"),
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
    "files": frozen_files,
}
(EXP / "FREEZE.json").write_text(json.dumps(freeze, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps(static, ensure_ascii=False))
