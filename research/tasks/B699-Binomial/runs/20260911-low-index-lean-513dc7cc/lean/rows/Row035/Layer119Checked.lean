import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer119Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer119Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer119Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer119_checked :
    coverLayerCheck row035.height row035.goods { lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer119_arithmetic row035_layer119_enumeration row035_bounds_eq row035_layer119_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_checked
