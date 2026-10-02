import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_041_check : endpointCheck 41 = true := by decide +kernel
theorem endpoint_041_bounds : (logLower 41 : ℝ) ≤ Real.log 41 ∧ Real.log 41 ≤ (logUpper 41 : ℝ) := endpointCheck_sound endpoint_041_check
theorem endpoint_042_check : endpointCheck 42 = true := by decide +kernel
theorem endpoint_042_bounds : (logLower 42 : ℝ) ≤ Real.log 42 ∧ Real.log 42 ≤ (logUpper 42 : ℝ) := endpointCheck_sound endpoint_042_check
theorem endpoint_043_check : endpointCheck 43 = true := by decide +kernel
theorem endpoint_043_bounds : (logLower 43 : ℝ) ≤ Real.log 43 ∧ Real.log 43 ≤ (logUpper 43 : ℝ) := endpointCheck_sound endpoint_043_check
theorem endpoint_044_check : endpointCheck 44 = true := by decide +kernel
theorem endpoint_044_bounds : (logLower 44 : ℝ) ≤ Real.log 44 ∧ Real.log 44 ≤ (logUpper 44 : ℝ) := endpointCheck_sound endpoint_044_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_041_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_041_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_042_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_042_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_043_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_043_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_044_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_044_bounds
