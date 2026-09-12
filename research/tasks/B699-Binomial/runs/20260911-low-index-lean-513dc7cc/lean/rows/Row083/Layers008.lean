import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row083Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer008_checked :
    coverLayerCheck row083.height row083.goods { lower := 1742336, upper := 3484672, M := 7 } = true := by
  decide +kernel

theorem row083_layer009_checked :
    coverLayerCheck row083.height row083.goods { lower := 3484672, upper := 6969344, M := 6 } = true := by
  decide +kernel

theorem row083_layer010_checked :
    coverLayerCheck row083.height row083.goods { lower := 6969344, upper := 13938688, M := 5 } = true := by
  decide +kernel

theorem row083_layer011_checked :
    coverLayerCheck row083.height row083.goods { lower := 13938688, upper := 27877376, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer011_checked
