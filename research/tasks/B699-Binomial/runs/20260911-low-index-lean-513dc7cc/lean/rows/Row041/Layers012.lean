import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer012_checked :
    coverLayerCheck row041.height row041.goods { lower := 6717440, upper := 13434880, M := 11 } = true := by
  decide +kernel

theorem row041_layer013_checked :
    coverLayerCheck row041.height row041.goods { lower := 13434880, upper := 26869760, M := 10 } = true := by
  decide +kernel

theorem row041_layer014_checked :
    coverLayerCheck row041.height row041.goods { lower := 26869760, upper := 53739520, M := 9 } = true := by
  decide +kernel

theorem row041_layer015_checked :
    coverLayerCheck row041.height row041.goods { lower := 53739520, upper := 107479040, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer015_checked
