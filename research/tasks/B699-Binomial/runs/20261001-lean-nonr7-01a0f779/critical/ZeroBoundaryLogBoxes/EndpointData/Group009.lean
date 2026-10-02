import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_037_check : endpointCheck 37 = true := by decide +kernel
theorem endpoint_037_bounds : (logLower 37 : ℝ) ≤ Real.log 37 ∧ Real.log 37 ≤ (logUpper 37 : ℝ) := endpointCheck_sound endpoint_037_check
theorem endpoint_038_check : endpointCheck 38 = true := by decide +kernel
theorem endpoint_038_bounds : (logLower 38 : ℝ) ≤ Real.log 38 ∧ Real.log 38 ≤ (logUpper 38 : ℝ) := endpointCheck_sound endpoint_038_check
theorem endpoint_039_check : endpointCheck 39 = true := by decide +kernel
theorem endpoint_039_bounds : (logLower 39 : ℝ) ≤ Real.log 39 ∧ Real.log 39 ≤ (logUpper 39 : ℝ) := endpointCheck_sound endpoint_039_check
theorem endpoint_040_check : endpointCheck 40 = true := by decide +kernel
theorem endpoint_040_bounds : (logLower 40 : ℝ) ≤ Real.log 40 ∧ Real.log 40 ≤ (logUpper 40 : ℝ) := endpointCheck_sound endpoint_040_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_037_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_037_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_038_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_038_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_039_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_039_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_040_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_040_bounds
