import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row128Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_good000_checked :
    goodSegmentCheck 128 42 90
      { lower := 258, upper := 384, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good001_checked :
    goodSegmentCheck 128 42 90
      { lower := 385, upper := 510, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good002_checked :
    goodSegmentCheck 128 42 90
      { lower := 511, upper := 636, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good003_checked :
    goodSegmentCheck 128 42 90
      { lower := 637, upper := 758, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good004_checked :
    goodSegmentCheck 128 42 90
      { lower := 759, upper := 884, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good005_checked :
    goodSegmentCheck 128 42 90
      { lower := 885, upper := 1010, witness := RowWitness.topPrime 883 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good006_checked :
    goodSegmentCheck 128 42 90
      { lower := 1011, upper := 1136, witness := RowWitness.topPrime 1009 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good007_checked :
    goodSegmentCheck 128 42 90
      { lower := 1137, upper := 1256, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good008_checked :
    goodSegmentCheck 128 42 90
      { lower := 1257, upper := 1376, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good009_checked :
    goodSegmentCheck 128 42 90
      { lower := 1377, upper := 1500, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good010_checked :
    goodSegmentCheck 128 42 90
      { lower := 1501, upper := 1626, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good011_checked :
    goodSegmentCheck 128 42 90
      { lower := 1627, upper := 1754, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good012_checked :
    goodSegmentCheck 128 42 90
      { lower := 1755, upper := 1880, witness := RowWitness.topPrime 1753 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good013_checked :
    goodSegmentCheck 128 42 90
      { lower := 1881, upper := 2006, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good014_checked :
    goodSegmentCheck 128 42 90
      { lower := 2007, upper := 2130, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row128_good015_checked :
    goodSegmentCheck 128 42 90
      { lower := 2131, upper := 2258, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 128) (r := 42) (s := 90) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_good015_checked
