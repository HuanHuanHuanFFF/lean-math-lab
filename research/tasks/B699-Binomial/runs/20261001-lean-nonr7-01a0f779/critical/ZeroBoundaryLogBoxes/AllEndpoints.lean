import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group000
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group001
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group002
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group003
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group004
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group005
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group006
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group007
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group008
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group009
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group010
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group011
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group012
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group013
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group014
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.ZeroBoundaryLogBoxes.EndpointData.Group015
import Mathlib.Tactic.IntervalCases
namespace Math.B699.ZeroBoundaryLogBoxes
theorem log_bounds_one_to_sixtyfour {a : ℕ} (ha : 1 ≤ a) (hb : a ≤ 64) :
    (logLower a : ℝ) ≤ Real.log a ∧ Real.log a ≤ (logUpper a : ℝ) := by
  interval_cases a
  · exact endpoint_001_bounds
  · exact endpoint_002_bounds
  · exact endpoint_003_bounds
  · exact endpoint_004_bounds
  · exact endpoint_005_bounds
  · exact endpoint_006_bounds
  · exact endpoint_007_bounds
  · exact endpoint_008_bounds
  · exact endpoint_009_bounds
  · exact endpoint_010_bounds
  · exact endpoint_011_bounds
  · exact endpoint_012_bounds
  · exact endpoint_013_bounds
  · exact endpoint_014_bounds
  · exact endpoint_015_bounds
  · exact endpoint_016_bounds
  · exact endpoint_017_bounds
  · exact endpoint_018_bounds
  · exact endpoint_019_bounds
  · exact endpoint_020_bounds
  · exact endpoint_021_bounds
  · exact endpoint_022_bounds
  · exact endpoint_023_bounds
  · exact endpoint_024_bounds
  · exact endpoint_025_bounds
  · exact endpoint_026_bounds
  · exact endpoint_027_bounds
  · exact endpoint_028_bounds
  · exact endpoint_029_bounds
  · exact endpoint_030_bounds
  · exact endpoint_031_bounds
  · exact endpoint_032_bounds
  · exact endpoint_033_bounds
  · exact endpoint_034_bounds
  · exact endpoint_035_bounds
  · exact endpoint_036_bounds
  · exact endpoint_037_bounds
  · exact endpoint_038_bounds
  · exact endpoint_039_bounds
  · exact endpoint_040_bounds
  · exact endpoint_041_bounds
  · exact endpoint_042_bounds
  · exact endpoint_043_bounds
  · exact endpoint_044_bounds
  · exact endpoint_045_bounds
  · exact endpoint_046_bounds
  · exact endpoint_047_bounds
  · exact endpoint_048_bounds
  · exact endpoint_049_bounds
  · exact endpoint_050_bounds
  · exact endpoint_051_bounds
  · exact endpoint_052_bounds
  · exact endpoint_053_bounds
  · exact endpoint_054_bounds
  · exact endpoint_055_bounds
  · exact endpoint_056_bounds
  · exact endpoint_057_bounds
  · exact endpoint_058_bounds
  · exact endpoint_059_bounds
  · exact endpoint_060_bounds
  · exact endpoint_061_bounds
  · exact endpoint_062_bounds
  · exact endpoint_063_bounds
  · exact endpoint_064_bounds
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.log_bounds_one_to_sixtyfour
