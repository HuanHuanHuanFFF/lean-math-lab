import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row078Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer004_checked :
    coverLayerCheck row078.height row078.goods { lower := 96096, upper := 192192, M := 15 } = true := by
  decide +kernel

theorem row078_layer005_checked :
    coverLayerCheck row078.height row078.goods { lower := 192192, upper := 384384, M := 13 } = true := by
  decide +kernel

theorem row078_layer006_checked :
    coverLayerCheck row078.height row078.goods { lower := 384384, upper := 768768, M := 11 } = true := by
  decide +kernel

theorem row078_layer007_checked :
    coverLayerCheck row078.height row078.goods { lower := 768768, upper := 1537536, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer007_checked
