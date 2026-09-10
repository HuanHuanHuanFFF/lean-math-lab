import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer044_checked :
    coverLayerCheck row029.height row029.goods { lower := 14284855068065792, upper := 28569710136131584, M := 9 } = true := by
  decide +kernel

theorem row029_layer045_checked :
    coverLayerCheck row029.height row029.goods { lower := 28569710136131584, upper := 57139420272263168, M := 9 } = true := by
  decide +kernel

theorem row029_layer046_checked :
    coverLayerCheck row029.height row029.goods { lower := 57139420272263168, upper := 114278840544526336, M := 9 } = true := by
  decide +kernel

theorem row029_layer047_checked :
    coverLayerCheck row029.height row029.goods { lower := 114278840544526336, upper := 228557681089052672, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer047_checked
