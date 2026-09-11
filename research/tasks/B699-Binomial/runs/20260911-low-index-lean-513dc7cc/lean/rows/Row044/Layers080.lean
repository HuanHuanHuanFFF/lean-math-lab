import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer080_checked :
    coverLayerCheck row044.height row044.goods { lower := 2287287650710878398544084992, upper := 4574575301421756797088169984, M := 11 } = true := by
  decide +kernel

theorem row044_layer081_checked :
    coverLayerCheck row044.height row044.goods { lower := 4574575301421756797088169984, upper := 9149150602843513594176339968, M := 11 } = true := by
  decide +kernel

theorem row044_layer082_checked :
    coverLayerCheck row044.height row044.goods { lower := 9149150602843513594176339968, upper := 18298301205687027188352679936, M := 11 } = true := by
  decide +kernel

theorem row044_layer083_checked :
    coverLayerCheck row044.height row044.goods { lower := 18298301205687027188352679936, upper := 36596602411374054376705359872, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer083_checked
