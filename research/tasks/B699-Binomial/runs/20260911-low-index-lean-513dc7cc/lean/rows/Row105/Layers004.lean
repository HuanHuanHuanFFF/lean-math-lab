import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row105Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer004_checked :
    coverLayerCheck row105.height row105.goods { lower := 174720, upper := 349440, M := 11 } = true := by
  decide +kernel

theorem row105_layer005_checked :
    coverLayerCheck row105.height row105.goods { lower := 349440, upper := 698880, M := 9 } = true := by
  decide +kernel

theorem row105_layer006_checked :
    coverLayerCheck row105.height row105.goods { lower := 698880, upper := 1397760, M := 8 } = true := by
  decide +kernel

theorem row105_layer007_checked :
    coverLayerCheck row105.height row105.goods { lower := 1397760, upper := 2795520, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer007_checked
