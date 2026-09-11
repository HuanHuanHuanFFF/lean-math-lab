import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row134Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer008_checked :
    coverLayerCheck row134.height row134.goods { lower := 4562432, upper := 9124864, M := 2 } = true := by
  decide +kernel

theorem row134_layer009_checked :
    coverLayerCheck row134.height row134.goods { lower := 9124864, upper := 18249728, M := 2 } = true := by
  decide +kernel

theorem row134_layer010_checked :
    coverLayerCheck row134.height row134.goods { lower := 18249728, upper := 36499456, M := 2 } = true := by
  decide +kernel

theorem row134_layer011_checked :
    coverLayerCheck row134.height row134.goods { lower := 36499456, upper := 72998912, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer011_checked
