import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer016_checked :
    coverLayerCheck row062.height row062.goods { lower := 247857152, upper := 495714304, M := 8 } = true := by
  decide +kernel

theorem row062_layer017_checked :
    coverLayerCheck row062.height row062.goods { lower := 495714304, upper := 991428608, M := 8 } = true := by
  decide +kernel

theorem row062_layer018_checked :
    coverLayerCheck row062.height row062.goods { lower := 991428608, upper := 1982857216, M := 7 } = true := by
  decide +kernel

theorem row062_layer019_checked :
    coverLayerCheck row062.height row062.goods { lower := 1982857216, upper := 3965714432, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer019_checked
