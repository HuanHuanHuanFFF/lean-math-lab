import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer148Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer148Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer148Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer148_checked :
    coverLayerCheck row035.height row035.goods { lower := 424606188580023064614840075911224803073867120640, upper := 849212377160046129229680151822449606147734241280, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer148_arithmetic row035_layer148_enumeration row035_bounds_eq row035_layer148_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer148_checked
