import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer093Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer093Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer093Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer093_checked :
    coverLayerCheck row035.height row035.goods { lower := 11785189173996820217039662612480, upper := 23570378347993640434079325224960, M := 5 } = true := by
  exact coverLayerCheck_of_parts row035_layer093_arithmetic row035_layer093_enumeration row035_bounds_eq row035_layer093_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer093_checked
