import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layers100

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layers_checked :
    row045.layers.all (coverLayerCheck row045.height row045.goods) = true := by
  change row045_layers.all (coverLayerCheck row045.height row045.goods) = true
  simp only [row045_layers, List.all_cons, List.all_nil,
    row045_layer000_checked,
    row045_layer001_checked,
    row045_layer002_checked,
    row045_layer003_checked,
    row045_layer004_checked,
    row045_layer005_checked,
    row045_layer006_checked,
    row045_layer007_checked,
    row045_layer008_checked,
    row045_layer009_checked,
    row045_layer010_checked,
    row045_layer011_checked,
    row045_layer012_checked,
    row045_layer013_checked,
    row045_layer014_checked,
    row045_layer015_checked,
    row045_layer016_checked,
    row045_layer017_checked,
    row045_layer018_checked,
    row045_layer019_checked,
    row045_layer020_checked,
    row045_layer021_checked,
    row045_layer022_checked,
    row045_layer023_checked,
    row045_layer024_checked,
    row045_layer025_checked,
    row045_layer026_checked,
    row045_layer027_checked,
    row045_layer028_checked,
    row045_layer029_checked,
    row045_layer030_checked,
    row045_layer031_checked,
    row045_layer032_checked,
    row045_layer033_checked,
    row045_layer034_checked,
    row045_layer035_checked,
    row045_layer036_checked,
    row045_layer037_checked,
    row045_layer038_checked,
    row045_layer039_checked,
    row045_layer040_checked,
    row045_layer041_checked,
    row045_layer042_checked,
    row045_layer043_checked,
    row045_layer044_checked,
    row045_layer045_checked,
    row045_layer046_checked,
    row045_layer047_checked,
    row045_layer048_checked,
    row045_layer049_checked,
    row045_layer050_checked,
    row045_layer051_checked,
    row045_layer052_checked,
    row045_layer053_checked,
    row045_layer054_checked,
    row045_layer055_checked,
    row045_layer056_checked,
    row045_layer057_checked,
    row045_layer058_checked,
    row045_layer059_checked,
    row045_layer060_checked,
    row045_layer061_checked,
    row045_layer062_checked,
    row045_layer063_checked,
    row045_layer064_checked,
    row045_layer065_checked,
    row045_layer066_checked,
    row045_layer067_checked,
    row045_layer068_checked,
    row045_layer069_checked,
    row045_layer070_checked,
    row045_layer071_checked,
    row045_layer072_checked,
    row045_layer073_checked,
    row045_layer074_checked,
    row045_layer075_checked,
    row045_layer076_checked,
    row045_layer077_checked,
    row045_layer078_checked,
    row045_layer079_checked,
    row045_layer080_checked,
    row045_layer081_checked,
    row045_layer082_checked,
    row045_layer083_checked,
    row045_layer084_checked,
    row045_layer085_checked,
    row045_layer086_checked,
    row045_layer087_checked,
    row045_layer088_checked,
    row045_layer089_checked,
    row045_layer090_checked,
    row045_layer091_checked,
    row045_layer092_checked,
    row045_layer093_checked,
    row045_layer094_checked,
    row045_layer095_checked,
    row045_layer096_checked,
    row045_layer097_checked,
    row045_layer098_checked,
    row045_layer099_checked,
    row045_layer100_checked,
    row045_layer101_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layers_checked
