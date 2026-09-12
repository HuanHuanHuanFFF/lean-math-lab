import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.Shared


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 5
def qSeedD : ℕ := 4
def qSeedZ : ℚ := (3 : ℚ) / 128
def qLam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336
noncomputable def qSeedCore : ℚ[X] := Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ

def eSeedC : ℕ := 5
def eSeedD : ℕ := 4
def eSeedZ : ℚ := (3 : ℚ) / 128
def eLam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336
noncomputable def eSeedCore : ℚ[X] := Math.B699.GrowthLeaf.eCore eSeedC eSeedD eSeedZ
noncomputable def eSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 0 eSeedZ
noncomputable def eSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 1 eSeedZ

end Math.B699.I11TwoFiveGrowth.Shared


