import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.Endpoints
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
namespace Math.B699.ZeroBoundaryLogBoxes
theorem endpoint_013_check : endpointCheck 13 = true := by decide +kernel
theorem endpoint_013_bounds : (logLower 13 : ℝ) ≤ Real.log 13 ∧ Real.log 13 ≤ (logUpper 13 : ℝ) := endpointCheck_sound endpoint_013_check
theorem endpoint_014_check : endpointCheck 14 = true := by decide +kernel
theorem endpoint_014_bounds : (logLower 14 : ℝ) ≤ Real.log 14 ∧ Real.log 14 ≤ (logUpper 14 : ℝ) := endpointCheck_sound endpoint_014_check
theorem endpoint_015_check : endpointCheck 15 = true := by decide +kernel
theorem endpoint_015_bounds : (logLower 15 : ℝ) ≤ Real.log 15 ∧ Real.log 15 ≤ (logUpper 15 : ℝ) := endpointCheck_sound endpoint_015_check
theorem endpoint_016_check : endpointCheck 16 = true := by decide +kernel
theorem endpoint_016_bounds : (logLower 16 : ℝ) ≤ Real.log 16 ∧ Real.log 16 ≤ (logUpper 16 : ℝ) := endpointCheck_sound endpoint_016_check
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_013_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_013_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_014_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_014_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_015_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_015_bounds
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_016_check
#print axioms Math.B699.ZeroBoundaryLogBoxes.endpoint_016_bounds
