import Mathlib.RingTheory.Polynomial.Eisenstein.Criterion
import Mathlib.RingTheory.Polynomial.GaussLemma
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Tactic.ComputeDegree
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-! Algebra of the asymptotic error slope. This module proves irrationality
of its square, not an effective uniform bound on a varying residual factor. -/
namespace B686Round4Slope
noncomputable section
open Polynomial

def p : ℤ[X] := X ^ 5 - 40 * X ^ 3 - 200 * X ^ 2 - 420 * X - 340

theorem p_monic : p.Monic := by
  unfold p
  monicity <;> norm_num

theorem p_degree : p.degree = 5 := by
  unfold p
  compute_degree <;> norm_num

theorem p_irreducible : Irreducible p := by
  apply Polynomial.irreducible_of_eisenstein_criterion
    (P := Ideal.span ({5} : Set ℤ))
  · apply Ideal.isPrime_span_singleton_of_prime
    exact Nat.prime_iff_prime_int.mp (by decide : Nat.Prime 5)
  · rw [p_monic.leadingCoeff, Ideal.mem_span_singleton]
    norm_num
  · intro n hn
    rw [p_degree] at hn
    have hn' : n < 5 := by exact_mod_cast hn
    interval_cases n <;> norm_num [p, Ideal.mem_span_singleton, coeff_mul, coeff_X]
  · rw [p_degree]
    norm_num
  · rw [Ideal.span_singleton_pow, Ideal.mem_span_singleton]
    norm_num [p, coeff_mul]
  · exact p_monic.isPrimitive

theorem no_rational_root (x : ℚ) :
    x ^ 5 - 40 * x ^ 3 - 200 * x ^ 2 - 420 * x - 340 ≠ 0 := by
  have hi : Irreducible (p.map (Int.castRingHom ℚ)) :=
    (Polynomial.IsPrimitive.Int.irreducible_iff_irreducible_map_cast
      p_monic.isPrimitive).mp p_irreducible
  have hd : (p.map (Int.castRingHom ℚ)).natDegree ≠ 1 := by
    have hd' : (p.map (Int.castRingHom ℚ)).natDegree = 5 := by
      simp only [p, Polynomial.map_sub, Polynomial.map_mul, Polynomial.map_pow,
        Polynomial.map_X, Polynomial.map_ofNat]
      compute_degree <;> norm_num
    omega
  intro hx
  apply hi.not_isRoot_of_natDegree_ne_one hd (x := x)
  simpa [Polynomial.IsRoot, p] using hx

theorem square_not_rational (c : ℝ)
    (hc : c ^ 5 - 40 * c ^ 3 - 200 * c ^ 2 - 420 * c - 340 = 0)
    (r : ℚ) : c ^ 2 ≠ (r : ℝ) := by
  intro hr
  have hr0 : (0 : ℝ) ≤ (r : ℝ) := by nlinarith only [sq_nonneg c, hr]
  have hid : c * ((r : ℝ) ^ 2 - 40 * r - 420) = 200 * r + 340 := by
    rw [← hr]
    nlinarith only [hc]
  have hden : (r : ℝ) ^ 2 - 40 * r - 420 ≠ 0 := by
    intro hz
    rw [hz, mul_zero] at hid
    nlinarith only [hid, hr0]
  let q : ℚ := (200 * r + 340) / (r ^ 2 - 40 * r - 420)
  have hq : c = (q : ℝ) := by
    dsimp [q]
    push_cast
    exact (eq_div_iff hden).mpr hid
  have hroot : q ^ 5 - 40 * q ^ 3 - 200 * q ^ 2 - 420 * q - 340 = 0 := by
    rw [hq] at hc
    exact_mod_cast hc
  exact no_rational_root q hroot

theorem slope_identity (c : ℝ)
    (h : (c + 4) ^ 5 = 4 * (c + 1) ^ 5) :
    c ^ 5 - 40 * c ^ 3 - 200 * c ^ 2 - 420 * c - 340 = 0 := by
  nlinarith only [h]

/-- info: 'B686Round4Slope.p_irreducible' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms p_irreducible
/-- info: 'B686Round4Slope.square_not_rational' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms square_not_rational
/-- info: 'B686Round4Slope.slope_identity' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms slope_identity

end
end B686Round4Slope
