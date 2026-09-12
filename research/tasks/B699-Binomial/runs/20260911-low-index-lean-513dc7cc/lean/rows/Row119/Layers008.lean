import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row119Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer008_checked :
    coverLayerCheck row119.height row119.goods { lower := 3594752, upper := 7189504, M := 4 } = true := by
  decide +kernel

theorem row119_layer009_checked :
    coverLayerCheck row119.height row119.goods { lower := 7189504, upper := 14379008, M := 4 } = true := by
  decide +kernel

theorem row119_layer010_checked :
    coverLayerCheck row119.height row119.goods { lower := 14379008, upper := 28758016, M := 3 } = true := by
  decide +kernel

theorem row119_layer011_checked :
    coverLayerCheck row119.height row119.goods { lower := 28758016, upper := 57516032, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer011_checked
