import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Moment.Identity

/-!
Connect actual Padé kernels to fixed positive weights times a core power.
The finite GrowthTree certificate remains an explicit input; all source
factorization and integer polynomial correspondence are proved here.
No full original index or unconditional seed bound is claimed by this bridge.
-/

namespace Math.B699.PadeActualGrowth

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity
open Math.B699.GrowthLeaf Math.B699.PadeGrowthPartition Math.B699.PadeConstruction

private theorem exponent_split (c d delta m : ℕ) (hcd : d < c)
    (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    d * m - delta = (d - delta) + d * (m - 1) ∧
    (c - d) * m + delta - 1 = (c - d - 1 + delta) + (c - d) * (m - 1) := by
  have hm' : m = (m - 1) + 1 := by omega
  have hd : d * m = d * (m - 1) + d := by
    conv_lhs => rw [hm']
    ring
  have hc : (c - d) * m = (c - d) * (m - 1) + (c - d) := by
    conv_lhs => rw [hm']
    ring
  omega

theorem qKernel_eq_weight_core (c d delta m : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    qKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
      qWeight c d delta z * qCore c d z ^ (m - 1) := by
  obtain ⟨hd, hb⟩ := exponent_split c d delta m hcd hdelta hm
  simp only [qKernel, qWeight, qCore, qFactor, hd, hb, mul_pow, pow_add, pow_mul]
  ring

theorem eKernel_eq_weight_core (c d delta m : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    eKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
      eWeight c d delta z * eCore c d z ^ (m - 1) := by
  obtain ⟨hd, hb⟩ := exponent_split c d delta m hcd hdelta hm
  simp only [eKernel, eWeight, eCore, eFactor, hd, hb, mul_pow, pow_add, pow_mul]
  ring

theorem qKernel_abs_moment_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (qWeight c d delta z) (qCore c d z)) :
    |moment (qKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
      lam ^ (m - 1) * moment (qWeight c d delta z) := by
  rw [qKernel_eq_weight_core c d delta m z hcd hdelta hm]
  exact moment_abs_growth_of_tree lam hlam tree (m - 1)

theorem eKernel_abs_moment_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (eWeight c d delta z) (eCore c d z)) :
    |moment (eKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
      lam ^ (m - 1) * moment (eWeight c d delta z) := by
  rw [eKernel_eq_weight_core c d delta m z hcd hdelta hm]
  exact moment_abs_growth_of_tree lam hlam tree (m - 1)

theorem prefactor_pos (A B C : ℕ) : 0 < prefactor A B C := by
  unfold prefactor
  exact div_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
    (mul_pos (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
      (Nat.cast_pos.mpr (Nat.factorial_pos _))) (Nat.cast_pos.mpr (Nat.factorial_pos _)))

theorem actual_q_eval_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (qWeight c d delta z) (qCore c d z)) :
    |(qPolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
        (Int.castRingHom ℚ) z| ≤
      prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
        (lam ^ (m - 1) * moment (qWeight c d delta z)) := by
  rw [← qSource_eq_actual_eval, qSource_eq_moment]
  simp only [qMoment, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  exact mul_le_mul_of_nonneg_left
    (qKernel_abs_moment_bound c d delta m z lam hcd hdelta hm hlam tree)
    (le_of_lt (prefactor_pos _ _ _))

theorem actual_e_eval_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (eWeight c d delta z) (eCore c d z)) :
    |(ePolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
        (Int.castRingHom ℚ) z| ≤
      prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
        (lam ^ (m - 1) * moment (eWeight c d delta z)) := by
  rw [← eSource_eq_actual_eval, eSource_eq_moment]
  simp only [eMoment, abs_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  exact mul_le_mul_of_nonneg_left
    (eKernel_abs_moment_bound c d delta m z lam hcd hdelta hm hlam tree)
    (le_of_lt (prefactor_pos _ _ _))

#print axioms Math.B699.PadeActualGrowth.qKernel_eq_weight_core
#print axioms Math.B699.PadeActualGrowth.eKernel_eq_weight_core
#print axioms Math.B699.PadeActualGrowth.qKernel_abs_moment_bound
#print axioms Math.B699.PadeActualGrowth.eKernel_abs_moment_bound
#print axioms Math.B699.PadeActualGrowth.prefactor_pos
#print axioms Math.B699.PadeActualGrowth.actual_q_eval_bound
#print axioms Math.B699.PadeActualGrowth.actual_e_eval_bound

end Math.B699.PadeActualGrowth
