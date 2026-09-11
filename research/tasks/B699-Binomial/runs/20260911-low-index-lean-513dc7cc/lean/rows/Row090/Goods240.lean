import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row090Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_good240_checked :
    goodSegmentCheck 90 29 62
      { lower := 102973, upper := 102974, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good241_checked :
    goodSegmentCheck 90 29 62
      { lower := 117128, upper := 117202, witness := RowWitness.topPrime 117127 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good242_checked :
    goodSegmentCheck 90 29 62
      { lower := 146410, upper := 146423, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good243_checked :
    goodSegmentCheck 90 29 62
      { lower := 148955, upper := 148966, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good244_checked :
    goodSegmentCheck 90 29 62
      { lower := 327701, upper := 327769, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good244_checked
