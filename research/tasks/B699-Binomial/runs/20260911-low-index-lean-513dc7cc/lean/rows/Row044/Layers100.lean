import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer100_checked :
    coverLayerCheck row044.height row044.goods { lower := 2398394935631810027631762464571392, upper := 4796789871263620055263524929142784, M := 8 } = true := by
  decide +kernel

theorem row044_layer101_checked :
    coverLayerCheck row044.height row044.goods { lower := 4796789871263620055263524929142784, upper := 9593579742527240110527049858285568, M := 8 } = true := by
  decide +kernel

theorem row044_layer102_checked :
    coverLayerCheck row044.height row044.goods { lower := 9593579742527240110527049858285568, upper := 19187159485054480221054099716571136, M := 8 } = true := by
  decide +kernel

theorem row044_layer103_checked :
    coverLayerCheck row044.height row044.goods { lower := 19187159485054480221054099716571136, upper := 38374318970108960442108199433142272, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer103_checked
