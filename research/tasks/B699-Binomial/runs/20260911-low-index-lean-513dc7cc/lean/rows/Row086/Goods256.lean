import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row086Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_good256_checked :
    goodSegmentCheck 86 28 59
      { lower := 73205, upper := 73252, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good257_checked :
    goodSegmentCheck 86 28 59
      { lower := 85293, upper := 85344, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good258_checked :
    goodSegmentCheck 86 28 59
      { lower := 85345, upper := 85349, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good259_checked :
    goodSegmentCheck 86 28 59
      { lower := 85697, upper := 85768, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good260_checked :
    goodSegmentCheck 86 28 59
      { lower := 137842, upper := 137866, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good261_checked :
    goodSegmentCheck 86 28 59
      { lower := 146410, upper := 146419, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good262_checked :
    goodSegmentCheck 86 28 59
      { lower := 148955, upper := 148962, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row086_good263_checked :
    goodSegmentCheck 86 28 59
      { lower := 327701, upper := 327765, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 86) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_good263_checked
