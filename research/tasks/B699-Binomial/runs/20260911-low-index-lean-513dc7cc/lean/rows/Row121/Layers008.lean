import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row121Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer008_checked :
    coverLayerCheck row121.height row121.goods { lower := 3717120, upper := 7434240, M := 4 } = true := by
  decide +kernel

theorem row121_layer009_checked :
    coverLayerCheck row121.height row121.goods { lower := 7434240, upper := 14868480, M := 3 } = true := by
  decide +kernel

theorem row121_layer010_checked :
    coverLayerCheck row121.height row121.goods { lower := 14868480, upper := 29736960, M := 2 } = true := by
  decide +kernel

theorem row121_layer011_checked :
    coverLayerCheck row121.height row121.goods { lower := 29736960, upper := 59473920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer011_checked
