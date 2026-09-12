import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_good288_checked :
    goodSegmentCheck 43 14 29
      { lower := 68782, upper := 68792, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 43) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row043_good289_checked :
    goodSegmentCheck 43 14 29
      { lower := 73205, upper := 73209, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 43) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row043_good290_checked :
    goodSegmentCheck 43 14 29
      { lower := 73728, upper := 73737, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 43) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row043_good291_checked :
    goodSegmentCheck 43 14 29
      { lower := 150903, upper := 150940, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 43) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row043_good292_checked :
    goodSegmentCheck 43 14 29
      { lower := 327701, upper := 327722, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 43) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row043_good293_checked :
    goodSegmentCheck 43 14 29
      { lower := 655402, upper := 655402, witness := RowWitness.topPrime 655399 } = true := by
  exact good_top_prime_checked (i := 43) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_good293_checked
