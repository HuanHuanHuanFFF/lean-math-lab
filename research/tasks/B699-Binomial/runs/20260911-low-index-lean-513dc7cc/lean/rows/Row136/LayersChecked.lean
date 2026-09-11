import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row136.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row136.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row136.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row136.Layers012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layers_checked :
    row136.layers.all (coverLayerCheck row136.height row136.goods) = true := by
  change row136_layers.all (coverLayerCheck row136.height row136.goods) = true
  simp only [row136_layers, List.all_cons, List.all_nil,
    row136_layer000_checked,
    row136_layer001_checked,
    row136_layer002_checked,
    row136_layer003_checked,
    row136_layer004_checked,
    row136_layer005_checked,
    row136_layer006_checked,
    row136_layer007_checked,
    row136_layer008_checked,
    row136_layer009_checked,
    row136_layer010_checked,
    row136_layer011_checked,
    row136_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layers_checked
