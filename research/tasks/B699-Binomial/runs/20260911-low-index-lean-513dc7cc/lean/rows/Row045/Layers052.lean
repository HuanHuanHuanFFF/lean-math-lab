import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer052_checked :
    coverLayerCheck row045.height row045.goods { lower := 8917127262193582080, upper := 17834254524387164160, M := 7 } = true := by
  decide +kernel

theorem row045_layer053_checked :
    coverLayerCheck row045.height row045.goods { lower := 17834254524387164160, upper := 35668509048774328320, M := 7 } = true := by
  decide +kernel

theorem row045_layer054_checked :
    coverLayerCheck row045.height row045.goods { lower := 35668509048774328320, upper := 71337018097548656640, M := 6 } = true := by
  decide +kernel

theorem row045_layer055_checked :
    coverLayerCheck row045.height row045.goods { lower := 71337018097548656640, upper := 142674036195097313280, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer055_checked
