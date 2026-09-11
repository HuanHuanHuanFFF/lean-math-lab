import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row096Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer008_checked :
    coverLayerCheck row096.height row096.goods { lower := 2334720, upper := 4669440, M := 4 } = true := by
  decide +kernel

theorem row096_layer009_checked :
    coverLayerCheck row096.height row096.goods { lower := 4669440, upper := 9338880, M := 3 } = true := by
  decide +kernel

theorem row096_layer010_checked :
    coverLayerCheck row096.height row096.goods { lower := 9338880, upper := 18677760, M := 2 } = true := by
  decide +kernel

theorem row096_layer011_checked :
    coverLayerCheck row096.height row096.goods { lower := 18677760, upper := 37355520, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer011_checked
