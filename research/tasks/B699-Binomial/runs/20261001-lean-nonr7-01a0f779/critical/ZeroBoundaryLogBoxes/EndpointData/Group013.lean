import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_053_check : endpointCheck 53 = true := by decide +kernel
theorem endpoint_053_bounds : (logLower 53 : ℝ) ≤ Real.log 53 ∧ Real.log 53 ≤ (logUpper 53 : ℝ) := endpointCheck_sound endpoint_053_check
theorem endpoint_054_check : endpointCheck 54 = true := by decide +kernel
theorem endpoint_054_bounds : (logLower 54 : ℝ) ≤ Real.log 54 ∧ Real.log 54 ≤ (logUpper 54 : ℝ) := endpointCheck_sound endpoint_054_check
theorem endpoint_055_check : endpointCheck 55 = true := by decide +kernel
theorem endpoint_055_bounds : (logLower 55 : ℝ) ≤ Real.log 55 ∧ Real.log 55 ≤ (logUpper 55 : ℝ) := endpointCheck_sound endpoint_055_check
theorem endpoint_056_check : endpointCheck 56 = true := by decide +kernel
theorem endpoint_056_bounds : (logLower 56 : ℝ) ≤ Real.log 56 ∧ Real.log 56 ≤ (logUpper 56 : ℝ) := endpointCheck_sound endpoint_056_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_053_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_053_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_054_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_054_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_055_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_055_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_056_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_056_bounds
