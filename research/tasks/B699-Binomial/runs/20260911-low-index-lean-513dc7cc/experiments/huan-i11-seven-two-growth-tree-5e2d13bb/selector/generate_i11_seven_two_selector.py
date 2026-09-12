from __future__ import annotations
import hashlib
import json
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[2]
INPUT = RUN / "experiments/huan-i11-approximation-bridge-plan-5e2d13bb/short-power-bases.json"
SOURCE_MAP_INPUT = RUN / "experiments/huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json"
OUT = EXP / "candidate/lean/I11Numeric"
OUT.mkdir(parents=True, exist_ok=True)

Z = 17498099772305953
M = 285
H = 15359
P_N = 18000
P_ALPHA = 940
Q_N = 36000
Q_ALPHA = 670
Z_BASIS_EXPONENT = 256
Z_LOWER_BITS = 13813
Z_UPPER_BITS = 13814
SEVEN_BITS = 11499
SEVEN_EXPONENT = 4096

NAMESPACE = "Math.B699.I11SevenTwoNumeric"
BASIS_IMPORT = "Mathlib.Data.Nat.Basic"
SHORT_IMPORT = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds"
BASIS_FUTURE = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/I11SevenTwoBasis.lean"
SELECTOR_FUTURE = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/I11SevenTwoSelector.lean"

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

basis_text = f"""import {BASIS_IMPORT}

/-! Uncompiled (7,2) selector candidate. Short basis decisions only; no
large J or selector conclusion is kernel-reduced directly here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace {NAMESPACE}

def certificateZ : ℕ := {Z}
def selectorM : ℕ := {M}
def heightH : ℕ := {H}

theorem basis_two_lower : (2 : ℕ) ^ {Z_LOWER_BITS} ≤ certificateZ ^ {Z_BASIS_EXPONENT} := by
  set_option exponentiation.threshold {Z_UPPER_BITS} in
    decide

theorem basis_two_upper : certificateZ ^ {Z_BASIS_EXPONENT} ≤ (2 : ℕ) ^ {Z_UPPER_BITS} := by
  set_option exponentiation.threshold {Z_UPPER_BITS} in
    decide

theorem basis_seven : (7 : ℕ) ^ {SEVEN_EXPONENT} ≤ (2 : ℕ) ^ {SEVEN_BITS} := by
  set_option exponentiation.threshold {SEVEN_BITS} in
    decide

/-- The q=2 short basis is the small equality used by the selector bridge. -/
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by
  decide

end {NAMESPACE}

#print axioms {NAMESPACE}.basis_two_lower
#print axioms {NAMESPACE}.basis_two_upper
#print axioms {NAMESPACE}.basis_seven
#print axioms {NAMESPACE}.basis_two_unit
"""

selector_text = f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.I11SevenTwoBasis
import {SHORT_IMPORT}

/-! Uncompiled (7,2) selector candidate. The three p/q conditions are derived
from ShortPowerBounds; no direct J=7^18000 or J=2^36000 reduction is used.
The qRate^285 > 48 certificate is intentionally out of scope. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace {NAMESPACE}
open Math.B699.DiscretePadeSelector

private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _

theorem predecessor : certificateZ ^ ({M} - 1) ≤ 4 * (2 : ℕ) ^ {H} := by
  have h := base_from_short_basis certificateZ 1 1 284 15361 {Z_UPPER_BITS} {Z_BASIS_EXPONENT}
    (by decide)
    (by
      set_option exponentiation.threshold {Z_UPPER_BITS} in
        exact basis_two_upper)
    (by decide)
  have h284 : certificateZ ^ 284 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ ({M} - 1) = certificateZ ^ 284 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h284
    _ = 4 * (2 : ℕ) ^ {H} := two_pow_add_two {H}

theorem p_conditions : (7 : ℕ) ^ {P_N} ≤ certificateZ ^ {P_ALPHA} ∧
    ((7 : ℕ) ^ {P_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {P_ALPHA} ∧
    (4 : ℕ) ^ {P_ALPHA} * (7 ^ {P_N}) ^ ({M} + 1) ≤
      certificateZ ^ ({P_ALPHA} * {M}) := by
  exact conditions_from_short_bases 7 certificateZ {P_N} {P_ALPHA} {M} {H}
    {SEVEN_BITS} {SEVEN_EXPONENT} {Z_LOWER_BITS} {Z_BASIS_EXPONENT}
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold {SEVEN_BITS} in
        exact basis_seven)
    (by
      set_option exponentiation.threshold {Z_UPPER_BITS} in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (2 : ℕ) ^ {Q_N} ≤ certificateZ ^ {Q_ALPHA} ∧
    ((2 : ℕ) ^ {Q_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {Q_ALPHA} ∧
    (4 : ℕ) ^ {Q_ALPHA} * (2 ^ {Q_N}) ^ ({M} + 1) ≤
      certificateZ ^ ({Q_ALPHA} * {M}) := by
  exact conditions_from_short_bases 2 certificateZ {Q_N} {Q_ALPHA} {M} {H}
    1 1 {Z_LOWER_BITS} {Z_BASIS_EXPONENT}
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1 in
        exact basis_two_unit)
    (by
      set_option exponentiation.threshold {Z_UPPER_BITS} in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (7 : ℕ) ^ {P_N} ≤ certificateZ ^ {P_ALPHA} := p_conditions.1
theorem p_base : ((7 : ℕ) ^ {P_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {P_ALPHA} :=
  p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ {P_ALPHA} * (7 ^ {P_N}) ^ ({M} + 1) ≤
    certificateZ ^ ({P_ALPHA} * {M}) := p_conditions.2.2

theorem q_rate : (2 : ℕ) ^ {Q_N} ≤ certificateZ ^ {Q_ALPHA} := q_conditions.1
theorem q_base : ((2 : ℕ) ^ {Q_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {Q_ALPHA} :=
  q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ {Q_ALPHA} * (2 ^ {Q_N}) ^ ({M} + 1) ≤
    certificateZ ^ ({Q_ALPHA} * {M}) := q_conditions.2.2

end {NAMESPACE}

#print axioms {NAMESPACE}.predecessor
#print axioms {NAMESPACE}.p_conditions
#print axioms {NAMESPACE}.q_conditions
#print axioms {NAMESPACE}.p_rate
#print axioms {NAMESPACE}.p_base
#print axioms {NAMESPACE}.p_lookahead
#print axioms {NAMESPACE}.q_rate
#print axioms {NAMESPACE}.q_base
#print axioms {NAMESPACE}.q_lookahead
"""

audit_text = f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.I11SevenTwoSelector

namespace {NAMESPACE}

#print axioms {NAMESPACE}.basis_two_lower
#print axioms {NAMESPACE}.basis_two_upper
#print axioms {NAMESPACE}.basis_seven
#print axioms {NAMESPACE}.basis_two_unit
#print axioms {NAMESPACE}.predecessor
#print axioms {NAMESPACE}.p_conditions
#print axioms {NAMESPACE}.p_rate
#print axioms {NAMESPACE}.p_base
#print axioms {NAMESPACE}.p_lookahead
#print axioms {NAMESPACE}.q_conditions
#print axioms {NAMESPACE}.q_rate
#print axioms {NAMESPACE}.q_base
#print axioms {NAMESPACE}.q_lookahead

end {NAMESPACE}
"""

for name, content in (
    ("I11SevenTwoBasis.lean", basis_text),
    ("I11SevenTwoSelector.lean", selector_text),
    ("I11SevenTwoAudit.lean", audit_text),
):
    (OUT / name).write_text(content, encoding="utf-8")

basis_source = OUT / "I11SevenTwoBasis.lean"
selector_source = OUT / "I11SevenTwoSelector.lean"
audit_source = OUT / "I11SevenTwoAudit.lean"

margins = {
    "p_rate": Z_LOWER_BITS * P_ALPHA - 256 * P_N,
    "p_base": H * P_ALPHA - P_N * M,
    "p_lookahead": Z_LOWER_BITS * P_ALPHA * M - (2 * P_ALPHA * 256 + 256 * P_N * (M + 1)),
    "q_rate": Z_LOWER_BITS * 1 * Q_ALPHA - 1 * 256 * Q_N,
    "q_base": H * Q_ALPHA - Q_N * M,
    "q_lookahead": Z_LOWER_BITS * Q_ALPHA * M -
        (2 * Q_ALPHA * 256 + 256 * Q_N * (M + 1)),
    "predecessor_base": 256 * 15361 - Z_UPPER_BITS * 284,
}
numeric = {
    "status": "independent_python_short_basis_check",
    "source": str(INPUT).replace("\\", "/"),
    "source_sha256": sha(INPUT),
    "source_map_sha256": sha(SOURCE_MAP_INPUT),
    "Z": Z,
    "M": M,
    "H": H,
    "Y0": "2^15359",
    "short_bases": {
        "2^13813_le_Z^256": 2**Z_LOWER_BITS <= Z**256,
        "Z^256_le_2^13814": Z**256 <= 2**Z_UPPER_BITS,
        "7^4096_le_2^11499": 7**SEVEN_EXPONENT <= 2**SEVEN_BITS,
        "2^15361_eq_4_times_2^15359": 2**15361 == 4 * 2**H,
        "Z^284_le_4_times_Y0": Z**284 <= 4 * 2**H,
    },
    "selector_targets": {
        "p": {"J": "7^18000", "N": P_N, "alpha": P_ALPHA},
        "q": {"J": "2^36000", "N": Q_N, "alpha": Q_ALPHA},
    },
    "exponent_margins": margins,
    "direct_large_selector_power_evaluation": False,
    "q_rate_power_gt_48_certificate": "deferred",
}
(EXP / "numeric-audit.json").write_text(json.dumps(numeric, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

plan = {
    "schema_version": 1,
    "status": "generated_uncompiled_candidate",
    "kind": "i11_seven_two_selector",
    "namespace": NAMESPACE,
    "parameters": {
        "Z": Z, "M": M, "H": H, "Y0": "2^15359",
        "p": {"N": P_N, "alpha": P_ALPHA, "short": {"a": SEVEN_BITS, "b": SEVEN_EXPONENT, "u": Z_LOWER_BITS, "v": 256}},
        "q": {"N": Q_N, "alpha": Q_ALPHA, "short": {"a": 1, "b": 1, "u": Z_LOWER_BITS, "v": 256}},
    },
    "short_basis_source": {
        "path": str(INPUT).replace("\\", "/"),
        "sha256": sha(INPUT),
        "known_row": "p=7,q=2,c=9,d=5",
    },
    "formula": "conditions_from_short_bases and base_from_short_basis",
    "local_thresholds": [1, SEVEN_BITS, Z_UPPER_BITS],
    "files": {
        "I11SevenTwoBasis.lean": {"future_target": BASIS_FUTURE, "sha256": sha(basis_source)},
        "I11SevenTwoSelector.lean": {"future_target": SELECTOR_FUTURE, "sha256": sha(selector_source)},
        "I11SevenTwoAudit.lean": {"future_target": "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/I11SevenTwoAudit.lean", "sha256": sha(audit_source)},
    },
    "audit_entries": 13,
    "q_rate_power_gt_48_included": False,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
(EXP / "generation-plan.json").write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
(EXP / "README.md").write_text(f"""# i11 (7,2) selector candidate

固定参数为 Z={Z}、M={M}、Y0=2^15359。候选使用已冻结的 short-power-bases 数据，并将 Z^256 的上下界作为短基；前驱由 Z^284 ≤ 2^15361 = 4·2^15359 得到。

p 端使用 J=7^18000、alpha=940、短基 7^4096≤2^11499 与 2^13813≤Z^256。q 端使用 J=2^36000、alpha=670、短基 2^1≤2^1 与 2^13813≤Z^256。六条 rate/base/lookahead 由 conditions_from_short_bases 生成；未包含 qRate^285 > 48 证书。

大选择器幂不直接规约。局部 exponentiation.threshold 只用于 11499、13814 等短基；前驱的 2^15361 改写使用 two_pow_add_two，避免直接展开为巨大选择器幂。

数值核对、输入哈希和指数余量见 numeric-audit.json。候选文件位于 candidate/lean/I11Numeric/，未运行 Lean/Git。
""", encoding="utf-8")
print(json.dumps({"status": plan["status"], "basis_sha256": sha(basis_source), "selector_sha256": sha(selector_source), "audit_sha256": sha(audit_source), "margins": margins}, ensure_ascii=False))
