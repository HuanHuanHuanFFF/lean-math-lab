import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Divisor
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Convolution

/-! UNCOMPILED. Full asymmetric actual P divisibility; no G symmetry is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

open Math.B699.PadeConstruction

theorem c2_dvd_swapped_qMagnitude (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ y - delta) :
    c2 x y z ∣ qMagnitude (y - delta) (z - 1 + delta) (x - delta) r := by
  rw [c2_swap x y z]
  exact c2_dvd_qMagnitude y x z delta r hy hx hz hd hr

theorem c2_dvd_pMagnitude (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hk : k ≤ y - delta) :
    c2 x y z ∣ ((x - delta + (z - 1 + delta) + (y - delta) + 1).choose k) *
      ((x - delta + (y - delta) - k).choose (x - delta)) := by
  have hsum : c2 x y z ∣
      ∑ r ∈ Finset.range (k + 1),
        qMagnitude (y - delta) (z - 1 + delta) (x - delta) r *
          (y - delta - r).choose (k - r) := by
    apply Finset.dvd_sum
    intro r hr
    have hrk : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
    exact dvd_mul_of_dvd_left
      (c2_dvd_swapped_qMagnitude x y z delta r hx hy hz hd (hrk.trans hk)) _
  rw [swapped_qMagnitude_convolution (x - delta) (z - 1 + delta) (y - delta) k hk] at hsum
  simpa only [Nat.mul_comm] using hsum

theorem c2_dvd_pCoefficient (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hk : k ≤ y - delta) :
    (c2 x y z : ℤ) ∣ pCoefficient (x - delta) (z - 1 + delta) (y - delta) k := by
  obtain ⟨t, ht⟩ := c2_dvd_pMagnitude x y z delta k hx hy hz hd hk
  have hcast :
      (((x - delta + (z - 1 + delta) + (y - delta) + 1).choose k : ℕ) : ℤ) *
        (((x - delta + (y - delta) - k).choose (x - delta) : ℕ) : ℤ) =
      (c2 x y z : ℤ) * (t : ℤ) := by exact_mod_cast ht
  refine ⟨(-1 : ℤ) ^ (y - delta + k) * (t : ℤ), ?_⟩
  unfold pCoefficient
  rw [mul_assoc, hcast]
  ring

theorem c2_dvd_pPolynomial_coeff (x y z delta k : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    (c2 x y z : ℤ) ∣ (pPolynomial (x - delta) (z - 1 + delta) (y - delta)).coeff k := by
  rw [pPolynomial, coefficientPolynomial_coeff]
  by_cases hk : k ≤ y - delta
  · rw [if_pos hk]
    exact c2_dvd_pCoefficient x y z delta k hx hy hz hd hk
  · rw [if_neg hk]
    exact dvd_zero _
end Math.B699.C2Direct
