import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row120Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer008_checked :
    coverLayerCheck row120.height row120.goods { lower := 3655680, upper := 7311360, M := 4 } = true := by
  decide +kernel

theorem row120_layer009_checked :
    coverLayerCheck row120.height row120.goods { lower := 7311360, upper := 14622720, M := 3 } = true := by
  decide +kernel

theorem row120_layer010_checked :
    coverLayerCheck row120.height row120.goods { lower := 14622720, upper := 29245440, M := 3 } = true := by
  decide +kernel

theorem row120_layer011_checked :
    coverLayerCheck row120.height row120.goods { lower := 29245440, upper := 58490880, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer011_checked
