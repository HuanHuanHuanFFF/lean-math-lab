import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.Resonance

set_option Elab.async false
namespace Math.B699.ZeroBoundaryLogSeparation

theorem resonance_one_check : resonanceIdentityCheck 1 1 2 3 0 0 = true := by decide +kernel
theorem resonance_negative_six_check : resonanceIdentityCheck 1 64 2 3 (-6) 0 = true := by
  decide +kernel
theorem resonance_mixed_sign_check : resonanceIdentityCheck 6 4 2 3 (-1) 1 = true := by
  decide +kernel

end Math.B699.ZeroBoundaryLogSeparation

#print axioms Math.B699.ZeroBoundaryLogSeparation.resonance_one_check
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonance_negative_six_check
#print axioms Math.B699.ZeroBoundaryLogSeparation.resonance_mixed_sign_check
