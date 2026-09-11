import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row111Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_good304_checked :
    goodSegmentCheck 111 36 77
      { lower := 146410, upper := 146444, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good305_checked :
    goodSegmentCheck 111 36 77
      { lower := 148877, upper := 148947, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good306_checked :
    goodSegmentCheck 111 36 77
      { lower := 148955, upper := 148987, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row111_good307_checked :
    goodSegmentCheck 111 36 77
      { lower := 327701, upper := 327790, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 111) (r := 36) (s := 77) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_good307_checked
