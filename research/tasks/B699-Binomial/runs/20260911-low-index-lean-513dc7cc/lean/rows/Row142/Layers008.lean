import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row142Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer008_checked :
    coverLayerCheck row142.height row142.goods { lower := 5125632, upper := 10251264, M := 2 } = true := by
  decide +kernel

theorem row142_layer009_checked :
    coverLayerCheck row142.height row142.goods { lower := 10251264, upper := 20502528, M := 2 } = true := by
  decide +kernel

theorem row142_layer010_checked :
    coverLayerCheck row142.height row142.goods { lower := 20502528, upper := 41005056, M := 2 } = true := by
  decide +kernel

theorem row142_layer011_checked :
    coverLayerCheck row142.height row142.goods { lower := 41005056, upper := 82010112, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer011_checked
