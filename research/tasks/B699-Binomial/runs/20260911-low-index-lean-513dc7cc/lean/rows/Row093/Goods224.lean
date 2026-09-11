import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row093Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_good224_checked :
    goodSegmentCheck 93 30 65
      { lower := 146410, upper := 146426, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 93) (r := 30) (s := 65) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_good224_checked
