/- Candidate-only composed pair 3,7.
   The rows are right-associated ++; coverage is proved only by
   coverageCheck_append applied to the supplied batch proofs.
   No checker is copied and no full-list decide is used. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Composition
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Pair
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk00
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk03
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.New37Chunk00

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Pair37

def rows37Tail04 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.New37Chunk00.new37Chunk00Rows

def rows37Tail03 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old37Chunk03.old37Chunk03Rows ++ rows37Tail04

def rows37Tail02 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old37Chunk02.old37Chunk02Rows ++ rows37Tail03

def rows37Tail01 : List Math.B699.CubicBlockCover.BlockDatum := Math.B699.CubicDataConsumersV4.Old37Chunk01.old37Chunk01Rows ++ rows37Tail02

def rows37 : List Math.B699.CubicBlockCover.BlockDatum :=
  Math.B699.CubicDataConsumersV4.Old37Chunk00.old37Chunk00Rows ++ rows37Tail01

theorem rows37Tail04Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 7 10 2585 9692 Math.B699.CubicDataConsumersV4.New37Chunk00.new37Chunk00Rows = true :=
  Math.B699.CubicDataConsumersV4.New37Chunk00.new37Chunk00Coverage

theorem rows37Tail03Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 7 10 2283 9692 rows37Tail03 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 7 10
    2283 9692 (Math.B699.CubicDataConsumersV4.Old37Chunk03.old37Chunk03Rows ++ rows37Tail04) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 7 10 Math.B699.CubicDataConsumersV4.Old37Chunk03.old37Chunk03Rows rows37Tail04
    (start := 2283) (mid := 2585) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old37Chunk03.old37Chunk03Coverage rows37Tail04Coverage

theorem rows37Tail02Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 7 10 440 9692 rows37Tail02 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 7 10
    440 9692 (Math.B699.CubicDataConsumersV4.Old37Chunk02.old37Chunk02Rows ++ rows37Tail03) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 7 10 Math.B699.CubicDataConsumersV4.Old37Chunk02.old37Chunk02Rows rows37Tail03
    (start := 440) (mid := 2283) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old37Chunk02.old37Chunk02Coverage rows37Tail03Coverage

theorem rows37Tail01Coverage : Math.B699.CubicBlockCover.coverageCheck
    3 7 10 96 9692 rows37Tail01 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 7 10
    96 9692 (Math.B699.CubicDataConsumersV4.Old37Chunk01.old37Chunk01Rows ++ rows37Tail02) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 7 10 Math.B699.CubicDataConsumersV4.Old37Chunk01.old37Chunk01Rows rows37Tail02
    (start := 96) (mid := 440) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old37Chunk01.old37Chunk01Coverage rows37Tail02Coverage

theorem pair37Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 7 10 32 9692 rows37 = true := by
  change Math.B699.CubicBlockCover.coverageCheck 3 7 10
    32 9692 (Math.B699.CubicDataConsumersV4.Old37Chunk00.old37Chunk00Rows ++ rows37Tail01) = true
  exact Math.B699.CubicBlockCover.coverageCheck_append
    3 7 10 Math.B699.CubicDataConsumersV4.Old37Chunk00.old37Chunk00Rows rows37Tail01
    (start := 32) (mid := 96) (stop := 9692)
    Math.B699.CubicDataConsumersV4.Old37Chunk00.old37Chunk00Coverage rows37Tail01Coverage

theorem pair37Check :
    Math.B699.CubicBlockCover.pairCheck
      3 7 10 32 9691
      75 ((2 : ℕ) ^ 15360) rows37 = true := by
  simp only [Math.B699.CubicBlockCover.pairCheck, Bool.and_eq_true]
  constructor
  · decide
  · exact pair37Coverage

#print axioms Math.B699.CubicDataConsumersV4.Pair37.pair37Coverage
#print axioms Math.B699.CubicDataConsumersV4.Pair37.pair37Check

end Math.B699.CubicDataConsumersV4.Pair37
