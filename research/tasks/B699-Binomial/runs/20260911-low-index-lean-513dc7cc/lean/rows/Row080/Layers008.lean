import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer008_checked :
    coverLayerCheck row080.height row080.goods { lower := 1617920, upper := 3235840, M := 10 } = true := by
  decide +kernel

theorem row080_layer009_checked :
    coverLayerCheck row080.height row080.goods { lower := 3235840, upper := 6471680, M := 9 } = true := by
  decide +kernel

theorem row080_layer010_checked :
    coverLayerCheck row080.height row080.goods { lower := 6471680, upper := 12943360, M := 8 } = true := by
  decide +kernel

theorem row080_layer011_checked :
    coverLayerCheck row080.height row080.goods { lower := 12943360, upper := 25886720, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer011_checked
