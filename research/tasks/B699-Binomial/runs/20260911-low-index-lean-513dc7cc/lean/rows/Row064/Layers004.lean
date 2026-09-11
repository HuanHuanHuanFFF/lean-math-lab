import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer005Checked
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer007Checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer004_checked :
    coverLayerCheck row064.height row064.goods { lower := 64512, upper := 129024, M := 19 } = true := by
  decide +kernel

theorem row064_layer006_checked :
    coverLayerCheck row064.height row064.goods { lower := 258048, upper := 516096, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_checked
