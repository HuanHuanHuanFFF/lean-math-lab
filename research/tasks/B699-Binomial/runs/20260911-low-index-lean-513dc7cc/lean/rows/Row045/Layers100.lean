import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer100_checked :
    coverLayerCheck row045.height row045.goods { lower := 2509948188451894214963472346644480, upper := 5019896376903788429926944693288960, M := 2 } = true := by
  decide +kernel

theorem row045_layer101_checked :
    coverLayerCheck row045.height row045.goods { lower := 5019896376903788429926944693288960, upper := 10000000000000000000000000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer101_checked
