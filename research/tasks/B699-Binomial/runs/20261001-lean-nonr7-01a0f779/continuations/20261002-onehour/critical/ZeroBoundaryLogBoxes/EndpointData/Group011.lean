import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_045_check : endpointCheck 45 = true := by decide +kernel
theorem endpoint_045_bounds : (logLower 45 : ℝ) ≤ Real.log 45 ∧ Real.log 45 ≤ (logUpper 45 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_045_check
theorem endpoint_046_check : endpointCheck 46 = true := by decide +kernel
theorem endpoint_046_bounds : (logLower 46 : ℝ) ≤ Real.log 46 ∧ Real.log 46 ≤ (logUpper 46 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_046_check
theorem endpoint_047_check : endpointCheck 47 = true := by decide +kernel
theorem endpoint_047_bounds : (logLower 47 : ℝ) ≤ Real.log 47 ∧ Real.log 47 ≤ (logUpper 47 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_047_check
theorem endpoint_048_check : endpointCheck 48 = true := by decide +kernel
theorem endpoint_048_bounds : (logLower 48 : ℝ) ≤ Real.log 48 ∧ Real.log 48 ≤ (logUpper 48 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_048_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_045_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_045_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_046_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_046_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_047_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_047_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_048_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_048_bounds
