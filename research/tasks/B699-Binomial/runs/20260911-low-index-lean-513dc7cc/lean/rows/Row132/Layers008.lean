import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row132Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer008_checked :
    coverLayerCheck row132.height row132.goods { lower := 4426752, upper := 8853504, M := 3 } = true := by
  decide +kernel

theorem row132_layer009_checked :
    coverLayerCheck row132.height row132.goods { lower := 8853504, upper := 17707008, M := 2 } = true := by
  decide +kernel

theorem row132_layer010_checked :
    coverLayerCheck row132.height row132.goods { lower := 17707008, upper := 35414016, M := 2 } = true := by
  decide +kernel

theorem row132_layer011_checked :
    coverLayerCheck row132.height row132.goods { lower := 35414016, upper := 70828032, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer011_checked
