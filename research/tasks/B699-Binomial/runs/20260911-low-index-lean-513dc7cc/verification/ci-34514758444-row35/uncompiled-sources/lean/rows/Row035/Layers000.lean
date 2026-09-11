import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_checked :
    coverLayerCheck row035.height row035.goods { lower := 1190, upper := 2380, M := 38 } = true := by
  decide +kernel

theorem row035_layer001_checked :
    coverLayerCheck row035.height row035.goods { lower := 2380, upper := 4760, M := 37 } = true := by
  decide +kernel

theorem row035_layer002_checked :
    coverLayerCheck row035.height row035.goods { lower := 4760, upper := 9520, M := 36 } = true := by
  decide +kernel

theorem row035_layer003_checked :
    coverLayerCheck row035.height row035.goods { lower := 9520, upper := 19040, M := 35 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_checked
