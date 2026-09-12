import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row136Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_good224_checked :
    goodSegmentCheck 136 45 96
      { lower := 89383, upper := 89508, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good225_checked :
    goodSegmentCheck 136 45 96
      { lower := 103041, upper := 103101, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good226_checked :
    goodSegmentCheck 136 45 96
      { lower := 109503, upper := 109510, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good227_checked :
    goodSegmentCheck 136 45 96
      { lower := 137842, upper := 137916, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row136_good228_checked :
    goodSegmentCheck 136 45 96
      { lower := 148955, upper := 149012, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 136) (r := 45) (s := 96) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_good228_checked
