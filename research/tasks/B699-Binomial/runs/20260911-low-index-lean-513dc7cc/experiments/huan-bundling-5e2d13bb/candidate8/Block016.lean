import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block015
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer007_pairs005 :
    row046_layer007_block005.all (fun I => row046_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer007_pairs006 :
    row046_layer007_block006.all (fun I => row046_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer007_pairs007 :
    row046_layer007_block007.all (fun I => row046_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer007_chunks_eq : row046_layer007_chunks.flatten = row046_layer007_intervals := by
  rfl

theorem row046_layer007_pairs : pairCoverCheck row046_layer007_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer007_chunks_eq
  intro block hblock
  simp only [row046_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer007_pairs000
  · exact row046_layer007_pairs001
  · exact row046_layer007_pairs002
  · exact row046_layer007_pairs003
  · exact row046_layer007_pairs004
  · exact row046_layer007_pairs005
  · exact row046_layer007_pairs006
  · exact row046_layer007_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer007_checked :
    coverLayerCheck row046.height row046.goods { lower := 264960, upper := 529920, M := 26 } = true := by
  exact coverLayerCheck_of_parts row046_layer007_arithmetic row046_layer007_enumeration row046_bounds_eq row046_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer008_intervals : List ColouredInterval :=
  [(2, 589824, 589869), (2, 655360, 655405), (2, 720896, 720941), (2, 786432, 786477), (2, 655360, 655405), (2, 786432, 786477), (2, 917504, 917549), (2, 1048576, 1048621), (2, 786432, 786477), (2, 1048576, 1048621), (2, 1048576, 1048621), (2, 1048576, 1048621), (3, 531441, 531486), (3, 590490, 590535), (3, 649539, 649584), (3, 708588, 708633), (3, 767637, 767682), (3, 826686, 826731), (3, 885735, 885780), (3, 944784, 944829), (3, 1003833, 1003878), (3, 531441, 531486), (3, 708588, 708633), (3, 885735, 885780), (3, 531441, 531486), (5, 546875, 546920), (5, 625000, 625045), (5, 703125, 703170), (5, 781250, 781295), (5, 859375, 859420), (5, 937500, 937545), (5, 1015625, 1015670), (5, 781250, 781295), (7, 588245, 588290), (7, 705894, 705939), (7, 823543, 823588), (7, 941192, 941237), (7, 1058841, 1058886), (7, 823543, 823588), (11, 644204, 644249), (11, 805255, 805300), (11, 966306, 966351), (13, 542659, 542704), (13, 571220, 571265), (13, 599781, 599826), (13, 628342, 628387), (13, 656903, 656948), (13, 685464, 685509), (13, 714025, 714070), (13, 742586, 742631), (17, 584647, 584692), (17, 668168, 668213), (17, 751689, 751734), (17, 835210, 835255), (17, 918731, 918776), (17, 1002252, 1002297), (19, 651605, 651650), (19, 781926, 781971), (19, 912247, 912292), (19, 1042568, 1042613), (29, 536558, 536603), (29, 560947, 560992), (29, 585336, 585381), (29, 609725, 609770), (29, 707281, 707326), (31, 536238, 536283), (31, 566029, 566074), (31, 595820, 595865), (31, 625611, 625656), (31, 655402, 655447), (31, 685193, 685238), (31, 714984, 715029), (31, 744775, 744820), (31, 923521, 923566), (37, 557183, 557228), (37, 607836, 607881), (37, 658489, 658534), (37, 709142, 709187), (37, 759795, 759840), (37, 810448, 810493), (37, 861101, 861146), (37, 911754, 911799), (37, 962407, 962452), (37, 1013060, 1013105), (41, 551368, 551413), (41, 620289, 620334), (41, 689210, 689255), (41, 758131, 758176), (41, 827052, 827097), (41, 895973, 896018), (41, 964894, 964939), (41, 1033815, 1033860), (43, 556549, 556594), (43, 636056, 636101), (43, 715563, 715608), (43, 795070, 795115), (43, 874577, 874622), (43, 954084, 954129), (43, 1033591, 1033636)]

def row046_layer008_block000 : List ColouredInterval :=
  [(2, 589824, 589869), (2, 655360, 655405), (2, 720896, 720941), (2, 786432, 786477), (2, 655360, 655405), (2, 786432, 786477), (2, 917504, 917549), (2, 1048576, 1048621), (2, 786432, 786477), (2, 1048576, 1048621), (2, 1048576, 1048621), (2, 1048576, 1048621), (3, 531441, 531486), (3, 590490, 590535), (3, 649539, 649584), (3, 708588, 708633)]

def row046_layer008_block001 : List ColouredInterval :=
  [(3, 767637, 767682), (3, 826686, 826731), (3, 885735, 885780), (3, 944784, 944829), (3, 1003833, 1003878), (3, 531441, 531486), (3, 708588, 708633), (3, 885735, 885780), (3, 531441, 531486), (5, 546875, 546920), (5, 625000, 625045), (5, 703125, 703170), (5, 781250, 781295), (5, 859375, 859420), (5, 937500, 937545), (5, 1015625, 1015670)]

def row046_layer008_block002 : List ColouredInterval :=
  [(5, 781250, 781295), (7, 588245, 588290), (7, 705894, 705939), (7, 823543, 823588), (7, 941192, 941237), (7, 1058841, 1058886), (7, 823543, 823588), (11, 644204, 644249), (11, 805255, 805300), (11, 966306, 966351), (13, 542659, 542704), (13, 571220, 571265), (13, 599781, 599826), (13, 628342, 628387), (13, 656903, 656948), (13, 685464, 685509)]

def row046_layer008_block003 : List ColouredInterval :=
  [(13, 714025, 714070), (13, 742586, 742631), (17, 584647, 584692), (17, 668168, 668213), (17, 751689, 751734), (17, 835210, 835255), (17, 918731, 918776), (17, 1002252, 1002297), (19, 651605, 651650), (19, 781926, 781971), (19, 912247, 912292), (19, 1042568, 1042613), (29, 536558, 536603), (29, 560947, 560992), (29, 585336, 585381), (29, 609725, 609770)]

def row046_layer008_block004 : List ColouredInterval :=
  [(29, 707281, 707326), (31, 536238, 536283), (31, 566029, 566074), (31, 595820, 595865), (31, 625611, 625656), (31, 655402, 655447), (31, 685193, 685238), (31, 714984, 715029), (31, 744775, 744820), (31, 923521, 923566), (37, 557183, 557228), (37, 607836, 607881), (37, 658489, 658534), (37, 709142, 709187), (37, 759795, 759840), (37, 810448, 810493)]

def row046_layer008_block005 : List ColouredInterval :=
  [(37, 861101, 861146), (37, 911754, 911799), (37, 962407, 962452), (37, 1013060, 1013105), (41, 551368, 551413), (41, 620289, 620334), (41, 689210, 689255), (41, 758131, 758176), (41, 827052, 827097), (41, 895973, 896018), (41, 964894, 964939), (41, 1033815, 1033860), (43, 556549, 556594), (43, 636056, 636101), (43, 715563, 715608), (43, 795070, 795115)]

def row046_layer008_block006 : List ColouredInterval :=
  [(43, 874577, 874622), (43, 954084, 954129), (43, 1033591, 1033636)]

def row046_layer008_chunks : List (List ColouredInterval) :=
  [row046_layer008_block000, row046_layer008_block001, row046_layer008_block002, row046_layer008_block003, row046_layer008_block004, row046_layer008_block005, row046_layer008_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer008_arithmetic : LayerArithmeticValid row046.height { lower := 529920, upper := 1059840, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer008_arithmetic
