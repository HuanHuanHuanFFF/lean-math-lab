import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row100Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_good208_checked :
    goodSegmentCheck 100 33 70
      { lower := 137842, upper := 137880, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good209_checked :
    goodSegmentCheck 100 33 70
      { lower := 146410, upper := 146433, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row100_good210_checked :
    goodSegmentCheck 100 33 70
      { lower := 148955, upper := 148976, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 100) (r := 33) (s := 70) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_good210_checked
