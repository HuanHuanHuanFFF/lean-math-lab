import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_good240_checked :
    goodSegmentCheck 72 23 49
      { lower := 59582, upper := 59607, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good241_checked :
    goodSegmentCheck 72 23 49
      { lower := 65536, upper := 65592, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good242_checked :
    goodSegmentCheck 72 23 49
      { lower := 65593, upper := 65604, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good243_checked :
    goodSegmentCheck 72 23 49
      { lower := 73167, upper := 73172, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good244_checked :
    goodSegmentCheck 72 23 49
      { lower := 73205, upper := 73238, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good245_checked :
    goodSegmentCheck 72 23 49
      { lower := 78141, upper := 78196, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row072_good246_checked :
    goodSegmentCheck 72 23 49
      { lower := 85697, upper := 85754, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 72) (r := 23) (s := 49) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_good246_checked
