import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row079Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_good240_checked :
    goodSegmentCheck 79 26 55
      { lower := 137842, upper := 137859, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good241_checked :
    goodSegmentCheck 79 26 55
      { lower := 146410, upper := 146412, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good242_checked :
    goodSegmentCheck 79 26 55
      { lower := 148955, upper := 148955, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row079_good243_checked :
    goodSegmentCheck 79 26 55
      { lower := 327701, upper := 327758, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 79) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_good243_checked
