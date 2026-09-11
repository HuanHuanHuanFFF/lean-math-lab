import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer044_checked :
    coverLayerCheck row049.height row049.goods { lower := 41376821576466432, upper := 82753643152932864, M := 5 } = true := by
  decide +kernel

theorem row049_layer045_checked :
    coverLayerCheck row049.height row049.goods { lower := 82753643152932864, upper := 165507286305865728, M := 5 } = true := by
  decide +kernel

theorem row049_layer046_checked :
    coverLayerCheck row049.height row049.goods { lower := 165507286305865728, upper := 331014572611731456, M := 5 } = true := by
  decide +kernel

theorem row049_layer047_checked :
    coverLayerCheck row049.height row049.goods { lower := 331014572611731456, upper := 662029145223462912, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer047_checked
