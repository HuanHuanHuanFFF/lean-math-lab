import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row169Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_good240_checked :
    goodSegmentCheck 169 56 120
      { lower := 102152, upper := 102178, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good241_checked :
    goodSegmentCheck 169 56 120
      { lower := 103041, upper := 103134, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good242_checked :
    goodSegmentCheck 169 56 120
      { lower := 109503, upper := 109543, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good243_checked :
    goodSegmentCheck 169 56 120
      { lower := 137842, upper := 137949, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good244_checked :
    goodSegmentCheck 169 56 120
      { lower := 148955, upper := 149045, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row169_good245_checked :
    goodSegmentCheck 169 56 120
      { lower := 195223, upper := 195280, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 169) (r := 56) (s := 120) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_good245_checked
