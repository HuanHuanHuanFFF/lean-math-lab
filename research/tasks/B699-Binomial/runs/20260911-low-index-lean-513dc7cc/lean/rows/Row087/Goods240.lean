import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row087Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good240_checked :
    goodSegmentCheck 87 28 60
      { lower := 68921, upper := 68976, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good241_checked :
    goodSegmentCheck 87 28 60
      { lower := 73728, upper := 73781, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good242_checked :
    goodSegmentCheck 87 28 60
      { lower := 148955, upper := 148963, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good243_checked :
    goodSegmentCheck 87 28 60
      { lower := 327701, upper := 327766, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good243_checked
