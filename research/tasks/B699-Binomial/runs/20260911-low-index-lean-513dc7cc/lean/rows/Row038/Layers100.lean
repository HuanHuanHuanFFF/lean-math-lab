import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row038Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer100_checked :
    coverLayerCheck row038.height row038.goods { lower := 1782316743920890538504364706758656, upper := 3564633487841781077008729413517312, M := 5 } = true := by
  decide +kernel

theorem row038_layer101_checked :
    coverLayerCheck row038.height row038.goods { lower := 3564633487841781077008729413517312, upper := 7129266975683562154017458827034624, M := 5 } = true := by
  decide +kernel

theorem row038_layer102_checked :
    coverLayerCheck row038.height row038.goods { lower := 7129266975683562154017458827034624, upper := 14258533951367124308034917654069248, M := 5 } = true := by
  decide +kernel

theorem row038_layer103_checked :
    coverLayerCheck row038.height row038.goods { lower := 14258533951367124308034917654069248, upper := 28517067902734248616069835308138496, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer103_checked
