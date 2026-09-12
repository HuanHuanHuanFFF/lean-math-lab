import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_pairs000 :
    row081_layer005_block000.all (fun I => row081_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_pairs001 :
    row081_layer005_block001.all (fun I => row081_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_pairs002 :
    row081_layer005_block002.all (fun I => row081_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_pairs003 :
    row081_layer005_block003.all (fun I => row081_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_pairs004 :
    row081_layer005_block004.all (fun I => row081_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_chunks_eq : row081_layer005_chunks.flatten = row081_layer005_intervals := by
  rfl

theorem row081_layer005_pairs : pairCoverCheck row081_layer005_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer005_chunks_eq
  intro block hblock
  simp only [row081_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row081_layer005_pairs000
  · exact row081_layer005_pairs001
  · exact row081_layer005_pairs002
  · exact row081_layer005_pairs003
  · exact row081_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_checked :
    coverLayerCheck row081.height row081.goods { lower := 207360, upper := 414720, M := 14 } = true := by
  exact coverLayerCheck_of_parts row081_layer005_arithmetic row081_layer005_enumeration row081_bounds_eq row081_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_layer006_intervals : List ColouredInterval :=
  [(2, 458752, 458832), (2, 524288, 524368), (2, 589824, 589904), (2, 655360, 655440), (2, 720896, 720976), (2, 786432, 786512), (2, 524288, 524368), (2, 655360, 655440), (2, 786432, 786512), (2, 524288, 524368), (2, 786432, 786512), (2, 524288, 524368), (5, 468750, 468830), (5, 546875, 546955), (5, 625000, 625080), (5, 703125, 703205), (5, 781250, 781330), (5, 781250, 781330), (7, 470596, 470676), (7, 588245, 588325), (7, 705894, 705974), (7, 823543, 823623), (7, 823543, 823623), (11, 483153, 483233), (11, 644204, 644284), (11, 805255, 805335), (13, 742586, 742666), (17, 417605, 417685), (17, 501126, 501206), (17, 584647, 584727), (17, 668168, 668248), (17, 751689, 751769), (19, 521284, 521364), (19, 651605, 651685), (19, 781926, 782006), (23, 559682, 559762), (29, 707281, 707361), (37, 455877, 455957), (37, 506530, 506610), (37, 557183, 557263), (37, 607836, 607916), (41, 482447, 482527), (41, 551368, 551448), (41, 620289, 620369), (41, 689210, 689290), (41, 758131, 758211), (41, 827052, 827132), (43, 477042, 477122), (43, 556549, 556629), (43, 636056, 636136), (43, 715563, 715643), (43, 795070, 795150), (47, 415292, 415372), (47, 519115, 519195), (47, 622938, 623018), (47, 726761, 726841), (53, 446631, 446711), (53, 595508, 595588), (53, 744385, 744465), (59, 616137, 616217), (59, 821516, 821596), (61, 453962, 454042), (61, 680943, 681023), (67, 601526, 601606), (71, 715822, 715902), (73, 778034, 778114), (79, 493039, 493119)]

def row081_layer006_block000 : List ColouredInterval :=
  [(2, 458752, 458832), (2, 524288, 524368), (2, 589824, 589904), (2, 655360, 655440), (2, 720896, 720976), (2, 786432, 786512), (2, 524288, 524368), (2, 655360, 655440), (2, 786432, 786512), (2, 524288, 524368), (2, 786432, 786512), (2, 524288, 524368), (5, 468750, 468830), (5, 546875, 546955), (5, 625000, 625080), (5, 703125, 703205)]

def row081_layer006_block001 : List ColouredInterval :=
  [(5, 781250, 781330), (5, 781250, 781330), (7, 470596, 470676), (7, 588245, 588325), (7, 705894, 705974), (7, 823543, 823623), (7, 823543, 823623), (11, 483153, 483233), (11, 644204, 644284), (11, 805255, 805335), (13, 742586, 742666), (17, 417605, 417685), (17, 501126, 501206), (17, 584647, 584727), (17, 668168, 668248), (17, 751689, 751769)]

def row081_layer006_block002 : List ColouredInterval :=
  [(19, 521284, 521364), (19, 651605, 651685), (19, 781926, 782006), (23, 559682, 559762), (29, 707281, 707361), (37, 455877, 455957), (37, 506530, 506610), (37, 557183, 557263), (37, 607836, 607916), (41, 482447, 482527), (41, 551368, 551448), (41, 620289, 620369), (41, 689210, 689290), (41, 758131, 758211), (41, 827052, 827132), (43, 477042, 477122)]

def row081_layer006_block003 : List ColouredInterval :=
  [(43, 556549, 556629), (43, 636056, 636136), (43, 715563, 715643), (43, 795070, 795150), (47, 415292, 415372), (47, 519115, 519195), (47, 622938, 623018), (47, 726761, 726841), (53, 446631, 446711), (53, 595508, 595588), (53, 744385, 744465), (59, 616137, 616217), (59, 821516, 821596), (61, 453962, 454042), (61, 680943, 681023), (67, 601526, 601606)]

def row081_layer006_block004 : List ColouredInterval :=
  [(71, 715822, 715902), (73, 778034, 778114), (79, 493039, 493119)]

def row081_layer006_chunks : List (List ColouredInterval) :=
  [row081_layer006_block000, row081_layer006_block001, row081_layer006_block002, row081_layer006_block003, row081_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_arithmetic : LayerArithmeticValid row081.height { lower := 414720, upper := 829440, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_enumeration :
    activePowerIntervalList 81 12 414720 829440 = row081_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_pairs000 :
    row081_layer006_block000.all (fun I => row081_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_pairs001 :
    row081_layer006_block001.all (fun I => row081_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_pairs002 :
    row081_layer006_block002.all (fun I => row081_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_pairs003 :
    row081_layer006_block003.all (fun I => row081_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_pairs004 :
    row081_layer006_block004.all (fun I => row081_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_chunks_eq : row081_layer006_chunks.flatten = row081_layer006_intervals := by
  rfl

theorem row081_layer006_pairs : pairCoverCheck row081_layer006_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer006_chunks_eq
  intro block hblock
  simp only [row081_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row081_layer006_pairs000
  · exact row081_layer006_pairs001
  · exact row081_layer006_pairs002
  · exact row081_layer006_pairs003
  · exact row081_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer006_checked :
    coverLayerCheck row081.height row081.goods { lower := 414720, upper := 829440, M := 12 } = true := by
  exact coverLayerCheck_of_parts row081_layer006_arithmetic row081_layer006_enumeration row081_bounds_eq row081_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer007_checked :
    coverLayerCheck row081.height row081.goods { lower := 829440, upper := 1658880, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer008_checked :
    coverLayerCheck row081.height row081.goods { lower := 1658880, upper := 3317760, M := 9 } = true := by
  decide +kernel

theorem row081_layer009_checked :
    coverLayerCheck row081.height row081.goods { lower := 3317760, upper := 6635520, M := 8 } = true := by
  decide +kernel

theorem row081_layer010_checked :
    coverLayerCheck row081.height row081.goods { lower := 6635520, upper := 13271040, M := 7 } = true := by
  decide +kernel

theorem row081_layer011_checked :
    coverLayerCheck row081.height row081.goods { lower := 13271040, upper := 26542080, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer012_checked :
    coverLayerCheck row081.height row081.goods { lower := 26542080, upper := 53084160, M := 5 } = true := by
  decide +kernel

theorem row081_layer013_checked :
    coverLayerCheck row081.height row081.goods { lower := 53084160, upper := 106168320, M := 4 } = true := by
  decide +kernel

theorem row081_layer014_checked :
    coverLayerCheck row081.height row081.goods { lower := 106168320, upper := 212336640, M := 4 } = true := by
  decide +kernel

theorem row081_layer015_checked :
    coverLayerCheck row081.height row081.goods { lower := 212336640, upper := 424673280, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer016_checked :
    coverLayerCheck row081.height row081.goods { lower := 424673280, upper := 849346560, M := 3 } = true := by
  decide +kernel

theorem row081_layer017_checked :
    coverLayerCheck row081.height row081.goods { lower := 849346560, upper := 1698693120, M := 3 } = true := by
  decide +kernel

theorem row081_layer018_checked :
    coverLayerCheck row081.height row081.goods { lower := 1698693120, upper := 3397386240, M := 2 } = true := by
  decide +kernel

theorem row081_layer019_checked :
    coverLayerCheck row081.height row081.goods { lower := 3397386240, upper := 6794772480, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer020_checked :
    coverLayerCheck row081.height row081.goods { lower := 6794772480, upper := 13589544960, M := 2 } = true := by
  decide +kernel

theorem row081_layer021_checked :
    coverLayerCheck row081.height row081.goods { lower := 13589544960, upper := 27179089920, M := 2 } = true := by
  decide +kernel

theorem row081_layer022_checked :
    coverLayerCheck row081.height row081.goods { lower := 27179089920, upper := 54358179840, M := 2 } = true := by
  decide +kernel

theorem row081_layer023_checked :
    coverLayerCheck row081.height row081.goods { lower := 54358179840, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layers_checked :
    row081.layers.all (coverLayerCheck row081.height row081.goods) = true := by
  change row081_layers.all (coverLayerCheck row081.height row081.goods) = true
  simp only [row081_layers, List.all_cons, List.all_nil,
    row081_layer000_checked,
    row081_layer001_checked,
    row081_layer002_checked,
    row081_layer003_checked,
    row081_layer004_checked,
    row081_layer005_checked,
    row081_layer006_checked,
    row081_layer007_checked,
    row081_layer008_checked,
    row081_layer009_checked,
    row081_layer010_checked,
    row081_layer011_checked,
    row081_layer012_checked,
    row081_layer013_checked,
    row081_layer014_checked,
    row081_layer015_checked,
    row081_layer016_checked,
    row081_layer017_checked,
    row081_layer018_checked,
    row081_layer019_checked,
    row081_layer020_checked,
    row081_layer021_checked,
    row081_layer022_checked,
    row081_layer023_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_checked : finiteCoverRowCheck row081 = true := by
  simp only [finiteCoverRowCheck, row081_registered, row081_goods_checked,
    row081_small_checked, row081_layerCover_checked, row081_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i081 :
    ∀ n j : ℕ, 1 ≤ 81 ∧ 81 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 81 ≤ p ∧ p ∣ Nat.choose n 81 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row081_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i081
