import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer008_checked :
    coverLayerCheck row060.height row060.goods { lower := 906240, upper := 1812480, M := 13 } = true := by
  decide +kernel

theorem row060_layer009_checked :
    coverLayerCheck row060.height row060.goods { lower := 1812480, upper := 3624960, M := 11 } = true := by
  decide +kernel

theorem row060_layer010_checked :
    coverLayerCheck row060.height row060.goods { lower := 3624960, upper := 7249920, M := 10 } = true := by
  decide +kernel

theorem row060_layer011_checked :
    coverLayerCheck row060.height row060.goods { lower := 7249920, upper := 14499840, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer011_checked
