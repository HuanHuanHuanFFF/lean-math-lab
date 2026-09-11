import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer020_checked :
    coverLayerCheck row070.height row070.goods { lower := 5064622080, upper := 10129244160, M := 2 } = true := by
  decide +kernel

theorem row070_layer021_checked :
    coverLayerCheck row070.height row070.goods { lower := 10129244160, upper := 20258488320, M := 2 } = true := by
  decide +kernel

theorem row070_layer022_checked :
    coverLayerCheck row070.height row070.goods { lower := 20258488320, upper := 40516976640, M := 1 } = true := by
  decide +kernel

theorem row070_layer023_checked :
    coverLayerCheck row070.height row070.goods { lower := 40516976640, upper := 81033953280, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer023_checked
