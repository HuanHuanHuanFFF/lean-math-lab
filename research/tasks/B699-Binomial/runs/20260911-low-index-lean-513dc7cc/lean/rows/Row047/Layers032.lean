import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer032_checked :
    coverLayerCheck row047.height row047.goods { lower := 9285719293952, upper := 18571438587904, M := 4 } = true := by
  decide +kernel

theorem row047_layer033_checked :
    coverLayerCheck row047.height row047.goods { lower := 18571438587904, upper := 37142877175808, M := 4 } = true := by
  decide +kernel

theorem row047_layer034_checked :
    coverLayerCheck row047.height row047.goods { lower := 37142877175808, upper := 74285754351616, M := 4 } = true := by
  decide +kernel

theorem row047_layer035_checked :
    coverLayerCheck row047.height row047.goods { lower := 74285754351616, upper := 148571508703232, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer035_checked
