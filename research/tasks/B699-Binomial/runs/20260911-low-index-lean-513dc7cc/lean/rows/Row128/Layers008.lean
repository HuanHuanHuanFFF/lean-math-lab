import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row128Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer008_checked :
    coverLayerCheck row128.height row128.goods { lower := 4161536, upper := 8323072, M := 3 } = true := by
  decide +kernel

theorem row128_layer009_checked :
    coverLayerCheck row128.height row128.goods { lower := 8323072, upper := 16646144, M := 2 } = true := by
  decide +kernel

theorem row128_layer010_checked :
    coverLayerCheck row128.height row128.goods { lower := 16646144, upper := 33292288, M := 2 } = true := by
  decide +kernel

theorem row128_layer011_checked :
    coverLayerCheck row128.height row128.goods { lower := 33292288, upper := 66584576, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer011_checked
