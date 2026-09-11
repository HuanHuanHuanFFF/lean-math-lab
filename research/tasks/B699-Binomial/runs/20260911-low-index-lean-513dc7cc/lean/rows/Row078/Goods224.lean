import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row078Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good224_checked :
    goodSegmentCheck 78 25 54
      { lower := 146410, upper := 146411, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good225_checked :
    goodSegmentCheck 78 25 54
      { lower := 327701, upper := 327757, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good225_checked
