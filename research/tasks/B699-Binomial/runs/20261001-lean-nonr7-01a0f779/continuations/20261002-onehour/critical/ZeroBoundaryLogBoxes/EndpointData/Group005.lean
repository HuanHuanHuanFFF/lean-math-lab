import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_021_check : endpointCheck 21 = true := by decide +kernel
theorem endpoint_021_bounds : (logLower 21 : ℝ) ≤ Real.log 21 ∧ Real.log 21 ≤ (logUpper 21 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_021_check
theorem endpoint_022_check : endpointCheck 22 = true := by decide +kernel
theorem endpoint_022_bounds : (logLower 22 : ℝ) ≤ Real.log 22 ∧ Real.log 22 ≤ (logUpper 22 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_022_check
theorem endpoint_023_check : endpointCheck 23 = true := by decide +kernel
theorem endpoint_023_bounds : (logLower 23 : ℝ) ≤ Real.log 23 ∧ Real.log 23 ≤ (logUpper 23 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_023_check
theorem endpoint_024_check : endpointCheck 24 = true := by decide +kernel
theorem endpoint_024_bounds : (logLower 24 : ℝ) ≤ Real.log 24 ∧ Real.log 24 ≤ (logUpper 24 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_024_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_021_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_021_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_022_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_022_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_023_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_023_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_024_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_024_bounds
