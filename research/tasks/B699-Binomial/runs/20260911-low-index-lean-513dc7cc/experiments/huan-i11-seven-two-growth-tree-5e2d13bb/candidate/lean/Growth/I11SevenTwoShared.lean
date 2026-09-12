import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11SevenTwoGrowth.Shared


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 9
def qSeedD : ℕ := 5
def qSeedZ : ℚ := (1 : ℚ) / 49
def qLam : ℚ := (19015678853391498507418691 : ℚ) / 79228162514264337593543950336
noncomputable def qSeedCore : ℚ[X] := Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ

def eSeedC : ℕ := 9
def eSeedD : ℕ := 5
def eSeedZ : ℚ := (1 : ℚ) / 49
def eLam : ℚ := (18567076935738840000672813 : ℚ) / 19807040628566084398385987584
noncomputable def eSeedCore : ℚ[X] := Math.B699.GrowthLeaf.eCore eSeedC eSeedD eSeedZ
noncomputable def eSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 0 eSeedZ
noncomputable def eSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 1 eSeedZ

end Math.B699.I11SevenTwoGrowth.Shared


