import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_good224_checked :
    goodSegmentCheck 41 13 28
      { lower := 327701, upper := 327720, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 41) (r := 13) (s := 28) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_good224_checked
