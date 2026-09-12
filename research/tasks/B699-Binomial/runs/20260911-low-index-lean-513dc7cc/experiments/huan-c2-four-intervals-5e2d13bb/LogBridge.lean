import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2FourIntervals.Product
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-! UNCOMPILED. Exact finite log-sum bridge; no Chebyshev or prime-supply input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2FourIntervals
open scoped BigOperators

noncomputable def l4 (m : ℕ) : ℝ := ∑ p ∈ fourPrimes m, Real.log (p : ℝ)

theorem l4_eq_log_p4 (m : ℕ) : l4 m = Real.log (p4 m : ℝ) := by
  unfold l4 p4
  rw [Nat.cast_prod]
  symm
  apply Real.log_prod
  intro p hp
  exact Nat.cast_ne_zero.mpr (mem_fourPrimes_prime m p hp).ne_zero

theorem l4_eq_interval_sums (m : ℕ) (hm : 3 ≤ m) :
    l4 m = ∑ j ∈ Finset.Icc 1 4, ∑ p ∈ intervalPrimes m j, Real.log (p : ℝ) := by
  unfold l4 fourPrimes
  exact Finset.sum_biUnion (intervalPrimes_pairwise_disjoint m hm)

theorem log_p4_le_log_actual_c2 (m : ℕ) (hm : 3 ≤ m) :
    Real.log (p4 m : ℝ) ≤ Real.log (C2Direct.c2 (4 * m) (4 * m) m : ℝ) := by
  apply Real.log_le_log
  · exact Nat.cast_pos.mpr (p4_pos m)
  · exact Nat.cast_le.mpr (p4_le_actual_c2 m hm)

theorem l4_le_log_actual_c2 (m : ℕ) (hm : 3 ≤ m) :
    l4 m ≤ Real.log (C2Direct.c2 (4 * m) (4 * m) m : ℝ) := by
  rw [l4_eq_log_p4]
  exact log_p4_le_log_actual_c2 m hm

end Math.B699.C2FourIntervals

