import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_029_check : endpointCheck 29 = true := by decide +kernel
theorem endpoint_029_bounds : (logLower 29 : ℝ) ≤ Real.log 29 ∧ Real.log 29 ≤ (logUpper 29 : ℝ) := endpointCheck_sound endpoint_029_check
theorem endpoint_030_check : endpointCheck 30 = true := by decide +kernel
theorem endpoint_030_bounds : (logLower 30 : ℝ) ≤ Real.log 30 ∧ Real.log 30 ≤ (logUpper 30 : ℝ) := endpointCheck_sound endpoint_030_check
theorem endpoint_031_check : endpointCheck 31 = true := by decide +kernel
theorem endpoint_031_bounds : (logLower 31 : ℝ) ≤ Real.log 31 ∧ Real.log 31 ≤ (logUpper 31 : ℝ) := endpointCheck_sound endpoint_031_check
theorem endpoint_032_check : endpointCheck 32 = true := by decide +kernel
theorem endpoint_032_bounds : (logLower 32 : ℝ) ≤ Real.log 32 ∧ Real.log 32 ≤ (logUpper 32 : ℝ) := endpointCheck_sound endpoint_032_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_029_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_029_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_030_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_030_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_031_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_031_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_032_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_032_bounds
