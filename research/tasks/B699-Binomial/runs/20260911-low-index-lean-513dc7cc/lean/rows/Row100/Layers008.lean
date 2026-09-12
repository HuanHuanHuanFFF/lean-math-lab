import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row100Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row100_layer008_checked :
    coverLayerCheck row100.height row100.goods { lower := 2534400, upper := 5068800, M := 4 } = true := by
  decide +kernel

theorem row100_layer009_checked :
    coverLayerCheck row100.height row100.goods { lower := 5068800, upper := 10137600, M := 3 } = true := by
  decide +kernel

theorem row100_layer010_checked :
    coverLayerCheck row100.height row100.goods { lower := 10137600, upper := 20275200, M := 2 } = true := by
  decide +kernel

theorem row100_layer011_checked :
    coverLayerCheck row100.height row100.goods { lower := 20275200, upper := 40550400, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row100_layer011_checked
