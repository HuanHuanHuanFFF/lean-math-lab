import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer048_checked :
    coverLayerCheck row029.height row029.goods { lower := 228557681089052672, upper := 457115362178105344, M := 8 } = true := by
  decide +kernel

theorem row029_layer049_checked :
    coverLayerCheck row029.height row029.goods { lower := 457115362178105344, upper := 914230724356210688, M := 8 } = true := by
  decide +kernel

theorem row029_layer050_checked :
    coverLayerCheck row029.height row029.goods { lower := 914230724356210688, upper := 1828461448712421376, M := 8 } = true := by
  decide +kernel

theorem row029_layer051_checked :
    coverLayerCheck row029.height row029.goods { lower := 1828461448712421376, upper := 3656922897424842752, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer051_checked
