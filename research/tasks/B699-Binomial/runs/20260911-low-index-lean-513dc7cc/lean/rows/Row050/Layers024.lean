import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer024_checked :
    coverLayerCheck row050.height row050.goods { lower := 41104179200, upper := 82208358400, M := 8 } = true := by
  decide +kernel

theorem row050_layer025_checked :
    coverLayerCheck row050.height row050.goods { lower := 82208358400, upper := 164416716800, M := 7 } = true := by
  decide +kernel

theorem row050_layer026_checked :
    coverLayerCheck row050.height row050.goods { lower := 164416716800, upper := 328833433600, M := 7 } = true := by
  decide +kernel

theorem row050_layer027_checked :
    coverLayerCheck row050.height row050.goods { lower := 328833433600, upper := 657666867200, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer027_checked
