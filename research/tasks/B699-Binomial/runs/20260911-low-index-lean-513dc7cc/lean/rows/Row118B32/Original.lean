import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs005 :
    row118_layer002_block005.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs006 :
    row118_layer002_block006.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs007 :
    row118_layer002_block007.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs008 :
    row118_layer002_block008.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_chunks_eq : row118_layer002_chunks.flatten = row118_layer002_intervals := by
  rfl

theorem row118_layer002_pairs : pairCoverCheck row118_layer002_intervals row118_bounds = true := by
  apply pairCoverCheck_of_chunks row118_layer002_chunks_eq
  intro block hblock
  simp only [row118_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row118_layer002_pairs000
  · exact row118_layer002_pairs001
  · exact row118_layer002_pairs002
  · exact row118_layer002_pairs003
  · exact row118_layer002_pairs004
  · exact row118_layer002_pairs005
  · exact row118_layer002_pairs006
  · exact row118_layer002_pairs007
  · exact row118_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_checked :
    coverLayerCheck row118.height row118.goods { lower := 55224, upper := 110448, M := 16 } = true := by
  exact coverLayerCheck_of_parts row118_layer002_arithmetic row118_layer002_enumeration row118_bounds_eq row118_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row118_layer003_intervals : List ColouredInterval :=
  [(2, 131072, 131189), (2, 163840, 163957), (2, 196608, 196725), (2, 131072, 131189), (2, 196608, 196725), (2, 131072, 131189), (3, 118098, 118215), (3, 137781, 137898), (3, 157464, 157581), (3, 177147, 177264), (3, 196830, 196947), (3, 216513, 216630), (3, 118098, 118215), (3, 177147, 177264), (3, 177147, 177264), (5, 125000, 125117), (5, 140625, 140742), (5, 156250, 156367), (5, 171875, 171992), (5, 187500, 187617), (5, 203125, 203242), (5, 156250, 156367), (7, 117649, 117766), (7, 134456, 134573), (7, 151263, 151380), (7, 168070, 168187), (7, 184877, 184994), (7, 201684, 201801), (7, 218491, 218608), (7, 117649, 117766), (11, 117128, 117245), (11, 131769, 131886), (11, 146410, 146527), (11, 161051, 161168), (11, 175692, 175809), (11, 190333, 190450), (11, 161051, 161168), (13, 114244, 114361), (13, 142805, 142922), (13, 171366, 171483), (13, 199927, 200044), (17, 167042, 167159), (19, 130321, 130438), (23, 121670, 121787), (23, 133837, 133954), (23, 146004, 146121), (23, 158171, 158288), (29, 121945, 122062), (29, 146334, 146451), (29, 170723, 170840), (29, 195112, 195229), (29, 219501, 219618), (31, 119164, 119281), (31, 148955, 149072), (31, 178746, 178863), (31, 208537, 208654), (37, 151959, 152076), (37, 202612, 202729), (41, 137842, 137959), (41, 206763, 206880), (43, 159014, 159131), (47, 207646, 207763), (53, 148877, 148994), (97, 112908, 113025), (97, 122317, 122434), (101, 112211, 112328), (101, 122412, 122529), (101, 132613, 132730), (103, 116699, 116816), (103, 127308, 127425), (103, 137917, 138034), (107, 114490, 114607), (107, 125939, 126056), (107, 137388, 137505), (107, 148837, 148954), (109, 118810, 118927), (109, 130691, 130808), (109, 142572, 142689), (109, 154453, 154570), (113, 114921, 115038), (113, 127690, 127807), (113, 140459, 140576), (113, 153228, 153345), (113, 165997, 166114)]

def row118_layer003_block000 : List ColouredInterval :=
  [(2, 131072, 131189), (2, 163840, 163957), (2, 196608, 196725), (2, 131072, 131189), (2, 196608, 196725), (2, 131072, 131189), (3, 118098, 118215), (3, 137781, 137898), (3, 157464, 157581), (3, 177147, 177264), (3, 196830, 196947), (3, 216513, 216630), (3, 118098, 118215), (3, 177147, 177264), (3, 177147, 177264), (5, 125000, 125117)]

def row118_layer003_block001 : List ColouredInterval :=
  [(5, 140625, 140742), (5, 156250, 156367), (5, 171875, 171992), (5, 187500, 187617), (5, 203125, 203242), (5, 156250, 156367), (7, 117649, 117766), (7, 134456, 134573), (7, 151263, 151380), (7, 168070, 168187), (7, 184877, 184994), (7, 201684, 201801), (7, 218491, 218608), (7, 117649, 117766), (11, 117128, 117245), (11, 131769, 131886)]

def row118_layer003_block002 : List ColouredInterval :=
  [(11, 146410, 146527), (11, 161051, 161168), (11, 175692, 175809), (11, 190333, 190450), (11, 161051, 161168), (13, 114244, 114361), (13, 142805, 142922), (13, 171366, 171483), (13, 199927, 200044), (17, 167042, 167159), (19, 130321, 130438), (23, 121670, 121787), (23, 133837, 133954), (23, 146004, 146121), (23, 158171, 158288), (29, 121945, 122062)]

def row118_layer003_block003 : List ColouredInterval :=
  [(29, 146334, 146451), (29, 170723, 170840), (29, 195112, 195229), (29, 219501, 219618), (31, 119164, 119281), (31, 148955, 149072), (31, 178746, 178863), (31, 208537, 208654), (37, 151959, 152076), (37, 202612, 202729), (41, 137842, 137959), (41, 206763, 206880), (43, 159014, 159131), (47, 207646, 207763), (53, 148877, 148994), (97, 112908, 113025)]

def row118_layer003_block004 : List ColouredInterval :=
  [(97, 122317, 122434), (101, 112211, 112328), (101, 122412, 122529), (101, 132613, 132730), (103, 116699, 116816), (103, 127308, 127425), (103, 137917, 138034), (107, 114490, 114607), (107, 125939, 126056), (107, 137388, 137505), (107, 148837, 148954), (109, 118810, 118927), (109, 130691, 130808), (109, 142572, 142689), (109, 154453, 154570), (113, 114921, 115038)]

def row118_layer003_block005 : List ColouredInterval :=
  [(113, 127690, 127807), (113, 140459, 140576), (113, 153228, 153345), (113, 165997, 166114)]

def row118_layer003_chunks : List (List ColouredInterval) :=
  [row118_layer003_block000, row118_layer003_block001, row118_layer003_block002, row118_layer003_block003, row118_layer003_block004, row118_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_arithmetic : LayerArithmeticValid row118.height { lower := 110448, upper := 220896, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_enumeration :
    activePowerIntervalList 118 13 110448 220896 = row118_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_pairs000 :
    row118_layer003_block000.all (fun I => row118_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_pairs001 :
    row118_layer003_block001.all (fun I => row118_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_pairs002 :
    row118_layer003_block002.all (fun I => row118_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_pairs003 :
    row118_layer003_block003.all (fun I => row118_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_pairs004 :
    row118_layer003_block004.all (fun I => row118_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_pairs005 :
    row118_layer003_block005.all (fun I => row118_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_chunks_eq : row118_layer003_chunks.flatten = row118_layer003_intervals := by
  rfl

theorem row118_layer003_pairs : pairCoverCheck row118_layer003_intervals row118_bounds = true := by
  apply pairCoverCheck_of_chunks row118_layer003_chunks_eq
  intro block hblock
  simp only [row118_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row118_layer003_pairs000
  · exact row118_layer003_pairs001
  · exact row118_layer003_pairs002
  · exact row118_layer003_pairs003
  · exact row118_layer003_pairs004
  · exact row118_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer003_checked :
    coverLayerCheck row118.height row118.goods { lower := 110448, upper := 220896, M := 13 } = true := by
  exact coverLayerCheck_of_parts row118_layer003_arithmetic row118_layer003_enumeration row118_bounds_eq row118_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer004_checked :
    coverLayerCheck row118.height row118.goods { lower := 220896, upper := 441792, M := 11 } = true := by
  decide +kernel

theorem row118_layer005_checked :
    coverLayerCheck row118.height row118.goods { lower := 441792, upper := 883584, M := 9 } = true := by
  decide +kernel

theorem row118_layer006_checked :
    coverLayerCheck row118.height row118.goods { lower := 883584, upper := 1767168, M := 7 } = true := by
  decide +kernel

theorem row118_layer007_checked :
    coverLayerCheck row118.height row118.goods { lower := 1767168, upper := 3534336, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer008_checked :
    coverLayerCheck row118.height row118.goods { lower := 3534336, upper := 7068672, M := 5 } = true := by
  decide +kernel

theorem row118_layer009_checked :
    coverLayerCheck row118.height row118.goods { lower := 7068672, upper := 14137344, M := 4 } = true := by
  decide +kernel

theorem row118_layer010_checked :
    coverLayerCheck row118.height row118.goods { lower := 14137344, upper := 28274688, M := 3 } = true := by
  decide +kernel

theorem row118_layer011_checked :
    coverLayerCheck row118.height row118.goods { lower := 28274688, upper := 56549376, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer012_checked :
    coverLayerCheck row118.height row118.goods { lower := 56549376, upper := 113098752, M := 2 } = true := by
  decide +kernel

theorem row118_layer013_checked :
    coverLayerCheck row118.height row118.goods { lower := 113098752, upper := 226197504, M := 2 } = true := by
  decide +kernel

theorem row118_layer014_checked :
    coverLayerCheck row118.height row118.goods { lower := 226197504, upper := 452395008, M := 2 } = true := by
  decide +kernel

theorem row118_layer015_checked :
    coverLayerCheck row118.height row118.goods { lower := 452395008, upper := 904790016, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer016_checked :
    coverLayerCheck row118.height row118.goods { lower := 904790016, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layers_checked :
    row118.layers.all (coverLayerCheck row118.height row118.goods) = true := by
  change row118_layers.all (coverLayerCheck row118.height row118.goods) = true
  simp only [row118_layers, List.all_cons, List.all_nil,
    row118_layer000_checked,
    row118_layer001_checked,
    row118_layer002_checked,
    row118_layer003_checked,
    row118_layer004_checked,
    row118_layer005_checked,
    row118_layer006_checked,
    row118_layer007_checked,
    row118_layer008_checked,
    row118_layer009_checked,
    row118_layer010_checked,
    row118_layer011_checked,
    row118_layer012_checked,
    row118_layer013_checked,
    row118_layer014_checked,
    row118_layer015_checked,
    row118_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_checked : finiteCoverRowCheck row118 = true := by
  simp only [finiteCoverRowCheck, row118_registered, row118_goods_checked,
    row118_small_checked, row118_layerCover_checked, row118_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i118 :
    ∀ n j : ℕ, 1 ≤ 118 ∧ 118 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 118 ≤ p ∧ p ∣ Nat.choose n 118 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row118_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i118
