import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029H8.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029H8.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Layer000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_goods_checked :
    row029.goods.all (goodSegmentCheck row029.height.i row029.height.r row029.height.s) = true := by
  change row029_goods.all (goodSegmentCheck 29 9 19) = true
  simp only [row029_goods, List.all_cons, List.all_nil,
    row029_good000_checked,
    row029_good001_checked,
    row029_good002_checked,
    row029_good003_checked,
    row029_good004_checked,
    row029_good005_checked,
    row029_good006_checked,
    row029_good007_checked,
    row029_good008_checked,
    row029_good009_checked,
    row029_good010_checked,
    row029_good011_checked,
    row029_good012_checked,
    row029_good013_checked,
    row029_good014_checked,
    row029_good015_checked,
    row029_good016_checked,
    row029_good017_checked,
    row029_good018_checked,
    row029_good019_checked,
    row029_good020_checked,
    row029_good021_checked,
    row029_good022_checked,
    row029_good023_checked,
    row029_good024_checked,
    row029_good025_checked,
    row029_good026_checked,
    row029_good027_checked,
    row029_good028_checked,
    row029_good029_checked,
    row029_good030_checked,
    row029_good031_checked,
    row029_good032_checked,
    row029_good033_checked,
    row029_good034_checked,
    row029_good035_checked,
    row029_good036_checked,
    row029_good037_checked,
    row029_good038_checked,
    row029_good039_checked,
    row029_good040_checked,
    row029_good041_checked,
    row029_good042_checked,
    row029_good043_checked,
    row029_good044_checked,
    row029_good045_checked,
    row029_good046_checked,
    row029_good047_checked,
    row029_good048_checked,
    row029_good049_checked,
    row029_good050_checked,
    row029_good051_checked,
    row029_good052_checked,
    row029_good053_checked,
    row029_good054_checked,
    row029_good055_checked,
    row029_good056_checked,
    row029_good057_checked,
    row029_good058_checked,
    row029_good059_checked,
    row029_good060_checked,
    row029_good061_checked,
    row029_good062_checked,
    row029_good063_checked,
    row029_good064_checked,
    row029_good065_checked,
    row029_good066_checked,
    row029_good067_checked,
    row029_good068_checked,
    row029_good069_checked,
    row029_good070_checked,
    row029_good071_checked,
    row029_good072_checked,
    row029_good073_checked,
    row029_good074_checked,
    row029_good075_checked,
    row029_good076_checked,
    row029_good077_checked,
    row029_good078_checked,
    row029_good079_checked,
    row029_good080_checked,
    row029_good081_checked,
    row029_good082_checked,
    row029_good083_checked,
    row029_good084_checked,
    row029_good085_checked,
    row029_good086_checked,
    row029_good087_checked,
    row029_good088_checked,
    row029_good089_checked,
    row029_good090_checked,
    row029_good091_checked,
    row029_good092_checked,
    row029_good093_checked,
    row029_good094_checked,
    row029_good095_checked,
    row029_good096_checked,
    row029_good097_checked,
    row029_good098_checked,
    row029_good099_checked,
    row029_good100_checked,
    row029_good101_checked,
    row029_good102_checked,
    row029_good103_checked,
    row029_good104_checked,
    row029_good105_checked,
    row029_good106_checked,
    row029_good107_checked,
    row029_good108_checked,
    row029_good109_checked,
    row029_good110_checked,
    row029_good111_checked,
    row029_good112_checked,
    row029_good113_checked,
    row029_good114_checked,
    row029_good115_checked,
    row029_good116_checked,
    row029_good117_checked,
    row029_good118_checked,
    row029_good119_checked,
    row029_good120_checked,
    row029_good121_checked,
    row029_good122_checked,
    row029_good123_checked,
    row029_good124_checked,
    row029_good125_checked,
    row029_good126_checked,
    row029_good127_checked,
    row029_good128_checked,
    row029_good129_checked,
    row029_good130_checked,
    row029_good131_checked,
    row029_good132_checked,
    row029_good133_checked,
    row029_good134_checked,
    row029_good135_checked,
    row029_good136_checked,
    row029_good137_checked,
    row029_good138_checked,
    row029_good139_checked,
    row029_good140_checked,
    row029_good141_checked,
    row029_good142_checked,
    row029_good143_checked,
    row029_good144_checked,
    row029_good145_checked,
    row029_good146_checked,
    row029_good147_checked,
    row029_good148_checked,
    row029_good149_checked,
    row029_good150_checked,
    row029_good151_checked,
    row029_good152_checked,
    row029_good153_checked,
    row029_good154_checked,
    row029_good155_checked,
    row029_good156_checked,
    row029_good157_checked,
    row029_good158_checked,
    row029_good159_checked,
    row029_good160_checked,
    row029_good161_checked,
    row029_good162_checked,
    row029_good163_checked,
    row029_good164_checked,
    row029_good165_checked,
    row029_good166_checked,
    row029_good167_checked,
    row029_good168_checked,
    row029_good169_checked,
    row029_good170_checked,
    row029_good171_checked,
    row029_good172_checked,
    row029_good173_checked,
    row029_good174_checked,
    row029_good175_checked,
    row029_good176_checked,
    row029_good177_checked,
    row029_good178_checked,
    row029_good179_checked,
    row029_good180_checked,
    row029_good181_checked,
    row029_good182_checked,
    row029_good183_checked,
    row029_good184_checked,
    row029_good185_checked,
    row029_good186_checked,
    row029_good187_checked,
    row029_good188_checked,
    row029_good189_checked,
    row029_good190_checked,
    row029_good191_checked,
    row029_good192_checked,
    row029_good193_checked,
    row029_good194_checked,
    row029_good195_checked,
    row029_good196_checked,
    row029_good197_checked,
    row029_good198_checked,
    row029_good199_checked,
    row029_good200_checked,
    row029_good201_checked,
    row029_good202_checked,
    row029_good203_checked,
    row029_good204_checked,
    row029_good205_checked,
    row029_good206_checked,
    row029_good207_checked,
    row029_good208_checked,
    row029_good209_checked,
    row029_good210_checked,
    row029_good211_checked,
    row029_good212_checked,
    row029_good213_checked,
    row029_good214_checked,
    row029_good215_checked,
    row029_good216_checked,
    row029_good217_checked,
    row029_good218_checked,
    row029_good219_checked,
    row029_good220_checked,
    row029_good221_checked,
    row029_good222_checked,
    row029_good223_checked,
    row029_good224_checked,
    row029_good225_checked,
    row029_good226_checked,
    row029_good227_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_registered :
    decide (row029.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row029_small_checked :
    coverCheck (2 * row029.height.i + 2) (row029.height.i * (row029.height.i - 1) - 1)
      (row029.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row029_layerCover_checked :
    coverCheck (row029.height.i * (row029.height.i - 1)) (row029.height.n0 - 1)
      (row029.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer001_checked :
    coverLayerCheck row029.height row029.goods { lower := 1624, upper := 3248, M := 32 } = true := by
  decide +kernel

theorem row029_layer002_checked :
    coverLayerCheck row029.height row029.goods { lower := 3248, upper := 6496, M := 31 } = true := by
  decide +kernel

theorem row029_layer003_checked :
    coverLayerCheck row029.height row029.goods { lower := 6496, upper := 12992, M := 30 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer004_checked :
    coverLayerCheck row029.height row029.goods { lower := 12992, upper := 25984, M := 29 } = true := by
  decide +kernel

theorem row029_layer005_checked :
    coverLayerCheck row029.height row029.goods { lower := 25984, upper := 51968, M := 28 } = true := by
  decide +kernel

theorem row029_layer006_checked :
    coverLayerCheck row029.height row029.goods { lower := 51968, upper := 103936, M := 27 } = true := by
  decide +kernel

theorem row029_layer007_checked :
    coverLayerCheck row029.height row029.goods { lower := 103936, upper := 207872, M := 27 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer008_checked :
    coverLayerCheck row029.height row029.goods { lower := 207872, upper := 415744, M := 26 } = true := by
  decide +kernel

theorem row029_layer009_checked :
    coverLayerCheck row029.height row029.goods { lower := 415744, upper := 831488, M := 25 } = true := by
  decide +kernel

theorem row029_layer010_checked :
    coverLayerCheck row029.height row029.goods { lower := 831488, upper := 1662976, M := 24 } = true := by
  decide +kernel

theorem row029_layer011_checked :
    coverLayerCheck row029.height row029.goods { lower := 1662976, upper := 3325952, M := 24 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer012_checked :
    coverLayerCheck row029.height row029.goods { lower := 3325952, upper := 6651904, M := 23 } = true := by
  decide +kernel

theorem row029_layer013_checked :
    coverLayerCheck row029.height row029.goods { lower := 6651904, upper := 13303808, M := 22 } = true := by
  decide +kernel

theorem row029_layer014_checked :
    coverLayerCheck row029.height row029.goods { lower := 13303808, upper := 26607616, M := 22 } = true := by
  decide +kernel

theorem row029_layer015_checked :
    coverLayerCheck row029.height row029.goods { lower := 26607616, upper := 53215232, M := 21 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer016_checked :
    coverLayerCheck row029.height row029.goods { lower := 53215232, upper := 106430464, M := 20 } = true := by
  decide +kernel

theorem row029_layer017_checked :
    coverLayerCheck row029.height row029.goods { lower := 106430464, upper := 212860928, M := 20 } = true := by
  decide +kernel

theorem row029_layer018_checked :
    coverLayerCheck row029.height row029.goods { lower := 212860928, upper := 425721856, M := 19 } = true := by
  decide +kernel

theorem row029_layer019_checked :
    coverLayerCheck row029.height row029.goods { lower := 425721856, upper := 851443712, M := 19 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer020_checked :
    coverLayerCheck row029.height row029.goods { lower := 851443712, upper := 1702887424, M := 18 } = true := by
  decide +kernel

theorem row029_layer021_checked :
    coverLayerCheck row029.height row029.goods { lower := 1702887424, upper := 3405774848, M := 18 } = true := by
  decide +kernel

theorem row029_layer022_checked :
    coverLayerCheck row029.height row029.goods { lower := 3405774848, upper := 6811549696, M := 17 } = true := by
  decide +kernel

theorem row029_layer023_checked :
    coverLayerCheck row029.height row029.goods { lower := 6811549696, upper := 13623099392, M := 17 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer023_checked
