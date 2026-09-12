import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_good352_checked :
    goodSegmentCheck 44 14 29
      { lower := 658503, upper := 658530, witness := RowWitness.topPrime 658487 } = true := by
  exact good_top_prime_checked (i := 44) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row044_good353_checked :
    goodSegmentCheck 44 14 29
      { lower := 658531, upper := 658532, witness := RowWitness.topPrime 658507 } = true := by
  exact good_top_prime_checked (i := 44) (r := 14) (s := 29) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_good352_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_good353_checked
