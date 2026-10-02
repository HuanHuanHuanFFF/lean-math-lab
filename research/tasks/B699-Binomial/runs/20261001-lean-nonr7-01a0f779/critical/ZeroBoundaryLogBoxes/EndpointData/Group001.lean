import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_005_check : endpointCheck 5 = true := by decide +kernel
theorem endpoint_005_bounds : (logLower 5 : ℝ) ≤ Real.log 5 ∧ Real.log 5 ≤ (logUpper 5 : ℝ) := endpointCheck_sound endpoint_005_check
theorem endpoint_006_check : endpointCheck 6 = true := by decide +kernel
theorem endpoint_006_bounds : (logLower 6 : ℝ) ≤ Real.log 6 ∧ Real.log 6 ≤ (logUpper 6 : ℝ) := endpointCheck_sound endpoint_006_check
theorem endpoint_007_check : endpointCheck 7 = true := by decide +kernel
theorem endpoint_007_bounds : (logLower 7 : ℝ) ≤ Real.log 7 ∧ Real.log 7 ≤ (logUpper 7 : ℝ) := endpointCheck_sound endpoint_007_check
theorem endpoint_008_check : endpointCheck 8 = true := by decide +kernel
theorem endpoint_008_bounds : (logLower 8 : ℝ) ≤ Real.log 8 ∧ Real.log 8 ≤ (logUpper 8 : ℝ) := endpointCheck_sound endpoint_008_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_005_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_005_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_006_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_006_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_007_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_007_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_008_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_008_bounds
