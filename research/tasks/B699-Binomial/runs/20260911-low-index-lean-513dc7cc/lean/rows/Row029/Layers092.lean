import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer092_checked :
    coverLayerCheck row029.height row029.goods { lower := 4020829247598915132872355479552, upper := 8041658495197830265744710959104, M := 3 } = true := by
  decide +kernel

theorem row029_layer093_checked :
    coverLayerCheck row029.height row029.goods { lower := 8041658495197830265744710959104, upper := 16083316990395660531489421918208, M := 2 } = true := by
  decide +kernel

theorem row029_layer094_checked :
    coverLayerCheck row029.height row029.goods { lower := 16083316990395660531489421918208, upper := 32166633980791321062978843836416, M := 2 } = true := by
  decide +kernel

theorem row029_layer095_checked :
    coverLayerCheck row029.height row029.goods { lower := 32166633980791321062978843836416, upper := 64333267961582642125957687672832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer095_checked
