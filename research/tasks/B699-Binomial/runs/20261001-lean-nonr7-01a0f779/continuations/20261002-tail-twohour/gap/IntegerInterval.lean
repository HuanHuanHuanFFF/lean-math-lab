import Lean.Elab.Tactic.Omega

/-! Exact natural arithmetic from prime-optimization §6.2.
No prime existence, height existence, or original B699 conclusion is asserted. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailGapArithmetic

theorem counterexample_gap_threshold {n i j : Nat}
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 20000000 < n) :
    10000000 ≤ n - i := by omega

theorem gap_height_top_lt {n i j p : Nat}
    (hij : i < j) (hjn : j ≤ n / 2) (hheight : n < 4096 * i)
    (hyp : n - i < p) (hshort : 4095 * (p - (n - i)) ≤ n - i) :
    p < n := by omega

theorem finite_near_top_strict {n i p gap : Nat}
    (hin : i ≤ n) (hgap : gap ≤ i) (hnear : n < p + gap) :
    n - i < p := by omega

/-- The numeric bounds in Bertrand do not by themselves imply the narrow bound.
Primality of this witness is not part of this arithmetic-only assertion. -/
theorem bertrand_numeric_window_not_narrow :
    10000000 < 19912523 ∧ 19912523 ≤ 2 * 10000000 ∧
      ¬ 4095 * (19912523 - 10000000) ≤ 10000000 := by decide

end B699TailGapArithmetic

#print axioms B699TailGapArithmetic.counterexample_gap_threshold
#print axioms B699TailGapArithmetic.gap_height_top_lt
#print axioms B699TailGapArithmetic.finite_near_top_strict
#print axioms B699TailGapArithmetic.bertrand_numeric_window_not_narrow
