import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer032_checked :
    coverLayerCheck row050.height row050.goods { lower := 10522669875200, upper := 21045339750400, M := 5 } = true := by
  decide +kernel

theorem row050_layer033_checked :
    coverLayerCheck row050.height row050.goods { lower := 21045339750400, upper := 42090679500800, M := 5 } = true := by
  decide +kernel

theorem row050_layer034_checked :
    coverLayerCheck row050.height row050.goods { lower := 42090679500800, upper := 84181359001600, M := 4 } = true := by
  decide +kernel

theorem row050_layer035_checked :
    coverLayerCheck row050.height row050.goods { lower := 84181359001600, upper := 168362718003200, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer035_checked
