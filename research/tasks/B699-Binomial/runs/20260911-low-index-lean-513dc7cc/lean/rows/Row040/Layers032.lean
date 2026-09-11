import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer032_checked :
    coverLayerCheck row040.height row040.goods { lower := 6700148981760, upper := 13400297963520, M := 5 } = true := by
  decide +kernel

theorem row040_layer033_checked :
    coverLayerCheck row040.height row040.goods { lower := 13400297963520, upper := 26800595927040, M := 4 } = true := by
  decide +kernel

theorem row040_layer034_checked :
    coverLayerCheck row040.height row040.goods { lower := 26800595927040, upper := 53601191854080, M := 4 } = true := by
  decide +kernel

theorem row040_layer035_checked :
    coverLayerCheck row040.height row040.goods { lower := 53601191854080, upper := 107202383708160, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer035_checked
