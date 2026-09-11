import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row061Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer008_checked :
    coverLayerCheck row061.height row061.goods { lower := 936960, upper := 1873920, M := 11 } = true := by
  decide +kernel

theorem row061_layer009_checked :
    coverLayerCheck row061.height row061.goods { lower := 1873920, upper := 3747840, M := 9 } = true := by
  decide +kernel

theorem row061_layer010_checked :
    coverLayerCheck row061.height row061.goods { lower := 3747840, upper := 7495680, M := 8 } = true := by
  decide +kernel

theorem row061_layer011_checked :
    coverLayerCheck row061.height row061.goods { lower := 7495680, upper := 14991360, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer011_checked
