import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ActualKernel
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon

/-!
Exact source normalization. The constants K_delta*M(weight)/lambda can be
checked by the low-degree actual Padé polynomial at m=1. This is an identity,
not an assumption of positivity, a numerical bound, or a full seed result.
-/

namespace Math.B699.PadeGrowthNormalization

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity
open Math.B699.PadeConstruction Math.B699.PadeActualGrowth Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

noncomputable def actualQ (c d delta m : ℕ) (z : ℚ) : ℚ :=
  (qPolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
    (Int.castRingHom ℚ) z

noncomputable def actualE (c d delta m : ℕ) (z : ℚ) : ℚ :=
  (ePolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
    (Int.castRingHom ℚ) z

theorem prefactor_eq_factorialTerm (c d delta m : ℕ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) =
      factorialTerm c d delta m := by
  have hm' : m = (m - 1) + 1 := by omega
  have hd : d * m = d * (m - 1) + d := by
    conv_lhs => rw [hm']
    ring
  have he : (c - d) * m = (c - d) * (m - 1) + (c - d) := by
    conv_lhs => rw [hm']
    ring
  have hc : c = d + (c - d) := by omega
  have htotal : (c + d) * m = d * m + (c - d) * m + d * m := by
    conv_lhs => rw [hc]
    ring
  have hsum : d * m - delta + ((c - d) * m + delta - 1) +
      (d * m - delta) + 1 = (c + d) * m - delta := by omega
  unfold prefactor factorialTerm
  rw [hsum]
  congr 1
  ring

theorem actualQ_one_abs (c d delta : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : 0 ≤ z) :
    |actualQ c d delta 1 z| = factorialTerm c d delta 1 * moment (qWeight c d delta z) := by
  unfold actualQ
  rw [← qSource_eq_actual_eval, qSource_eq_moment]
  simp only [qMoment, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  rw [qKernel_eq_weight_core c d delta 1 z hcd hdelta (by omega)]
  simp only [Nat.sub_self, pow_zero, mul_one]
  rw [abs_of_nonneg (bernsteinCone_moment_nonneg (cone_qWeight c d delta z hz))]
  have hp : prefactor (d - delta) (c - d + delta - 1) (d - delta) =
      factorialTerm c d delta 1 := by
    simpa only [Nat.mul_one] using prefactor_eq_factorialTerm c d delta 1 hcd hdelta (by omega)
  rw [hp]

theorem actualE_one_abs (c d delta : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : z ≤ 1) :
    |actualE c d delta 1 z| = factorialTerm c d delta 1 * moment (eWeight c d delta z) := by
  unfold actualE
  rw [← eSource_eq_actual_eval, eSource_eq_moment]
  simp only [eMoment, abs_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  rw [eKernel_eq_weight_core c d delta 1 z hcd hdelta (by omega)]
  simp only [Nat.sub_self, pow_zero, mul_one]
  rw [abs_of_nonneg (bernsteinCone_moment_nonneg (cone_eWeight c d delta z hz))]
  have hp : prefactor (d - delta) (c - d + delta - 1) (d - delta) =
      factorialTerm c d delta 1 := by
    simpa only [Nat.mul_one] using prefactor_eq_factorialTerm c d delta 1 hcd hdelta (by omega)
  rw [hp]

theorem q_normalized_constant (c d delta : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : 0 ≤ z) :
    (2 * factorialTerm c d delta 1 / beta c d) * moment (qWeight c d delta z) / lam =
      2 * |actualQ c d delta 1 z| / (beta c d * lam) := by
  rw [actualQ_one_abs c d delta z hcd hdelta hz]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

theorem e_normalized_constant (c d delta : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : z ≤ 1) :
    (2 * factorialTerm c d delta 1 / beta c d) * moment (eWeight c d delta z) / lam =
      2 * |actualE c d delta 1 z| / (beta c d * lam) := by
  rw [actualE_one_abs c d delta z hcd hdelta hz]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

#print axioms Math.B699.PadeGrowthNormalization.prefactor_eq_factorialTerm
#print axioms Math.B699.PadeGrowthNormalization.actualQ_one_abs
#print axioms Math.B699.PadeGrowthNormalization.actualE_one_abs
#print axioms Math.B699.PadeGrowthNormalization.q_normalized_constant
#print axioms Math.B699.PadeGrowthNormalization.e_normalized_constant

end Math.B699.PadeGrowthNormalization
