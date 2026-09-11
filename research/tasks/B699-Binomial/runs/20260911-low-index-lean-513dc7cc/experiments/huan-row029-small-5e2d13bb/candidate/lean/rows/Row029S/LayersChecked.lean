import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers104
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers108
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layers112

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029S_layers_checked :
    row029.layers.all (coverLayerCheck row029.height row029.goods) = true := by
  change row029_layers.all (coverLayerCheck row029.height row029.goods) = true
  simp only [row029_layers, List.all_cons, List.all_nil,
    row029S_layer000_checked,
    row029S_layer001_checked,
    row029S_layer002_checked,
    row029S_layer003_checked,
    row029S_layer004_checked,
    row029S_layer005_checked,
    row029S_layer006_checked,
    row029S_layer007_checked,
    row029S_layer008_checked,
    row029S_layer009_checked,
    row029S_layer010_checked,
    row029S_layer011_checked,
    row029S_layer012_checked,
    row029S_layer013_checked,
    row029S_layer014_checked,
    row029S_layer015_checked,
    row029S_layer016_checked,
    row029S_layer017_checked,
    row029S_layer018_checked,
    row029S_layer019_checked,
    row029S_layer020_checked,
    row029S_layer021_checked,
    row029S_layer022_checked,
    row029S_layer023_checked,
    row029S_layer024_checked,
    row029S_layer025_checked,
    row029S_layer026_checked,
    row029S_layer027_checked,
    row029S_layer028_checked,
    row029S_layer029_checked,
    row029S_layer030_checked,
    row029S_layer031_checked,
    row029S_layer032_checked,
    row029S_layer033_checked,
    row029S_layer034_checked,
    row029S_layer035_checked,
    row029S_layer036_checked,
    row029S_layer037_checked,
    row029S_layer038_checked,
    row029S_layer039_checked,
    row029S_layer040_checked,
    row029S_layer041_checked,
    row029S_layer042_checked,
    row029S_layer043_checked,
    row029S_layer044_checked,
    row029S_layer045_checked,
    row029S_layer046_checked,
    row029S_layer047_checked,
    row029S_layer048_checked,
    row029S_layer049_checked,
    row029S_layer050_checked,
    row029S_layer051_checked,
    row029S_layer052_checked,
    row029S_layer053_checked,
    row029S_layer054_checked,
    row029S_layer055_checked,
    row029S_layer056_checked,
    row029S_layer057_checked,
    row029S_layer058_checked,
    row029S_layer059_checked,
    row029S_layer060_checked,
    row029S_layer061_checked,
    row029S_layer062_checked,
    row029S_layer063_checked,
    row029S_layer064_checked,
    row029S_layer065_checked,
    row029S_layer066_checked,
    row029S_layer067_checked,
    row029S_layer068_checked,
    row029S_layer069_checked,
    row029S_layer070_checked,
    row029S_layer071_checked,
    row029S_layer072_checked,
    row029S_layer073_checked,
    row029S_layer074_checked,
    row029S_layer075_checked,
    row029S_layer076_checked,
    row029S_layer077_checked,
    row029S_layer078_checked,
    row029S_layer079_checked,
    row029S_layer080_checked,
    row029S_layer081_checked,
    row029S_layer082_checked,
    row029S_layer083_checked,
    row029S_layer084_checked,
    row029S_layer085_checked,
    row029S_layer086_checked,
    row029S_layer087_checked,
    row029S_layer088_checked,
    row029S_layer089_checked,
    row029S_layer090_checked,
    row029S_layer091_checked,
    row029S_layer092_checked,
    row029S_layer093_checked,
    row029S_layer094_checked,
    row029S_layer095_checked,
    row029S_layer096_checked,
    row029S_layer097_checked,
    row029S_layer098_checked,
    row029S_layer099_checked,
    row029S_layer100_checked,
    row029S_layer101_checked,
    row029S_layer102_checked,
    row029S_layer103_checked,
    row029S_layer104_checked,
    row029S_layer105_checked,
    row029S_layer106_checked,
    row029S_layer107_checked,
    row029S_layer108_checked,
    row029S_layer109_checked,
    row029S_layer110_checked,
    row029S_layer111_checked,
    row029S_layer112_checked,
    row029S_layer113_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029S_layers_checked
