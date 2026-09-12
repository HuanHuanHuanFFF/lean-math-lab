import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs007 :
    row119_layer002_block007.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_chunks_eq : row119_layer002_chunks.flatten = row119_layer002_intervals := by
  rfl

theorem row119_layer002_pairs : pairCoverCheck row119_layer002_intervals row119_bounds = true := by
  apply pairCoverCheck_of_chunks row119_layer002_chunks_eq
  intro block hblock
  simp only [row119_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row119_layer002_pairs000
  · exact row119_layer002_pairs001
  · exact row119_layer002_pairs002
  · exact row119_layer002_pairs003
  · exact row119_layer002_pairs004
  · exact row119_layer002_pairs005
  · exact row119_layer002_pairs006
  · exact row119_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_checked :
    coverLayerCheck row119.height row119.goods { lower := 56168, upper := 112336, M := 15 } = true := by
  exact coverLayerCheck_of_parts row119_layer002_arithmetic row119_layer002_enumeration row119_bounds_eq row119_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row119_layer003_intervals : List ColouredInterval :=
  [(2, 114688, 114806), (2, 131072, 131190), (2, 147456, 147574), (2, 163840, 163958), (2, 180224, 180342), (2, 196608, 196726), (2, 131072, 131190), (2, 163840, 163958), (2, 196608, 196726), (2, 131072, 131190), (2, 196608, 196726), (2, 131072, 131190), (3, 118098, 118216), (3, 137781, 137899), (3, 157464, 157582), (3, 177147, 177265), (3, 196830, 196948), (3, 216513, 216631), (3, 118098, 118216), (3, 177147, 177265), (3, 177147, 177265), (5, 125000, 125118), (5, 140625, 140743), (5, 156250, 156368), (5, 171875, 171993), (5, 187500, 187618), (5, 156250, 156368), (7, 117649, 117767), (11, 117128, 117246), (11, 131769, 131887), (11, 146410, 146528), (11, 161051, 161169), (11, 175692, 175810), (11, 161051, 161169), (13, 114244, 114362), (13, 142805, 142923), (13, 171366, 171484), (13, 199927, 200045), (19, 130321, 130439), (23, 121670, 121788), (23, 133837, 133955), (23, 146004, 146122), (29, 121945, 122063), (29, 146334, 146452), (29, 170723, 170841), (29, 195112, 195230), (29, 219501, 219619), (31, 119164, 119282), (31, 148955, 149073), (31, 178746, 178864), (31, 208537, 208655), (37, 151959, 152077), (37, 202612, 202730), (41, 137842, 137960), (41, 206763, 206881), (43, 159014, 159132), (47, 207646, 207764), (53, 148877, 148995), (59, 205379, 205497), (97, 112908, 113026), (101, 122412, 122530), (103, 116699, 116817), (103, 127308, 127426), (107, 114490, 114608), (107, 125939, 126057), (107, 137388, 137506), (109, 118810, 118928), (109, 130691, 130809), (109, 142572, 142690), (113, 114921, 115039), (113, 127690, 127808), (113, 140459, 140577), (113, 153228, 153346)]

def row119_layer003_block000 : List ColouredInterval :=
  [(2, 114688, 114806), (2, 131072, 131190), (2, 147456, 147574), (2, 163840, 163958), (2, 180224, 180342), (2, 196608, 196726), (2, 131072, 131190), (2, 163840, 163958), (2, 196608, 196726), (2, 131072, 131190), (2, 196608, 196726), (2, 131072, 131190), (3, 118098, 118216), (3, 137781, 137899), (3, 157464, 157582), (3, 177147, 177265)]

def row119_layer003_block001 : List ColouredInterval :=
  [(3, 196830, 196948), (3, 216513, 216631), (3, 118098, 118216), (3, 177147, 177265), (3, 177147, 177265), (5, 125000, 125118), (5, 140625, 140743), (5, 156250, 156368), (5, 171875, 171993), (5, 187500, 187618), (5, 156250, 156368), (7, 117649, 117767), (11, 117128, 117246), (11, 131769, 131887), (11, 146410, 146528), (11, 161051, 161169)]

def row119_layer003_block002 : List ColouredInterval :=
  [(11, 175692, 175810), (11, 161051, 161169), (13, 114244, 114362), (13, 142805, 142923), (13, 171366, 171484), (13, 199927, 200045), (19, 130321, 130439), (23, 121670, 121788), (23, 133837, 133955), (23, 146004, 146122), (29, 121945, 122063), (29, 146334, 146452), (29, 170723, 170841), (29, 195112, 195230), (29, 219501, 219619), (31, 119164, 119282)]

def row119_layer003_block003 : List ColouredInterval :=
  [(31, 148955, 149073), (31, 178746, 178864), (31, 208537, 208655), (37, 151959, 152077), (37, 202612, 202730), (41, 137842, 137960), (41, 206763, 206881), (43, 159014, 159132), (47, 207646, 207764), (53, 148877, 148995), (59, 205379, 205497), (97, 112908, 113026), (101, 122412, 122530), (103, 116699, 116817), (103, 127308, 127426), (107, 114490, 114608)]

def row119_layer003_block004 : List ColouredInterval :=
  [(107, 125939, 126057), (107, 137388, 137506), (109, 118810, 118928), (109, 130691, 130809), (109, 142572, 142690), (113, 114921, 115039), (113, 127690, 127808), (113, 140459, 140577), (113, 153228, 153346)]

def row119_layer003_chunks : List (List ColouredInterval) :=
  [row119_layer003_block000, row119_layer003_block001, row119_layer003_block002, row119_layer003_block003, row119_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_arithmetic : LayerArithmeticValid row119.height { lower := 112336, upper := 224672, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_enumeration :
    activePowerIntervalList 119 12 112336 224672 = row119_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_pairs000 :
    row119_layer003_block000.all (fun I => row119_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_pairs001 :
    row119_layer003_block001.all (fun I => row119_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_pairs002 :
    row119_layer003_block002.all (fun I => row119_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_pairs003 :
    row119_layer003_block003.all (fun I => row119_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_pairs004 :
    row119_layer003_block004.all (fun I => row119_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_chunks_eq : row119_layer003_chunks.flatten = row119_layer003_intervals := by
  rfl

theorem row119_layer003_pairs : pairCoverCheck row119_layer003_intervals row119_bounds = true := by
  apply pairCoverCheck_of_chunks row119_layer003_chunks_eq
  intro block hblock
  simp only [row119_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row119_layer003_pairs000
  · exact row119_layer003_pairs001
  · exact row119_layer003_pairs002
  · exact row119_layer003_pairs003
  · exact row119_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer003_checked :
    coverLayerCheck row119.height row119.goods { lower := 112336, upper := 224672, M := 12 } = true := by
  exact coverLayerCheck_of_parts row119_layer003_arithmetic row119_layer003_enumeration row119_bounds_eq row119_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer004_checked :
    coverLayerCheck row119.height row119.goods { lower := 224672, upper := 449344, M := 10 } = true := by
  decide +kernel

theorem row119_layer005_checked :
    coverLayerCheck row119.height row119.goods { lower := 449344, upper := 898688, M := 8 } = true := by
  decide +kernel

theorem row119_layer006_checked :
    coverLayerCheck row119.height row119.goods { lower := 898688, upper := 1797376, M := 7 } = true := by
  decide +kernel

theorem row119_layer007_checked :
    coverLayerCheck row119.height row119.goods { lower := 1797376, upper := 3594752, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer008_checked :
    coverLayerCheck row119.height row119.goods { lower := 3594752, upper := 7189504, M := 4 } = true := by
  decide +kernel

theorem row119_layer009_checked :
    coverLayerCheck row119.height row119.goods { lower := 7189504, upper := 14379008, M := 4 } = true := by
  decide +kernel

theorem row119_layer010_checked :
    coverLayerCheck row119.height row119.goods { lower := 14379008, upper := 28758016, M := 3 } = true := by
  decide +kernel

theorem row119_layer011_checked :
    coverLayerCheck row119.height row119.goods { lower := 28758016, upper := 57516032, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer012_checked :
    coverLayerCheck row119.height row119.goods { lower := 57516032, upper := 115032064, M := 2 } = true := by
  decide +kernel

theorem row119_layer013_checked :
    coverLayerCheck row119.height row119.goods { lower := 115032064, upper := 230064128, M := 2 } = true := by
  decide +kernel

theorem row119_layer014_checked :
    coverLayerCheck row119.height row119.goods { lower := 230064128, upper := 460128256, M := 2 } = true := by
  decide +kernel

theorem row119_layer015_checked :
    coverLayerCheck row119.height row119.goods { lower := 460128256, upper := 920256512, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer016_checked :
    coverLayerCheck row119.height row119.goods { lower := 920256512, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layers_checked :
    row119.layers.all (coverLayerCheck row119.height row119.goods) = true := by
  change row119_layers.all (coverLayerCheck row119.height row119.goods) = true
  simp only [row119_layers, List.all_cons, List.all_nil,
    row119_layer000_checked,
    row119_layer001_checked,
    row119_layer002_checked,
    row119_layer003_checked,
    row119_layer004_checked,
    row119_layer005_checked,
    row119_layer006_checked,
    row119_layer007_checked,
    row119_layer008_checked,
    row119_layer009_checked,
    row119_layer010_checked,
    row119_layer011_checked,
    row119_layer012_checked,
    row119_layer013_checked,
    row119_layer014_checked,
    row119_layer015_checked,
    row119_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_checked : finiteCoverRowCheck row119 = true := by
  simp only [finiteCoverRowCheck, row119_registered, row119_goods_checked,
    row119_small_checked, row119_layerCover_checked, row119_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i119 :
    ∀ n j : ℕ, 1 ≤ 119 ∧ 119 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 119 ≤ p ∧ p ∣ Nat.choose n 119 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row119_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i119
