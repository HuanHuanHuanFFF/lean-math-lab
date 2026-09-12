import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer160_checked :
    coverLayerCheck row044.height row044.goods { lower := 2765161097830068321241371703499207473189024371310592, upper := 5530322195660136642482743406998414946378048742621184, M := 3 } = true := by
  decide +kernel

theorem row044_layer161_checked :
    coverLayerCheck row044.height row044.goods { lower := 5530322195660136642482743406998414946378048742621184, upper := 11060644391320273284965486813996829892756097485242368, M := 3 } = true := by
  decide +kernel

theorem row044_layer162_checked :
    coverLayerCheck row044.height row044.goods { lower := 11060644391320273284965486813996829892756097485242368, upper := 22121288782640546569930973627993659785512194970484736, M := 3 } = true := by
  decide +kernel

theorem row044_layer163_checked :
    coverLayerCheck row044.height row044.goods { lower := 22121288782640546569930973627993659785512194970484736, upper := 44242577565281093139861947255987319571024389940969472, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer163_checked
