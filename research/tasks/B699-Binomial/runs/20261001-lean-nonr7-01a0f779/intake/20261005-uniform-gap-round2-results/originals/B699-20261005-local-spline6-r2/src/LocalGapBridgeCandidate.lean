module
public import Mathlib.NumberTheory.Chebyshev
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.FieldSimp
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.RealGap

/-!
UNCOMPILED CANDIDATE. No Lean/lake/CI was run for this delivery.
Target: Lean 4.33.1, mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
The project import is the exact RealGap module in the supplied source index.
The full supply remains explicit: support of the actual logarithmic kernel,
positive actual weighted prime mass on an unbounded real tail, and both finite
segments. This file does not prove any zeta estimate or finite zero verification.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699LocalSpline6R2

open scoped BigOperators

/-- Seven-term expression for the convolution of six uniform densities. -/
noncomputable def spline6 (h v : ℝ) : ℝ :=
  (∑ j ∈ Finset.range 7,
    (-1 : ℝ) ^ j * (Nat.choose 6 j : ℝ) *
      (max (v + 3 * h - (j : ℝ) * h) 0) ^ 5) / (120 * h ^ 6)

noncomputable def localWeight (x : ℝ) (n : ℕ) : ℝ :=
  spline6 (Real.log ((4096 : ℝ) / 4095) / 6)
      (Real.log ((n : ℝ) / (x * Real.sqrt ((4096 : ℝ) / 4095)))) /
    Real.sqrt (n : ℝ)

noncomputable def primeMass (x : ℝ) : ℝ :=
  ∑ p ∈ Nat.primesLE ⌊((4096 : ℝ) / 4095) * x⌋₊,
    Real.log (p : ℝ) * localWeight x p

theorem exact_budget :
    (122000 : ℝ) / 126000 + 17 / 1000 + 11 / 1000 + 1 / 1000000 =
      62764063 / 63000000 := by
  norm_num

theorem positive_mass_of_bounds {R S Q : ℝ}
    (hR : 126000 ≤ R)
    (hS : R - 122000 - (17 / 1000 : ℝ) * R - (1 / 1000000 : ℝ) * R ≤ S)
    (hQ : Q ≤ (11 / 1000 : ℝ) * R) :
    0 < S - Q := by
  linarith

/-- A real kernel identity only; no prime-distribution input. -/
theorem spline6_eq_zero_of_left {h v : ℝ}
    (hh : 0 ≤ h) (hv : v ≤ -3 * h) : spline6 h v = 0 := by
  unfold spline6
  have hs : (∑ j ∈ Finset.range 7,
      (-1 : ℝ) ^ j * (Nat.choose 6 j : ℝ) *
        (max (v + 3 * h - (j : ℝ) * h) 0) ^ 5) = 0 := by
    apply Finset.sum_eq_zero
    intro j hj
    have hjh : 0 ≤ (j : ℝ) * h := mul_nonneg (Nat.cast_nonneg j) hh
    have hvj : v + 3 * h - (j : ℝ) * h ≤ 0 := by linarith
    rw [max_eq_right hvj]
    simp
  rw [hs]
  simp

/-- Positive mass over actual Nat.primesLE gives an actual prime witness.
The analytic support and mass statements are still explicit hypotheses. -/
theorem prime_of_local_mass {x : ℝ} (hx : 16000000000 ≤ x)
    (hsupport : ∀ p : ℕ, p.Prime → (p : ℝ) ≤ x → localWeight x p = 0)
    (hmass : 0 < primeMass x) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧ (p : ℝ) ≤ ((4096 : ℝ) / 4095) * x := by
  classical
  have hx0 : 0 ≤ x := by linarith
  have hz : 0 ≤ ((4096 : ℝ) / 4095) * x :=
    mul_nonneg (by norm_num) hx0
  by_contra hn
  have hzero : primeMass x = 0 := by
    unfold primeMass
    apply Finset.sum_eq_zero
    intro p hp
    obtain ⟨hpz, hprime⟩ := Nat.mem_primesLE.mp hp
    have hpzR : (p : ℝ) ≤ ((4096 : ℝ) / 4095) * x :=
      (Nat.cast_le.mpr hpz).trans (Nat.floor_le hz)
    have hpxR : (p : ℝ) ≤ x :=
      le_of_not_gt (fun hxp => hn ⟨p, hprime, hxp, hpzR⟩)
    rw [hsupport p hprime hpxR]
    simp
  rw [hzero] at hmass
  exact (lt_irrefl (0 : ℝ)) hmass

theorem real_gap_of_local_mass
    (hsupport : ∀ x : ℝ, 16000000000 ≤ x →
      ∀ p : ℕ, p.Prime → (p : ℝ) ≤ x → localWeight x p = 0)
    (hmass : ∀ x : ℝ, 16000000000 ≤ x → 0 < primeMass x) :
    B699TailGap.RealGap 4095 16000000000 := by
  intro x hx
  obtain ⟨p, hp, hxp, hpz⟩ := prime_of_local_mass hx (hsupport x hx) (hmass x hx)
  refine ⟨p, hp, hxp, ?_⟩
  nlinarith

theorem nat_gap_of_local_mass
    (hsupport : ∀ x : ℝ, 16000000000 ≤ x →
      ∀ p : ℕ, p.Prime → (p : ℝ) ≤ x → localWeight x p = 0)
    (hmass : ∀ x : ℝ, 16000000000 ≤ x → 0 < primeMass x) :
    B699TailGap.Gap 4095 16000000000 :=
  B699TailGap.nat_gap_of_real_gap (real_gap_of_local_mass hsupport hmass)

theorem gap_full_of_segments
    (hsupport : ∀ x : ℝ, 16000000000 ≤ x →
      ∀ p : ℕ, p.Prime → (p : ℝ) ≤ x → localWeight x p = 0)
    (hmass : ∀ x : ℝ, 16000000000 ≤ x → 0 < primeMass x)
    (hinitial : ∀ y : ℕ, 10000000 ≤ y → y < 122568684 →
      ∃ p : ℕ, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y)
    (hbridge : ∀ y : ℕ, 122568684 ≤ y → y < 16000000000 →
      ∃ p : ℕ, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y) :
    B699TailGap.Gap 4095 10000000 := by
  intro y hy
  by_cases hA : y < 122568684
  · exact hinitial y hy hA
  · have hyA : 122568684 ≤ y := le_of_not_gt hA
    by_cases hT : y < 16000000000
    · exact hbridge y hyA hT
    · exact nat_gap_of_local_mass hsupport hmass y (le_of_not_gt hT)

end B699LocalSpline6R2

#print axioms B699LocalSpline6R2.exact_budget
#print axioms B699LocalSpline6R2.positive_mass_of_bounds
#print axioms B699LocalSpline6R2.spline6_eq_zero_of_left
#print axioms B699LocalSpline6R2.prime_of_local_mass
#print axioms B699LocalSpline6R2.real_gap_of_local_mass
#print axioms B699LocalSpline6R2.nat_gap_of_local_mass
#print axioms B699LocalSpline6R2.gap_full_of_segments
