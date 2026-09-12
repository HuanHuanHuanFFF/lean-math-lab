import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Valuation
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.PrimePowerTransfer

/-! UNCOMPILED. Distinct prime powers assemble the full actual C2 divisor. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

open Math.B699.PadeConstruction

theorem c2_dvd_qMagnitude (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) :
    c2 x y z ∣ qMagnitude (x - delta) (z - 1 + delta) (y - delta) r := by
  unfold c2
  apply B699LargePrimeStructure.prime_power_finset_prod_dvd
  · intro p hp
    exact (Finset.mem_filter.mp hp).2
  · intro p hp
    exact prime_power_dvd_qMagnitude x y z delta r p hx hy hz hd hr
      (Finset.mem_filter.mp hp).2

theorem c2_dvd_qCoefficient (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) (hr : r ≤ x - delta) :
    (c2 x y z : ℤ) ∣ qCoefficient (x - delta) (z - 1 + delta) (y - delta) r := by
  obtain ⟨k, hk⟩ := c2_dvd_qMagnitude x y z delta r hx hy hz hd hr
  refine ⟨(-1 : ℤ) ^ (y - delta) * (k : ℤ), ?_⟩
  simp only [qCoefficient, hk, Nat.cast_mul]
  ring

theorem c2_dvd_qContent (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    c2 x y z ∣ qContent (x - delta) (z - 1 + delta) (y - delta) := by
  unfold qContent
  apply Finset.dvd_gcd
  intro r hr
  exact c2_dvd_qMagnitude x y z delta r hx hy hz hd
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))

theorem c2_le_qContent (x y z delta : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    c2 x y z ≤ qContent (x - delta) (z - 1 + delta) (y - delta) :=
  Nat.le_of_dvd (qContent_pos _ _ _) (c2_dvd_qContent x y z delta hx hy hz hd)

theorem c2_dvd_qPolynomial_coeff (x y z delta r : ℕ)
    (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hd : delta = 0 ∨ delta = 1) :
    (c2 x y z : ℤ) ∣ (qPolynomial (x - delta) (z - 1 + delta) (y - delta)).coeff r := by
  rw [qPolynomial, coefficientPolynomial_coeff]
  by_cases hr : r ≤ x - delta
  · rw [if_pos hr]
    exact c2_dvd_qCoefficient x y z delta r hx hy hz hd hr
  · rw [if_neg hr]
    exact dvd_zero _
end Math.B699.C2Direct
