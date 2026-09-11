import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer012_checked :
    coverLayerCheck row040.height row040.goods { lower := 6389760, upper := 12779520, M := 15 } = true := by
  decide +kernel

theorem row040_layer013_checked :
    coverLayerCheck row040.height row040.goods { lower := 12779520, upper := 25559040, M := 15 } = true := by
  decide +kernel

theorem row040_layer014_checked :
    coverLayerCheck row040.height row040.goods { lower := 25559040, upper := 51118080, M := 14 } = true := by
  decide +kernel

theorem row040_layer015_checked :
    coverLayerCheck row040.height row040.goods { lower := 51118080, upper := 102236160, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer015_checked
