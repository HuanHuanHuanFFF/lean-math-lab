import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row090Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer004_checked :
    coverLayerCheck row090.height row090.goods { lower := 128160, upper := 256320, M := 15 } = true := by
  decide +kernel

theorem row090_layer005_checked :
    coverLayerCheck row090.height row090.goods { lower := 256320, upper := 512640, M := 12 } = true := by
  decide +kernel

theorem row090_layer006_checked :
    coverLayerCheck row090.height row090.goods { lower := 512640, upper := 1025280, M := 11 } = true := by
  decide +kernel

theorem row090_layer007_checked :
    coverLayerCheck row090.height row090.goods { lower := 1025280, upper := 2050560, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer007_checked
