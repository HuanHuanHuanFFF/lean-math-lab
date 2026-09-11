import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row152Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer008_checked :
    coverLayerCheck row152.height row152.goods { lower := 5875712, upper := 11751424, M := 2 } = true := by
  decide +kernel

theorem row152_layer009_checked :
    coverLayerCheck row152.height row152.goods { lower := 11751424, upper := 23502848, M := 2 } = true := by
  decide +kernel

theorem row152_layer010_checked :
    coverLayerCheck row152.height row152.goods { lower := 23502848, upper := 47005696, M := 1 } = true := by
  decide +kernel

theorem row152_layer011_checked :
    coverLayerCheck row152.height row152.goods { lower := 47005696, upper := 94011392, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer011_checked
