import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_good256_checked :
    goodSegmentCheck 80 26 55
      { lower := 73205, upper := 73246, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good257_checked :
    goodSegmentCheck 80 26 55
      { lower := 78141, upper := 78204, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good258_checked :
    goodSegmentCheck 80 26 55
      { lower := 85291, upper := 85338, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good259_checked :
    goodSegmentCheck 80 26 55
      { lower := 85339, upper := 85370, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good260_checked :
    goodSegmentCheck 80 26 55
      { lower := 85697, upper := 85762, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good261_checked :
    goodSegmentCheck 80 26 55
      { lower := 100842, upper := 100899, witness := RowWitness.topPrime 100829 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good262_checked :
    goodSegmentCheck 80 26 55
      { lower := 137842, upper := 137860, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good263_checked :
    goodSegmentCheck 80 26 55
      { lower := 146410, upper := 146413, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row080_good264_checked :
    goodSegmentCheck 80 26 55
      { lower := 148955, upper := 148956, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 80) (r := 26) (s := 55) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_good264_checked
