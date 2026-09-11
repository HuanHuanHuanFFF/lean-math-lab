import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer048_checked :
    coverLayerCheck row048.height row048.goods { lower := 635007547459239936, upper := 1270015094918479872, M := 9 } = true := by
  decide +kernel

theorem row048_layer049_checked :
    coverLayerCheck row048.height row048.goods { lower := 1270015094918479872, upper := 2540030189836959744, M := 9 } = true := by
  decide +kernel

theorem row048_layer050_checked :
    coverLayerCheck row048.height row048.goods { lower := 2540030189836959744, upper := 5080060379673919488, M := 9 } = true := by
  decide +kernel

theorem row048_layer051_checked :
    coverLayerCheck row048.height row048.goods { lower := 5080060379673919488, upper := 10160120759347838976, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer051_checked
