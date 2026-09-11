import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block026
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block027
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer056_checked :
    coverLayerCheck row046.height row046.goods { lower := 149159219658510827520, upper := 298318439317021655040, M := 2 } = true := by
  decide +kernel

theorem row046_layer057_checked :
    coverLayerCheck row046.height row046.goods { lower := 298318439317021655040, upper := 596636878634043310080, M := 2 } = true := by
  decide +kernel

theorem row046_layer058_checked :
    coverLayerCheck row046.height row046.goods { lower := 596636878634043310080, upper := 1193273757268086620160, M := 2 } = true := by
  decide +kernel

theorem row046_layer059_checked :
    coverLayerCheck row046.height row046.goods { lower := 1193273757268086620160, upper := 2386547514536173240320, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer059_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer060_checked :
    coverLayerCheck row046.height row046.goods { lower := 2386547514536173240320, upper := 4773095029072346480640, M := 2 } = true := by
  decide +kernel

theorem row046_layer061_checked :
    coverLayerCheck row046.height row046.goods { lower := 4773095029072346480640, upper := 9546190058144692961280, M := 2 } = true := by
  decide +kernel

theorem row046_layer062_checked :
    coverLayerCheck row046.height row046.goods { lower := 9546190058144692961280, upper := 19092380116289385922560, M := 2 } = true := by
  decide +kernel

theorem row046_layer063_checked :
    coverLayerCheck row046.height row046.goods { lower := 19092380116289385922560, upper := 38184760232578771845120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer064_checked :
    coverLayerCheck row046.height row046.goods { lower := 38184760232578771845120, upper := 76369520465157543690240, M := 2 } = true := by
  decide +kernel

theorem row046_layer065_checked :
    coverLayerCheck row046.height row046.goods { lower := 76369520465157543690240, upper := 152739040930315087380480, M := 2 } = true := by
  decide +kernel

theorem row046_layer066_checked :
    coverLayerCheck row046.height row046.goods { lower := 152739040930315087380480, upper := 305478081860630174760960, M := 2 } = true := by
  decide +kernel

theorem row046_layer067_checked :
    coverLayerCheck row046.height row046.goods { lower := 305478081860630174760960, upper := 610956163721260349521920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer067_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer068_checked :
    coverLayerCheck row046.height row046.goods { lower := 610956163721260349521920, upper := 1000000000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer068_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layers_checked :
    row046.layers.all (coverLayerCheck row046.height row046.goods) = true := by
  change row046_layers.all (coverLayerCheck row046.height row046.goods) = true
  simp only [row046_layers, List.all_cons, List.all_nil,
    row046_layer000_checked,
    row046_layer001_checked,
    row046_layer002_checked,
    row046_layer003_checked,
    row046_layer004_checked,
    row046_layer005_checked,
    row046_layer006_checked,
    row046_layer007_checked,
    row046_layer008_checked,
    row046_layer009_checked,
    row046_layer010_checked,
    row046_layer011_checked,
    row046_layer012_checked,
    row046_layer013_checked,
    row046_layer014_checked,
    row046_layer015_checked,
    row046_layer016_checked,
    row046_layer017_checked,
    row046_layer018_checked,
    row046_layer019_checked,
    row046_layer020_checked,
    row046_layer021_checked,
    row046_layer022_checked,
    row046_layer023_checked,
    row046_layer024_checked,
    row046_layer025_checked,
    row046_layer026_checked,
    row046_layer027_checked,
    row046_layer028_checked,
    row046_layer029_checked,
    row046_layer030_checked,
    row046_layer031_checked,
    row046_layer032_checked,
    row046_layer033_checked,
    row046_layer034_checked,
    row046_layer035_checked,
    row046_layer036_checked,
    row046_layer037_checked,
    row046_layer038_checked,
    row046_layer039_checked,
    row046_layer040_checked,
    row046_layer041_checked,
    row046_layer042_checked,
    row046_layer043_checked,
    row046_layer044_checked,
    row046_layer045_checked,
    row046_layer046_checked,
    row046_layer047_checked,
    row046_layer048_checked,
    row046_layer049_checked,
    row046_layer050_checked,
    row046_layer051_checked,
    row046_layer052_checked,
    row046_layer053_checked,
    row046_layer054_checked,
    row046_layer055_checked,
    row046_layer056_checked,
    row046_layer057_checked,
    row046_layer058_checked,
    row046_layer059_checked,
    row046_layer060_checked,
    row046_layer061_checked,
    row046_layer062_checked,
    row046_layer063_checked,
    row046_layer064_checked,
    row046_layer065_checked,
    row046_layer066_checked,
    row046_layer067_checked,
    row046_layer068_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_checked : finiteCoverRowCheck row046 = true := by
  simp only [finiteCoverRowCheck, row046_registered, row046_goods_checked,
    row046_small_checked, row046_layerCover_checked, row046_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i046 :
    ∀ n j : ℕ, 1 ≤ 46 ∧ 46 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 46 ≤ p ∧ p ∣ Nat.choose n 46 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row046_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i046
