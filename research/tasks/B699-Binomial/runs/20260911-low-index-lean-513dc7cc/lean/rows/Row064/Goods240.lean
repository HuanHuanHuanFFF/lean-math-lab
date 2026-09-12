import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_good240_checked :
    goodSegmentCheck 64 21 44
      { lower := 48373, upper := 48397, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good241_checked :
    goodSegmentCheck 64 21 44
      { lower := 48778, upper := 48797, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good242_checked :
    goodSegmentCheck 64 21 44
      { lower := 58989, upper := 59019, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good243_checked :
    goodSegmentCheck 64 21 44
      { lower := 59049, upper := 59052, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good244_checked :
    goodSegmentCheck 64 21 44
      { lower := 59582, upper := 59599, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good245_checked :
    goodSegmentCheck 64 21 44
      { lower := 73205, upper := 73230, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row064_good246_checked :
    goodSegmentCheck 64 21 44
      { lower := 137842, upper := 137844, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 64) (r := 21) (s := 44) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_good246_checked
