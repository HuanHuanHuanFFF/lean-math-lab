import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row065Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer012_checked :
    coverLayerCheck row065.height row065.goods { lower := 17039360, upper := 34078720, M := 6 } = true := by
  decide +kernel

theorem row065_layer013_checked :
    coverLayerCheck row065.height row065.goods { lower := 34078720, upper := 68157440, M := 5 } = true := by
  decide +kernel

theorem row065_layer014_checked :
    coverLayerCheck row065.height row065.goods { lower := 68157440, upper := 136314880, M := 5 } = true := by
  decide +kernel

theorem row065_layer015_checked :
    coverLayerCheck row065.height row065.goods { lower := 136314880, upper := 272629760, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer015_checked
