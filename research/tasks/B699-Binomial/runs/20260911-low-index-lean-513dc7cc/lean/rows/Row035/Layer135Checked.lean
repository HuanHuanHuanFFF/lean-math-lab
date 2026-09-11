import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer135Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer135Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer135Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer135_checked :
    coverLayerCheck row035.height row035.goods { lower := 51831810129397346754741220204006933968977920, upper := 103663620258794693509482440408013867937955840, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer135_arithmetic row035_layer135_enumeration row035_bounds_eq row035_layer135_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_checked
