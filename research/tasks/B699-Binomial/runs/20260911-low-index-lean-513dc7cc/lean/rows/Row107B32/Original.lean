import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_chunks_eq : row107_layer002_chunks.flatten = row107_layer002_intervals := by
  rfl

theorem row107_layer002_pairs : pairCoverCheck row107_layer002_intervals row107_bounds = true := by
  apply pairCoverCheck_of_chunks row107_layer002_chunks_eq
  intro block hblock
  simp only [row107_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row107_layer002_pairs000
  · exact row107_layer002_pairs001
  · exact row107_layer002_pairs002
  · exact row107_layer002_pairs003
  · exact row107_layer002_pairs004
  · exact row107_layer002_pairs005
  · exact row107_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_checked :
    coverLayerCheck row107.height row107.goods { lower := 45368, upper := 90736, M := 14 } = true := by
  exact coverLayerCheck_of_parts row107_layer002_arithmetic row107_layer002_enumeration row107_bounds_eq row107_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row107_layer003_intervals : List ColouredInterval :=
  [(2, 98304, 98410), (2, 114688, 114794), (2, 131072, 131178), (2, 147456, 147562), (2, 163840, 163946), (2, 180224, 180330), (2, 98304, 98410), (2, 131072, 131178), (2, 163840, 163946), (2, 131072, 131178), (2, 131072, 131178), (3, 98415, 98521), (3, 118098, 118204), (3, 137781, 137887), (3, 157464, 157570), (3, 177147, 177253), (3, 118098, 118204), (3, 177147, 177253), (3, 177147, 177253), (5, 93750, 93856), (5, 109375, 109481), (5, 125000, 125106), (5, 140625, 140731), (5, 156250, 156356), (5, 171875, 171981), (5, 156250, 156356), (7, 100842, 100948), (7, 117649, 117755), (7, 134456, 134562), (7, 151263, 151369), (7, 168070, 168176), (7, 117649, 117755), (11, 102487, 102593), (11, 117128, 117234), (11, 131769, 131875), (11, 146410, 146516), (11, 161051, 161157), (11, 161051, 161157), (13, 114244, 114350), (13, 142805, 142911), (13, 171366, 171472), (17, 167042, 167148), (19, 130321, 130427), (23, 97336, 97442), (23, 109503, 109609), (23, 121670, 121776), (23, 133837, 133943), (29, 97556, 97662), (29, 121945, 122051), (29, 146334, 146440), (29, 170723, 170829), (31, 119164, 119270), (31, 148955, 149061), (31, 178746, 178852), (37, 101306, 101412), (37, 151959, 152065), (41, 137842, 137948), (43, 159014, 159120), (47, 103823, 103929), (53, 148877, 148983), (97, 94090, 94196), (97, 103499, 103605), (101, 91809, 91915), (101, 102010, 102116), (101, 112211, 112317), (103, 95481, 95587), (103, 106090, 106196), (103, 116699, 116805)]

def row107_layer003_block000 : List ColouredInterval :=
  [(2, 98304, 98410), (2, 114688, 114794), (2, 131072, 131178), (2, 147456, 147562), (2, 163840, 163946), (2, 180224, 180330), (2, 98304, 98410), (2, 131072, 131178), (2, 163840, 163946), (2, 131072, 131178), (2, 131072, 131178), (3, 98415, 98521), (3, 118098, 118204), (3, 137781, 137887), (3, 157464, 157570), (3, 177147, 177253)]

def row107_layer003_block001 : List ColouredInterval :=
  [(3, 118098, 118204), (3, 177147, 177253), (3, 177147, 177253), (5, 93750, 93856), (5, 109375, 109481), (5, 125000, 125106), (5, 140625, 140731), (5, 156250, 156356), (5, 171875, 171981), (5, 156250, 156356), (7, 100842, 100948), (7, 117649, 117755), (7, 134456, 134562), (7, 151263, 151369), (7, 168070, 168176), (7, 117649, 117755)]

def row107_layer003_block002 : List ColouredInterval :=
  [(11, 102487, 102593), (11, 117128, 117234), (11, 131769, 131875), (11, 146410, 146516), (11, 161051, 161157), (11, 161051, 161157), (13, 114244, 114350), (13, 142805, 142911), (13, 171366, 171472), (17, 167042, 167148), (19, 130321, 130427), (23, 97336, 97442), (23, 109503, 109609), (23, 121670, 121776), (23, 133837, 133943), (29, 97556, 97662)]

def row107_layer003_block003 : List ColouredInterval :=
  [(29, 121945, 122051), (29, 146334, 146440), (29, 170723, 170829), (31, 119164, 119270), (31, 148955, 149061), (31, 178746, 178852), (37, 101306, 101412), (37, 151959, 152065), (41, 137842, 137948), (43, 159014, 159120), (47, 103823, 103929), (53, 148877, 148983), (97, 94090, 94196), (97, 103499, 103605), (101, 91809, 91915), (101, 102010, 102116)]

def row107_layer003_block004 : List ColouredInterval :=
  [(101, 112211, 112317), (103, 95481, 95587), (103, 106090, 106196), (103, 116699, 116805)]

def row107_layer003_chunks : List (List ColouredInterval) :=
  [row107_layer003_block000, row107_layer003_block001, row107_layer003_block002, row107_layer003_block003, row107_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_arithmetic : LayerArithmeticValid row107.height { lower := 90736, upper := 181472, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_enumeration :
    activePowerIntervalList 107 11 90736 181472 = row107_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_pairs000 :
    row107_layer003_block000.all (fun I => row107_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_pairs001 :
    row107_layer003_block001.all (fun I => row107_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_pairs002 :
    row107_layer003_block002.all (fun I => row107_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_pairs003 :
    row107_layer003_block003.all (fun I => row107_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_pairs004 :
    row107_layer003_block004.all (fun I => row107_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_chunks_eq : row107_layer003_chunks.flatten = row107_layer003_intervals := by
  rfl

theorem row107_layer003_pairs : pairCoverCheck row107_layer003_intervals row107_bounds = true := by
  apply pairCoverCheck_of_chunks row107_layer003_chunks_eq
  intro block hblock
  simp only [row107_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row107_layer003_pairs000
  · exact row107_layer003_pairs001
  · exact row107_layer003_pairs002
  · exact row107_layer003_pairs003
  · exact row107_layer003_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer003_checked :
    coverLayerCheck row107.height row107.goods { lower := 90736, upper := 181472, M := 11 } = true := by
  exact coverLayerCheck_of_parts row107_layer003_arithmetic row107_layer003_enumeration row107_bounds_eq row107_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer004_checked :
    coverLayerCheck row107.height row107.goods { lower := 181472, upper := 362944, M := 9 } = true := by
  decide +kernel

theorem row107_layer005_checked :
    coverLayerCheck row107.height row107.goods { lower := 362944, upper := 725888, M := 8 } = true := by
  decide +kernel

theorem row107_layer006_checked :
    coverLayerCheck row107.height row107.goods { lower := 725888, upper := 1451776, M := 6 } = true := by
  decide +kernel

theorem row107_layer007_checked :
    coverLayerCheck row107.height row107.goods { lower := 1451776, upper := 2903552, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer008_checked :
    coverLayerCheck row107.height row107.goods { lower := 2903552, upper := 5807104, M := 4 } = true := by
  decide +kernel

theorem row107_layer009_checked :
    coverLayerCheck row107.height row107.goods { lower := 5807104, upper := 11614208, M := 3 } = true := by
  decide +kernel

theorem row107_layer010_checked :
    coverLayerCheck row107.height row107.goods { lower := 11614208, upper := 23228416, M := 3 } = true := by
  decide +kernel

theorem row107_layer011_checked :
    coverLayerCheck row107.height row107.goods { lower := 23228416, upper := 46456832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer012_checked :
    coverLayerCheck row107.height row107.goods { lower := 46456832, upper := 92913664, M := 2 } = true := by
  decide +kernel

theorem row107_layer013_checked :
    coverLayerCheck row107.height row107.goods { lower := 92913664, upper := 185827328, M := 2 } = true := by
  decide +kernel

theorem row107_layer014_checked :
    coverLayerCheck row107.height row107.goods { lower := 185827328, upper := 371654656, M := 1 } = true := by
  decide +kernel

theorem row107_layer015_checked :
    coverLayerCheck row107.height row107.goods { lower := 371654656, upper := 743309312, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer016_checked :
    coverLayerCheck row107.height row107.goods { lower := 743309312, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layers_checked :
    row107.layers.all (coverLayerCheck row107.height row107.goods) = true := by
  change row107_layers.all (coverLayerCheck row107.height row107.goods) = true
  simp only [row107_layers, List.all_cons, List.all_nil,
    row107_layer000_checked,
    row107_layer001_checked,
    row107_layer002_checked,
    row107_layer003_checked,
    row107_layer004_checked,
    row107_layer005_checked,
    row107_layer006_checked,
    row107_layer007_checked,
    row107_layer008_checked,
    row107_layer009_checked,
    row107_layer010_checked,
    row107_layer011_checked,
    row107_layer012_checked,
    row107_layer013_checked,
    row107_layer014_checked,
    row107_layer015_checked,
    row107_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_checked : finiteCoverRowCheck row107 = true := by
  simp only [finiteCoverRowCheck, row107_registered, row107_goods_checked,
    row107_small_checked, row107_layerCover_checked, row107_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i107 :
    ∀ n j : ℕ, 1 ≤ 107 ∧ 107 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 107 ≤ p ∧ p ∣ Nat.choose n 107 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row107_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i107
