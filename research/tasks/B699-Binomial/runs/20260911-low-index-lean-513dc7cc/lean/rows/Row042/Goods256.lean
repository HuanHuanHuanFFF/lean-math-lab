import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_good256_checked :
    goodSegmentCheck 42 13 28
      { lower := 327701, upper := 327721, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 42) (r := 13) (s := 28) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row042_good257_checked :
    goodSegmentCheck 42 13 28
      { lower := 658503, upper := 658528, witness := RowWitness.topPrime 658487 } = true := by
  exact good_top_prime_checked (i := 42) (r := 13) (s := 28) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row042_good258_checked :
    goodSegmentCheck 42 13 28
      { lower := 658529, upper := 658530, witness := RowWitness.topPrime 658507 } = true := by
  exact good_top_prime_checked (i := 42) (r := 13) (s := 28) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_good258_checked
