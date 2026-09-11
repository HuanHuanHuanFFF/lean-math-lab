import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row182Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_good256_checked :
    goodSegmentCheck 182 60 129
      { lower := 109503, upper := 109556, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good257_checked :
    goodSegmentCheck 182 60 129
      { lower := 131072, upper := 131225, witness := RowWitness.topPrime 131071 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good258_checked :
    goodSegmentCheck 182 60 129
      { lower := 137842, upper := 137962, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good259_checked :
    goodSegmentCheck 182 60 129
      { lower := 148955, upper := 149058, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good260_checked :
    goodSegmentCheck 182 60 129
      { lower := 195223, upper := 195293, witness := RowWitness.topPrime 195203 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good261_checked :
    goodSegmentCheck 182 60 129
      { lower := 196608, upper := 196747, witness := RowWitness.topPrime 196597 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row182_good262_checked :
    goodSegmentCheck 182 60 129
      { lower := 262144, upper := 262269, witness := RowWitness.topPrime 262139 } = true := by
  exact good_top_prime_checked (i := 182) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_good262_checked
