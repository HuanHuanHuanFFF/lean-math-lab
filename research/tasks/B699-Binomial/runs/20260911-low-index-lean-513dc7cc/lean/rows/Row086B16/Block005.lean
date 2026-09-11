import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B16.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_pairs000 :
    row086_layer004_block000.all (fun I => row086_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_pairs001 :
    row086_layer004_block001.all (fun I => row086_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_pairs002 :
    row086_layer004_block002.all (fun I => row086_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_pairs003 :
    row086_layer004_block003.all (fun I => row086_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_pairs004 :
    row086_layer004_block004.all (fun I => row086_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_chunks_eq : row086_layer004_chunks.flatten = row086_layer004_intervals := by
  rfl

theorem row086_layer004_pairs : pairCoverCheck row086_layer004_intervals row086_bounds = true := by
  apply pairCoverCheck_of_chunks row086_layer004_chunks_eq
  intro block hblock
  simp only [row086_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row086_layer004_pairs000
  · exact row086_layer004_pairs001
  · exact row086_layer004_pairs002
  · exact row086_layer004_pairs003
  · exact row086_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer004_checked :
    coverLayerCheck row086.height row086.goods { lower := 116960, upper := 233920, M := 15 } = true := by
  exact coverLayerCheck_of_parts row086_layer004_arithmetic row086_layer004_enumeration row086_bounds_eq row086_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row086_layer006_intervals : List ColouredInterval :=
  [(2, 524288, 524373), (2, 655360, 655445), (2, 524288, 524373), (2, 786432, 786517), (2, 524288, 524373), (3, 472392, 472477), (3, 531441, 531526), (3, 590490, 590575), (3, 649539, 649624), (3, 531441, 531526), (3, 708588, 708673), (3, 885735, 885820), (3, 531441, 531526), (5, 468750, 468835), (5, 546875, 546960), (5, 625000, 625085), (5, 703125, 703210), (5, 781250, 781335), (5, 859375, 859460), (5, 781250, 781335), (7, 470596, 470681), (7, 588245, 588330), (7, 705894, 705979), (7, 823543, 823628), (7, 823543, 823628), (11, 483153, 483238), (11, 644204, 644289), (11, 805255, 805340), (13, 742586, 742671), (17, 501126, 501211), (17, 584647, 584732), (17, 668168, 668253), (17, 751689, 751774), (17, 835210, 835295), (17, 918731, 918816), (19, 521284, 521369), (19, 651605, 651690), (19, 781926, 782011), (19, 912247, 912332), (23, 559682, 559767), (23, 839523, 839608), (29, 707281, 707366), (31, 923521, 923606), (37, 506530, 506615), (37, 557183, 557268), (41, 482447, 482532), (41, 551368, 551453), (41, 620289, 620374), (41, 689210, 689295), (41, 758131, 758216), (47, 519115, 519200), (47, 622938, 623023), (47, 726761, 726846), (47, 830584, 830669), (47, 934407, 934492), (53, 595508, 595593), (53, 744385, 744470), (53, 893262, 893347), (59, 616137, 616222), (59, 821516, 821601), (61, 680943, 681028), (61, 907924, 908009), (67, 601526, 601611), (67, 902289, 902374), (71, 715822, 715907), (73, 778034, 778119), (79, 493039, 493124), (83, 571787, 571872)]

def row086_layer006_block000 : List ColouredInterval :=
  [(2, 524288, 524373), (2, 655360, 655445), (2, 524288, 524373), (2, 786432, 786517), (2, 524288, 524373), (3, 472392, 472477), (3, 531441, 531526), (3, 590490, 590575), (3, 649539, 649624), (3, 531441, 531526), (3, 708588, 708673), (3, 885735, 885820), (3, 531441, 531526), (5, 468750, 468835), (5, 546875, 546960), (5, 625000, 625085)]

def row086_layer006_block001 : List ColouredInterval :=
  [(5, 703125, 703210), (5, 781250, 781335), (5, 859375, 859460), (5, 781250, 781335), (7, 470596, 470681), (7, 588245, 588330), (7, 705894, 705979), (7, 823543, 823628), (7, 823543, 823628), (11, 483153, 483238), (11, 644204, 644289), (11, 805255, 805340), (13, 742586, 742671), (17, 501126, 501211), (17, 584647, 584732), (17, 668168, 668253)]

def row086_layer006_block002 : List ColouredInterval :=
  [(17, 751689, 751774), (17, 835210, 835295), (17, 918731, 918816), (19, 521284, 521369), (19, 651605, 651690), (19, 781926, 782011), (19, 912247, 912332), (23, 559682, 559767), (23, 839523, 839608), (29, 707281, 707366), (31, 923521, 923606), (37, 506530, 506615), (37, 557183, 557268), (41, 482447, 482532), (41, 551368, 551453), (41, 620289, 620374)]

def row086_layer006_block003 : List ColouredInterval :=
  [(41, 689210, 689295), (41, 758131, 758216), (47, 519115, 519200), (47, 622938, 623023), (47, 726761, 726846), (47, 830584, 830669), (47, 934407, 934492), (53, 595508, 595593), (53, 744385, 744470), (53, 893262, 893347), (59, 616137, 616222), (59, 821516, 821601), (61, 680943, 681028), (61, 907924, 908009), (67, 601526, 601611), (67, 902289, 902374)]

def row086_layer006_block004 : List ColouredInterval :=
  [(71, 715822, 715907), (73, 778034, 778119), (79, 493039, 493124), (83, 571787, 571872)]

def row086_layer006_chunks : List (List ColouredInterval) :=
  [row086_layer006_block000, row086_layer006_block001, row086_layer006_block002, row086_layer006_block003, row086_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_arithmetic : LayerArithmeticValid row086.height { lower := 467840, upper := 935680, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_enumeration :
    activePowerIntervalList 86 11 467840 935680 = row086_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_pairs000 :
    row086_layer006_block000.all (fun I => row086_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_pairs001 :
    row086_layer006_block001.all (fun I => row086_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_pairs002 :
    row086_layer006_block002.all (fun I => row086_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_pairs003 :
    row086_layer006_block003.all (fun I => row086_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_pairs004 :
    row086_layer006_block004.all (fun I => row086_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer006_chunks_eq : row086_layer006_chunks.flatten = row086_layer006_intervals := by
  rfl

theorem row086_layer006_pairs : pairCoverCheck row086_layer006_intervals row086_bounds = true := by
  apply pairCoverCheck_of_chunks row086_layer006_chunks_eq
  intro block hblock
  simp only [row086_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row086_layer006_pairs000
  · exact row086_layer006_pairs001
  · exact row086_layer006_pairs002
  · exact row086_layer006_pairs003
  · exact row086_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer006_pairs
