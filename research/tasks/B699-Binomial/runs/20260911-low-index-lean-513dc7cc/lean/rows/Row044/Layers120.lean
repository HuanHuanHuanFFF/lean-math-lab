import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer120_checked :
    coverLayerCheck row044.height row044.goods { lower := 2514899368025060831534002958050411937792, upper := 5029798736050121663068005916100823875584, M := 6 } = true := by
  decide +kernel

theorem row044_layer121_checked :
    coverLayerCheck row044.height row044.goods { lower := 5029798736050121663068005916100823875584, upper := 10059597472100243326136011832201647751168, M := 6 } = true := by
  decide +kernel

theorem row044_layer122_checked :
    coverLayerCheck row044.height row044.goods { lower := 10059597472100243326136011832201647751168, upper := 20119194944200486652272023664403295502336, M := 5 } = true := by
  decide +kernel

theorem row044_layer123_checked :
    coverLayerCheck row044.height row044.goods { lower := 20119194944200486652272023664403295502336, upper := 40238389888400973304544047328806591004672, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer123_checked
