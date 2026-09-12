/- Candidate-only composed pair 2,3.
   The rows are right-associated ++; coverage is proved only by
   coverageCheck_append applied to the supplied batch proofs.
   No checker is copied and no full-list decide is used. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Composition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicData.Old23Head0016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old23Chunk01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old23Chunk02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old23Chunk03
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicData.New23Full0013

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Pair23

def rows23Tail04 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV3.New23Full0013.new23Full0013Rows

def rows23Tail03 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old23Chunk03.old23Chunk03Rows ++ rows23Tail04

def rows23Tail02 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old23Chunk02.old23Chunk02Rows ++ rows23Tail03

def rows23Tail01 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old23Chunk01.old23Chunk01Rows ++ rows23Tail02

def rows23 : List Math.B699.CubicBlockCover.BlockDatum :=
  Math.B699.CubicDataConsumersV3.Old23Head0016.old23Head0016Rows ++ rows23Tail01

theorem rows23Tail04Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 3 10 4096 15360 Math.B699.CubicDataConsumersV3.New23Full0013.new23Full0013Rows = true :=
  Math.B699.CubicDataConsumersV3.New23Full0013.new23Full0013Coverage

theorem rows23Tail03Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 3 10 2218 15360 rows23Tail03 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 3 10
    2218 15360 (Math.B699.CubicDataConsumersV4.Old23Chunk03.old23Chunk03Rows ++ rows23Tail04) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 3 10 Math.B699.CubicDataConsumersV4.Old23Chunk03.old23Chunk03Rows rows23Tail04
    (start := 2218) (mid := 4096) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old23Chunk03.old23Chunk03Coverage rows23Tail04Coverage

theorem rows23Tail02Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 3 10 435 15360 rows23Tail02 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 3 10
    435 15360 (Math.B699.CubicDataConsumersV4.Old23Chunk02.old23Chunk02Rows ++ rows23Tail03) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 3 10 Math.B699.CubicDataConsumersV4.Old23Chunk02.old23Chunk02Rows rows23Tail03
    (start := 435) (mid := 2218) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old23Chunk02.old23Chunk02Coverage rows23Tail03Coverage

theorem rows23Tail01Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 3 10 103 15360 rows23Tail01 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 3 10
    103 15360 (Math.B699.CubicDataConsumersV4.Old23Chunk01.old23Chunk01Rows ++ rows23Tail02) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 3 10 Math.B699.CubicDataConsumersV4.Old23Chunk01.old23Chunk01Rows rows23Tail02
    (start := 103) (mid := 435) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old23Chunk01.old23Chunk01Coverage rows23Tail02Coverage

theorem pair23Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 3 10 45 15360 rows23 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 3 10
    45 15360 (Math.B699.CubicDataConsumersV3.Old23Head0016.old23Head0016Rows ++ rows23Tail01) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 3 10 Math.B699.CubicDataConsumersV3.Old23Head0016.old23Head0016Rows rows23Tail01
    (start := 45) (mid := 103) (stop := 15360)
    Math.B699.CubicDataConsumersV3.Old23Head0016.old23Head0016Coverage rows23Tail01Coverage

theorem pair23Check :
    Math.B699.CubicBlockCover.pairCheck
      2 3 10 45 15359
      68 ((2 : ℕ) ^ 15360) rows23 = true := by
  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]
  constructor
  · decide +kernel
  · exact pair23Coverage

#print axioms Math.B699.CubicDataConsumersV4.Pair23.pair23Coverage
#print axioms Math.B699.CubicDataConsumersV4.Pair23.pair23Check

end Math.B699.CubicDataConsumersV4.Pair23
