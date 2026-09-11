import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row182B16.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row182_layer002_intervals : List ColouredInterval :=
  [(2, 196608, 196789), (2, 262144, 262325), (2, 262144, 262325), (2, 262144, 262325), (3, 137781, 137962), (3, 157464, 157645), (3, 177147, 177328), (3, 236196, 236377), (3, 177147, 177328), (5, 156250, 156431), (5, 234375, 234556), (11, 161051, 161232), (17, 167042, 167223), (17, 250563, 250744), (19, 260642, 260823), (29, 146334, 146515), (29, 170723, 170904), (29, 195112, 195293), (31, 148955, 149136), (31, 178746, 178927), (31, 208537, 208718), (31, 238328, 238509), (37, 151959, 152140), (37, 202612, 202793), (37, 253265, 253446), (41, 137842, 138023), (41, 206763, 206944), (43, 159014, 159195), (43, 238521, 238702), (47, 207646, 207827), (53, 148877, 149058), (59, 205379, 205560), (61, 226981, 227162), (131, 137288, 137469), (137, 150152, 150333), (139, 135247, 135428), (139, 154568, 154749), (149, 133206, 133387), (149, 155407, 155588), (149, 177608, 177789), (151, 136806, 136987), (151, 159607, 159788), (151, 182408, 182589), (157, 147894, 148075), (157, 172543, 172724), (157, 197192, 197373), (163, 132845, 133026), (163, 159414, 159595), (163, 185983, 186164), (163, 212552, 212733), (167, 139445, 139626), (167, 167334, 167515), (167, 195223, 195404), (167, 223112, 223293), (173, 149645, 149826), (173, 179574, 179755), (173, 209503, 209684), (173, 239432, 239613), (179, 160205, 160386), (179, 192246, 192427), (179, 224287, 224468), (179, 256328, 256509), (181, 163805, 163986), (181, 196566, 196747), (181, 229327, 229508), (181, 262088, 262269)]

def row182_layer002_block000 : List ColouredInterval :=
  [(2, 196608, 196789), (2, 262144, 262325), (2, 262144, 262325), (2, 262144, 262325), (3, 137781, 137962), (3, 157464, 157645), (3, 177147, 177328), (3, 236196, 236377), (3, 177147, 177328), (5, 156250, 156431), (5, 234375, 234556), (11, 161051, 161232), (17, 167042, 167223), (17, 250563, 250744), (19, 260642, 260823), (29, 146334, 146515)]

def row182_layer002_block001 : List ColouredInterval :=
  [(29, 170723, 170904), (29, 195112, 195293), (31, 148955, 149136), (31, 178746, 178927), (31, 208537, 208718), (31, 238328, 238509), (37, 151959, 152140), (37, 202612, 202793), (37, 253265, 253446), (41, 137842, 138023), (41, 206763, 206944), (43, 159014, 159195), (43, 238521, 238702), (47, 207646, 207827), (53, 148877, 149058), (59, 205379, 205560)]

def row182_layer002_block002 : List ColouredInterval :=
  [(61, 226981, 227162), (131, 137288, 137469), (137, 150152, 150333), (139, 135247, 135428), (139, 154568, 154749), (149, 133206, 133387), (149, 155407, 155588), (149, 177608, 177789), (151, 136806, 136987), (151, 159607, 159788), (151, 182408, 182589), (157, 147894, 148075), (157, 172543, 172724), (157, 197192, 197373), (163, 132845, 133026), (163, 159414, 159595)]

def row182_layer002_block003 : List ColouredInterval :=
  [(163, 185983, 186164), (163, 212552, 212733), (167, 139445, 139626), (167, 167334, 167515), (167, 195223, 195404), (167, 223112, 223293), (173, 149645, 149826), (173, 179574, 179755), (173, 209503, 209684), (173, 239432, 239613), (179, 160205, 160386), (179, 192246, 192427), (179, 224287, 224468), (179, 256328, 256509), (181, 163805, 163986), (181, 196566, 196747)]

def row182_layer002_block004 : List ColouredInterval :=
  [(181, 229327, 229508), (181, 262088, 262269)]

def row182_layer002_chunks : List (List ColouredInterval) :=
  [row182_layer002_block000, row182_layer002_block001, row182_layer002_block002, row182_layer002_block003, row182_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_arithmetic : LayerArithmeticValid row182.height { lower := 131768, upper := 263536, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_enumeration :
    activePowerIntervalList 182 8 131768 263536 = row182_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs000 :
    row182_layer002_block000.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs001 :
    row182_layer002_block001.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs002 :
    row182_layer002_block002.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs003 :
    row182_layer002_block003.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_pairs004 :
    row182_layer002_block004.all (fun I => row182_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row182_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_chunks_eq : row182_layer002_chunks.flatten = row182_layer002_intervals := by
  rfl

theorem row182_layer002_pairs : pairCoverCheck row182_layer002_intervals row182_bounds = true := by
  apply pairCoverCheck_of_chunks row182_layer002_chunks_eq
  intro block hblock
  simp only [row182_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row182_layer002_pairs000
  · exact row182_layer002_pairs001
  · exact row182_layer002_pairs002
  · exact row182_layer002_pairs003
  · exact row182_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer002_checked :
    coverLayerCheck row182.height row182.goods { lower := 131768, upper := 263536, M := 8 } = true := by
  exact coverLayerCheck_of_parts row182_layer002_arithmetic row182_layer002_enumeration row182_bounds_eq row182_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer003_checked :
    coverLayerCheck row182.height row182.goods { lower := 263536, upper := 527072, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer004_checked :
    coverLayerCheck row182.height row182.goods { lower := 527072, upper := 1054144, M := 5 } = true := by
  decide +kernel

theorem row182_layer005_checked :
    coverLayerCheck row182.height row182.goods { lower := 1054144, upper := 2108288, M := 4 } = true := by
  decide +kernel

theorem row182_layer006_checked :
    coverLayerCheck row182.height row182.goods { lower := 2108288, upper := 4216576, M := 3 } = true := by
  decide +kernel

theorem row182_layer007_checked :
    coverLayerCheck row182.height row182.goods { lower := 4216576, upper := 8433152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer008_checked :
    coverLayerCheck row182.height row182.goods { lower := 8433152, upper := 16866304, M := 2 } = true := by
  decide +kernel

theorem row182_layer009_checked :
    coverLayerCheck row182.height row182.goods { lower := 16866304, upper := 33732608, M := 1 } = true := by
  decide +kernel

theorem row182_layer010_checked :
    coverLayerCheck row182.height row182.goods { lower := 33732608, upper := 67465216, M := 1 } = true := by
  decide +kernel

theorem row182_layer011_checked :
    coverLayerCheck row182.height row182.goods { lower := 67465216, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layers_checked :
    row182.layers.all (coverLayerCheck row182.height row182.goods) = true := by
  change row182_layers.all (coverLayerCheck row182.height row182.goods) = true
  simp only [row182_layers, List.all_cons, List.all_nil,
    row182_layer000_checked,
    row182_layer001_checked,
    row182_layer002_checked,
    row182_layer003_checked,
    row182_layer004_checked,
    row182_layer005_checked,
    row182_layer006_checked,
    row182_layer007_checked,
    row182_layer008_checked,
    row182_layer009_checked,
    row182_layer010_checked,
    row182_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_checked : finiteCoverRowCheck row182 = true := by
  simp only [finiteCoverRowCheck, row182_registered, row182_goods_checked,
    row182_small_checked, row182_layerCover_checked, row182_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i182 :
    ∀ n j : ℕ, 1 ≤ 182 ∧ 182 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 182 ≤ p ∧ p ∣ Nat.choose n 182 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row182_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i182
