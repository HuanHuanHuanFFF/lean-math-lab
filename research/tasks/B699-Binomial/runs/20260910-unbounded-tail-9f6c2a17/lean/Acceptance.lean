import research.tasks.«B699-Binomial».runs.«20260910-unbounded-tail-9f6c2a17».lean.ECAnalytic

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699TailAcceptance

/-- Direct statement of the accepted real-domain derivative majorant.
This is one EC dependency, not the prime-counting estimate or B699. -/
theorem correction_analysis : ∀ x : ℝ, 128 ≤ x →
    HasDerivAt
      (fun u : ℝ => (3 / 2) * Real.log 4 * u /
        (Real.log u * (Real.log u - 3 / 2)))
      ((3 / 2) * Real.log 4 *
        (Real.log x * (Real.log x - 3 / 2) - (2 * Real.log x - 3 / 2)) /
          (Real.log x ^ 2 * (Real.log x - 3 / 2) ^ 2)) x ∧
    Real.log 4 / Real.log x ^ 2 ≤
      (3 / 2) * Real.log 4 *
        (Real.log x * (Real.log x - 3 / 2) - (2 * Real.log x - 3 / 2)) /
          (Real.log x ^ 2 * (Real.log x - 3 / 2) ^ 2) ∧
    0 < Real.log x - 3 / 2 := by
  intro x hx
  exact ⟨B699TailEC.hasDerivAt_correction hx, B699TailEC.correctionDeriv_lower hx,
    B699TailEC.denominator_pos hx⟩

/-- The exact endpoint required by the correction argument. -/
theorem correction_base : (72 : ℝ) / 7 ≤
    (3 / 2) * Real.log 4 * 128 / (Real.log 128 * (Real.log 128 - 3 / 2)) :=
  B699TailEC.correction_128_ge

end B699TailAcceptance

#print axioms B699TailAcceptance.correction_analysis
#print axioms B699TailAcceptance.correction_base
