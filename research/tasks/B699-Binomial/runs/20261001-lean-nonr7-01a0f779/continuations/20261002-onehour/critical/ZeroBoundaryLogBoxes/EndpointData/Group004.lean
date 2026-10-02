import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_017_check : endpointCheck 17 = true := by decide +kernel
theorem endpoint_017_bounds : (logLower 17 : ℝ) ≤ Real.log 17 ∧ Real.log 17 ≤ (logUpper 17 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_017_check
theorem endpoint_018_check : endpointCheck 18 = true := by decide +kernel
theorem endpoint_018_bounds : (logLower 18 : ℝ) ≤ Real.log 18 ∧ Real.log 18 ≤ (logUpper 18 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_018_check
theorem endpoint_019_check : endpointCheck 19 = true := by decide +kernel
theorem endpoint_019_bounds : (logLower 19 : ℝ) ≤ Real.log 19 ∧ Real.log 19 ≤ (logUpper 19 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_019_check
theorem endpoint_020_check : endpointCheck 20 = true := by decide +kernel
theorem endpoint_020_bounds : (logLower 20 : ℝ) ≤ Real.log 20 ∧ Real.log 20 ≤ (logUpper 20 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_020_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_017_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_017_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_018_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_018_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_019_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_019_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_020_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_020_bounds
