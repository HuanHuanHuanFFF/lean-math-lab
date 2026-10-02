import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_049_check : endpointCheck 49 = true := by decide +kernel
theorem endpoint_049_bounds : (logLower 49 : ℝ) ≤ Real.log 49 ∧ Real.log 49 ≤ (logUpper 49 : ℝ) := endpointCheck_sound endpoint_049_check
theorem endpoint_050_check : endpointCheck 50 = true := by decide +kernel
theorem endpoint_050_bounds : (logLower 50 : ℝ) ≤ Real.log 50 ∧ Real.log 50 ≤ (logUpper 50 : ℝ) := endpointCheck_sound endpoint_050_check
theorem endpoint_051_check : endpointCheck 51 = true := by decide +kernel
theorem endpoint_051_bounds : (logLower 51 : ℝ) ≤ Real.log 51 ∧ Real.log 51 ≤ (logUpper 51 : ℝ) := endpointCheck_sound endpoint_051_check
theorem endpoint_052_check : endpointCheck 52 = true := by decide +kernel
theorem endpoint_052_bounds : (logLower 52 : ℝ) ≤ Real.log 52 ∧ Real.log 52 ≤ (logUpper 52 : ℝ) := endpointCheck_sound endpoint_052_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_049_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_049_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_050_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_050_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_051_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_051_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_052_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_052_bounds
