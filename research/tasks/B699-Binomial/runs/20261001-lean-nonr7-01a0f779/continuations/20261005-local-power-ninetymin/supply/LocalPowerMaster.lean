module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerThetaInterval
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerRootWidth
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerFiniteSums
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerMaster20261005

theorem theta_root_increment_bound {x : ℝ} {k : Nat} (hx : 2 ≤ x) (hk : 2 ≤ k) :
    Chebyshev.theta ((x + x / 4095) ^ ((1 : ℝ) / k)) -
        Chebyshev.theta (x ^ ((1 : ℝ) / k)) ≤
      (Real.sqrt x * Real.log (x + x / 4095) / 4095) * (1 / (k : ℝ) ^ 2) +
        Real.log (x + x / 4095) * (1 / (k : ℝ)) := by
  have hx0 : (0 : ℝ) ≤ x := by linarith
  have hxz : x ≤ x + x / 4095 := le_add_of_nonneg_right (div_nonneg hx0 (by norm_num))
  have hz1 : (1 : ℝ) ≤ x + x / 4095 := by linarith
  have hz0 : (0 : ℝ) < x + x / 4095 := by linarith
  have hkR : (0 : ℝ) < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have ha : (1 : ℝ) ≤ x ^ ((1 : ℝ) / k) := Real.one_le_rpow (by linarith) (by positivity)
  have hab := Real.rpow_le_rpow hx0 hxz (by positivity : (0 : ℝ) ≤ (1 : ℝ) / k)
  have ht := B699LocalPowerTheta20261005.theta_increment_bound ha hab
  have hlog : Real.log ((x + x / 4095) ^ ((1 : ℝ) / k)) =
      Real.log (x + x / 4095) / (k : ℝ) := by
    rw [Real.log_rpow hz0]
    ring
  rw [hlog] at ht
  have hL : (0 : ℝ) ≤ Real.log (x + x / 4095) := Real.log_nonneg hz1
  have hw := B699LocalPowerWidth20261005.local_root_width hx0 hk
  have hroot := B699LocalPowerSums20261005.root_le_sqrt (by linarith : 1 ≤ x) hk
  have hwidth : (x + x / 4095) ^ ((1 : ℝ) / k) - x ^ ((1 : ℝ) / k) ≤
      Real.sqrt x / (4095 * (k : ℝ)) :=
    hw.trans (div_le_div_of_nonneg_right hroot (by positivity))
  calc
    _ ≤ ((x + x / 4095) ^ ((1 : ℝ) / k) - x ^ ((1 : ℝ) / k) + 1) *
        (Real.log (x + x / 4095) / (k : ℝ)) := ht
    _ ≤ (Real.sqrt x / (4095 * (k : ℝ)) + 1) *
        (Real.log (x + x / 4095) / (k : ℝ)) :=
      mul_le_mul_of_nonneg_right (by linarith only [hwidth]) (div_nonneg hL hkR.le)
    _ = _ := by
      field_simp [ne_of_gt hkR]
      <;> ring

/-- A genuine elementary bound on the increment of the actual prime-power error. -/
theorem local_power_increment_bound_of_two {x : ℝ} (hx : 2 ≤ x) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤
      Real.sqrt x * Real.log (x + x / 4095) / 4095 +
        Real.log (x + x / 4095) ^ 2 / (2 * Real.log 2) := by
  let z := x + x / 4095
  let K := ⌊Real.log z / Real.log 2⌋₊
  have hx0 : (0 : ℝ) ≤ x := by linarith
  have hxz : x ≤ z := le_add_of_nonneg_right (div_nonneg hx0 (by norm_num))
  have hz1 : (1 : ℝ) ≤ z := by linarith
  have hL : (0 : ℝ) ≤ Real.log z := Real.log_nonneg hz1
  have hc : (0 : ℝ) ≤ Real.sqrt x * Real.log z / 4095 := by positivity
  have hs := B699LocalPowerSums20261005.reciprocal_square_sum_le_one K
  have hh := B699LocalPowerSums20261005.reciprocal_sum_le_half K
  have hfloor : (K : ℝ) ≤ Real.log z / Real.log 2 :=
    Nat.floor_le (div_nonneg hL (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le)
  have hhalf : (K : ℝ) / 2 ≤ Real.log z / (2 * Real.log 2) := by
    calc
      (K : ℝ) / 2 ≤ (Real.log z / Real.log 2) / 2 :=
        div_le_div_of_nonneg_right hfloor (by norm_num)
      _ = _ := by ring
  rw [B699LocalPowerSteps20261005.power_increment_eq_sum hx hxz (le_refl K)]
  calc
    (∑ k ∈ Finset.Icc 2 K,
        (Chebyshev.theta (z ^ ((1 : ℝ) / k)) - Chebyshev.theta (x ^ ((1 : ℝ) / k)))) ≤
        ∑ k ∈ Finset.Icc 2 K,
          ((Real.sqrt x * Real.log z / 4095) * (1 / (k : ℝ) ^ 2) +
            Real.log z * (1 / (k : ℝ))) := by
      apply Finset.sum_le_sum
      intro k hk
      exact theta_root_increment_bound hx (Finset.mem_Icc.mp hk).1
    _ = (Real.sqrt x * Real.log z / 4095) * (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) ^ 2) +
        Real.log z * (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ)) := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
    _ ≤ (Real.sqrt x * Real.log z / 4095) * 1 + Real.log z * ((K : ℝ) / 2) :=
      add_le_add (mul_le_mul_of_nonneg_left hs hc) (mul_le_mul_of_nonneg_left hh hL)
    _ ≤ Real.sqrt x * Real.log z / 4095 + Real.log z *
        (Real.log z / (2 * Real.log 2)) := by
      simpa only [mul_one] using
        add_le_add (le_refl (Real.sqrt x * Real.log z / 4095))
          (mul_le_mul_of_nonneg_left hhalf hL)
    _ = _ := by ring

theorem local_power_increment_bound {x : ℝ} (hx : 100000000 ≤ x) :
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
        (Chebyshev.psi x - Chebyshev.theta x) ≤
      Real.sqrt x * Real.log (x + x / 4095) / 4095 +
        Real.log (x + x / 4095) ^ 2 / (2 * Real.log 2) :=
  local_power_increment_bound_of_two (by linarith)

end B699LocalPowerMaster20261005
#print axioms B699LocalPowerMaster20261005.theta_root_increment_bound
#print axioms B699LocalPowerMaster20261005.local_power_increment_bound_of_two
#print axioms B699LocalPowerMaster20261005.local_power_increment_bound
