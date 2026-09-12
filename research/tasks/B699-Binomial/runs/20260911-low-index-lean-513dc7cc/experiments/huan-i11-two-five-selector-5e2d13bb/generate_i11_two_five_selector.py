from __future__ import annotations
import hashlib
import json
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
INPUT = RUN / "experiments/huan-i11-approximation-bridge-plan-5e2d13bb/short-power-bases.json"
SOURCE_MAP_INPUT = RUN / "experiments/huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json"
OUT = EXP / "candidate/lean/I11Numeric"
OUT.mkdir(parents=True, exist_ok=True)

Z = 115572769905797
M = 329
H = 15359
P_N = 35000
P_ALPHA = 752
Q_N = 15000
Q_ALPHA = 748
Z_BASIS_EXPONENT = 256
Z_LOWER_BITS = 11959
Z_UPPER_BITS = 11960
FIVE_BITS = 9511
FIVE_EXPONENT = 4096

NAMESPACE = "Math.B699.I11TwoFiveNumeric"
BASIS_IMPORT = "Mathlib.Data.Nat.Basic"
SHORT_IMPORT = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds"
BASIS_FUTURE = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/I11TwoFiveBasis.lean"
SELECTOR_FUTURE = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/I11TwoFiveSelector.lean"

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

basis_text = f"""import {BASIS_IMPORT}

/-! Uncompiled (2,5) selector candidate. Short basis decisions only; no
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

theorem basis_five : (5 : ℕ) ^ {FIVE_EXPONENT} ≤ (2 : ℕ) ^ {FIVE_BITS} := by
  set_option exponentiation.threshold {FIVE_BITS} in
    decide

/-- The p=2 short basis is the small equality used by the selector bridge. -/
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by
  decide

end {NAMESPACE}

#print axioms {NAMESPACE}.basis_two_lower
#print axioms {NAMESPACE}.basis_two_upper
#print axioms {NAMESPACE}.basis_five
#print axioms {NAMESPACE}.basis_two_unit
"""

selector_text = f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.I11TwoFiveBasis
import {SHORT_IMPORT}

/-! Uncompiled (2,5) selector candidate. The three p/q conditions are derived
from ShortPowerBounds; no direct J=2^35000 or J=5^15000 reduction is used.
The qRate^329 > 48 certificate is intentionally out of scope. -/
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
  have h := base_from_short_basis certificateZ 1 1 328 15361 {Z_UPPER_BITS} {Z_BASIS_EXPONENT}
    (by decide)
    (by
      set_option exponentiation.threshold {Z_UPPER_BITS} in
        exact basis_two_upper)
    (by decide)
  have h328 : certificateZ ^ 328 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ ({M} - 1) = certificateZ ^ 328 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h328
    _ = 4 * (2 : ℕ) ^ {H} := two_pow_add_two {H}

theorem p_conditions : (2 : ℕ) ^ {P_N} ≤ certificateZ ^ {P_ALPHA} ∧
    ((2 : ℕ) ^ {P_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {P_ALPHA} ∧
    (4 : ℕ) ^ {P_ALPHA} * (2 ^ {P_N}) ^ ({M} + 1) ≤
      certificateZ ^ ({P_ALPHA} * {M}) := by
  exact conditions_from_short_bases 2 certificateZ {P_N} {P_ALPHA} {M} {H}
    1 1 {Z_LOWER_BITS} {Z_BASIS_EXPONENT}
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1 in
        exact basis_two_unit)
    (by
      set_option exponentiation.threshold {Z_UPPER_BITS} in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (5 : ℕ) ^ {Q_N} ≤ certificateZ ^ {Q_ALPHA} ∧
    ((5 : ℕ) ^ {Q_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {Q_ALPHA} ∧
    (4 : ℕ) ^ {Q_ALPHA} * (5 ^ {Q_N}) ^ ({M} + 1) ≤
      certificateZ ^ ({Q_ALPHA} * {M}) := by
  exact conditions_from_short_bases 5 certificateZ {Q_N} {Q_ALPHA} {M} {H}
    {FIVE_BITS} {FIVE_EXPONENT} {Z_LOWER_BITS} {Z_BASIS_EXPONENT}
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold {FIVE_BITS} in
        exact basis_five)
    (by
      set_option exponentiation.threshold {Z_UPPER_BITS} in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (2 : ℕ) ^ {P_N} ≤ certificateZ ^ {P_ALPHA} := p_conditions.1
theorem p_base : ((2 : ℕ) ^ {P_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {P_ALPHA} :=
  p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ {P_ALPHA} * (2 ^ {P_N}) ^ ({M} + 1) ≤
    certificateZ ^ ({P_ALPHA} * {M}) := p_conditions.2.2

theorem q_rate : (5 : ℕ) ^ {Q_N} ≤ certificateZ ^ {Q_ALPHA} := q_conditions.1
theorem q_base : ((5 : ℕ) ^ {Q_N}) ^ {M} ≤ ((2 : ℕ) ^ {H}) ^ {Q_ALPHA} :=
  q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ {Q_ALPHA} * (5 ^ {Q_N}) ^ ({M} + 1) ≤
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

audit_text = f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.I11TwoFiveSelector

namespace {NAMESPACE}

#print axioms {NAMESPACE}.basis_two_lower
#print axioms {NAMESPACE}.basis_two_upper
#print axioms {NAMESPACE}.basis_five
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
    ("I11TwoFiveBasis.lean", basis_text),
    ("I11TwoFiveSelector.lean", selector_text),
    ("I11TwoFiveAudit.lean", audit_text),
):
    (OUT / name).write_text(content, encoding="utf-8")

basis_source = OUT / "I11TwoFiveBasis.lean"
selector_source = OUT / "I11TwoFiveSelector.lean"
audit_source = OUT / "I11TwoFiveAudit.lean"

margins = {
    "p_rate": Z_LOWER_BITS * P_ALPHA - 256 * P_N,
    "p_base": H * P_ALPHA - P_N * M,
    "p_lookahead": Z_LOWER_BITS * P_ALPHA * M - (2 * P_ALPHA * 256 + 256 * P_N * (M + 1)),
    "q_rate": Z_LOWER_BITS * FIVE_EXPONENT * Q_ALPHA - FIVE_BITS * 256 * Q_N,
    "q_base": FIVE_EXPONENT * H * Q_ALPHA - FIVE_BITS * Q_N * M,
    "q_lookahead": Z_LOWER_BITS * FIVE_EXPONENT * Q_ALPHA * M -
        (2 * Q_ALPHA * FIVE_EXPONENT * 256 + FIVE_BITS * 256 * Q_N * (M + 1)),
    "predecessor_base": 256 * 15361 - Z_UPPER_BITS * 328,
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
        "2^11959_le_Z^256": 2**Z_LOWER_BITS <= Z**256,
        "Z^256_le_2^11960": Z**256 <= 2**Z_UPPER_BITS,
        "5^4096_le_2^9511": 5**FIVE_EXPONENT <= 2**FIVE_BITS,
        "2^15361_eq_4_times_2^15359": 2**15361 == 4 * 2**H,
        "Z^328_le_4_times_Y0": Z**328 <= 4 * 2**H,
    },
    "selector_targets": {
        "p": {"J": "2^35000", "N": P_N, "alpha": P_ALPHA},
        "q": {"J": "5^15000", "N": Q_N, "alpha": Q_ALPHA},
    },
    "exponent_margins": margins,
    "direct_large_selector_power_evaluation": False,
    "q_rate_power_gt_48_certificate": "deferred",
}
(EXP / "numeric-audit.json").write_text(json.dumps(numeric, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

plan = {
    "schema_version": 1,
    "status": "generated_uncompiled_candidate",
    "kind": "i11_two_five_selector",
    "namespace": NAMESPACE,
    "parameters": {
        "Z": Z, "M": M, "H": H, "Y0": "2^15359",
        "p": {"N": P_N, "alpha": P_ALPHA, "short": {"a": 1, "b": 1, "u": Z_LOWER_BITS, "v": 256}},
        "q": {"N": Q_N, "alpha": Q_ALPHA, "short": {"a": FIVE_BITS, "b": FIVE_EXPONENT, "u": Z_LOWER_BITS, "v": 256}},
    },
    "short_basis_source": {
        "path": str(INPUT).replace("\\", "/"),
        "sha256": sha(INPUT),
        "known_row": "p=2,q=5,c=5,d=4",
    },
    "formula": "conditions_from_short_bases and base_from_short_basis",
    "local_thresholds": [1, FIVE_BITS, Z_UPPER_BITS],
    "files": {
        "I11TwoFiveBasis.lean": {"future_target": BASIS_FUTURE, "sha256": sha(basis_source)},
        "I11TwoFiveSelector.lean": {"future_target": SELECTOR_FUTURE, "sha256": sha(selector_source)},
        "I11TwoFiveAudit.lean": {"future_target": "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/I11TwoFiveAudit.lean", "sha256": sha(audit_source)},
    },
    "audit_entries": 13,
    "q_rate_power_gt_48_included": False,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
(EXP / "generation-plan.json").write_text(json.dumps(plan, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
(EXP / "README.md").write_text(f"""# i11 (2,5) selector candidate

固定参数为 Z={Z}、M={M}、Y0=2^15359。候选使用已冻结的 short-power-bases 数据，并将 Z^256 的上下界作为短基；前驱由 Z^328 ≤ 2^15361 = 4·2^15359 得到。

p 端使用 J=2^35000、alpha=752、短基 2^1≤2^1 与 2^11959≤Z^256。q 端使用 J=5^15000、alpha=748、短基 5^4096≤2^9511 与 2^11959≤Z^256。六条 rate/base/lookahead 由 conditions_from_short_bases 生成；未包含 qRate^329 > 48 证书。

大选择器幂不直接规约。局部 exponentiation.threshold 只用于 9511、11960 等短基；前驱的 2^15361 改写使用 two_pow_add_two，避免直接展开为巨大选择器幂。

数值核对、输入哈希和指数余量见 numeric-audit.json。候选文件位于 candidate/lean/I11Numeric/，未运行 Lean/Git。
""", encoding="utf-8")
print(json.dumps({"status": plan["status"], "basis_sha256": sha(basis_source), "selector_sha256": sha(selector_source), "audit_sha256": sha(audit_source), "margins": margins}, ensure_ascii=False))
