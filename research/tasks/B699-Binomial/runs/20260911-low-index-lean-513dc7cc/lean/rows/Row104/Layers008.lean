import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row104Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer008_checked :
    coverLayerCheck row104.height row104.goods { lower := 2742272, upper := 5484544, M := 6 } = true := by
  decide +kernel

theorem row104_layer009_checked :
    coverLayerCheck row104.height row104.goods { lower := 5484544, upper := 10969088, M := 5 } = true := by
  decide +kernel

theorem row104_layer010_checked :
    coverLayerCheck row104.height row104.goods { lower := 10969088, upper := 21938176, M := 4 } = true := by
  decide +kernel

theorem row104_layer011_checked :
    coverLayerCheck row104.height row104.goods { lower := 21938176, upper := 43876352, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer011_checked
