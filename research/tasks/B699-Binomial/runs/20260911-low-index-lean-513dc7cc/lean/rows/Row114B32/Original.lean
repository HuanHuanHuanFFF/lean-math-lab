import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114B32.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row114_layer004_intervals : List ColouredInterval :=
  [(2, 229376, 229489), (2, 262144, 262257), (2, 327680, 327793), (2, 393216, 393329), (2, 262144, 262257), (2, 393216, 393329), (2, 262144, 262257), (3, 236196, 236309), (3, 295245, 295358), (3, 354294, 354407), (5, 218750, 218863), (5, 234375, 234488), (5, 234375, 234488), (5, 312500, 312613), (5, 390625, 390738), (5, 390625, 390738), (7, 218491, 218604), (7, 235298, 235411), (7, 252105, 252218), (7, 235298, 235411), (7, 352947, 353060), (11, 219615, 219728), (11, 322102, 322215), (13, 228488, 228601), (13, 257049, 257162), (13, 285610, 285723), (13, 314171, 314284), (13, 342732, 342845), (13, 371293, 371406), (13, 399854, 399967), (13, 371293, 371406), (17, 250563, 250676), (17, 334084, 334197), (23, 279841, 279954), (29, 219501, 219614), (29, 243890, 244003), (29, 268279, 268392), (29, 292668, 292781), (29, 317057, 317170), (29, 341446, 341559), (29, 365835, 365948), (31, 208537, 208650), (31, 238328, 238441), (31, 268119, 268232), (31, 297910, 298023), (31, 327701, 327814), (31, 357492, 357605), (31, 387283, 387396), (37, 253265, 253378), (37, 303918, 304031), (37, 354571, 354684), (37, 405224, 405337), (41, 206763, 206876), (41, 275684, 275797), (41, 344605, 344718), (43, 238521, 238634), (43, 318028, 318141), (43, 397535, 397648), (47, 207646, 207759), (47, 311469, 311582), (53, 297754, 297867), (59, 410758, 410871), (61, 226981, 227094), (67, 300763, 300876), (71, 357911, 358024), (73, 389017, 389130)]

def row114_layer004_block000 : List ColouredInterval :=
  [(2, 229376, 229489), (2, 262144, 262257), (2, 327680, 327793), (2, 393216, 393329), (2, 262144, 262257), (2, 393216, 393329), (2, 262144, 262257), (3, 236196, 236309), (3, 295245, 295358), (3, 354294, 354407), (5, 218750, 218863), (5, 234375, 234488), (5, 234375, 234488), (5, 312500, 312613), (5, 390625, 390738), (5, 390625, 390738)]

def row114_layer004_block001 : List ColouredInterval :=
  [(7, 218491, 218604), (7, 235298, 235411), (7, 252105, 252218), (7, 235298, 235411), (7, 352947, 353060), (11, 219615, 219728), (11, 322102, 322215), (13, 228488, 228601), (13, 257049, 257162), (13, 285610, 285723), (13, 314171, 314284), (13, 342732, 342845), (13, 371293, 371406), (13, 399854, 399967), (13, 371293, 371406), (17, 250563, 250676)]

def row114_layer004_block002 : List ColouredInterval :=
  [(17, 334084, 334197), (23, 279841, 279954), (29, 219501, 219614), (29, 243890, 244003), (29, 268279, 268392), (29, 292668, 292781), (29, 317057, 317170), (29, 341446, 341559), (29, 365835, 365948), (31, 208537, 208650), (31, 238328, 238441), (31, 268119, 268232), (31, 297910, 298023), (31, 327701, 327814), (31, 357492, 357605), (31, 387283, 387396)]

def row114_layer004_block003 : List ColouredInterval :=
  [(37, 253265, 253378), (37, 303918, 304031), (37, 354571, 354684), (37, 405224, 405337), (41, 206763, 206876), (41, 275684, 275797), (41, 344605, 344718), (43, 238521, 238634), (43, 318028, 318141), (43, 397535, 397648), (47, 207646, 207759), (47, 311469, 311582), (53, 297754, 297867), (59, 410758, 410871), (61, 226981, 227094), (67, 300763, 300876)]

def row114_layer004_block004 : List ColouredInterval :=
  [(71, 357911, 358024), (73, 389017, 389130)]

def row114_layer004_chunks : List (List ColouredInterval) :=
  [row114_layer004_block000, row114_layer004_block001, row114_layer004_block002, row114_layer004_block003, row114_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_arithmetic : LayerArithmeticValid row114.height { lower := 206112, upper := 412224, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_enumeration :
    activePowerIntervalList 114 15 206112 412224 = row114_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_pairs000 :
    row114_layer004_block000.all (fun I => row114_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_pairs001 :
    row114_layer004_block001.all (fun I => row114_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_pairs002 :
    row114_layer004_block002.all (fun I => row114_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_pairs003 :
    row114_layer004_block003.all (fun I => row114_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_pairs004 :
    row114_layer004_block004.all (fun I => row114_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_chunks_eq : row114_layer004_chunks.flatten = row114_layer004_intervals := by
  rfl

theorem row114_layer004_pairs : pairCoverCheck row114_layer004_intervals row114_bounds = true := by
  apply pairCoverCheck_of_chunks row114_layer004_chunks_eq
  intro block hblock
  simp only [row114_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row114_layer004_pairs000
  · exact row114_layer004_pairs001
  · exact row114_layer004_pairs002
  · exact row114_layer004_pairs003
  · exact row114_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_checked :
    coverLayerCheck row114.height row114.goods { lower := 206112, upper := 412224, M := 15 } = true := by
  exact coverLayerCheck_of_parts row114_layer004_arithmetic row114_layer004_enumeration row114_bounds_eq row114_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer005_checked :
    coverLayerCheck row114.height row114.goods { lower := 412224, upper := 824448, M := 12 } = true := by
  decide +kernel

theorem row114_layer006_checked :
    coverLayerCheck row114.height row114.goods { lower := 824448, upper := 1648896, M := 10 } = true := by
  decide +kernel

theorem row114_layer007_checked :
    coverLayerCheck row114.height row114.goods { lower := 1648896, upper := 3297792, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer008_checked :
    coverLayerCheck row114.height row114.goods { lower := 3297792, upper := 6595584, M := 7 } = true := by
  decide +kernel

theorem row114_layer009_checked :
    coverLayerCheck row114.height row114.goods { lower := 6595584, upper := 13191168, M := 6 } = true := by
  decide +kernel

theorem row114_layer010_checked :
    coverLayerCheck row114.height row114.goods { lower := 13191168, upper := 26382336, M := 5 } = true := by
  decide +kernel

theorem row114_layer011_checked :
    coverLayerCheck row114.height row114.goods { lower := 26382336, upper := 52764672, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer012_checked :
    coverLayerCheck row114.height row114.goods { lower := 52764672, upper := 105529344, M := 4 } = true := by
  decide +kernel

theorem row114_layer013_checked :
    coverLayerCheck row114.height row114.goods { lower := 105529344, upper := 211058688, M := 3 } = true := by
  decide +kernel

theorem row114_layer014_checked :
    coverLayerCheck row114.height row114.goods { lower := 211058688, upper := 422117376, M := 3 } = true := by
  decide +kernel

theorem row114_layer015_checked :
    coverLayerCheck row114.height row114.goods { lower := 422117376, upper := 844234752, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer016_checked :
    coverLayerCheck row114.height row114.goods { lower := 844234752, upper := 1688469504, M := 2 } = true := by
  decide +kernel

theorem row114_layer017_checked :
    coverLayerCheck row114.height row114.goods { lower := 1688469504, upper := 3376939008, M := 2 } = true := by
  decide +kernel

theorem row114_layer018_checked :
    coverLayerCheck row114.height row114.goods { lower := 3376939008, upper := 6753878016, M := 2 } = true := by
  decide +kernel

theorem row114_layer019_checked :
    coverLayerCheck row114.height row114.goods { lower := 6753878016, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layers_checked :
    row114.layers.all (coverLayerCheck row114.height row114.goods) = true := by
  change row114_layers.all (coverLayerCheck row114.height row114.goods) = true
  simp only [row114_layers, List.all_cons, List.all_nil,
    row114_layer000_checked,
    row114_layer001_checked,
    row114_layer002_checked,
    row114_layer003_checked,
    row114_layer004_checked,
    row114_layer005_checked,
    row114_layer006_checked,
    row114_layer007_checked,
    row114_layer008_checked,
    row114_layer009_checked,
    row114_layer010_checked,
    row114_layer011_checked,
    row114_layer012_checked,
    row114_layer013_checked,
    row114_layer014_checked,
    row114_layer015_checked,
    row114_layer016_checked,
    row114_layer017_checked,
    row114_layer018_checked,
    row114_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_checked : finiteCoverRowCheck row114 = true := by
  simp only [finiteCoverRowCheck, row114_registered, row114_goods_checked,
    row114_small_checked, row114_layerCover_checked, row114_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i114 :
    ∀ n j : ℕ, 1 ≤ 114 ∧ 114 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 114 ≤ p ∧ p ∣ Nat.choose n 114 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row114_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i114
