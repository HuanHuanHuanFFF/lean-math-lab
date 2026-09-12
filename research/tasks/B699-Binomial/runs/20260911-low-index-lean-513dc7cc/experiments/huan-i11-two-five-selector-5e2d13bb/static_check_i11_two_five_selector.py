from __future__ import annotations
import hashlib
import json
import re
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
INPUT = RUN / "experiments/huan-i11-approximation-bridge-plan-5e2d13bb/short-power-bases.json"
SOURCE_MAP_INPUT = RUN / "experiments/huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json"
BASIS_REF = RUN / "lean/I11Numeric/Basis.lean"
SELECTOR_REF = RUN / "lean/I11Numeric/Selector.lean"
SHORT_REF = RUN / "lean/DiscreteSelector/ShortPowerBounds.lean"
PLAN = json.loads((EXP / "generation-plan.json").read_text(encoding="utf-8"))
NUMERIC = json.loads((EXP / "numeric-audit.json").read_text(encoding="utf-8"))
NS = "Math.B699.I11TwoFiveNumeric"
SRC = EXP / "candidate/lean/I11Numeric"
FILES = {
    "I11TwoFiveBasis.lean": SRC / "I11TwoFiveBasis.lean",
    "I11TwoFiveSelector.lean": SRC / "I11TwoFiveSelector.lean",
    "I11TwoFiveAudit.lean": SRC / "I11TwoFiveAudit.lean",
}

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def text(path: Path) -> str:
    return path.read_text(encoding="utf-8")

assert NUMERIC["source_sha256"] == sha(INPUT)
assert NUMERIC["source_map_sha256"] == sha(SOURCE_MAP_INPUT)
assert NUMERIC["Z"] == 115572769905797
assert NUMERIC["M"] == 329 and NUMERIC["H"] == 15359
assert all(NUMERIC["short_bases"].values())
assert NUMERIC["direct_large_selector_power_evaluation"] is False
assert NUMERIC["q_rate_power_gt_48_certificate"] == "deferred"
assert NUMERIC["exponent_margins"] == {
    "p_rate": 33168,
    "p_base": 34968,
    "p_lookahead": 1567248,
    "q_rate": 117839872,
    "q_base": 120242072,
    "q_lookahead": 678408192,
    "predecessor_base": 9536,
}
assert PLAN["parameters"]["Z"] == NUMERIC["Z"]
assert PLAN["parameters"]["M"] == NUMERIC["M"]
assert PLAN["parameters"]["H"] == NUMERIC["H"]
assert PLAN["parameters"]["p"]["N"] == 35000
assert PLAN["parameters"]["p"]["alpha"] == 752
assert PLAN["parameters"]["q"]["N"] == 15000
assert PLAN["parameters"]["q"]["alpha"] == 748
assert PLAN["q_rate_power_gt_48_included"] is False
assert PLAN["audit_entries"] == 13

source_texts = {}
for name, path in FILES.items():
    assert path.is_file()
    content = text(path)
    source_texts[name] = content
    assert content.count("\n") >= 10
    assert "\\n" not in content
    assert "I11FiveThree" not in content
    assert not re.search(r"\b(native_decide|sorry|admit|axiom)\b", content)
    assert PLAN["files"][name]["sha256"] == sha(path)

basis = source_texts["I11TwoFiveBasis.lean"]
selector = source_texts["I11TwoFiveSelector.lean"]
audit = source_texts["I11TwoFiveAudit.lean"]
assert basis.startswith("import Mathlib.Data.Nat.Basic")
assert "namespace " + NS in basis
assert "def certificateZ : ℕ := 115572769905797" in basis
assert "def selectorM : ℕ := 329" in basis
assert "def heightH : ℕ := 15359" in basis
assert basis.count("set_option exponentiation.threshold 11960 in") == 2
assert "set_option exponentiation.threshold 9511 in" in basis
assert "theorem basis_two_lower" in basis
assert "theorem basis_two_upper" in basis
assert "theorem basis_five" in basis
assert "theorem basis_two_unit" in basis

assert "lean.I11Numeric.I11TwoFiveBasis" in selector
assert "DiscreteSelector.ShortPowerBounds" in selector
assert "private theorem two_pow_add_two" in selector
assert "conditions_from_short_bases 2 certificateZ 35000 752 329 15359" in selector
assert "conditions_from_short_bases 5 certificateZ 15000 748 329 15359" in selector
assert "base_from_short_basis certificateZ 1 1 328 15361 11960 256" in selector
assert "two_pow_add_two 15359" in selector
assert "qRate^329 > 48 certificate is intentionally out of scope" in selector
assert "set_option exponentiation.threshold 35000" not in selector
assert "set_option exponentiation.threshold 15000" not in selector
for name in (
    "predecessor", "p_conditions", "q_conditions",
    "p_rate", "p_base", "p_lookahead",
    "q_rate", "q_base", "q_lookahead",
):
    assert f"theorem {name}" in selector
audit_entries = re.findall(r"#print axioms " + re.escape(NS) + r"\.([A-Za-z0-9_]+)", audit)
assert len(audit_entries) == 13
assert len(set(audit_entries)) == 13
assert set(audit_entries) == {
    "basis_two_lower", "basis_two_upper", "basis_five", "basis_two_unit",
    "predecessor", "p_conditions", "q_conditions",
    "p_rate", "p_base", "p_lookahead",
    "q_rate", "q_base", "q_lookahead",
}

for path in (BASIS_REF, SELECTOR_REF, SHORT_REF):
    assert path.is_file()

static = {
    "status": "independent_static_checks_passed_uncompiled",
    "input_sha256": sha(INPUT),
    "input_bytes": INPUT.stat().st_size,
    "source_map_sha256": sha(SOURCE_MAP_INPUT),
    "reference_sources": {
        "Basis.lean": {"path": str(BASIS_REF).replace("\\", "/"), "sha256": sha(BASIS_REF)},
        "Selector.lean": {"path": str(SELECTOR_REF).replace("\\", "/"), "sha256": sha(SELECTOR_REF)},
        "ShortPowerBounds.lean": {"path": str(SHORT_REF).replace("\\", "/"), "sha256": sha(SHORT_REF)},
    },
    "candidate_line_counts": {name: content.count("\n") + 1 for name, content in source_texts.items()},
    "short_basis_checks": 5,
    "selector_condition_groups": 2,
    "selector_condition_theorems": 6,
    "fully_qualified_axiom_entries": 13,
    "local_thresholds": [1, 9511, 11960],
    "large_selector_power_direct_reduction": False,
    "q_rate_power_gt_48_included": False,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
(EXP / "static-checks-independent.json").write_text(
    json.dumps(static, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
)

source_map = {
    "status": "candidate_source_map",
    "input": {
        "path": str(INPUT).replace("\\", "/"),
        "bytes": INPUT.stat().st_size,
        "sha256": sha(INPUT),
    },
    "frozen_context": {
        "path": str(SOURCE_MAP_INPUT).replace("\\", "/"),
        "sha256": sha(SOURCE_MAP_INPUT),
        "row_binding": "p=2,q=5,c=5,d=4",
    },
    "reference_patterns": {
        "Basis.lean": {"path": str(BASIS_REF).replace("\\", "/"), "sha256": sha(BASIS_REF)},
        "Selector.lean": {"path": str(SELECTOR_REF).replace("\\", "/"), "sha256": sha(SELECTOR_REF)},
        "ShortPowerBounds.lean": {"path": str(SHORT_REF).replace("\\", "/"), "sha256": sha(SHORT_REF)},
    },
    "candidate": {
        name: {
            "path": str(path).replace("\\", "/"),
            "bytes": path.stat().st_size,
            "sha256": sha(path),
            "future_target": PLAN["files"][name]["future_target"],
        }
        for name, path in FILES.items()
    },
    "parameters": PLAN["parameters"],
    "scope_boundary": "candidate only; no Lean/Git; qRate^329 > 48 deferred",
}
(EXP / "SOURCE_MAP.json").write_text(
    json.dumps(source_map, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
)

frozen_files = {}
for path in sorted(EXP.rglob("*")):
    if path.is_file() and path.name != "FREEZE.json":
        frozen_files[str(path.relative_to(EXP)).replace("\\", "/")] = {
            "bytes": path.stat().st_size,
            "sha256": sha(path),
        }
freeze = {
    "status": "frozen_uncompiled_candidate",
    "scope": "i11 (2,5) selector short-basis bridge; predecessor plus p/q rate-base-lookahead",
    "frozen_context_source_map_sha256": sha(SOURCE_MAP_INPUT),
    "candidate_source_map_sha256": sha(EXP / "SOURCE_MAP.json"),
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
    "files": frozen_files,
}
(EXP / "FREEZE.json").write_text(
    json.dumps(freeze, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
)
print(json.dumps(static, ensure_ascii=False))
