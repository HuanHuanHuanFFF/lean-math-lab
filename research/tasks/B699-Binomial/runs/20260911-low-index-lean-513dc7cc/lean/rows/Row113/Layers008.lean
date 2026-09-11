import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row113Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer008_checked :
    coverLayerCheck row113.height row113.goods { lower := 3239936, upper := 6479872, M := 5 } = true := by
  decide +kernel

theorem row113_layer009_checked :
    coverLayerCheck row113.height row113.goods { lower := 6479872, upper := 12959744, M := 4 } = true := by
  decide +kernel

theorem row113_layer010_checked :
    coverLayerCheck row113.height row113.goods { lower := 12959744, upper := 25919488, M := 4 } = true := by
  decide +kernel

theorem row113_layer011_checked :
    coverLayerCheck row113.height row113.goods { lower := 25919488, upper := 51838976, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer011_checked
