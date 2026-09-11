import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer064_checked :
    coverLayerCheck row042.height row042.goods { lower := 31765293294927847882752, upper := 63530586589855695765504, M := 4 } = true := by
  decide +kernel

theorem row042_layer065_checked :
    coverLayerCheck row042.height row042.goods { lower := 63530586589855695765504, upper := 127061173179711391531008, M := 4 } = true := by
  decide +kernel

theorem row042_layer066_checked :
    coverLayerCheck row042.height row042.goods { lower := 127061173179711391531008, upper := 254122346359422783062016, M := 3 } = true := by
  decide +kernel

theorem row042_layer067_checked :
    coverLayerCheck row042.height row042.goods { lower := 254122346359422783062016, upper := 508244692718845566124032, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer067_checked
