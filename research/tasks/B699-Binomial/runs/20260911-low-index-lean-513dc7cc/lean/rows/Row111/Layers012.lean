import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row111Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer012_checked :
    coverLayerCheck row111.height row111.goods { lower := 50012160, upper := 100024320, M := 3 } = true := by
  decide +kernel

theorem row111_layer013_checked :
    coverLayerCheck row111.height row111.goods { lower := 100024320, upper := 200048640, M := 3 } = true := by
  decide +kernel

theorem row111_layer014_checked :
    coverLayerCheck row111.height row111.goods { lower := 200048640, upper := 400097280, M := 2 } = true := by
  decide +kernel

theorem row111_layer015_checked :
    coverLayerCheck row111.height row111.goods { lower := 400097280, upper := 800194560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer015_checked
