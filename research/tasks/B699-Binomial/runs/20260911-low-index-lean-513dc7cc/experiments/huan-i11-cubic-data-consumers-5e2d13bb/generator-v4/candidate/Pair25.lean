/- Candidate-only composed pair 2,5.
   The rows are right-associated ++; coverage is proved only by
   coverageCheck_append applied to the supplied batch proofs.
   No checker is copied and no full-list decide is used. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Composition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk00
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk03
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.New25Chunk00

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Pair25

def rows25Tail04 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.New25Chunk00.new25Chunk00Rows

def rows25Tail03 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old25Chunk03.old25Chunk03Rows ++ rows25Tail04

def rows25Tail02 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old25Chunk02.old25Chunk02Rows ++ rows25Tail03

def rows25Tail01 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old25Chunk01.old25Chunk01Rows ++ rows25Tail02

def rows25 : List Math.B699.CubicBlockCover.BlockDatum :=
  Math.B699.CubicDataConsumersV4.Old25Chunk00.old25Chunk00Rows ++ rows25Tail01

theorem rows25Tail04Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 5 10 4096 15360 Math.B699.CubicDataConsumersV4.New25Chunk00.new25Chunk00Rows = true :=
  Math.B699.CubicDataConsumersV4.New25Chunk00.new25Chunk00Coverage

theorem rows25Tail03Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 5 10 1854 15360 rows25Tail03 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 5 10
    1854 15360 (Math.B699.CubicDataConsumersV4.Old25Chunk03.old25Chunk03Rows ++ rows25Tail04) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 5 10 Math.B699.CubicDataConsumersV4.Old25Chunk03.old25Chunk03Rows rows25Tail04
    (start := 1854) (mid := 4096) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old25Chunk03.old25Chunk03Coverage rows25Tail04Coverage

theorem rows25Tail02Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 5 10 370 15360 rows25Tail02 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 5 10
    370 15360 (Math.B699.CubicDataConsumersV4.Old25Chunk02.old25Chunk02Rows ++ rows25Tail03) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 5 10 Math.B699.CubicDataConsumersV4.Old25Chunk02.old25Chunk02Rows rows25Tail03
    (start := 370) (mid := 1854) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old25Chunk02.old25Chunk02Coverage rows25Tail03Coverage

theorem rows25Tail01Coverage : Math.B699.CubicBlockCover.coverageCheck
    2 5 10 95 15360 rows25Tail01 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 5 10
    95 15360 (Math.B699.CubicDataConsumersV4.Old25Chunk01.old25Chunk01Rows ++ rows25Tail02) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 5 10 Math.B699.CubicDataConsumersV4.Old25Chunk01.old25Chunk01Rows rows25Tail02
    (start := 95) (mid := 370) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old25Chunk01.old25Chunk01Coverage rows25Tail02Coverage

theorem pair25Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 5 10 44 15360 rows25 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 2 5 10
    44 15360 (Math.B699.CubicDataConsumersV4.Old25Chunk00.old25Chunk00Rows ++ rows25Tail01) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    2 5 10 Math.B699.CubicDataConsumersV4.Old25Chunk00.old25Chunk00Rows rows25Tail01
    (start := 44) (mid := 95) (stop := 15360)
    Math.B699.CubicDataConsumersV4.Old25Chunk00.old25Chunk00Coverage rows25Tail01Coverage

theorem pair25Check :
    Math.B699.CubicBlockCover.pairCheck
      2 5 10 44 15359
      66 ((2 : ℕ) ^ 15360) rows25 = true := by
  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]
  constructor
  · decide
  · exact pair25Coverage

#print axioms Math.B699.CubicDataConsumersV4.Pair25.pair25Coverage
#print axioms Math.B699.CubicDataConsumersV4.Pair25.pair25Check

end Math.B699.CubicDataConsumersV4.Pair25
