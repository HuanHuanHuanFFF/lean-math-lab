import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer032_checked :
    coverLayerCheck row041.height row041.goods { lower := 7043746365440, upper := 14087492730880, M := 2 } = true := by
  decide +kernel

theorem row041_layer033_checked :
    coverLayerCheck row041.height row041.goods { lower := 14087492730880, upper := 28174985461760, M := 2 } = true := by
  decide +kernel

theorem row041_layer034_checked :
    coverLayerCheck row041.height row041.goods { lower := 28174985461760, upper := 56349970923520, M := 2 } = true := by
  decide +kernel

theorem row041_layer035_checked :
    coverLayerCheck row041.height row041.goods { lower := 56349970923520, upper := 112699941847040, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer035_checked
