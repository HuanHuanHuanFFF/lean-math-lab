module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerMaster
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerMonotonic
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerEndpoint20261005

theorem log_small_endpoint :
    Real.log (100000000 + 100000000 / 4095 : ℝ) ≤ 19 := by
  have hb : (100000000 + 100000000 / 4095 : ℝ) ≤ 2 ^ 27 := by norm_num
  have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 100000000 + 100000000 / 4095) hb
  rw [Real.log_pow] at hl
  norm_num only at hl
  linarith [Real.log_two_lt_d9]

theorem log_tail_endpoint :
    Real.log (14400000000 + 14400000000 / 4095 : ℝ) ≤ 24 := by
  have hb : (14400000000 + 14400000000 / 4095 : ℝ) ≤ 2 ^ 34 := by norm_num
  have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 14400000000 + 14400000000 / 4095) hb
  rw [Real.log_pow] at hl
  norm_num only at hl
  linarith [Real.log_two_lt_d9]

/-- Endpoint hypotheses are discharged below by exact numerical theorems. -/
theorem local_power_increment_le_endpoint {A x S L : ℝ}
    (hA : 16 ≤ A) (hx : A ≤ x) (hS : Real.sqrt A = S)
    (hL0 : 0 ≤ L) (hL : Real.log (A + A / 4095) ≤ L) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤
      x * (L / (4095 * S) + 3 * L ^ 2 / (4 * A)) := by
  let LX := Real.log (x + x / 4095)
  let LA := Real.log (A + A / 4095)
  have hA0 : 0 < A := by linarith
  have hx0 : 0 < x := by linarith
  have hsX : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx0
  have hsA : 0 < Real.sqrt A := Real.sqrt_pos.mpr hA0
  have hLA : 0 ≤ LA := by
    apply Real.log_nonneg
    have hd := div_nonneg hA0.le (by norm_num : (0 : ℝ) ≤ 4095)
    linarith
  have hl2 : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)
  have hr : LX / Real.sqrt x ≤ L / S := by
    calc
      LX / Real.sqrt x ≤ LA / Real.sqrt A :=
        B699LocalPowerMonotonic20261005.log_ratio_le hA hx
      _ ≤ L / Real.sqrt A := div_le_div_of_nonneg_right hL hsA.le
      _ = L / S := by rw [hS]
  have hsq : LX ^ 2 / x ≤ L ^ 2 / A := by
    have hs := B699LocalPowerMonotonic20261005.log_square_ratio_le hA hx
    have hLA2 : LA ^ 2 ≤ L ^ 2 := by dsimp [LA] at *; nlinarith
    exact hs.trans (div_le_div_of_nonneg_right hLA2 hA0.le)
  have hden : (4 / 3 : ℝ) ≤ 2 * Real.log 2 := by linarith [Real.log_two_gt_d9]
  have hsecond : (L ^ 2 / A) / (2 * Real.log 2) ≤ (L ^ 2 / A) / (4 / 3 : ℝ) :=
    div_le_div_of_nonneg_left (div_nonneg (sq_nonneg L) hA0.le) (by norm_num) hden
  have hnorm : LX / Real.sqrt x / 4095 + (LX ^ 2 / x) / (2 * Real.log 2) ≤
      L / (4095 * S) + 3 * L ^ 2 / (4 * A) := by
    calc
      _ ≤ (L / S) / 4095 + (L ^ 2 / A) / (2 * Real.log 2) :=
        add_le_add (div_le_div_of_nonneg_right hr (by norm_num))
          (div_le_div_of_nonneg_right hsq (by positivity))
      _ ≤ (L / S) / 4095 + (L ^ 2 / A) / (4 / 3 : ℝ) :=
        add_le_add (le_refl ((L / S) / 4095)) hsecond
      _ = _ := by ring
  have heq1 : x * (LX / Real.sqrt x / 4095) = Real.sqrt x * LX / 4095 := by
    calc
      _ = (Real.sqrt x * Real.sqrt x) * (LX / Real.sqrt x / 4095) := by
        rw [Real.mul_self_sqrt hx0.le]
      _ = _ := by
        field_simp [ne_of_gt hsX]
        <;> ring
  have heq2 : x * ((LX ^ 2 / x) / (2 * Real.log 2)) = LX ^ 2 / (2 * Real.log 2) := by
    field_simp [ne_of_gt hx0, ne_of_gt hl2]
    <;> ring
  calc
    _ ≤ Real.sqrt x * LX / 4095 + LX ^ 2 / (2 * Real.log 2) :=
      B699LocalPowerMaster20261005.local_power_increment_bound_of_two (by linarith)
    _ = x * (LX / Real.sqrt x / 4095 + (LX ^ 2 / x) / (2 * Real.log 2)) := by
      rw [mul_add, heq1, heq2]
    _ ≤ _ := mul_le_mul_of_nonneg_left hnorm hx0.le

theorem local_power_increment_small {x : ℝ} (hx : 100000000 ≤ x) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000 := by
  have hs : Real.sqrt (100000000 : ℝ) = 10000 :=
    (Real.sqrt_eq_iff_eq_sq (by norm_num) (by norm_num)).mpr (by norm_num)
  have h := local_power_increment_le_endpoint (by norm_num : (16 : ℝ) ≤ 100000000)
    hx hs (by norm_num : (0 : ℝ) ≤ 19) log_small_endpoint
  have hc : (19 / (4095 * 10000) + 3 * 19 ^ 2 / (4 * 100000000) : ℝ) ≤ 1 / 300000 := by
    norm_num
  calc
    _ ≤ _ := h
    _ ≤ x * (1 / 300000) := mul_le_mul_of_nonneg_left hc (by linarith)
    _ = _ := by ring

theorem local_power_increment_tail {x : ℝ} (hx : 14400000000 ≤ x) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 10000000 := by
  have hs : Real.sqrt (14400000000 : ℝ) = 120000 :=
    (Real.sqrt_eq_iff_eq_sq (by norm_num) (by norm_num)).mpr (by norm_num)
  have h := local_power_increment_le_endpoint (by norm_num : (16 : ℝ) ≤ 14400000000)
    hx hs (by norm_num : (0 : ℝ) ≤ 24) log_tail_endpoint
  have hc : (24 / (4095 * 120000) + 3 * 24 ^ 2 / (4 * 14400000000) : ℝ) ≤ 1 / 10000000 := by
    norm_num
  calc
    _ ≤ _ := h
    _ ≤ x * (1 / 10000000) := mul_le_mul_of_nonneg_left hc (by linarith)
    _ = _ := by ring

end B699LocalPowerEndpoint20261005
#print axioms B699LocalPowerEndpoint20261005.log_small_endpoint
#print axioms B699LocalPowerEndpoint20261005.log_tail_endpoint
#print axioms B699LocalPowerEndpoint20261005.local_power_increment_le_endpoint
#print axioms B699LocalPowerEndpoint20261005.local_power_increment_small
#print axioms B699LocalPowerEndpoint20261005.local_power_increment_tail
