import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layers092

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layers_checked :
    row042.layers.all (coverLayerCheck row042.height row042.goods) = true := by
  change row042_layers.all (coverLayerCheck row042.height row042.goods) = true
  simp only [row042_layers, List.all_cons, List.all_nil,
    row042_layer000_checked,
    row042_layer001_checked,
    row042_layer002_checked,
    row042_layer003_checked,
    row042_layer004_checked,
    row042_layer005_checked,
    row042_layer006_checked,
    row042_layer007_checked,
    row042_layer008_checked,
    row042_layer009_checked,
    row042_layer010_checked,
    row042_layer011_checked,
    row042_layer012_checked,
    row042_layer013_checked,
    row042_layer014_checked,
    row042_layer015_checked,
    row042_layer016_checked,
    row042_layer017_checked,
    row042_layer018_checked,
    row042_layer019_checked,
    row042_layer020_checked,
    row042_layer021_checked,
    row042_layer022_checked,
    row042_layer023_checked,
    row042_layer024_checked,
    row042_layer025_checked,
    row042_layer026_checked,
    row042_layer027_checked,
    row042_layer028_checked,
    row042_layer029_checked,
    row042_layer030_checked,
    row042_layer031_checked,
    row042_layer032_checked,
    row042_layer033_checked,
    row042_layer034_checked,
    row042_layer035_checked,
    row042_layer036_checked,
    row042_layer037_checked,
    row042_layer038_checked,
    row042_layer039_checked,
    row042_layer040_checked,
    row042_layer041_checked,
    row042_layer042_checked,
    row042_layer043_checked,
    row042_layer044_checked,
    row042_layer045_checked,
    row042_layer046_checked,
    row042_layer047_checked,
    row042_layer048_checked,
    row042_layer049_checked,
    row042_layer050_checked,
    row042_layer051_checked,
    row042_layer052_checked,
    row042_layer053_checked,
    row042_layer054_checked,
    row042_layer055_checked,
    row042_layer056_checked,
    row042_layer057_checked,
    row042_layer058_checked,
    row042_layer059_checked,
    row042_layer060_checked,
    row042_layer061_checked,
    row042_layer062_checked,
    row042_layer063_checked,
    row042_layer064_checked,
    row042_layer065_checked,
    row042_layer066_checked,
    row042_layer067_checked,
    row042_layer068_checked,
    row042_layer069_checked,
    row042_layer070_checked,
    row042_layer071_checked,
    row042_layer072_checked,
    row042_layer073_checked,
    row042_layer074_checked,
    row042_layer075_checked,
    row042_layer076_checked,
    row042_layer077_checked,
    row042_layer078_checked,
    row042_layer079_checked,
    row042_layer080_checked,
    row042_layer081_checked,
    row042_layer082_checked,
    row042_layer083_checked,
    row042_layer084_checked,
    row042_layer085_checked,
    row042_layer086_checked,
    row042_layer087_checked,
    row042_layer088_checked,
    row042_layer089_checked,
    row042_layer090_checked,
    row042_layer091_checked,
    row042_layer092_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layers_checked
