/- Candidate-only composed pair 2,7.
   The rows are right-associated ++; coverage is proved only by
   coverageCheck_append applied to the supplied batch proofs.
   No checker is copied and no full-list decide is used. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Composition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old27Chunk00
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old27Chunk01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old27Chunk02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old27Chunk03
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.New27Chunk00

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Pair27

def rows27Tail04 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.New27Chunk00.new27Chunk00Rows

def rows27Tail03 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old27Chunk03.old27Chunk03Rows ++ rows27Tail04

def rows27Tail02 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old27Chunk02.old27Chunk02Rows ++ rows27Tail03

def rows27Tail01 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old27Chunk01.old27Chunk01Rows ++ rows27Tail02

def rows27 : List Math.B699.CubicBlockCover.BlockDatum :=
  Math.B699.CubicDataConsumersV4.Old27Chunk00.old27Chunk00Rows ++ rows27Tail01

theorem rows27Tail04Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 7 10 4096 15360 Math.B699.CubicDataConsumersV4.New27Chunk00.new27Chunk00Rows = true :=
  Math.B699.CubicDataConsumersV4.New27Chunk00.new27Chunk00Coverage

theorem rows27Tail03Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 7 10 2072 15360 rows27Tail03 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 7 10
    2072 15360 (Math.B699.CubicDataConsumersV4.Old27Chunk03.old27Chunk03Rows ++ rows27Tail04) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 7 10 Math.B699.CubicDataConsumersV4.Old27Chunk03.old27Chunk03Rows rows27Tail04
    (start := 2072) (mid := 4096) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old27Chunk03.old27Chunk03Coverage rows27Tail04Coverage

theorem rows27Tail02Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 7 10 411 15360 rows27Tail02 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 7 10
    411 15360 (Math.B699.CubicDataConsumersV4.Old27Chunk02.old27Chunk02Rows ++ rows27Tail03) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 7 10 Math.B699.CubicDataConsumersV4.Old27Chunk02.old27Chunk02Rows rows27Tail03
    (start := 411) (mid := 2072) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old27Chunk02.old27Chunk02Coverage rows27Tail03Coverage

theorem rows27Tail01Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 7 10 106 15360 rows27Tail01 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 7 10
    106 15360 (Math.B699.CubicDataConsumersV4.Old27Chunk01.old27Chunk01Rows ++ rows27Tail02) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 7 10 Math.B699.CubicDataConsumersV4.Old27Chunk01.old27Chunk01Rows rows27Tail02
    (start := 106) (mid := 411) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old27Chunk01.old27Chunk01Coverage rows27Tail02Coverage

theorem pair27Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 7 10 43 15360 rows27 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 7 10
    43 15360 (Math.B699.CubicDataConsumersV4.Old27Chunk00.old27Chunk00Rows ++ rows27Tail01) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 7 10 Math.B699.CubicDataConsumersV4.Old27Chunk00.old27Chunk00Rows rows27Tail01
    (start := 43) (mid := 106) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old27Chunk00.old27Chunk00Coverage rows27Tail01Coverage

theorem pair27Check :
    Math.B699.CubicBlockCover.pairCheck
      2 7 10 43 15359
      65 ((2 : ℕ) ^ 15360) rows27 = true := by
  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]
  constructor
  · decide +kernel
  · exact pair27Coverage

#print axioms Math.B699.CubicDataConsumersV4.Pair27.pair27Coverage
#print axioms Math.B699.CubicDataConsumersV4.Pair27.pair27Check

end Math.B699.CubicDataConsumersV4.Pair27
