import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer040_checked :
    coverLayerCheck row054.height row054.goods { lower := 3146802278694912, upper := 6293604557389824, M := 2 } = true := by
  decide +kernel

theorem row054_layer041_checked :
    coverLayerCheck row054.height row054.goods { lower := 6293604557389824, upper := 12587209114779648, M := 2 } = true := by
  decide +kernel

theorem row054_layer042_checked :
    coverLayerCheck row054.height row054.goods { lower := 12587209114779648, upper := 25174418229559296, M := 2 } = true := by
  decide +kernel

theorem row054_layer043_checked :
    coverLayerCheck row054.height row054.goods { lower := 25174418229559296, upper := 50348836459118592, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer043_checked
