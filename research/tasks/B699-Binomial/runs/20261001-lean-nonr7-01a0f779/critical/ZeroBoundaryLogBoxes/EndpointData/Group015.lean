import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_061_check : endpointCheck 61 = true := by decide +kernel
theorem endpoint_061_bounds : (logLower 61 : ℝ) ≤ Real.log 61 ∧ Real.log 61 ≤ (logUpper 61 : ℝ) := endpointCheck_sound endpoint_061_check
theorem endpoint_062_check : endpointCheck 62 = true := by decide +kernel
theorem endpoint_062_bounds : (logLower 62 : ℝ) ≤ Real.log 62 ∧ Real.log 62 ≤ (logUpper 62 : ℝ) := endpointCheck_sound endpoint_062_check
theorem endpoint_063_check : endpointCheck 63 = true := by decide +kernel
theorem endpoint_063_bounds : (logLower 63 : ℝ) ≤ Real.log 63 ∧ Real.log 63 ≤ (logUpper 63 : ℝ) := endpointCheck_sound endpoint_063_check
theorem endpoint_064_check : endpointCheck 64 = true := by decide +kernel
theorem endpoint_064_bounds : (logLower 64 : ℝ) ≤ Real.log 64 ∧ Real.log 64 ≤ (logUpper 64 : ℝ) := endpointCheck_sound endpoint_064_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_061_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_061_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_062_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_062_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_063_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_063_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_064_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_064_bounds
