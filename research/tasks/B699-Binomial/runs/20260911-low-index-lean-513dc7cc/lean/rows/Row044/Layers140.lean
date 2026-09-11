import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer140_checked :
    coverLayerCheck row044.height row044.goods { lower := 2637063119726246186486598685740668748082184192, upper := 5274126239452492372973197371481337496164368384, M := 4 } = true := by
  decide +kernel

theorem row044_layer141_checked :
    coverLayerCheck row044.height row044.goods { lower := 5274126239452492372973197371481337496164368384, upper := 10548252478904984745946394742962674992328736768, M := 4 } = true := by
  decide +kernel

theorem row044_layer142_checked :
    coverLayerCheck row044.height row044.goods { lower := 10548252478904984745946394742962674992328736768, upper := 21096504957809969491892789485925349984657473536, M := 4 } = true := by
  decide +kernel

theorem row044_layer143_checked :
    coverLayerCheck row044.height row044.goods { lower := 21096504957809969491892789485925349984657473536, upper := 42193009915619938983785578971850699969314947072, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer143_checked
