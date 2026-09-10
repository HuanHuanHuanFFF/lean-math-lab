import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_checked :
    coverLayerCheck row035.height row035.goods { lower := 304640, upper := 609280, M := 31 } = true := by
  decide +kernel

theorem row035_layer009_checked :
    coverLayerCheck row035.height row035.goods { lower := 609280, upper := 1218560, M := 31 } = true := by
  decide +kernel

theorem row035_layer010_checked :
    coverLayerCheck row035.height row035.goods { lower := 1218560, upper := 2437120, M := 30 } = true := by
  decide +kernel

theorem row035_layer011_checked :
    coverLayerCheck row035.height row035.goods { lower := 2437120, upper := 4874240, M := 29 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer011_checked
