import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_good320_checked :
    goodSegmentCheck 48 15 32
      { lower := 81289, upper := 81297, witness := RowWitness.topPrime 81283 } = true := by
  exact good_top_prime_checked (i := 48) (r := 15) (s := 32) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row048_good321_checked :
    goodSegmentCheck 48 15 32
      { lower := 219501, upper := 219535, witness := RowWitness.topPrime 219491 } = true := by
  exact good_top_prime_checked (i := 48) (r := 15) (s := 32) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row048_good322_checked :
    goodSegmentCheck 48 15 32
      { lower := 658503, upper := 658534, witness := RowWitness.topPrime 658487 } = true := by
  exact good_top_prime_checked (i := 48) (r := 15) (s := 32) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row048_good323_checked :
    goodSegmentCheck 48 15 32
      { lower := 658535, upper := 658536, witness := RowWitness.topPrime 658507 } = true := by
  exact good_top_prime_checked (i := 48) (r := 15) (s := 32) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_good320_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_good321_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_good322_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_good323_checked
