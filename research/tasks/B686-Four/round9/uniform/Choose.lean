import Mathlib.Analysis.Complex.Exponential
import Mathlib.Data.Nat.Choose.Bounds
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.GCongr

namespace B686UniformRound9

open Real

set_option maxHeartbeats 800000

theorem choose_le_exp_mul_div_pow (N Q : ℕ) (hQ : 0 < Q) :
    (Nat.choose N Q : ℝ) ≤ (Real.exp 1 * (N : ℝ) / Q) ^ Q := by
  have hQR : (0 : ℝ) < Q := by exact_mod_cast hQ
  have hfac := Real.pow_div_factorial_le_exp (Q : ℝ) (Nat.cast_nonneg Q : (0 : ℝ) ≤ Q) Q
  have hmul := mul_le_mul_of_nonneg_left hfac
    (pow_nonneg (div_nonneg (Nat.cast_nonneg N) hQR.le) Q)
  calc
    (Nat.choose N Q : ℝ) ≤ (N : ℝ)^Q / Q.factorial := Nat.choose_le_pow_div Q N
    _ = ((N : ℝ) / Q)^Q * ((Q : ℝ)^Q / Q.factorial) := by
      rw [div_pow]
      field_simp
    _ ≤ ((N : ℝ) / Q)^Q * Real.exp (Q : ℝ) := hmul
    _ = (Real.exp 1 * (N : ℝ) / Q)^Q := by
      rw [show Real.exp (Q : ℝ) = (Real.exp 1)^Q by simpa using Real.exp_nat_mul 1 Q]
      rw [← mul_pow]
      congr 1
      ring

theorem block_choose_le (k d : ℕ) (hk : 2 ≤ k) (hkd : k ≤ d) :
    (Nat.choose (d + k - 1) (2 * k - 1) : ℝ) ≤
      (Real.exp 1 * (d : ℝ) / k) ^ (2 * k) := by
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
  have hdpos : (0 : ℝ) < d := by exact_mod_cast (show 0 < d by omega)
  have hqpos : (0 : ℝ) < (2 * k - 1 : ℕ) := by exact_mod_cast (show 0 < 2*k-1 by omega)
  have hkR : (2 : ℝ) ≤ k := by exact_mod_cast hk
  have hkdR : (k : ℝ) ≤ d := by exact_mod_cast hkd
  have hN : ((d + k - 1 : ℕ) : ℝ) = (d : ℝ) + k - 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ d+k)]
    push_cast
    rfl
  have hQ : ((2 * k - 1 : ℕ) : ℝ) = 2 * (k : ℝ) - 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ 2*k)]
    push_cast
    rfl
  have hratio : ((d + k - 1 : ℕ) : ℝ) / (2*k-1 : ℕ) ≤ (d : ℝ) / k := by
    apply (div_le_div_iff₀ hqpos hkpos).mpr
    rw [hN, hQ]
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ k-1 by linarith)
      (show (0 : ℝ) ≤ (d : ℝ)-k by linarith)]
  have he : (1 : ℝ) ≤ Real.exp 1 := (Real.one_lt_exp_iff.mpr (by norm_num)).le
  have hbase : (1 : ℝ) ≤ Real.exp 1 * (d : ℝ) / k := by
    apply (le_div_iff₀ hkpos).mpr
    nlinarith [mul_nonneg (show 0 ≤ Real.exp 1 - 1 by linarith) hdpos.le]
  calc
    _ ≤ (Real.exp 1 * ((d+k-1 : ℕ) : ℝ) / (2*k-1 : ℕ)) ^ (2*k-1) :=
      choose_le_exp_mul_div_pow _ _ (by omega)
    _ ≤ (Real.exp 1 * (d : ℝ) / k) ^ (2*k-1) := by
      apply pow_le_pow_left₀ (by positivity)
      simpa only [mul_div_assoc] using mul_le_mul_of_nonneg_left hratio (Real.exp_pos 1).le
    _ ≤ (Real.exp 1 * (d : ℝ) / k) ^ (2*k) :=
      pow_le_pow_right₀ hbase (Nat.sub_le _ _)

/-- info: 'B686UniformRound9.choose_le_exp_mul_div_pow' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms choose_le_exp_mul_div_pow
/-- info: 'B686UniformRound9.block_choose_le' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms block_choose_le

end B686UniformRound9


