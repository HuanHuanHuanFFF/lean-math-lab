import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer020_checked :
    coverLayerCheck row041.height row041.goods { lower := 1719664640, upper := 3439329280, M := 6 } = true := by
  decide +kernel

theorem row041_layer021_checked :
    coverLayerCheck row041.height row041.goods { lower := 3439329280, upper := 6878658560, M := 5 } = true := by
  decide +kernel

theorem row041_layer022_checked :
    coverLayerCheck row041.height row041.goods { lower := 6878658560, upper := 13757317120, M := 5 } = true := by
  decide +kernel

theorem row041_layer023_checked :
    coverLayerCheck row041.height row041.goods { lower := 13757317120, upper := 27514634240, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer023_checked
