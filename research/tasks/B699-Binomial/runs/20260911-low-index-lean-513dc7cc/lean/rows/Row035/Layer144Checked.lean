import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer144Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer144Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer144Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer144_checked :
    coverLayerCheck row035.height row035.goods { lower := 26537886786251441538427504744451550192116695040, upper := 53075773572502883076855009488903100384233390080, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer144_arithmetic row035_layer144_enumeration row035_bounds_eq row035_layer144_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer144_checked
