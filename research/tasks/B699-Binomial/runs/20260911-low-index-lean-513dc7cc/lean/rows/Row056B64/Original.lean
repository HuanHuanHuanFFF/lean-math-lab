import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs005 :
    row056_layer003_block005.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_pairs006 :
    row056_layer003_block006.all (fun I => row056_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_chunks_eq : row056_layer003_chunks.flatten = row056_layer003_intervals := by
  rfl

theorem row056_layer003_pairs : pairCoverCheck row056_layer003_intervals row056_bounds = true := by
  apply pairCoverCheck_of_chunks row056_layer003_chunks_eq
  intro block hblock
  simp only [row056_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row056_layer003_pairs000
  · exact row056_layer003_pairs001
  · exact row056_layer003_pairs002
  · exact row056_layer003_pairs003
  · exact row056_layer003_pairs004
  · exact row056_layer003_pairs005
  · exact row056_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_checked :
    coverLayerCheck row056.height row056.goods { lower := 24640, upper := 49280, M := 23 } = true := by
  exact coverLayerCheck_of_parts row056_layer003_arithmetic row056_layer003_enumeration row056_bounds_eq row056_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row056_layer006_intervals : List ColouredInterval :=
  [(2, 262144, 262199), (2, 262144, 262199), (3, 216513, 216568), (3, 236196, 236251), (3, 255879, 255934), (3, 275562, 275617), (3, 295245, 295300), (3, 314928, 314983), (3, 334611, 334666), (3, 236196, 236251), (3, 295245, 295300), (3, 354294, 354349), (3, 354294, 354349), (5, 203125, 203180), (5, 218750, 218805), (5, 234375, 234430), (5, 250000, 250055), (5, 265625, 265680), (5, 234375, 234430), (5, 312500, 312555), (5, 390625, 390680), (5, 390625, 390680), (7, 235298, 235353), (11, 204974, 205029), (11, 219615, 219670), (11, 234256, 234311), (11, 248897, 248952), (11, 322102, 322157), (13, 199927, 199982), (13, 228488, 228543), (13, 257049, 257104), (13, 285610, 285665), (13, 314171, 314226), (13, 342732, 342787), (13, 371293, 371348), (13, 371293, 371348), (17, 250563, 250618), (17, 334084, 334139), (19, 260642, 260697), (19, 390963, 391018), (23, 206839, 206894), (23, 279841, 279896), (29, 219501, 219556), (29, 243890, 243945), (29, 268279, 268334), (29, 292668, 292723), (29, 317057, 317112), (29, 341446, 341501), (29, 365835, 365890), (29, 390224, 390279), (31, 208537, 208592), (31, 238328, 238383), (31, 268119, 268174), (31, 297910, 297965), (31, 327701, 327756), (31, 357492, 357547), (31, 387283, 387338), (37, 202612, 202667), (37, 253265, 253320), (37, 303918, 303973), (37, 354571, 354626), (41, 206763, 206818), (41, 275684, 275739), (41, 344605, 344660), (43, 238521, 238576), (43, 318028, 318083), (47, 207646, 207701), (47, 311469, 311524), (53, 297754, 297809)]

def row056_layer006_block000 : List ColouredInterval :=
  [(2, 262144, 262199), (2, 262144, 262199), (3, 216513, 216568), (3, 236196, 236251), (3, 255879, 255934), (3, 275562, 275617), (3, 295245, 295300), (3, 314928, 314983), (3, 334611, 334666), (3, 236196, 236251), (3, 295245, 295300), (3, 354294, 354349), (3, 354294, 354349), (5, 203125, 203180), (5, 218750, 218805), (5, 234375, 234430)]

def row056_layer006_block001 : List ColouredInterval :=
  [(5, 250000, 250055), (5, 265625, 265680), (5, 234375, 234430), (5, 312500, 312555), (5, 390625, 390680), (5, 390625, 390680), (7, 235298, 235353), (11, 204974, 205029), (11, 219615, 219670), (11, 234256, 234311), (11, 248897, 248952), (11, 322102, 322157), (13, 199927, 199982), (13, 228488, 228543), (13, 257049, 257104), (13, 285610, 285665)]

def row056_layer006_block002 : List ColouredInterval :=
  [(13, 314171, 314226), (13, 342732, 342787), (13, 371293, 371348), (13, 371293, 371348), (17, 250563, 250618), (17, 334084, 334139), (19, 260642, 260697), (19, 390963, 391018), (23, 206839, 206894), (23, 279841, 279896), (29, 219501, 219556), (29, 243890, 243945), (29, 268279, 268334), (29, 292668, 292723), (29, 317057, 317112), (29, 341446, 341501)]

def row056_layer006_block003 : List ColouredInterval :=
  [(29, 365835, 365890), (29, 390224, 390279), (31, 208537, 208592), (31, 238328, 238383), (31, 268119, 268174), (31, 297910, 297965), (31, 327701, 327756), (31, 357492, 357547), (31, 387283, 387338), (37, 202612, 202667), (37, 253265, 253320), (37, 303918, 303973), (37, 354571, 354626), (41, 206763, 206818), (41, 275684, 275739), (41, 344605, 344660)]

def row056_layer006_block004 : List ColouredInterval :=
  [(43, 238521, 238576), (43, 318028, 318083), (47, 207646, 207701), (47, 311469, 311524), (53, 297754, 297809)]

def row056_layer006_chunks : List (List ColouredInterval) :=
  [row056_layer006_block000, row056_layer006_block001, row056_layer006_block002, row056_layer006_block003, row056_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_arithmetic : LayerArithmeticValid row056.height { lower := 197120, upper := 394240, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_enumeration :
    activePowerIntervalList 56 17 197120 394240 = row056_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_pairs000 :
    row056_layer006_block000.all (fun I => row056_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_pairs001 :
    row056_layer006_block001.all (fun I => row056_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_pairs002 :
    row056_layer006_block002.all (fun I => row056_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_pairs003 :
    row056_layer006_block003.all (fun I => row056_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_pairs004 :
    row056_layer006_block004.all (fun I => row056_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row056_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_chunks_eq : row056_layer006_chunks.flatten = row056_layer006_intervals := by
  rfl

theorem row056_layer006_pairs : pairCoverCheck row056_layer006_intervals row056_bounds = true := by
  apply pairCoverCheck_of_chunks row056_layer006_chunks_eq
  intro block hblock
  simp only [row056_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row056_layer006_pairs000
  · exact row056_layer006_pairs001
  · exact row056_layer006_pairs002
  · exact row056_layer006_pairs003
  · exact row056_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer006_checked :
    coverLayerCheck row056.height row056.goods { lower := 197120, upper := 394240, M := 17 } = true := by
  exact coverLayerCheck_of_parts row056_layer006_arithmetic row056_layer006_enumeration row056_bounds_eq row056_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer004_checked :
    coverLayerCheck row056.height row056.goods { lower := 49280, upper := 98560, M := 21 } = true := by
  decide +kernel

theorem row056_layer005_checked :
    coverLayerCheck row056.height row056.goods { lower := 98560, upper := 197120, M := 19 } = true := by
  decide +kernel

theorem row056_layer007_checked :
    coverLayerCheck row056.height row056.goods { lower := 394240, upper := 788480, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer008_checked :
    coverLayerCheck row056.height row056.goods { lower := 788480, upper := 1576960, M := 14 } = true := by
  decide +kernel

theorem row056_layer009_checked :
    coverLayerCheck row056.height row056.goods { lower := 1576960, upper := 3153920, M := 12 } = true := by
  decide +kernel

theorem row056_layer010_checked :
    coverLayerCheck row056.height row056.goods { lower := 3153920, upper := 6307840, M := 11 } = true := by
  decide +kernel

theorem row056_layer011_checked :
    coverLayerCheck row056.height row056.goods { lower := 6307840, upper := 12615680, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer012_checked :
    coverLayerCheck row056.height row056.goods { lower := 12615680, upper := 25231360, M := 9 } = true := by
  decide +kernel

theorem row056_layer013_checked :
    coverLayerCheck row056.height row056.goods { lower := 25231360, upper := 50462720, M := 8 } = true := by
  decide +kernel

theorem row056_layer014_checked :
    coverLayerCheck row056.height row056.goods { lower := 50462720, upper := 100925440, M := 7 } = true := by
  decide +kernel

theorem row056_layer015_checked :
    coverLayerCheck row056.height row056.goods { lower := 100925440, upper := 201850880, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer016_checked :
    coverLayerCheck row056.height row056.goods { lower := 201850880, upper := 403701760, M := 6 } = true := by
  decide +kernel

theorem row056_layer017_checked :
    coverLayerCheck row056.height row056.goods { lower := 403701760, upper := 807403520, M := 5 } = true := by
  decide +kernel

theorem row056_layer018_checked :
    coverLayerCheck row056.height row056.goods { lower := 807403520, upper := 1614807040, M := 5 } = true := by
  decide +kernel

theorem row056_layer019_checked :
    coverLayerCheck row056.height row056.goods { lower := 1614807040, upper := 3229614080, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer020_checked :
    coverLayerCheck row056.height row056.goods { lower := 3229614080, upper := 6459228160, M := 4 } = true := by
  decide +kernel

theorem row056_layer021_checked :
    coverLayerCheck row056.height row056.goods { lower := 6459228160, upper := 12918456320, M := 4 } = true := by
  decide +kernel

theorem row056_layer022_checked :
    coverLayerCheck row056.height row056.goods { lower := 12918456320, upper := 25836912640, M := 3 } = true := by
  decide +kernel

theorem row056_layer023_checked :
    coverLayerCheck row056.height row056.goods { lower := 25836912640, upper := 51673825280, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer024_checked :
    coverLayerCheck row056.height row056.goods { lower := 51673825280, upper := 103347650560, M := 3 } = true := by
  decide +kernel

theorem row056_layer025_checked :
    coverLayerCheck row056.height row056.goods { lower := 103347650560, upper := 206695301120, M := 3 } = true := by
  decide +kernel

theorem row056_layer026_checked :
    coverLayerCheck row056.height row056.goods { lower := 206695301120, upper := 413390602240, M := 2 } = true := by
  decide +kernel

theorem row056_layer027_checked :
    coverLayerCheck row056.height row056.goods { lower := 413390602240, upper := 826781204480, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer028_checked :
    coverLayerCheck row056.height row056.goods { lower := 826781204480, upper := 1653562408960, M := 2 } = true := by
  decide +kernel

theorem row056_layer029_checked :
    coverLayerCheck row056.height row056.goods { lower := 1653562408960, upper := 3307124817920, M := 2 } = true := by
  decide +kernel

theorem row056_layer030_checked :
    coverLayerCheck row056.height row056.goods { lower := 3307124817920, upper := 6614249635840, M := 2 } = true := by
  decide +kernel

theorem row056_layer031_checked :
    coverLayerCheck row056.height row056.goods { lower := 6614249635840, upper := 10000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layers_checked :
    row056.layers.all (coverLayerCheck row056.height row056.goods) = true := by
  change row056_layers.all (coverLayerCheck row056.height row056.goods) = true
  simp only [row056_layers, List.all_cons, List.all_nil,
    row056_layer000_checked,
    row056_layer001_checked,
    row056_layer002_checked,
    row056_layer003_checked,
    row056_layer004_checked,
    row056_layer005_checked,
    row056_layer006_checked,
    row056_layer007_checked,
    row056_layer008_checked,
    row056_layer009_checked,
    row056_layer010_checked,
    row056_layer011_checked,
    row056_layer012_checked,
    row056_layer013_checked,
    row056_layer014_checked,
    row056_layer015_checked,
    row056_layer016_checked,
    row056_layer017_checked,
    row056_layer018_checked,
    row056_layer019_checked,
    row056_layer020_checked,
    row056_layer021_checked,
    row056_layer022_checked,
    row056_layer023_checked,
    row056_layer024_checked,
    row056_layer025_checked,
    row056_layer026_checked,
    row056_layer027_checked,
    row056_layer028_checked,
    row056_layer029_checked,
    row056_layer030_checked,
    row056_layer031_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_checked : finiteCoverRowCheck row056 = true := by
  simp only [finiteCoverRowCheck, row056_registered, row056_goods_checked,
    row056_small_checked, row056_layerCover_checked, row056_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i056 :
    ∀ n j : ℕ, 1 ≤ 56 ∧ 56 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 56 ≤ p ∧ p ∣ Nat.choose n 56 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row056_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i056
