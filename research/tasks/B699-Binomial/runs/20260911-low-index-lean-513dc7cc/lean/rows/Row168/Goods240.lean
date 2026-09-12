import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row168Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_good240_checked :
    goodSegmentCheck 168 55 119
      { lower := 199927, upper := 199976, witness := RowWitness.topPrime 199921 } = true := by
  exact good_top_prime_checked (i := 168) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_good240_checked
