import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Layer000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer001_checked :
    coverLayerCheck row029.height row029.goods { lower := 1624, upper := 3248, M := 32 } = true := by
  decide +kernel

theorem row029_layer002_checked :
    coverLayerCheck row029.height row029.goods { lower := 3248, upper := 6496, M := 31 } = true := by
  decide +kernel

theorem row029_layer003_checked :
    coverLayerCheck row029.height row029.goods { lower := 6496, upper := 12992, M := 30 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer003_checked
