import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311Edge.ContentConstants
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13C311QE.Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.RatBounds

/-! UNCOMPILED source-aligned fixedc7d5 edge candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311Edge

open Math.B699.PadeActualRows Math.B699.PadeGrowthNormalization
open Math.B699.I13C311QE Math.B699.I13G75Uniform

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (243 : ℚ) ^ (5 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (243 : ℚ) ^ (2 * m + rowDelta row - 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval, one_pow, mul_one] using actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 187 ≤ m) (row : Bool) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤
      150 * ((243 : ℚ) ^ 5 * qBase) ^ m := by
  have hCB : 0 < contentBase := contentBase_pos
  have hB : 0 ≤ qBase := fixed_bases_pos.2.2.1.le
  have hQ : |qEval m row| ≤ (1 / 2 : ℚ) * qBase ^ m :=
    Math.B699.I13C311QE.actual_q_bound (rowDelta row) m (rowDelta_cases row) (by omega)
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) ((1 / 300 : ℚ) * contentBase ^ m)
    ((243 : ℚ) ^ (5 * m - rowDelta row)) (qRow m row) (qEval m row)
    ((1 / 2 : ℚ) * qBase ^ m) (by positivity) (content_common_lower m hm row)
    (by positivity) (q_content_identity m (by omega) row) hQ
  have hs : (1 / 300 : ℚ) * contentBase ^ m * |(qRow m row : ℚ)| ≤
      (1 / 2 : ℚ) * ((243 : ℚ) ^ 5 * qBase) ^ m := by
    calc
      _ ≤ (243 : ℚ) ^ (5 * m - rowDelta row) * ((1 / 2 : ℚ) * qBase ^ m) := h
      _ ≤ (243 : ℚ) ^ (5 * m) * ((1 / 2 : ℚ) * qBase ^ m) :=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 243) (Nat.sub_le _ _)) (by positivity)
      _ = (1 / 2 : ℚ) * ((243 : ℚ) ^ 5 * qBase) ^ m := by
        rw [mul_pow, ← pow_mul]
        ring
  nlinarith only [hs]

/-- delta0 retains its missing power of243: after multiplyingG by300,
11/100 becomes33, and33<=243 absorbs the factor without weakening the seed. -/
theorem actual_e_content_zero (m : ℕ) (hm : 187 ≤ m) :
    contentBase ^ m * |(rowError m true : ℚ)| ≤ ((243 : ℚ) ^ 2 * eBase) ^ m := by
  have hCB : 0 < contentBase := contentBase_pos
  have hRpos : 0 < infiniteRate := infinite_rate_pos
  have hB : 0 < eBase := fixed_bases_pos.2.2.2
  have hE : |eEval m true| ≤ (11 / 100 : ℚ) * eBase ^ m := by
    simpa only [eEval, rowDelta_true] using Math.B699.I13C311QE.actual_e_zero_bound m (by omega)
  have hid : content m true * (rowError m true : ℚ) =
      (243 : ℚ) ^ (2 * m - 1) * eEval m true := by
    simpa only [rowDelta_true, Nat.add_zero] using e_content_identity m (by omega) true
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m true) ((1 / 300 : ℚ) * contentBase ^ m)
    ((243 : ℚ) ^ (2 * m - 1)) (rowError m true) (eEval m true)
    ((11 / 100 : ℚ) * eBase ^ m) (by positivity) (content_zero_lower m hm)
    (by positivity) hid hE
  have hs : contentBase ^ m * |(rowError m true : ℚ)| ≤
      33 * ((243 : ℚ) ^ (2 * m - 1) * eBase ^ m) := by nlinarith only [h]
  have hp : (243 : ℚ) * (243 : ℚ) ^ (2 * m - 1) = (243 : ℚ) ^ (2 * m) := by
    calc
      _ = (243 : ℚ) ^ (2 * m - 1 + 1) := (pow_succ' _ _).symm
      _ = (243 : ℚ) ^ (2 * m) := by rw [Nat.sub_add_cancel (by omega : 1 ≤ 2 * m)]
  calc
    _ ≤ 33 * ((243 : ℚ) ^ (2 * m - 1) * eBase ^ m) := hs
    _ ≤ 243 * ((243 : ℚ) ^ (2 * m - 1) * eBase ^ m) :=
      mul_le_mul_of_nonneg_right (by norm_num) (by positivity)
    _ = ((243 : ℚ) ^ 2 * eBase) ^ m := by
      rw [← mul_assoc, hp, mul_pow, ← pow_mul]

/-- delta1 uses its stronger5/8 coefficient and fullR rate. -/
theorem actual_e_content_one (m : ℕ) (hm : 187 ≤ m) :
    contentBase ^ m * |(rowError m false : ℚ)| ≤ ((243 : ℚ) ^ 2 * eBase) ^ m := by
  have hCB : 0 < contentBase := contentBase_pos
  have hRpos : 0 < infiniteRate := infinite_rate_pos
  have hB : 0 < eBase := fixed_bases_pos.2.2.2
  have hE : |eEval m false| ≤ (1 / 2 : ℚ) * eBase ^ m := by
    simpa only [eEval, rowDelta_false] using Math.B699.I13C311QE.actual_e_one_bound m (by omega)
  have hid : content m false * (rowError m false : ℚ) =
      (243 : ℚ) ^ (2 * m) * eEval m false := by
    simpa only [rowDelta_false, Nat.add_sub_cancel] using e_content_identity m (by omega) false
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m false) ((5 / 8 : ℚ) * infiniteRate ^ m) ((243 : ℚ) ^ (2 * m))
    (rowError m false) (eEval m false) ((1 / 2 : ℚ) * eBase ^ m)
    (by positivity) (content_one_lower m (by omega)) (by positivity) hid hE
  have hs : (5 / 8 : ℚ) * infiniteRate ^ m * |(rowError m false : ℚ)| ≤
      (1 / 2 : ℚ) * ((243 : ℚ) ^ 2 * eBase) ^ m := by
    calc
      _ ≤ (243 : ℚ) ^ (2 * m) * ((1 / 2 : ℚ) * eBase ^ m) := h
      _ = (1 / 2 : ℚ) * ((243 : ℚ) ^ 2 * eBase) ^ m := by rw [mul_pow, ← pow_mul]; ring
  have hcap : infiniteRate ^ m * |(rowError m false : ℚ)| ≤
      (4 / 5 : ℚ) * ((243 : ℚ) ^ 2 * eBase) ^ m := by nlinarith only [hs]
  calc
    _ ≤ infiniteRate ^ m * |(rowError m false : ℚ)| := mul_le_mul_of_nonneg_right
      (pow_le_pow_left₀ contentBase_pos.le contentBase_le_R m) (abs_nonneg _)
    _ ≤ (4 / 5 : ℚ) * ((243 : ℚ) ^ 2 * eBase) ^ m := hcap
    _ ≤ ((243 : ℚ) ^ 2 * eBase) ^ m := by
      have hp : 0 ≤ ((243 : ℚ) ^ 2 * eBase) ^ m := by positivity
      nlinarith only [hp]

theorem actual_e_content_bound (m : ℕ) (hm : 187 ≤ m) (row : Bool) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((243 : ℚ) ^ 2 * eBase) ^ m := by
  cases row with
  | false => exact actual_e_content_one m hm
  | true => exact actual_e_content_zero m hm

end Math.B699.I13C311Edge
#print axioms Math.B699.I13C311Edge.q_content_identity
#print axioms Math.B699.I13C311Edge.e_content_identity
#print axioms Math.B699.I13C311Edge.actual_q_content_bound
#print axioms Math.B699.I13C311Edge.actual_e_content_zero
#print axioms Math.B699.I13C311Edge.actual_e_content_one
#print axioms Math.B699.I13C311Edge.actual_e_content_bound
