import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row141Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_good256_checked :
    goodSegmentCheck 141 46 99
      { lower := 109503, upper := 109515, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good257_checked :
    goodSegmentCheck 141 46 99
      { lower := 146410, upper := 146474, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good258_checked :
    goodSegmentCheck 141 46 99
      { lower := 148955, upper := 149017, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row141_good259_checked :
    goodSegmentCheck 141 46 99
      { lower := 154568, upper := 154589, witness := RowWitness.topPrime 154543 } = true := by
  exact good_top_prime_checked (i := 141) (r := 46) (s := 99) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_good259_checked
