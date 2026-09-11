import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row113Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good304_checked :
    goodSegmentCheck 113 37 79
      { lower := 146410, upper := 146446, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good305_checked :
    goodSegmentCheck 113 37 79
      { lower := 148877, upper := 148949, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good306_checked :
    goodSegmentCheck 113 37 79
      { lower := 148955, upper := 148989, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good307_checked :
    goodSegmentCheck 113 37 79
      { lower := 327701, upper := 327792, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good307_checked
