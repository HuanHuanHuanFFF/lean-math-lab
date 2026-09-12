import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row102Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_good224_checked :
    goodSegmentCheck 102 33 71
      { lower := 68651, upper := 68691, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good225_checked :
    goodSegmentCheck 102 33 71
      { lower := 68921, upper := 68991, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good226_checked :
    goodSegmentCheck 102 33 71
      { lower := 73205, upper := 73268, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good227_checked :
    goodSegmentCheck 102 33 71
      { lower := 146410, upper := 146435, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row102_good228_checked :
    goodSegmentCheck 102 33 71
      { lower := 148955, upper := 148978, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 102) (r := 33) (s := 71) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_good228_checked
