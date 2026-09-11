import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row083Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_good256_checked :
    goodSegmentCheck 83 27 57
      { lower := 85293, upper := 85341, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good257_checked :
    goodSegmentCheck 83 27 57
      { lower := 85342, upper := 85346, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good258_checked :
    goodSegmentCheck 83 27 57
      { lower := 137842, upper := 137863, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good259_checked :
    goodSegmentCheck 83 27 57
      { lower := 146410, upper := 146416, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good260_checked :
    goodSegmentCheck 83 27 57
      { lower := 148955, upper := 148959, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row083_good261_checked :
    goodSegmentCheck 83 27 57
      { lower := 327701, upper := 327762, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 83) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_good261_checked
