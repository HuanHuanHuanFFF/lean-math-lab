import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B16.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B16.Block001

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
