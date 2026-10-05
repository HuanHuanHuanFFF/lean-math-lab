module
public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Tactic.FieldSimp
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.Positivity
public import Lean.Elab.Tactic.NormCast
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerSums20261005

/-- The telescoping comparison retains the complete exponent interval. -/
theorem reciprocal_square_sum_le_sub (K : Nat) (hK : 1 ≤ K) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) ^ 2) ≤ 1 - 1 / (K : ℝ) := by
  induction K with
  | zero => omega
  | succ n ih =>
    by_cases hn : n = 0
    · subst n
      norm_num
    · have hn1 : 1 ≤ n := by omega
      have hnR : (0 : ℝ) < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      have hnextR : (0 : ℝ) < (n : ℝ) + 1 := by linarith
      have hstep : 1 / ((n : ℝ) + 1) ^ 2 ≤
          1 / (n : ℝ) - 1 / ((n : ℝ) + 1) := by
        have hden : 0 < (n : ℝ) * ((n : ℝ) + 1) := mul_pos hnR hnextR
        have hc := one_div_le_one_div_of_le hden
          (by nlinarith : (n : ℝ) * ((n : ℝ) + 1) ≤ ((n : ℝ) + 1) ^ 2)
        have heq : 1 / ((n : ℝ) * ((n : ℝ) + 1)) =
            1 / (n : ℝ) - 1 / ((n : ℝ) + 1) := by
          field_simp [ne_of_gt hnR, ne_of_gt hnextR]
          <;> ring
        exact hc.trans_eq heq
      rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]
      simp only [Nat.cast_add, Nat.cast_one]
      linarith [ih hn1]

theorem reciprocal_square_sum_le_one (K : Nat) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) ^ 2) ≤ 1 := by
  by_cases hK : 1 ≤ K
  · have hnonneg : (0 : ℝ) ≤ 1 / (K : ℝ) := by positivity
    exact (reciprocal_square_sum_le_sub K hK).trans (by linarith)
  · have hzero : K = 0 := by omega
    subst K
    norm_num

theorem reciprocal_sum_le_half (K : Nat) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ)) ≤ (K : ℝ) / 2 := by
  have hterm : ∀ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) ≤ (1 / 2 : ℝ) := by
    intro k hk
    have hkR : (2 : ℝ) ≤ (k : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hk).1
    exact one_div_le_one_div_of_le (by norm_num) hkR
  have hcardN : (Finset.Icc 2 K).card ≤ K := by rw [Nat.card_Icc]; omega
  have hcard : ((Finset.Icc 2 K).card : ℝ) ≤ (K : ℝ) := by exact_mod_cast hcardN
  calc
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ)) ≤ ∑ _k ∈ Finset.Icc 2 K, (1 / 2 : ℝ) :=
      Finset.sum_le_sum hterm
    _ = ((Finset.Icc 2 K).card : ℝ) / 2 := by simp [div_eq_mul_inv]
    _ ≤ (K : ℝ) / 2 := div_le_div_of_nonneg_right hcard (by norm_num)

theorem root_le_sqrt {x : ℝ} {k : Nat} (hx : 1 ≤ x) (hk : 2 ≤ k) :
    x ^ ((1 : ℝ) / k) ≤ Real.sqrt x := by
  rw [Real.sqrt_eq_rpow]
  apply Real.rpow_le_rpow_of_exponent_le hx
  have hkR : (2 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
  exact one_div_le_one_div_of_le (by norm_num) hkR

end B699LocalPowerSums20261005
#print axioms B699LocalPowerSums20261005.reciprocal_square_sum_le_sub
#print axioms B699LocalPowerSums20261005.reciprocal_square_sum_le_one
#print axioms B699LocalPowerSums20261005.reciprocal_sum_le_half
#print axioms B699LocalPowerSums20261005.root_le_sqrt
