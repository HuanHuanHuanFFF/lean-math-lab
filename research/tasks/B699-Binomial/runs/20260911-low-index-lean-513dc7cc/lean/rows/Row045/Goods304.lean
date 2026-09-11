import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_good304_checked :
    goodSegmentCheck 45 14 30
      { lower := 655402, upper := 655404, witness := RowWitness.topPrime 655399 } = true := by
  exact good_top_prime_checked (i := 45) (r := 14) (s := 30) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row045_good305_checked :
    goodSegmentCheck 45 14 30
      { lower := 658503, upper := 658531, witness := RowWitness.topPrime 658487 } = true := by
  exact good_top_prime_checked (i := 45) (r := 14) (s := 30) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row045_good306_checked :
    goodSegmentCheck 45 14 30
      { lower := 658532, upper := 658533, witness := RowWitness.topPrime 658507 } = true := by
  exact good_top_prime_checked (i := 45) (r := 14) (s := 30) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_good306_checked
