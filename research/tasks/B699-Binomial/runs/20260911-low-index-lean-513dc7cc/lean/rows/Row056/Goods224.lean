import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_good224_checked :
    goodSegmentCheck 56 18 38
      { lower := 65625, upper := 65665, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row056_good225_checked :
    goodSegmentCheck 56 18 38
      { lower := 73205, upper := 73222, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 56) (r := 18) (s := 38) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_good225_checked
