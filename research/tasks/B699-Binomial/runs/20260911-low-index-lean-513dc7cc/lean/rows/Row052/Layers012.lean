import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer012_checked :
    coverLayerCheck row052.height row052.goods { lower := 10862592, upper := 21725184, M := 10 } = true := by
  decide +kernel

theorem row052_layer013_checked :
    coverLayerCheck row052.height row052.goods { lower := 21725184, upper := 43450368, M := 9 } = true := by
  decide +kernel

theorem row052_layer014_checked :
    coverLayerCheck row052.height row052.goods { lower := 43450368, upper := 86900736, M := 8 } = true := by
  decide +kernel

theorem row052_layer015_checked :
    coverLayerCheck row052.height row052.goods { lower := 86900736, upper := 173801472, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer015_checked
