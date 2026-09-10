import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer052_checked :
    coverLayerCheck row035.height row035.goods { lower := 5359283556570890240, upper := 10718567113141780480, M := 11 } = true := by
  decide +kernel

theorem row035_layer053_checked :
    coverLayerCheck row035.height row035.goods { lower := 10718567113141780480, upper := 21437134226283560960, M := 11 } = true := by
  decide +kernel

theorem row035_layer054_checked :
    coverLayerCheck row035.height row035.goods { lower := 21437134226283560960, upper := 42874268452567121920, M := 11 } = true := by
  decide +kernel

theorem row035_layer055_checked :
    coverLayerCheck row035.height row035.goods { lower := 42874268452567121920, upper := 85748536905134243840, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer055_checked
