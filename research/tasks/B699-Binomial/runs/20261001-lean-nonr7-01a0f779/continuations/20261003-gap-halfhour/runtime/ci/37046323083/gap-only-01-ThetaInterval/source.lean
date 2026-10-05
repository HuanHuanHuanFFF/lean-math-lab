module
public import Mathlib.NumberTheory.Chebyshev
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.FieldSimp

/-!
Actual Chebyshev-theta increments produce actual natural prime witnesses.
The finite-sum argument is independent of any prime-distribution estimate.
Reference strategy: PrimeNumberTheoremAnd/IEANTN/PrimeInInterval.lean,
fixed source c39a751132c88b6e8080b74c74023fd95b3d8be0 (Apache-2.0).
This implementation uses the pinned Mathlib theta and primesLE definitions;
no foreign project, literature axiom, or new prime predicate is imported.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699ThetaSupply

open Finset Nat

theorem exists_prime_of_theta_lt {x z : ℝ}
    (hθ : Chebyshev.theta x < Chebyshev.theta z) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧ (p : ℝ) ≤ z := by
  classical
  have hz : 0 ≤ z := by
    by_contra hn
    have hz0 : z < 0 := lt_of_not_ge hn
    have hzero := Chebyshev.theta_eq_zero_of_lt_two
      (lt_trans hz0 (by norm_num : (0 : ℝ) < 2))
    rw [hzero] at hθ
    exact (not_lt_of_ge (Chebyshev.theta_nonneg x)) hθ
  by_contra hn
  have hsub : Nat.primesLE ⌊z⌋₊ ⊆ Nat.primesLE ⌊x⌋₊ := by
    intro p hp
    obtain ⟨hpz, hprime⟩ := Nat.mem_primesLE.mp hp
    have hpzR : (p : ℝ) ≤ z := (Nat.cast_le.mpr hpz).trans (Nat.floor_le hz)
    have hpxR : (p : ℝ) ≤ x := by
      exact le_of_not_gt (fun hxp => hn ⟨p, hprime, hxp, hpzR⟩)
    exact Nat.mem_primesLE.mpr ⟨Nat.le_floor hpxR, hprime⟩
  have hle : Chebyshev.theta z ≤ Chebyshev.theta x := by
    rw [Chebyshev.theta_eq_sum_primesLE, Chebyshev.theta_eq_sum_primesLE]
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub
      (fun p _ _ => Real.log_natCast_nonneg p)
  exact (not_le_of_gt hθ) hle

theorem exists_prime_of_theta_bounds {x z a b : ℝ}
    (hupper : Chebyshev.theta x ≤ x + a)
    (hlower : z - b ≤ Chebyshev.theta z)
    (hwidth : a + b < z - x) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧ (p : ℝ) ≤ z := by
  apply exists_prime_of_theta_lt
  linarith

/-- Unequal upper and lower relative errors suffice. The exact condition is
`D*u + (D+1)*l < 1`; the strict lower endpoint is preserved. -/
theorem prime_of_theta_relative_bounds {D x u l : ℝ}
    (hD : 0 < D) (hx : 0 < x)
    (hupper : Chebyshev.theta x ≤ (1 + u) * x)
    (hlower : (1 - l) * (x + x / D) ≤ Chebyshev.theta (x + x / D))
    (hcoeff : D * u + (D + 1) * l < 1) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧ D * ((p : ℝ) - x) ≤ x := by
  have hbalance : D * ((1 - l) * (x + x / D) - (1 + u) * x) =
      x * (1 - (D * u + (D + 1) * l)) := by
    field_simp [ne_of_gt hD]
    <;> ring
  have hpos : 0 < x * (1 - (D * u + (D + 1) * l)) :=
    mul_pos hx (by linarith)
  have hdiff : 0 < (1 - l) * (x + x / D) - (1 + u) * x :=
    (mul_pos_iff_of_pos_left hD).mp (hbalance.symm ▸ hpos)
  have hθ : Chebyshev.theta x < Chebyshev.theta (x + x / D) := by
    linarith
  obtain ⟨p, hp, hxp, hpz⟩ := exists_prime_of_theta_lt hθ
  refine ⟨p, hp, hxp, ?_⟩
  calc
    D * ((p : ℝ) - x) ≤ D * ((x + x / D) - x) :=
      mul_le_mul_of_nonneg_left (sub_le_sub_right hpz x) hD.le
    _ = x := by field_simp [ne_of_gt hD]; ring

theorem coefficient_4095_asymmetric :
    (4095 : ℝ) * (1 / 36260) + (4095 + 1) * (1 / 6000) < 1 := by
  norm_num

theorem coefficient_4095_symmetric :
    (4095 : ℝ) * (1 / 8192) + (4095 + 1) * (1 / 8192) < 1 := by
  norm_num

end B699ThetaSupply

#print axioms B699ThetaSupply.exists_prime_of_theta_lt
#print axioms B699ThetaSupply.exists_prime_of_theta_bounds
#print axioms B699ThetaSupply.prime_of_theta_relative_bounds
#print axioms B699ThetaSupply.coefficient_4095_asymmetric
#print axioms B699ThetaSupply.coefficient_4095_symmetric
