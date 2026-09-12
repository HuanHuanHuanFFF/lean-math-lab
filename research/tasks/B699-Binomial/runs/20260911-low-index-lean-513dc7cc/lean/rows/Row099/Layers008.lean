import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row099Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer008_checked :
    coverLayerCheck row099.height row099.goods { lower := 2483712, upper := 4967424, M := 4 } = true := by
  decide +kernel

theorem row099_layer009_checked :
    coverLayerCheck row099.height row099.goods { lower := 4967424, upper := 9934848, M := 3 } = true := by
  decide +kernel

theorem row099_layer010_checked :
    coverLayerCheck row099.height row099.goods { lower := 9934848, upper := 19869696, M := 3 } = true := by
  decide +kernel

theorem row099_layer011_checked :
    coverLayerCheck row099.height row099.goods { lower := 19869696, upper := 39739392, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer011_checked
