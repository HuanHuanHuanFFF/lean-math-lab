import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer092Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer092Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer092Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer092_checked :
    coverLayerCheck row035.height row035.goods { lower := 5892594586998410108519831306240, upper := 11785189173996820217039662612480, M := 5 } = true := by
  exact coverLayerCheck_of_parts row035_layer092_arithmetic row035_layer092_enumeration row035_bounds_eq row035_layer092_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer092_checked
