import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer046_arithmetic : LayerArithmeticValid row037.height { lower := 93731167244648448, upper := 187462334489296896, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer046_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer046_enumeration :
    activePowerIntervalList 37 2 93731167244648448 187462334489296896 = row037_layer046_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer046_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer046_pairs : pairCoverCheck row037_layer046_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer046_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer046_checked :
    coverLayerCheck row037.height row037.goods { lower := 93731167244648448, upper := 187462334489296896, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer046_arithmetic row037_layer046_enumeration row037_bounds_eq row037_layer046_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer046_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer047_intervals : List ColouredInterval :=
  [(2, 288230376151711744, 288230376151711780), (2, 288230376151711744, 288230376151711780), (3, 300189270593998242, 300189270593998278), (5, 298023223876953125, 298023223876953161), (17, 336755653118801858, 336755653118801894), (29, 353814783205469041, 353814783205469077)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer047_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer047_arithmetic : LayerArithmeticValid row037.height { lower := 187462334489296896, upper := 374924668978593792, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer047_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer047_enumeration :
    activePowerIntervalList 37 2 187462334489296896 374924668978593792 = row037_layer047_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer047_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer047_pairs : pairCoverCheck row037_layer047_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer047_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer047_checked :
    coverLayerCheck row037.height row037.goods { lower := 187462334489296896, upper := 374924668978593792, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer047_arithmetic row037_layer047_enumeration row037_bounds_eq row037_layer047_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer048_intervals : List ColouredInterval :=
  [(2, 576460752303423488, 576460752303423524), (2, 576460752303423488, 576460752303423524), (3, 450283905890997363, 450283905890997399), (5, 596046447753906250, 596046447753906286), (7, 558545864083284007, 558545864083284043), (11, 505447028499293771, 505447028499293807), (13, 665416609183179841, 665416609183179877), (23, 504036361936467383, 504036361936467419), (29, 707629566410938082, 707629566410938118)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer048_arithmetic : LayerArithmeticValid row037.height { lower := 374924668978593792, upper := 749849337957187584, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer048_enumeration :
    activePowerIntervalList 37 2 374924668978593792 749849337957187584 = row037_layer048_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer048_pairs : pairCoverCheck row037_layer048_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer048_checked :
    coverLayerCheck row037.height row037.goods { lower := 374924668978593792, upper := 749849337957187584, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer048_arithmetic row037_layer048_enumeration row037_bounds_eq row037_layer048_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer049_intervals : List ColouredInterval :=
  [(19, 799006685782884121, 799006685782884157), (31, 787662783788549761, 787662783788549797)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer049_arithmetic : LayerArithmeticValid row037.height { lower := 749849337957187584, upper := 1000000000000000000, M := 1 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer049_enumeration :
    activePowerIntervalList 37 1 749849337957187584 1000000000000000000 = row037_layer049_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer049_pairs : pairCoverCheck row037_layer049_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer049_checked :
    coverLayerCheck row037.height row037.goods { lower := 749849337957187584, upper := 1000000000000000000, M := 1 } = true := by
  exact coverLayerCheck_of_parts row037_layer049_arithmetic row037_layer049_enumeration row037_bounds_eq row037_layer049_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer049_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layers_checked :
    row037.layers.all (coverLayerCheck row037.height row037.goods) = true := by
  change row037_layers.all (coverLayerCheck row037.height row037.goods) = true
  simp only [row037_layers, List.all_cons, List.all_nil,
    row037_layer000_checked,
    row037_layer001_checked,
    row037_layer002_checked,
    row037_layer003_checked,
    row037_layer004_checked,
    row037_layer005_checked,
    row037_layer006_checked,
    row037_layer007_checked,
    row037_layer008_checked,
    row037_layer009_checked,
    row037_layer010_checked,
    row037_layer011_checked,
    row037_layer012_checked,
    row037_layer013_checked,
    row037_layer014_checked,
    row037_layer015_checked,
    row037_layer016_checked,
    row037_layer017_checked,
    row037_layer018_checked,
    row037_layer019_checked,
    row037_layer020_checked,
    row037_layer021_checked,
    row037_layer022_checked,
    row037_layer023_checked,
    row037_layer024_checked,
    row037_layer025_checked,
    row037_layer026_checked,
    row037_layer027_checked,
    row037_layer028_checked,
    row037_layer029_checked,
    row037_layer030_checked,
    row037_layer031_checked,
    row037_layer032_checked,
    row037_layer033_checked,
    row037_layer034_checked,
    row037_layer035_checked,
    row037_layer036_checked,
    row037_layer037_checked,
    row037_layer038_checked,
    row037_layer039_checked,
    row037_layer040_checked,
    row037_layer041_checked,
    row037_layer042_checked,
    row037_layer043_checked,
    row037_layer044_checked,
    row037_layer045_checked,
    row037_layer046_checked,
    row037_layer047_checked,
    row037_layer048_checked,
    row037_layer049_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_checked : finiteCoverRowCheck row037 = true := by
  simp only [finiteCoverRowCheck, row037_registered, row037_goods_checked,
    row037_small_checked, row037_layerCover_checked, row037_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i037 :
    ∀ n j : ℕ, 1 ≤ 37 ∧ 37 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 37 ≤ p ∧ p ∣ Nat.choose n 37 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row037_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i037
