import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row074Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_good304_checked :
    goodSegmentCheck 74 24 51
      { lower := 85697, upper := 85756, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good305_checked :
    goodSegmentCheck 74 24 51
      { lower := 98304, upper := 98333, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good306_checked :
    goodSegmentCheck 74 24 51
      { lower := 100842, upper := 100893, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good307_checked :
    goodSegmentCheck 74 24 51
      { lower := 137842, upper := 137854, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row074_good308_checked :
    goodSegmentCheck 74 24 51
      { lower := 327701, upper := 327753, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 74) (r := 24) (s := 51) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good307_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_good308_checked
