import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer180_checked :
    coverLayerCheck row044.height row044.goods { lower := 2899481563318261720013992575368384975406654419171375316992, upper := 5798963126636523440027985150736769950813308838342750633984, M := 2 } = true := by
  decide +kernel

theorem row044_layer181_checked :
    coverLayerCheck row044.height row044.goods { lower := 5798963126636523440027985150736769950813308838342750633984, upper := 11597926253273046880055970301473539901626617676685501267968, M := 2 } = true := by
  decide +kernel

theorem row044_layer182_checked :
    coverLayerCheck row044.height row044.goods { lower := 11597926253273046880055970301473539901626617676685501267968, upper := 23195852506546093760111940602947079803253235353371002535936, M := 2 } = true := by
  decide +kernel

theorem row044_layer183_checked :
    coverLayerCheck row044.height row044.goods { lower := 23195852506546093760111940602947079803253235353371002535936, upper := 46391705013092187520223881205894159606506470706742005071872, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer183_checked
