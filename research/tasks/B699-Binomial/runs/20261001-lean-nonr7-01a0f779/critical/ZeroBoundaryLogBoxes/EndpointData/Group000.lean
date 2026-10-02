import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_001_check : endpointCheck 1 = true := by decide +kernel
theorem endpoint_001_bounds : (logLower 1 : ℝ) ≤ Real.log 1 ∧ Real.log 1 ≤ (logUpper 1 : ℝ) := endpointCheck_sound endpoint_001_check
theorem endpoint_002_check : endpointCheck 2 = true := by decide +kernel
theorem endpoint_002_bounds : (logLower 2 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ (logUpper 2 : ℝ) := endpointCheck_sound endpoint_002_check
theorem endpoint_003_check : endpointCheck 3 = true := by decide +kernel
theorem endpoint_003_bounds : (logLower 3 : ℝ) ≤ Real.log 3 ∧ Real.log 3 ≤ (logUpper 3 : ℝ) := endpointCheck_sound endpoint_003_check
theorem endpoint_004_check : endpointCheck 4 = true := by decide +kernel
theorem endpoint_004_bounds : (logLower 4 : ℝ) ≤ Real.log 4 ∧ Real.log 4 ≤ (logUpper 4 : ℝ) := endpointCheck_sound endpoint_004_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_001_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_001_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_002_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_002_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_003_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_003_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_004_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_004_bounds
