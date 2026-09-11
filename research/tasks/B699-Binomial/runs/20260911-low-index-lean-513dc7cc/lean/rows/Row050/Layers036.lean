import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer036_checked :
    coverLayerCheck row050.height row050.goods { lower := 168362718003200, upper := 336725436006400, M := 4 } = true := by
  decide +kernel

theorem row050_layer037_checked :
    coverLayerCheck row050.height row050.goods { lower := 336725436006400, upper := 673450872012800, M := 4 } = true := by
  decide +kernel

theorem row050_layer038_checked :
    coverLayerCheck row050.height row050.goods { lower := 673450872012800, upper := 1346901744025600, M := 3 } = true := by
  decide +kernel

theorem row050_layer039_checked :
    coverLayerCheck row050.height row050.goods { lower := 1346901744025600, upper := 2693803488051200, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer039_checked
