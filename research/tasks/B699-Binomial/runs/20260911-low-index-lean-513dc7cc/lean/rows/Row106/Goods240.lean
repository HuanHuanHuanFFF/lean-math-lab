import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row106Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_good240_checked :
    goodSegmentCheck 106 35 74
      { lower := 65627, upper := 65641, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good241_checked :
    goodSegmentCheck 106 35 74
      { lower := 68651, upper := 68695, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good242_checked :
    goodSegmentCheck 106 35 74
      { lower := 68921, upper := 68995, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good243_checked :
    goodSegmentCheck 106 35 74
      { lower := 73205, upper := 73272, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good244_checked :
    goodSegmentCheck 106 35 74
      { lower := 137842, upper := 137886, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row106_good245_checked :
    goodSegmentCheck 106 35 74
      { lower := 146410, upper := 146439, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 106) (r := 35) (s := 74) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_good245_checked
