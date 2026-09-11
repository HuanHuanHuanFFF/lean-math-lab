import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs004 :
    row117_layer002_block004.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs005 :
    row117_layer002_block005.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs006 :
    row117_layer002_block006.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs007 :
    row117_layer002_block007.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs008 :
    row117_layer002_block008.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_chunks_eq : row117_layer002_chunks.flatten = row117_layer002_intervals := by
  rfl

theorem row117_layer002_pairs : pairCoverCheck row117_layer002_intervals row117_bounds = true := by
  apply pairCoverCheck_of_chunks row117_layer002_chunks_eq
  intro block hblock
  simp only [row117_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row117_layer002_pairs000
  · exact row117_layer002_pairs001
  · exact row117_layer002_pairs002
  · exact row117_layer002_pairs003
  · exact row117_layer002_pairs004
  · exact row117_layer002_pairs005
  · exact row117_layer002_pairs006
  · exact row117_layer002_pairs007
  · exact row117_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_checked :
    coverLayerCheck row117.height row117.goods { lower := 54288, upper := 108576, M := 17 } = true := by
  exact coverLayerCheck_of_parts row117_layer002_arithmetic row117_layer002_enumeration row117_bounds_eq row117_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row117_layer003_intervals : List ColouredInterval :=
  [(2, 114688, 114804), (2, 114688, 114804), (2, 131072, 131188), (2, 147456, 147572), (2, 163840, 163956), (2, 180224, 180340), (2, 196608, 196724), (2, 212992, 213108), (2, 131072, 131188), (2, 163840, 163956), (2, 196608, 196724), (2, 131072, 131188), (2, 196608, 196724), (2, 131072, 131188), (3, 177147, 177263), (5, 109375, 109491), (5, 125000, 125116), (5, 140625, 140741), (5, 156250, 156366), (5, 171875, 171991), (5, 187500, 187616), (5, 203125, 203241), (5, 156250, 156366), (7, 117649, 117765), (7, 134456, 134572), (7, 151263, 151379), (7, 168070, 168186), (7, 184877, 184993), (7, 201684, 201800), (7, 117649, 117765), (11, 117128, 117244), (11, 131769, 131885), (11, 146410, 146526), (11, 161051, 161167), (11, 175692, 175808), (11, 190333, 190449), (11, 204974, 205090), (11, 161051, 161167), (17, 167042, 167158), (19, 130321, 130437), (23, 109503, 109619), (23, 121670, 121786), (23, 133837, 133953), (23, 146004, 146120), (23, 158171, 158287), (23, 170338, 170454), (29, 121945, 122061), (29, 146334, 146450), (29, 170723, 170839), (29, 195112, 195228), (31, 119164, 119280), (31, 148955, 149071), (31, 178746, 178862), (31, 208537, 208653), (37, 151959, 152075), (37, 202612, 202728), (41, 137842, 137958), (41, 206763, 206879), (43, 159014, 159130), (47, 207646, 207762), (53, 148877, 148993), (59, 205379, 205495), (89, 110894, 111010), (97, 112908, 113024), (97, 122317, 122433), (97, 131726, 131842), (101, 112211, 112327), (101, 122412, 122528), (101, 132613, 132729), (101, 142814, 142930), (103, 116699, 116815), (103, 127308, 127424), (103, 137917, 138033), (103, 148526, 148642), (107, 114490, 114606), (107, 125939, 126055), (107, 137388, 137504), (107, 148837, 148953), (107, 160286, 160402), (109, 118810, 118926), (109, 130691, 130807), (109, 142572, 142688), (109, 154453, 154569), (109, 166334, 166450), (113, 114921, 115037), (113, 127690, 127806), (113, 140459, 140575), (113, 153228, 153344), (113, 165997, 166113), (113, 178766, 178882)]

def row117_layer003_block000 : List ColouredInterval :=
  [(2, 114688, 114804), (2, 114688, 114804), (2, 131072, 131188), (2, 147456, 147572), (2, 163840, 163956), (2, 180224, 180340), (2, 196608, 196724), (2, 212992, 213108), (2, 131072, 131188), (2, 163840, 163956), (2, 196608, 196724), (2, 131072, 131188), (2, 196608, 196724), (2, 131072, 131188), (3, 177147, 177263), (5, 109375, 109491)]

def row117_layer003_block001 : List ColouredInterval :=
  [(5, 125000, 125116), (5, 140625, 140741), (5, 156250, 156366), (5, 171875, 171991), (5, 187500, 187616), (5, 203125, 203241), (5, 156250, 156366), (7, 117649, 117765), (7, 134456, 134572), (7, 151263, 151379), (7, 168070, 168186), (7, 184877, 184993), (7, 201684, 201800), (7, 117649, 117765), (11, 117128, 117244), (11, 131769, 131885)]

def row117_layer003_block002 : List ColouredInterval :=
  [(11, 146410, 146526), (11, 161051, 161167), (11, 175692, 175808), (11, 190333, 190449), (11, 204974, 205090), (11, 161051, 161167), (17, 167042, 167158), (19, 130321, 130437), (23, 109503, 109619), (23, 121670, 121786), (23, 133837, 133953), (23, 146004, 146120), (23, 158171, 158287), (23, 170338, 170454), (29, 121945, 122061), (29, 146334, 146450)]

def row117_layer003_block003 : List ColouredInterval :=
  [(29, 170723, 170839), (29, 195112, 195228), (31, 119164, 119280), (31, 148955, 149071), (31, 178746, 178862), (31, 208537, 208653), (37, 151959, 152075), (37, 202612, 202728), (41, 137842, 137958), (41, 206763, 206879), (43, 159014, 159130), (47, 207646, 207762), (53, 148877, 148993), (59, 205379, 205495), (89, 110894, 111010), (97, 112908, 113024)]

def row117_layer003_block004 : List ColouredInterval :=
  [(97, 122317, 122433), (97, 131726, 131842), (101, 112211, 112327), (101, 122412, 122528), (101, 132613, 132729), (101, 142814, 142930), (103, 116699, 116815), (103, 127308, 127424), (103, 137917, 138033), (103, 148526, 148642), (107, 114490, 114606), (107, 125939, 126055), (107, 137388, 137504), (107, 148837, 148953), (107, 160286, 160402), (109, 118810, 118926)]

def row117_layer003_block005 : List ColouredInterval :=
  [(109, 130691, 130807), (109, 142572, 142688), (109, 154453, 154569), (109, 166334, 166450), (113, 114921, 115037), (113, 127690, 127806), (113, 140459, 140575), (113, 153228, 153344), (113, 165997, 166113), (113, 178766, 178882)]

def row117_layer003_chunks : List (List ColouredInterval) :=
  [row117_layer003_block000, row117_layer003_block001, row117_layer003_block002, row117_layer003_block003, row117_layer003_block004, row117_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_arithmetic : LayerArithmeticValid row117.height { lower := 108576, upper := 217152, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_enumeration :
    activePowerIntervalList 117 14 108576 217152 = row117_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_pairs000 :
    row117_layer003_block000.all (fun I => row117_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_pairs001 :
    row117_layer003_block001.all (fun I => row117_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_pairs002 :
    row117_layer003_block002.all (fun I => row117_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_pairs003 :
    row117_layer003_block003.all (fun I => row117_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_pairs004 :
    row117_layer003_block004.all (fun I => row117_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_pairs005 :
    row117_layer003_block005.all (fun I => row117_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_chunks_eq : row117_layer003_chunks.flatten = row117_layer003_intervals := by
  rfl

theorem row117_layer003_pairs : pairCoverCheck row117_layer003_intervals row117_bounds = true := by
  apply pairCoverCheck_of_chunks row117_layer003_chunks_eq
  intro block hblock
  simp only [row117_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row117_layer003_pairs000
  · exact row117_layer003_pairs001
  · exact row117_layer003_pairs002
  · exact row117_layer003_pairs003
  · exact row117_layer003_pairs004
  · exact row117_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer003_checked :
    coverLayerCheck row117.height row117.goods { lower := 108576, upper := 217152, M := 14 } = true := by
  exact coverLayerCheck_of_parts row117_layer003_arithmetic row117_layer003_enumeration row117_bounds_eq row117_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer004_checked :
    coverLayerCheck row117.height row117.goods { lower := 217152, upper := 434304, M := 12 } = true := by
  decide +kernel

theorem row117_layer005_checked :
    coverLayerCheck row117.height row117.goods { lower := 434304, upper := 868608, M := 10 } = true := by
  decide +kernel

theorem row117_layer006_checked :
    coverLayerCheck row117.height row117.goods { lower := 868608, upper := 1737216, M := 8 } = true := by
  decide +kernel

theorem row117_layer007_checked :
    coverLayerCheck row117.height row117.goods { lower := 1737216, upper := 3474432, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer008_checked :
    coverLayerCheck row117.height row117.goods { lower := 3474432, upper := 6948864, M := 5 } = true := by
  decide +kernel

theorem row117_layer009_checked :
    coverLayerCheck row117.height row117.goods { lower := 6948864, upper := 13897728, M := 4 } = true := by
  decide +kernel

theorem row117_layer010_checked :
    coverLayerCheck row117.height row117.goods { lower := 13897728, upper := 27795456, M := 4 } = true := by
  decide +kernel

theorem row117_layer011_checked :
    coverLayerCheck row117.height row117.goods { lower := 27795456, upper := 55590912, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer012_checked :
    coverLayerCheck row117.height row117.goods { lower := 55590912, upper := 111181824, M := 3 } = true := by
  decide +kernel

theorem row117_layer013_checked :
    coverLayerCheck row117.height row117.goods { lower := 111181824, upper := 222363648, M := 2 } = true := by
  decide +kernel

theorem row117_layer014_checked :
    coverLayerCheck row117.height row117.goods { lower := 222363648, upper := 444727296, M := 2 } = true := by
  decide +kernel

theorem row117_layer015_checked :
    coverLayerCheck row117.height row117.goods { lower := 444727296, upper := 889454592, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer016_checked :
    coverLayerCheck row117.height row117.goods { lower := 889454592, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layers_checked :
    row117.layers.all (coverLayerCheck row117.height row117.goods) = true := by
  change row117_layers.all (coverLayerCheck row117.height row117.goods) = true
  simp only [row117_layers, List.all_cons, List.all_nil,
    row117_layer000_checked,
    row117_layer001_checked,
    row117_layer002_checked,
    row117_layer003_checked,
    row117_layer004_checked,
    row117_layer005_checked,
    row117_layer006_checked,
    row117_layer007_checked,
    row117_layer008_checked,
    row117_layer009_checked,
    row117_layer010_checked,
    row117_layer011_checked,
    row117_layer012_checked,
    row117_layer013_checked,
    row117_layer014_checked,
    row117_layer015_checked,
    row117_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_checked : finiteCoverRowCheck row117 = true := by
  simp only [finiteCoverRowCheck, row117_registered, row117_goods_checked,
    row117_small_checked, row117_layerCover_checked, row117_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i117 :
    ∀ n j : ℕ, 1 ≤ 117 ∧ 117 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 117 ≤ p ∧ p ∣ Nat.choose n 117 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row117_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i117
