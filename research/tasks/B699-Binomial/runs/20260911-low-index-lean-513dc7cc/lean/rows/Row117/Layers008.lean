import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row117Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer008_checked :
    coverLayerCheck row117.height row117.goods { lower := 3474432, upper := 6948864, M := 5 } = true := by
  decide +kernel

theorem row117_layer009_checked :
    coverLayerCheck row117.height row117.goods { lower := 6948864, upper := 13897728, M := 4 } = true := by
  decide +kernel

theorem row117_layer010_checked :
    coverLayerCheck row117.height row117.goods { lower := 13897728, upper := 27795456, M := 4 } = true := by
  decide +kernel

theorem row117_layer011_checked :
    coverLayerCheck row117.height row117.goods { lower := 27795456, upper := 55590912, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer011_checked
