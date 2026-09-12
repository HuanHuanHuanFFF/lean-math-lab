import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row164Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_layer004_checked :
    coverLayerCheck row164.height row164.goods { lower := 427712, upper := 855424, M := 5 } = true := by
  decide +kernel

theorem row164_layer005_checked :
    coverLayerCheck row164.height row164.goods { lower := 855424, upper := 1710848, M := 4 } = true := by
  decide +kernel

theorem row164_layer006_checked :
    coverLayerCheck row164.height row164.goods { lower := 1710848, upper := 3421696, M := 3 } = true := by
  decide +kernel

theorem row164_layer007_checked :
    coverLayerCheck row164.height row164.goods { lower := 3421696, upper := 6843392, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layer007_checked
