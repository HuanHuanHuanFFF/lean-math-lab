import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_009_check : endpointCheck 9 = true := by decide +kernel
theorem endpoint_009_bounds : (logLower 9 : ℝ) ≤ Real.log 9 ∧ Real.log 9 ≤ (logUpper 9 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_009_check
theorem endpoint_010_check : endpointCheck 10 = true := by decide +kernel
theorem endpoint_010_bounds : (logLower 10 : ℝ) ≤ Real.log 10 ∧ Real.log 10 ≤ (logUpper 10 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_010_check
theorem endpoint_011_check : endpointCheck 11 = true := by decide +kernel
theorem endpoint_011_bounds : (logLower 11 : ℝ) ≤ Real.log 11 ∧ Real.log 11 ≤ (logUpper 11 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_011_check
theorem endpoint_012_check : endpointCheck 12 = true := by decide +kernel
theorem endpoint_012_bounds : (logLower 12 : ℝ) ≤ Real.log 12 ∧ Real.log 12 ≤ (logUpper 12 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_012_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_009_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_009_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_010_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_010_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_011_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_011_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_012_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_012_bounds
