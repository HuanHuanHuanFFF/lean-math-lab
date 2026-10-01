import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group000
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group001
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group002
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group003
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group004
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group005
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group006
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group007
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group008
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group009
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group010
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group011
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group012
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group013
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group014
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.ZeroBoundaryLogBoxes.EndpointData.Group015
import Mathlib.Tactic.IntervalCases
namespace Math.B699.ZeroBoundaryLogBoxes
theorem log_bounds_one_to_sixtyfour {a : ℕ} (ha : 1 ≤ a) (hb : a ≤ 64) :
    (logLower a : ℝ) ≤ Real.log a ∧ Real.log a ≤ (logUpper a : ℝ) := by
  interval_cases a
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_001_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_002_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_003_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_004_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_005_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_006_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_007_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_008_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_009_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_010_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_011_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_012_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_013_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_014_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_015_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_016_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_017_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_018_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_019_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_020_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_021_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_022_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_023_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_024_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_025_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_026_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_027_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_028_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_029_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_030_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_031_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_032_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_033_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_034_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_035_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_036_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_037_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_038_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_039_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_040_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_041_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_042_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_043_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_044_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_045_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_046_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_047_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_048_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_049_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_050_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_051_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_052_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_053_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_054_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_055_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_056_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_057_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_058_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_059_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_060_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_061_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_062_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_063_bounds
  · simpa only [Nat.cast_one, Nat.cast_ofNat] using endpoint_064_bounds
end Math.B699.ZeroBoundaryLogBoxes
#print axioms Math.B699.ZeroBoundaryLogBoxes.log_bounds_one_to_sixtyfour
