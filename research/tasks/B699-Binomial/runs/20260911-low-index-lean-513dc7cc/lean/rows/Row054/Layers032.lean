import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer032_checked :
    coverLayerCheck row054.height row054.goods { lower := 12292196401152, upper := 24584392802304, M := 4 } = true := by
  decide +kernel

theorem row054_layer033_checked :
    coverLayerCheck row054.height row054.goods { lower := 24584392802304, upper := 49168785604608, M := 3 } = true := by
  decide +kernel

theorem row054_layer034_checked :
    coverLayerCheck row054.height row054.goods { lower := 49168785604608, upper := 98337571209216, M := 3 } = true := by
  decide +kernel

theorem row054_layer035_checked :
    coverLayerCheck row054.height row054.goods { lower := 98337571209216, upper := 196675142418432, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer035_checked
