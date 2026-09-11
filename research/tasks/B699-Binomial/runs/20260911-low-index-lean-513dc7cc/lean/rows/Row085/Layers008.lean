import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row085Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer008_checked :
    coverLayerCheck row085.height row085.goods { lower := 1827840, upper := 3655680, M := 9 } = true := by
  decide +kernel

theorem row085_layer009_checked :
    coverLayerCheck row085.height row085.goods { lower := 3655680, upper := 7311360, M := 8 } = true := by
  decide +kernel

theorem row085_layer010_checked :
    coverLayerCheck row085.height row085.goods { lower := 7311360, upper := 14622720, M := 7 } = true := by
  decide +kernel

theorem row085_layer011_checked :
    coverLayerCheck row085.height row085.goods { lower := 14622720, upper := 29245440, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer011_checked
