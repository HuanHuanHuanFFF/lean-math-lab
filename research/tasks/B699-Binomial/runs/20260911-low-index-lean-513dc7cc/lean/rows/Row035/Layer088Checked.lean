import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer088Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer088Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer088Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer088_checked :
    coverLayerCheck row035.height row035.goods { lower := 368287161687400631782489456640, upper := 736574323374801263564978913280, M := 5 } = true := by
  exact coverLayerCheck_of_parts row035_layer088_arithmetic row035_layer088_enumeration row035_bounds_eq row035_layer088_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer088_checked
