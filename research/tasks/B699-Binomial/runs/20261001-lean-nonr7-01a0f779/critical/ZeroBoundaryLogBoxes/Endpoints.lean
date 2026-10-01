import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Bridge
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Finite

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace Math.B699.ZeroBoundaryLogBoxes

/-- A rational record supplies precisely the analytic bridge's side conditions. -/
def endpointCheck (a : ℕ) : Bool :=
  decide (0 ≤ normalizedArgument a ∧ normalizedArgument a < 1 ∧
    coarseUpper 102 (normalizedArgument a) ≤ smallUpper (normalizedArgument a) ∧
    (a : ℚ) = (2 : ℚ) ^ scaleExponent a *
      ((1 + normalizedArgument a) / (1 - normalizedArgument a)))

theorem endpointCheck_sound {a : ℕ} (hc : endpointCheck a = true) :
    (logLower a : ℝ) ≤ Real.log a ∧ Real.log a ≤ (logUpper a : ℝ) := by
  have h : 0 ≤ normalizedArgument a ∧ normalizedArgument a < 1 ∧
      coarseUpper 102 (normalizedArgument a) ≤ smallUpper (normalizedArgument a) ∧
      (a : ℚ) = (2 : ℚ) ^ scaleExponent a *
        ((1 + normalizedArgument a) / (1 - normalizedArgument a)) := of_decide_eq_true hc
  obtain ⟨h0, h1, hcomparison, hnormalization⟩ := h
  apply log_bounds_of_normalization a h0 h1 comparison_one_third hcomparison
  unfold realRatio
  exact_mod_cast hnormalization

end Math.B699.ZeroBoundaryLogBoxes

#check (Math.B699.ZeroBoundaryLogBoxes.endpointCheck_sound :
  ∀ {a : ℕ}, Math.B699.ZeroBoundaryLogBoxes.endpointCheck a = true →
    (Math.B699.ZeroBoundaryLogBoxes.logLower a : ℝ) ≤ Real.log a ∧
    Real.log a ≤ (Math.B699.ZeroBoundaryLogBoxes.logUpper a : ℝ))
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpointCheck
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpointCheck_sound
