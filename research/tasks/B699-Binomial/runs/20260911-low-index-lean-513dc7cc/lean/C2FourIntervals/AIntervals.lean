import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2FourIntervals.Intervals

/-! UNCOMPILED. Explicit types, definition bodies and transitive axioms. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699 Math.B699.C2FourIntervals

#check (@Math.B699.C2FourIntervals.four_interval_bounds : ∀ (m q j : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4)
    (hlo : 4 * m < j * q) (hhi : 2 * j * q ≤ 9 * m - 2),
  m < q ∧ (j - 1) * q ≤ 4 * m ∧ 4 * m < j * q)
#print axioms Math.B699.C2FourIntervals.four_interval_bounds

#check (@Math.B699.C2FourIntervals.four_interval_div : ∀ (m q j : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4)
    (hlo : 4 * m < j * q) (hhi : 2 * j * q ≤ 9 * m - 2),
  (4 * m) / q = j - 1)
#print axioms Math.B699.C2FourIntervals.four_interval_div

#check (@Math.B699.C2FourIntervals.four_interval_contributes : ∀ (m q j : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4)
    (hlo : 4 * m < j * q) (hhi : 2 * j * q ≤ 9 * m - 2),
  2 * q + 1 ≤ 2 * ((4 * m) % q) + m % q)
#print axioms Math.B699.C2FourIntervals.four_interval_contributes

#check (@Math.B699.C2FourIntervals.four_interval_index_unique : ∀ (m q j k : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4) (hk : 1 ≤ k ∧ k ≤ 4)
    (hjlo : 4 * m < j * q) (hjhi : 2 * j * q ≤ 9 * m - 2)
    (hklo : 4 * m < k * q) (hkhi : 2 * k * q ≤ 9 * m - 2),
  j = k)
#print axioms Math.B699.C2FourIntervals.four_interval_index_unique
