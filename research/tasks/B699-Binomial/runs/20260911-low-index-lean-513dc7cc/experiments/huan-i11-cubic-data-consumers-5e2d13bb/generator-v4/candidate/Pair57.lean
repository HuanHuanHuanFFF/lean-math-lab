/- Candidate-only composed pair 5,7.
   The rows are right-associated ++; coverage is proved only by
   coverageCheck_append applied to the supplied batch proofs.
   No checker is copied and no full-list decide is used. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Composition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old57Chunk00
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old57Chunk01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old57Chunk02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.New57Chunk00

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Pair57

def rows57Tail03 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.New57Chunk00.new57Chunk00Rows

def rows57Tail02 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old57Chunk02.old57Chunk02Rows ++ rows57Tail03

def rows57Tail01 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old57Chunk01.old57Chunk01Rows ++ rows57Tail02

def rows57 : List Math.B699.CubicBlockCover.BlockDatum :=
  Math.B699.CubicDataConsumersV4.Old57Chunk00.old57Chunk00Rows ++ rows57Tail01

theorem rows57Tail03Coverage : Math.B699.CubicBlockCover.coverageCheck
    5 7 10 1765 6616 Math.B699.CubicDataConsumersV4.New57Chunk00.new57Chunk00Rows = true :=
  Math.B699.CubicDataConsumersV4.New57Chunk00.new57Chunk00Coverage

theorem rows57Tail02Coverage : Math.B699.CubicBlockCover.coverageCheck
    5 7 10 533 6616 rows57Tail02 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 5 7 10
    533 6616 (Math.B699.CubicDataConsumersV4.Old57Chunk02.old57Chunk02Rows ++ rows57Tail03) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    5 7 10 Math.B699.CubicDataConsumersV4.Old57Chunk02.old57Chunk02Rows rows57Tail03
    (start := 533) (mid := 1765) (stop := 6616)
    Math.B699.CubicDataConsumersV4.Old57Chunk02.old57Chunk02Coverage rows57Tail03Coverage

theorem rows57Tail01Coverage : Math.B699.CubicBlockCover.coverageCheck
    5 7 10 110 6616 rows57Tail01 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 5 7 10
    110 6616 (Math.B699.CubicDataConsumersV4.Old57Chunk01.old57Chunk01Rows ++ rows57Tail02) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    5 7 10 Math.B699.CubicDataConsumersV4.Old57Chunk01.old57Chunk01Rows rows57Tail02
    (start := 110) (mid := 533) (stop := 6616)
    Math.B699.CubicDataConsumersV4.Old57Chunk01.old57Chunk01Coverage rows57Tail02Coverage

theorem pair57Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      5 7 10 32 6616 rows57 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 5 7 10
    32 6616 (Math.B699.CubicDataConsumersV4.Old57Chunk00.old57Chunk00Rows ++ rows57Tail01) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    5 7 10 Math.B699.CubicDataConsumersV4.Old57Chunk00.old57Chunk00Rows rows57Tail01
    (start := 32) (mid := 110) (stop := 6616)
    Math.B699.CubicDataConsumersV4.Old57Chunk00.old57Chunk00Coverage rows57Tail01Coverage

theorem pair57Check :
    Math.B699.CubicBlockCover.pairCheck
      5 7 10 32 6615
      109 ((2 : ℕ) ^ 15360) rows57 = true := by
  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]
  constructor
  · decide
  · exact pair57Coverage

#print axioms Math.B699.CubicDataConsumersV4.Pair57.pair57Coverage
#print axioms Math.B699.CubicDataConsumersV4.Pair57.pair57Check

end Math.B699.CubicDataConsumersV4.Pair57
