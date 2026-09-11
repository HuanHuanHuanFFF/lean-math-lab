import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_good240_checked :
    goodSegmentCheck 53 17 36
      { lower := 73728, upper := 73747, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row053_good241_checked :
    goodSegmentCheck 53 17 36
      { lower := 327701, upper := 327732, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 53) (r := 17) (s := 36) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_good241_checked
