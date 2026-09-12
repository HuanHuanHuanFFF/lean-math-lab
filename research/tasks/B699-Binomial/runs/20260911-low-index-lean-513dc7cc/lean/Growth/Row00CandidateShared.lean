import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.GrowthTreeRow00Candidate.Shared


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 3
def qSeedD : ℕ := 2
def qSeedZ : ℚ := (5 : ℚ) / 512
def qLam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168
noncomputable def qSeedCore : ℚ[X] :=
  Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] :=
  Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] :=
  Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ

end Math.B699.GrowthTreeRow00Candidate.Shared


