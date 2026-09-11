import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer100_checked :
    coverLayerCheck row035.height row035.goods { lower := 1508504214271592987781076814397440, upper := 3017008428543185975562153628794880, M := 4 } = true := by
  decide +kernel

theorem row035_layer101_checked :
    coverLayerCheck row035.height row035.goods { lower := 3017008428543185975562153628794880, upper := 6034016857086371951124307257589760, M := 4 } = true := by
  decide +kernel

theorem row035_layer102_checked :
    coverLayerCheck row035.height row035.goods { lower := 6034016857086371951124307257589760, upper := 12068033714172743902248614515179520, M := 4 } = true := by
  decide +kernel

theorem row035_layer103_checked :
    coverLayerCheck row035.height row035.goods { lower := 12068033714172743902248614515179520, upper := 24136067428345487804497229030359040, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer103_checked
