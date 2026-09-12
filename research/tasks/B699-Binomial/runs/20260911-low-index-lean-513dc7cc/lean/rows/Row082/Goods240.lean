import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row082Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good240_checked :
    goodSegmentCheck 82 27 57
      { lower := 73205, upper := 73248, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good241_checked :
    goodSegmentCheck 82 27 57
      { lower := 85293, upper := 85340, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good242_checked :
    goodSegmentCheck 82 27 57
      { lower := 85341, upper := 85345, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good243_checked :
    goodSegmentCheck 82 27 57
      { lower := 85697, upper := 85764, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good244_checked :
    goodSegmentCheck 82 27 57
      { lower := 146410, upper := 146415, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good245_checked :
    goodSegmentCheck 82 27 57
      { lower := 148955, upper := 148958, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good246_checked :
    goodSegmentCheck 82 27 57
      { lower := 327701, upper := 327761, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good246_checked
