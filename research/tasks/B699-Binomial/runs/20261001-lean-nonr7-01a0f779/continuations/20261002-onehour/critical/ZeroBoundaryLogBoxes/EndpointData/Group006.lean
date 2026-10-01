import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_025_check : endpointCheck 25 = true := by decide +kernel
theorem endpoint_025_bounds : (logLower 25 : ℝ) ≤ Real.log 25 ∧ Real.log 25 ≤ (logUpper 25 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_025_check
theorem endpoint_026_check : endpointCheck 26 = true := by decide +kernel
theorem endpoint_026_bounds : (logLower 26 : ℝ) ≤ Real.log 26 ∧ Real.log 26 ≤ (logUpper 26 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_026_check
theorem endpoint_027_check : endpointCheck 27 = true := by decide +kernel
theorem endpoint_027_bounds : (logLower 27 : ℝ) ≤ Real.log 27 ∧ Real.log 27 ≤ (logUpper 27 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_027_check
theorem endpoint_028_check : endpointCheck 28 = true := by decide +kernel
theorem endpoint_028_bounds : (logLower 28 : ℝ) ≤ Real.log 28 ∧ Real.log 28 ≤ (logUpper 28 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_028_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_025_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_025_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_026_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_026_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_027_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_027_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_028_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_028_bounds
