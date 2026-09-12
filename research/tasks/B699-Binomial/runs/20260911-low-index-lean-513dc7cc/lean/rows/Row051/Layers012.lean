import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer012_checked :
    coverLayerCheck row051.height row051.goods { lower := 10444800, upper := 20889600, M := 13 } = true := by
  decide +kernel

theorem row051_layer013_checked :
    coverLayerCheck row051.height row051.goods { lower := 20889600, upper := 41779200, M := 12 } = true := by
  decide +kernel

theorem row051_layer014_checked :
    coverLayerCheck row051.height row051.goods { lower := 41779200, upper := 83558400, M := 11 } = true := by
  decide +kernel

theorem row051_layer015_checked :
    coverLayerCheck row051.height row051.goods { lower := 83558400, upper := 167116800, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer015_checked
