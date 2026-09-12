import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2FourIntervals.LogBridge

/-! UNCOMPILED. Explicit types, definition bodies and transitive axioms. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
open Math.B699 Math.B699.C2FourIntervals

#check (@Math.B699.C2FourIntervals.l4 : ∀ (m : ℕ),
  ℝ)
#print axioms Math.B699.C2FourIntervals.l4
#print Math.B699.C2FourIntervals.l4

#check (@Math.B699.C2FourIntervals.l4_eq_log_p4 : ∀ (m : ℕ),
  l4 m = Real.log (p4 m : ℝ))
#print axioms Math.B699.C2FourIntervals.l4_eq_log_p4

#check (@Math.B699.C2FourIntervals.l4_eq_interval_sums : ∀ (m : ℕ) (hm : 3 ≤ m),
  l4 m = ∑ j ∈ Finset.Icc 1 4, ∑ p ∈ intervalPrimes m j, Real.log (p : ℝ))
#print axioms Math.B699.C2FourIntervals.l4_eq_interval_sums

#check (@Math.B699.C2FourIntervals.log_p4_le_log_actual_c2 : ∀ (m : ℕ) (hm : 3 ≤ m),
  Real.log (p4 m : ℝ) ≤ Real.log (C2Direct.c2 (4 * m) (4 * m) m : ℝ))
#print axioms Math.B699.C2FourIntervals.log_p4_le_log_actual_c2

#check (@Math.B699.C2FourIntervals.l4_le_log_actual_c2 : ∀ (m : ℕ) (hm : 3 ≤ m),
  l4 m ≤ Real.log (C2Direct.c2 (4 * m) (4 * m) m : ℝ))
#print axioms Math.B699.C2FourIntervals.l4_le_log_actual_c2
