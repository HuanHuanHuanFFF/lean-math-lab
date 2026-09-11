import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row116Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer008_checked :
    coverLayerCheck row116.height row116.goods { lower := 3415040, upper := 6830080, M := 6 } = true := by
  decide +kernel

theorem row116_layer009_checked :
    coverLayerCheck row116.height row116.goods { lower := 6830080, upper := 13660160, M := 5 } = true := by
  decide +kernel

theorem row116_layer010_checked :
    coverLayerCheck row116.height row116.goods { lower := 13660160, upper := 27320320, M := 4 } = true := by
  decide +kernel

theorem row116_layer011_checked :
    coverLayerCheck row116.height row116.goods { lower := 27320320, upper := 54640640, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer011_checked
