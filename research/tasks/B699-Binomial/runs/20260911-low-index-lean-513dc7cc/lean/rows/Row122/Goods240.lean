import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row122Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good240_checked :
    goodSegmentCheck 122 40 86
      { lower := 148955, upper := 148998, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good240_checked
