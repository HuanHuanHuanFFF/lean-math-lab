/- Candidate-only composed pair 3,5.
   The rows are right-associated ++; coverage is proved only by
   coverageCheck_append applied to the supplied batch proofs.
   No checker is copied and no full-list decide is used. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Composition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk00
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk03
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.New35Chunk00

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Pair35

def rows35Tail04 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.New35Chunk00.new35Chunk00Rows

def rows35Tail03 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old35Chunk03.old35Chunk03Rows ++ rows35Tail04

def rows35Tail02 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old35Chunk02.old35Chunk02Rows ++ rows35Tail03

def rows35Tail01 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old35Chunk01.old35Chunk01Rows ++ rows35Tail02

def rows35 : List Math.B699.CubicBlockCover.BlockDatum :=
  Math.B699.CubicDataConsumersV4.Old35Chunk00.old35Chunk00Rows ++ rows35Tail01

theorem rows35Tail04Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 5 10 2585 9692 Math.B699.CubicDataConsumersV4.New35Chunk00.new35Chunk00Rows = true :=
  Math.B699.CubicDataConsumersV4.New35Chunk00.new35Chunk00Coverage

theorem rows35Tail03Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 5 10 2253 9692 rows35Tail03 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 5 10
    2253 9692 (Math.B699.CubicDataConsumersV4.Old35Chunk03.old35Chunk03Rows ++ rows35Tail04) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 5 10 Math.B699.CubicDataConsumersV4.Old35Chunk03.old35Chunk03Rows rows35Tail04
    (start := 2253) (mid := 2585) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old35Chunk03.old35Chunk03Coverage rows35Tail04Coverage

theorem rows35Tail02Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 5 10 431 9692 rows35Tail02 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 5 10
    431 9692 (Math.B699.CubicDataConsumersV4.Old35Chunk02.old35Chunk02Rows ++ rows35Tail03) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 5 10 Math.B699.CubicDataConsumersV4.Old35Chunk02.old35Chunk02Rows rows35Tail03
    (start := 431) (mid := 2253) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old35Chunk02.old35Chunk02Coverage rows35Tail03Coverage

theorem rows35Tail01Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 5 10 95 9692 rows35Tail01 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 5 10
    95 9692 (Math.B699.CubicDataConsumersV4.Old35Chunk01.old35Chunk01Rows ++ rows35Tail02) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 5 10 Math.B699.CubicDataConsumersV4.Old35Chunk01.old35Chunk01Rows rows35Tail02
    (start := 95) (mid := 431) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old35Chunk01.old35Chunk01Coverage rows35Tail02Coverage

theorem pair35Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 5 10 32 9692 rows35 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 5 10
    32 9692 (Math.B699.CubicDataConsumersV4.Old35Chunk00.old35Chunk00Rows ++ rows35Tail01) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 5 10 Math.B699.CubicDataConsumersV4.Old35Chunk00.old35Chunk00Rows rows35Tail01
    (start := 32) (mid := 95) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old35Chunk00.old35Chunk00Coverage rows35Tail01Coverage

theorem pair35Check :
    Math.B699.CubicBlockCover.pairCheck
      3 5 10 32 9691
      75 ((2 : ℕ) ^ 15360) rows35 = true := by
  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]
  constructor
  · decide
  · exact pair35Coverage

#print axioms Math.B699.CubicDataConsumersV4.Pair35.pair35Coverage
#print axioms Math.B699.CubicDataConsumersV4.Pair35.pair35Check

end Math.B699.CubicDataConsumersV4.Pair35
