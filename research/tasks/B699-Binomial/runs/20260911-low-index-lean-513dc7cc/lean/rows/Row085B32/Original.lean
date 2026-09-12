import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_pairs001 :
    row085_layer005_block001.all (fun I => row085_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_pairs002 :
    row085_layer005_block002.all (fun I => row085_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_pairs003 :
    row085_layer005_block003.all (fun I => row085_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_pairs004 :
    row085_layer005_block004.all (fun I => row085_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_chunks_eq : row085_layer005_chunks.flatten = row085_layer005_intervals := by
  rfl

theorem row085_layer005_pairs : pairCoverCheck row085_layer005_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer005_chunks_eq
  intro block hblock
  simp only [row085_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row085_layer005_pairs000
  · exact row085_layer005_pairs001
  · exact row085_layer005_pairs002
  · exact row085_layer005_pairs003
  · exact row085_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_checked :
    coverLayerCheck row085.height row085.goods { lower := 228480, upper := 456960, M := 14 } = true := by
  exact coverLayerCheck_of_parts row085_layer005_arithmetic row085_layer005_enumeration row085_bounds_eq row085_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer006_intervals : List ColouredInterval :=
  [(2, 458752, 458836), (2, 524288, 524372), (2, 589824, 589908), (2, 655360, 655444), (2, 720896, 720980), (2, 786432, 786516), (2, 524288, 524372), (2, 655360, 655444), (2, 786432, 786516), (2, 524288, 524372), (2, 786432, 786516), (2, 524288, 524372), (3, 472392, 472476), (3, 531441, 531525), (3, 590490, 590574), (3, 649539, 649623), (3, 708588, 708672), (3, 531441, 531525), (3, 708588, 708672), (3, 885735, 885819), (3, 531441, 531525), (5, 781250, 781334), (7, 470596, 470680), (7, 588245, 588329), (7, 705894, 705978), (7, 823543, 823627), (7, 823543, 823627), (11, 483153, 483237), (11, 644204, 644288), (11, 805255, 805339), (13, 742586, 742670), (19, 521284, 521368), (19, 651605, 651689), (19, 781926, 782010), (19, 912247, 912331), (23, 559682, 559766), (23, 839523, 839607), (29, 707281, 707365), (37, 506530, 506614), (37, 557183, 557267), (37, 607836, 607920), (41, 482447, 482531), (41, 551368, 551452), (41, 620289, 620373), (41, 689210, 689294), (41, 758131, 758215), (41, 827052, 827136), (43, 477042, 477126), (43, 556549, 556633), (43, 636056, 636140), (43, 715563, 715647), (43, 795070, 795154), (43, 874577, 874661), (47, 519115, 519199), (47, 622938, 623022), (47, 726761, 726845), (47, 830584, 830668), (53, 595508, 595592), (53, 744385, 744469), (53, 893262, 893346), (59, 616137, 616221), (59, 821516, 821600), (61, 680943, 681027), (61, 907924, 908008), (67, 601526, 601610), (67, 902289, 902373), (71, 715822, 715906), (73, 778034, 778118), (79, 493039, 493123), (83, 571787, 571871)]

def row085_layer006_block000 : List ColouredInterval :=
  [(2, 458752, 458836), (2, 524288, 524372), (2, 589824, 589908), (2, 655360, 655444), (2, 720896, 720980), (2, 786432, 786516), (2, 524288, 524372), (2, 655360, 655444), (2, 786432, 786516), (2, 524288, 524372), (2, 786432, 786516), (2, 524288, 524372), (3, 472392, 472476), (3, 531441, 531525), (3, 590490, 590574), (3, 649539, 649623)]

def row085_layer006_block001 : List ColouredInterval :=
  [(3, 708588, 708672), (3, 531441, 531525), (3, 708588, 708672), (3, 885735, 885819), (3, 531441, 531525), (5, 781250, 781334), (7, 470596, 470680), (7, 588245, 588329), (7, 705894, 705978), (7, 823543, 823627), (7, 823543, 823627), (11, 483153, 483237), (11, 644204, 644288), (11, 805255, 805339), (13, 742586, 742670), (19, 521284, 521368)]

def row085_layer006_block002 : List ColouredInterval :=
  [(19, 651605, 651689), (19, 781926, 782010), (19, 912247, 912331), (23, 559682, 559766), (23, 839523, 839607), (29, 707281, 707365), (37, 506530, 506614), (37, 557183, 557267), (37, 607836, 607920), (41, 482447, 482531), (41, 551368, 551452), (41, 620289, 620373), (41, 689210, 689294), (41, 758131, 758215), (41, 827052, 827136), (43, 477042, 477126)]

def row085_layer006_block003 : List ColouredInterval :=
  [(43, 556549, 556633), (43, 636056, 636140), (43, 715563, 715647), (43, 795070, 795154), (43, 874577, 874661), (47, 519115, 519199), (47, 622938, 623022), (47, 726761, 726845), (47, 830584, 830668), (53, 595508, 595592), (53, 744385, 744469), (53, 893262, 893346), (59, 616137, 616221), (59, 821516, 821600), (61, 680943, 681027), (61, 907924, 908008)]

def row085_layer006_block004 : List ColouredInterval :=
  [(67, 601526, 601610), (67, 902289, 902373), (71, 715822, 715906), (73, 778034, 778118), (79, 493039, 493123), (83, 571787, 571871)]

def row085_layer006_chunks : List (List ColouredInterval) :=
  [row085_layer006_block000, row085_layer006_block001, row085_layer006_block002, row085_layer006_block003, row085_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_arithmetic : LayerArithmeticValid row085.height { lower := 456960, upper := 913920, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_enumeration :
    activePowerIntervalList 85 12 456960 913920 = row085_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_pairs000 :
    row085_layer006_block000.all (fun I => row085_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_pairs001 :
    row085_layer006_block001.all (fun I => row085_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_pairs002 :
    row085_layer006_block002.all (fun I => row085_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_pairs003 :
    row085_layer006_block003.all (fun I => row085_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_pairs004 :
    row085_layer006_block004.all (fun I => row085_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_chunks_eq : row085_layer006_chunks.flatten = row085_layer006_intervals := by
  rfl

theorem row085_layer006_pairs : pairCoverCheck row085_layer006_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer006_chunks_eq
  intro block hblock
  simp only [row085_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row085_layer006_pairs000
  · exact row085_layer006_pairs001
  · exact row085_layer006_pairs002
  · exact row085_layer006_pairs003
  · exact row085_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer006_checked :
    coverLayerCheck row085.height row085.goods { lower := 456960, upper := 913920, M := 12 } = true := by
  exact coverLayerCheck_of_parts row085_layer006_arithmetic row085_layer006_enumeration row085_bounds_eq row085_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer007_checked :
    coverLayerCheck row085.height row085.goods { lower := 913920, upper := 1827840, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer008_checked :
    coverLayerCheck row085.height row085.goods { lower := 1827840, upper := 3655680, M := 9 } = true := by
  decide +kernel

theorem row085_layer009_checked :
    coverLayerCheck row085.height row085.goods { lower := 3655680, upper := 7311360, M := 8 } = true := by
  decide +kernel

theorem row085_layer010_checked :
    coverLayerCheck row085.height row085.goods { lower := 7311360, upper := 14622720, M := 7 } = true := by
  decide +kernel

theorem row085_layer011_checked :
    coverLayerCheck row085.height row085.goods { lower := 14622720, upper := 29245440, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer012_checked :
    coverLayerCheck row085.height row085.goods { lower := 29245440, upper := 58490880, M := 5 } = true := by
  decide +kernel

theorem row085_layer013_checked :
    coverLayerCheck row085.height row085.goods { lower := 58490880, upper := 116981760, M := 4 } = true := by
  decide +kernel

theorem row085_layer014_checked :
    coverLayerCheck row085.height row085.goods { lower := 116981760, upper := 233963520, M := 4 } = true := by
  decide +kernel

theorem row085_layer015_checked :
    coverLayerCheck row085.height row085.goods { lower := 233963520, upper := 467927040, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer016_checked :
    coverLayerCheck row085.height row085.goods { lower := 467927040, upper := 935854080, M := 3 } = true := by
  decide +kernel

theorem row085_layer017_checked :
    coverLayerCheck row085.height row085.goods { lower := 935854080, upper := 1871708160, M := 3 } = true := by
  decide +kernel

theorem row085_layer018_checked :
    coverLayerCheck row085.height row085.goods { lower := 1871708160, upper := 3743416320, M := 2 } = true := by
  decide +kernel

theorem row085_layer019_checked :
    coverLayerCheck row085.height row085.goods { lower := 3743416320, upper := 7486832640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer020_checked :
    coverLayerCheck row085.height row085.goods { lower := 7486832640, upper := 14973665280, M := 2 } = true := by
  decide +kernel

theorem row085_layer021_checked :
    coverLayerCheck row085.height row085.goods { lower := 14973665280, upper := 29947330560, M := 2 } = true := by
  decide +kernel

theorem row085_layer022_checked :
    coverLayerCheck row085.height row085.goods { lower := 29947330560, upper := 59894661120, M := 1 } = true := by
  decide +kernel

theorem row085_layer023_checked :
    coverLayerCheck row085.height row085.goods { lower := 59894661120, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layers_checked :
    row085.layers.all (coverLayerCheck row085.height row085.goods) = true := by
  change row085_layers.all (coverLayerCheck row085.height row085.goods) = true
  simp only [row085_layers, List.all_cons, List.all_nil,
    row085_layer000_checked,
    row085_layer001_checked,
    row085_layer002_checked,
    row085_layer003_checked,
    row085_layer004_checked,
    row085_layer005_checked,
    row085_layer006_checked,
    row085_layer007_checked,
    row085_layer008_checked,
    row085_layer009_checked,
    row085_layer010_checked,
    row085_layer011_checked,
    row085_layer012_checked,
    row085_layer013_checked,
    row085_layer014_checked,
    row085_layer015_checked,
    row085_layer016_checked,
    row085_layer017_checked,
    row085_layer018_checked,
    row085_layer019_checked,
    row085_layer020_checked,
    row085_layer021_checked,
    row085_layer022_checked,
    row085_layer023_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_checked : finiteCoverRowCheck row085 = true := by
  simp only [finiteCoverRowCheck, row085_registered, row085_goods_checked,
    row085_small_checked, row085_layerCover_checked, row085_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i085 :
    ∀ n j : ℕ, 1 ≤ 85 ∧ 85 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 85 ≤ p ∧ p ∣ Nat.choose n 85 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row085_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i085
