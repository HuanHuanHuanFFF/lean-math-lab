import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer044_checked :
    coverLayerCheck row050.height row050.goods { lower := 43100855808819200, upper := 86201711617638400, M := 3 } = true := by
  decide +kernel

theorem row050_layer045_checked :
    coverLayerCheck row050.height row050.goods { lower := 86201711617638400, upper := 172403423235276800, M := 2 } = true := by
  decide +kernel

theorem row050_layer046_checked :
    coverLayerCheck row050.height row050.goods { lower := 172403423235276800, upper := 344806846470553600, M := 2 } = true := by
  decide +kernel

theorem row050_layer047_checked :
    coverLayerCheck row050.height row050.goods { lower := 344806846470553600, upper := 689613692941107200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer047_checked
