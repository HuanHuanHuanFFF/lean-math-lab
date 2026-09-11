import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row065Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_good224_checked :
    goodSegmentCheck 65 21 45
      { lower := 327701, upper := 327744, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 65) (r := 21) (s := 45) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_good224_checked
