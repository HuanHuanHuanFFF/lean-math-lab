import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_057_check : endpointCheck 57 = true := by decide +kernel
theorem endpoint_057_bounds : (logLower 57 : ℝ) ≤ Real.log 57 ∧ Real.log 57 ≤ (logUpper 57 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_057_check
theorem endpoint_058_check : endpointCheck 58 = true := by decide +kernel
theorem endpoint_058_bounds : (logLower 58 : ℝ) ≤ Real.log 58 ∧ Real.log 58 ≤ (logUpper 58 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_058_check
theorem endpoint_059_check : endpointCheck 59 = true := by decide +kernel
theorem endpoint_059_bounds : (logLower 59 : ℝ) ≤ Real.log 59 ∧ Real.log 59 ≤ (logUpper 59 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_059_check
theorem endpoint_060_check : endpointCheck 60 = true := by decide +kernel
theorem endpoint_060_bounds : (logLower 60 : ℝ) ≤ Real.log 60 ∧ Real.log 60 ≤ (logUpper 60 : ℝ) := by simpa only [Nat.cast_ofNat, Nat.cast_one] using endpointCheck_sound endpoint_060_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_057_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_057_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_058_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_058_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_059_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_059_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_060_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_060_bounds
