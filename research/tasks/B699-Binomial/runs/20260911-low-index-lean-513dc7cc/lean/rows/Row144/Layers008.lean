import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row144Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer008_checked :
    coverLayerCheck row144.height row144.goods { lower := 5271552, upper := 10543104, M := 2 } = true := by
  decide +kernel

theorem row144_layer009_checked :
    coverLayerCheck row144.height row144.goods { lower := 10543104, upper := 21086208, M := 2 } = true := by
  decide +kernel

theorem row144_layer010_checked :
    coverLayerCheck row144.height row144.goods { lower := 21086208, upper := 42172416, M := 1 } = true := by
  decide +kernel

theorem row144_layer011_checked :
    coverLayerCheck row144.height row144.goods { lower := 42172416, upper := 84344832, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer011_checked
