import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row107Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_good256_checked :
    goodSegmentCheck 107 35 75
      { lower := 65536, upper := 65627, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good257_checked :
    goodSegmentCheck 107 35 75
      { lower := 65628, upper := 65642, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good258_checked :
    goodSegmentCheck 107 35 75
      { lower := 68651, upper := 68696, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good259_checked :
    goodSegmentCheck 107 35 75
      { lower := 68921, upper := 68996, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good260_checked :
    goodSegmentCheck 107 35 75
      { lower := 73205, upper := 73273, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good261_checked :
    goodSegmentCheck 107 35 75
      { lower := 137842, upper := 137887, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good262_checked :
    goodSegmentCheck 107 35 75
      { lower := 146410, upper := 146440, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row107_good263_checked :
    goodSegmentCheck 107 35 75
      { lower := 148955, upper := 148983, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 107) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_good263_checked
