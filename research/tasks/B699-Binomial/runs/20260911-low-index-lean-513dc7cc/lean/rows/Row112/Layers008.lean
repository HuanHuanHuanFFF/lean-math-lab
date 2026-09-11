import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row112Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer008_checked :
    coverLayerCheck row112.height row112.goods { lower := 3182592, upper := 6365184, M := 6 } = true := by
  decide +kernel

theorem row112_layer009_checked :
    coverLayerCheck row112.height row112.goods { lower := 6365184, upper := 12730368, M := 5 } = true := by
  decide +kernel

theorem row112_layer010_checked :
    coverLayerCheck row112.height row112.goods { lower := 12730368, upper := 25460736, M := 4 } = true := by
  decide +kernel

theorem row112_layer011_checked :
    coverLayerCheck row112.height row112.goods { lower := 25460736, upper := 50921472, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer011_checked
