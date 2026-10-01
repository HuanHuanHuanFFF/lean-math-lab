import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_033_check : endpointCheck 33 = true := by decide +kernel
theorem endpoint_033_bounds : (logLower 33 : ℝ) ≤ Real.log 33 ∧ Real.log 33 ≤ (logUpper 33 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_033_check
theorem endpoint_034_check : endpointCheck 34 = true := by decide +kernel
theorem endpoint_034_bounds : (logLower 34 : ℝ) ≤ Real.log 34 ∧ Real.log 34 ≤ (logUpper 34 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_034_check
theorem endpoint_035_check : endpointCheck 35 = true := by decide +kernel
theorem endpoint_035_bounds : (logLower 35 : ℝ) ≤ Real.log 35 ∧ Real.log 35 ≤ (logUpper 35 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_035_check
theorem endpoint_036_check : endpointCheck 36 = true := by decide +kernel
theorem endpoint_036_bounds : (logLower 36 : ℝ) ≤ Real.log 36 ∧ Real.log 36 ≤ (logUpper 36 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_036_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_033_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_033_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_034_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_034_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_035_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_035_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_036_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_036_bounds
