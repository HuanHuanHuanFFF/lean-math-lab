import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer144_checked :
    coverLayerCheck row035.height row035.goods { lower := 26537886786251441538427504744451550192116695040, upper := 53075773572502883076855009488903100384233390080, M := 2 } = true := by
  decide +kernel

theorem row035_layer145_checked :
    coverLayerCheck row035.height row035.goods { lower := 53075773572502883076855009488903100384233390080, upper := 106151547145005766153710018977806200768466780160, M := 2 } = true := by
  decide +kernel

theorem row035_layer146_checked :
    coverLayerCheck row035.height row035.goods { lower := 106151547145005766153710018977806200768466780160, upper := 212303094290011532307420037955612401536933560320, M := 2 } = true := by
  decide +kernel

theorem row035_layer147_checked :
    coverLayerCheck row035.height row035.goods { lower := 212303094290011532307420037955612401536933560320, upper := 424606188580023064614840075911224803073867120640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer147_checked
