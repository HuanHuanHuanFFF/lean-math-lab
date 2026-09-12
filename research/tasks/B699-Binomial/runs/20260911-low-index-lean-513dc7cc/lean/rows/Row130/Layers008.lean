import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row130Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer008_checked :
    coverLayerCheck row130.height row130.goods { lower := 4293120, upper := 8586240, M := 2 } = true := by
  decide +kernel

theorem row130_layer009_checked :
    coverLayerCheck row130.height row130.goods { lower := 8586240, upper := 17172480, M := 2 } = true := by
  decide +kernel

theorem row130_layer010_checked :
    coverLayerCheck row130.height row130.goods { lower := 17172480, upper := 34344960, M := 2 } = true := by
  decide +kernel

theorem row130_layer011_checked :
    coverLayerCheck row130.height row130.goods { lower := 34344960, upper := 68689920, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer011_checked
