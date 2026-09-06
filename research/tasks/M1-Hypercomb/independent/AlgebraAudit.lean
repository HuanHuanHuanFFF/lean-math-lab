import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/- Local algebra audit for M1. These statements do not prove hypercomb unimodality. -/
namespace M1Audit

/-- The v3 n=4 factorization has an extra b^2*z0 term. -/
theorem factorization_error {R : Type*} [CommRing R] (a b z0 z1 : R) :
    (a * z1 + b * z0) * (a ^ 2 + 2 * b) -
      (a * (a * (a * z1 + b * z0) + b * z1) + b * (a * z1 + b * z0)) =
    b ^ 2 * z0 := by
  ring

/-- First adjacent log-concavity difference of C_(1, q+3), q >= 0. -/
theorem initial_lc_first (q : ℚ) (hq : 0 ≤ q) :
    3 * (q + 2) ^ 2 ≤ (3 * q + 7) ^ 2 := by
  have hid : (3 * q + 7) ^ 2 - 3 * (q + 2) ^ 2 =
      6 * q ^ 2 + 30 * q + 37 := by ring
  have hn : 0 ≤ (3 * q + 7) ^ 2 - 3 * (q + 2) ^ 2 := by
    rw [hid]
    exact add_nonneg (add_nonneg (mul_nonneg (by norm_num) (sq_nonneg q)) (mul_nonneg (by norm_num) hq)) (by norm_num)
  exact sub_nonneg.mp hn

/-- Second adjacent log-concavity difference of C_(1, q+3), q >= 0. -/
theorem initial_lc_second (q : ℚ) (hq : 0 ≤ q) :
    (3 * q + 7) * ((q + 2) ^ 2 * (q + 1)) ≤ (3 * (q + 2) ^ 2) ^ 2 := by
  have hid : (3 * (q + 2) ^ 2) ^ 2 -
      (3 * q + 7) * ((q + 2) ^ 2 * (q + 1)) =
      (q + 2) ^ 2 * (6 * q ^ 2 + 26 * q + 29) := by ring
  have hn : 0 ≤ (3 * (q + 2) ^ 2) ^ 2 -
      (3 * q + 7) * ((q + 2) ^ 2 * (q + 1)) := by
    rw [hid]
    exact mul_nonneg (sq_nonneg _) (add_nonneg (add_nonneg (mul_nonneg (by norm_num) (sq_nonneg q)) (mul_nonneg (by norm_num) hq)) (by norm_num))
  exact sub_nonneg.mp hn

/-- info: 'M1Audit.factorization_error' depends on axioms: [propext] -/
#guard_msgs in
#print axioms factorization_error
/-- info: 'M1Audit.initial_lc_first' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms initial_lc_first
/-- info: 'M1Audit.initial_lc_second' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms initial_lc_second
end M1Audit
