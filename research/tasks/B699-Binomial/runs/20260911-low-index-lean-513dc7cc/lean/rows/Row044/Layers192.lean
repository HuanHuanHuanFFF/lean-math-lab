import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer192_checked :
    coverLayerCheck row044.height row044.goods { lower := 11876276483351600005177313588708904859265656500925953298399232, upper := 23752552966703200010354627177417809718531313001851906596798464, M := 2 } = true := by
  decide +kernel

theorem row044_layer193_checked :
    coverLayerCheck row044.height row044.goods { lower := 23752552966703200010354627177417809718531313001851906596798464, upper := 47505105933406400020709254354835619437062626003703813193596928, M := 2 } = true := by
  decide +kernel

theorem row044_layer194_checked :
    coverLayerCheck row044.height row044.goods { lower := 47505105933406400020709254354835619437062626003703813193596928, upper := 95010211866812800041418508709671238874125252007407626387193856, M := 2 } = true := by
  decide +kernel

theorem row044_layer195_checked :
    coverLayerCheck row044.height row044.goods { lower := 95010211866812800041418508709671238874125252007407626387193856, upper := 190020423733625600082837017419342477748250504014815252774387712, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer195_checked
