import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good240_checked :
    goodSegmentCheck 35 11 23
      { lower := 31744, upper := 31747, witness := RowWitness.topPrime 31741 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good241_checked :
    goodSegmentCheck 35 11 23
      { lower := 43940, upper := 43957, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good242_checked :
    goodSegmentCheck 35 11 23
      { lower := 49152, upper := 49164, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good243_checked :
    goodSegmentCheck 35 11 23
      { lower := 73728, upper := 73729, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good244_checked :
    goodSegmentCheck 35 11 23
      { lower := 150903, upper := 150932, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good245_checked :
    goodSegmentCheck 35 11 23
      { lower := 219501, upper := 219522, witness := RowWitness.topPrime 219491 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good246_checked :
    goodSegmentCheck 35 11 23
      { lower := 327701, upper := 327714, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good246_checked
