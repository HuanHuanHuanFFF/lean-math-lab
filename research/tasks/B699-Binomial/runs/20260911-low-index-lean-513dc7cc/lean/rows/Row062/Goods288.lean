import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good288_checked :
    goodSegmentCheck 62 20 42
      { lower := 78141, upper := 78186, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good289_checked :
    goodSegmentCheck 62 20 42
      { lower := 81920, upper := 81923, witness := RowWitness.topPrime 81919 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good290_checked :
    goodSegmentCheck 62 20 42
      { lower := 83544, upper := 83582, witness := RowWitness.topPrime 83537 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good291_checked :
    goodSegmentCheck 62 20 42
      { lower := 98304, upper := 98321, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good292_checked :
    goodSegmentCheck 62 20 42
      { lower := 137842, upper := 137842, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good293_checked :
    goodSegmentCheck 62 20 42
      { lower := 150903, upper := 150959, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good293_checked
