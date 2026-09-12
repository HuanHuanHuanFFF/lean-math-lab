import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer116_checked :
    coverLayerCheck row044.height row044.goods { lower := 157181210501566301970875184878150746112, upper := 314362421003132603941750369756301492224, M := 6 } = true := by
  decide +kernel

theorem row044_layer117_checked :
    coverLayerCheck row044.height row044.goods { lower := 314362421003132603941750369756301492224, upper := 628724842006265207883500739512602984448, M := 6 } = true := by
  decide +kernel

theorem row044_layer118_checked :
    coverLayerCheck row044.height row044.goods { lower := 628724842006265207883500739512602984448, upper := 1257449684012530415767001479025205968896, M := 6 } = true := by
  decide +kernel

theorem row044_layer119_checked :
    coverLayerCheck row044.height row044.goods { lower := 1257449684012530415767001479025205968896, upper := 2514899368025060831534002958050411937792, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer119_checked
