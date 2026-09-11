import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer044_checked :
    coverLayerCheck row035.height row035.goods { lower := 20934701392855040, upper := 41869402785710080, M := 14 } = true := by
  decide +kernel

theorem row035_layer045_checked :
    coverLayerCheck row035.height row035.goods { lower := 41869402785710080, upper := 83738805571420160, M := 13 } = true := by
  decide +kernel

theorem row035_layer046_checked :
    coverLayerCheck row035.height row035.goods { lower := 83738805571420160, upper := 167477611142840320, M := 13 } = true := by
  decide +kernel

theorem row035_layer047_checked :
    coverLayerCheck row035.height row035.goods { lower := 167477611142840320, upper := 334955222285680640, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer047_checked
