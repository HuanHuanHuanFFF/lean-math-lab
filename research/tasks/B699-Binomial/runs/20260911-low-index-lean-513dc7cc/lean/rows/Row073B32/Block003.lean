import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_arithmetic : LayerArithmeticValid row073.height { lower := 168192, upper := 336384, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_enumeration :
    activePowerIntervalList 73 14 168192 336384 = row073_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_pairs000 :
    row073_layer005_block000.all (fun I => row073_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_pairs001 :
    row073_layer005_block001.all (fun I => row073_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_pairs002 :
    row073_layer005_block002.all (fun I => row073_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_pairs003 :
    row073_layer005_block003.all (fun I => row073_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_pairs004 :
    row073_layer005_block004.all (fun I => row073_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_chunks_eq : row073_layer005_chunks.flatten = row073_layer005_intervals := by
  rfl

theorem row073_layer005_pairs : pairCoverCheck row073_layer005_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer005_chunks_eq
  intro block hblock
  simp only [row073_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row073_layer005_pairs000
  · exact row073_layer005_pairs001
  · exact row073_layer005_pairs002
  · exact row073_layer005_pairs003
  · exact row073_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer005_checked :
    coverLayerCheck row073.height row073.goods { lower := 168192, upper := 336384, M := 14 } = true := by
  exact coverLayerCheck_of_parts row073_layer005_arithmetic row073_layer005_enumeration row073_bounds_eq row073_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer006_intervals : List ColouredInterval :=
  [(2, 360448, 360520), (2, 393216, 393288), (2, 425984, 426056), (2, 393216, 393288), (2, 458752, 458824), (2, 524288, 524360), (2, 589824, 589896), (2, 655360, 655432), (2, 393216, 393288), (2, 524288, 524360), (2, 655360, 655432), (2, 524288, 524360), (2, 524288, 524360), (3, 354294, 354366), (3, 413343, 413415), (3, 472392, 472464), (3, 531441, 531513), (3, 590490, 590562), (3, 649539, 649611), (3, 354294, 354366), (3, 531441, 531513), (3, 531441, 531513), (5, 390625, 390697), (5, 468750, 468822), (5, 546875, 546947), (5, 625000, 625072), (5, 390625, 390697), (7, 352947, 353019), (7, 470596, 470668), (7, 588245, 588317), (11, 483153, 483225), (11, 644204, 644276), (13, 342732, 342804), (13, 371293, 371365), (13, 371293, 371365), (17, 417605, 417677), (17, 501126, 501198), (17, 584647, 584719), (17, 668168, 668240), (19, 390963, 391035), (19, 521284, 521356), (19, 651605, 651677), (23, 559682, 559754), (31, 357492, 357564), (31, 387283, 387355), (37, 354571, 354643), (37, 405224, 405296), (37, 455877, 455949), (37, 506530, 506602), (37, 557183, 557255), (37, 607836, 607908), (37, 658489, 658561), (41, 344605, 344677), (41, 413526, 413598), (41, 482447, 482519), (41, 551368, 551440), (41, 620289, 620361), (43, 397535, 397607), (43, 477042, 477114), (43, 556549, 556621), (43, 636056, 636128), (47, 415292, 415364), (47, 519115, 519187), (47, 622938, 623010), (53, 446631, 446703), (53, 595508, 595580), (59, 410758, 410830), (59, 616137, 616209), (61, 453962, 454034), (67, 601526, 601598), (71, 357911, 357983)]

def row073_layer006_block000 : List ColouredInterval :=
  [(2, 360448, 360520), (2, 393216, 393288), (2, 425984, 426056), (2, 393216, 393288), (2, 458752, 458824), (2, 524288, 524360), (2, 589824, 589896), (2, 655360, 655432), (2, 393216, 393288), (2, 524288, 524360), (2, 655360, 655432), (2, 524288, 524360), (2, 524288, 524360), (3, 354294, 354366), (3, 413343, 413415), (3, 472392, 472464)]

def row073_layer006_block001 : List ColouredInterval :=
  [(3, 531441, 531513), (3, 590490, 590562), (3, 649539, 649611), (3, 354294, 354366), (3, 531441, 531513), (3, 531441, 531513), (5, 390625, 390697), (5, 468750, 468822), (5, 546875, 546947), (5, 625000, 625072), (5, 390625, 390697), (7, 352947, 353019), (7, 470596, 470668), (7, 588245, 588317), (11, 483153, 483225), (11, 644204, 644276)]

def row073_layer006_block002 : List ColouredInterval :=
  [(13, 342732, 342804), (13, 371293, 371365), (13, 371293, 371365), (17, 417605, 417677), (17, 501126, 501198), (17, 584647, 584719), (17, 668168, 668240), (19, 390963, 391035), (19, 521284, 521356), (19, 651605, 651677), (23, 559682, 559754), (31, 357492, 357564), (31, 387283, 387355), (37, 354571, 354643), (37, 405224, 405296), (37, 455877, 455949)]

def row073_layer006_block003 : List ColouredInterval :=
  [(37, 506530, 506602), (37, 557183, 557255), (37, 607836, 607908), (37, 658489, 658561), (41, 344605, 344677), (41, 413526, 413598), (41, 482447, 482519), (41, 551368, 551440), (41, 620289, 620361), (43, 397535, 397607), (43, 477042, 477114), (43, 556549, 556621), (43, 636056, 636128), (47, 415292, 415364), (47, 519115, 519187), (47, 622938, 623010)]

def row073_layer006_block004 : List ColouredInterval :=
  [(53, 446631, 446703), (53, 595508, 595580), (59, 410758, 410830), (59, 616137, 616209), (61, 453962, 454034), (67, 601526, 601598), (71, 357911, 357983)]

def row073_layer006_chunks : List (List ColouredInterval) :=
  [row073_layer006_block000, row073_layer006_block001, row073_layer006_block002, row073_layer006_block003, row073_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_arithmetic : LayerArithmeticValid row073.height { lower := 336384, upper := 672768, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_enumeration :
    activePowerIntervalList 73 13 336384 672768 = row073_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_pairs000 :
    row073_layer006_block000.all (fun I => row073_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_pairs001 :
    row073_layer006_block001.all (fun I => row073_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_pairs002 :
    row073_layer006_block002.all (fun I => row073_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_pairs003 :
    row073_layer006_block003.all (fun I => row073_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_pairs004 :
    row073_layer006_block004.all (fun I => row073_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_chunks_eq : row073_layer006_chunks.flatten = row073_layer006_intervals := by
  rfl

theorem row073_layer006_pairs : pairCoverCheck row073_layer006_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer006_chunks_eq
  intro block hblock
  simp only [row073_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row073_layer006_pairs000
  · exact row073_layer006_pairs001
  · exact row073_layer006_pairs002
  · exact row073_layer006_pairs003
  · exact row073_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer006_checked :
    coverLayerCheck row073.height row073.goods { lower := 336384, upper := 672768, M := 13 } = true := by
  exact coverLayerCheck_of_parts row073_layer006_arithmetic row073_layer006_enumeration row073_bounds_eq row073_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer007_intervals : List ColouredInterval :=
  [(2, 720896, 720968), (2, 786432, 786504), (2, 917504, 917576), (2, 1048576, 1048648), (2, 1179648, 1179720), (2, 1310720, 1310792), (2, 786432, 786504), (2, 1048576, 1048648), (2, 1310720, 1310792), (2, 1048576, 1048648), (2, 1048576, 1048648), (3, 708588, 708660), (3, 885735, 885807), (3, 1062882, 1062954), (3, 1240029, 1240101), (3, 1062882, 1062954), (5, 703125, 703197), (5, 781250, 781322), (5, 859375, 859447), (5, 781250, 781322), (5, 1171875, 1171947), (7, 705894, 705966), (7, 823543, 823615), (7, 941192, 941264), (7, 1058841, 1058913), (7, 1176490, 1176562), (7, 1294139, 1294211), (7, 823543, 823615), (11, 805255, 805327), (11, 966306, 966378), (11, 1127357, 1127429), (11, 1288408, 1288480), (13, 742586, 742658), (13, 1113879, 1113951), (17, 751689, 751761), (17, 835210, 835282), (17, 918731, 918803), (19, 781926, 781998), (19, 912247, 912319), (19, 1042568, 1042640), (19, 1172889, 1172961), (19, 1303210, 1303282), (23, 839523, 839595), (23, 1119364, 1119436), (29, 707281, 707353), (31, 923521, 923593), (41, 689210, 689282), (41, 758131, 758203), (43, 715563, 715635), (43, 795070, 795142), (43, 874577, 874649), (47, 726761, 726833), (47, 830584, 830656), (47, 934407, 934479), (47, 1038230, 1038302), (47, 1142053, 1142125), (53, 744385, 744457), (53, 893262, 893334), (53, 1042139, 1042211), (53, 1191016, 1191088), (53, 1339893, 1339965), (59, 821516, 821588), (59, 1026895, 1026967), (59, 1232274, 1232346), (61, 680943, 681015), (61, 907924, 907996), (61, 1134905, 1134977), (67, 902289, 902361), (67, 1203052, 1203124), (71, 715822, 715894), (71, 1073733, 1073805)]

def row073_layer007_block000 : List ColouredInterval :=
  [(2, 720896, 720968), (2, 786432, 786504), (2, 917504, 917576), (2, 1048576, 1048648), (2, 1179648, 1179720), (2, 1310720, 1310792), (2, 786432, 786504), (2, 1048576, 1048648), (2, 1310720, 1310792), (2, 1048576, 1048648), (2, 1048576, 1048648), (3, 708588, 708660), (3, 885735, 885807), (3, 1062882, 1062954), (3, 1240029, 1240101), (3, 1062882, 1062954)]

def row073_layer007_block001 : List ColouredInterval :=
  [(5, 703125, 703197), (5, 781250, 781322), (5, 859375, 859447), (5, 781250, 781322), (5, 1171875, 1171947), (7, 705894, 705966), (7, 823543, 823615), (7, 941192, 941264), (7, 1058841, 1058913), (7, 1176490, 1176562), (7, 1294139, 1294211), (7, 823543, 823615), (11, 805255, 805327), (11, 966306, 966378), (11, 1127357, 1127429), (11, 1288408, 1288480)]

def row073_layer007_block002 : List ColouredInterval :=
  [(13, 742586, 742658), (13, 1113879, 1113951), (17, 751689, 751761), (17, 835210, 835282), (17, 918731, 918803), (19, 781926, 781998), (19, 912247, 912319), (19, 1042568, 1042640), (19, 1172889, 1172961), (19, 1303210, 1303282), (23, 839523, 839595), (23, 1119364, 1119436), (29, 707281, 707353), (31, 923521, 923593), (41, 689210, 689282), (41, 758131, 758203)]

def row073_layer007_block003 : List ColouredInterval :=
  [(43, 715563, 715635), (43, 795070, 795142), (43, 874577, 874649), (47, 726761, 726833), (47, 830584, 830656), (47, 934407, 934479), (47, 1038230, 1038302), (47, 1142053, 1142125), (53, 744385, 744457), (53, 893262, 893334), (53, 1042139, 1042211), (53, 1191016, 1191088), (53, 1339893, 1339965), (59, 821516, 821588), (59, 1026895, 1026967), (59, 1232274, 1232346)]

def row073_layer007_block004 : List ColouredInterval :=
  [(61, 680943, 681015), (61, 907924, 907996), (61, 1134905, 1134977), (67, 902289, 902361), (67, 1203052, 1203124), (71, 715822, 715894), (71, 1073733, 1073805)]

def row073_layer007_chunks : List (List ColouredInterval) :=
  [row073_layer007_block000, row073_layer007_block001, row073_layer007_block002, row073_layer007_block003, row073_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_arithmetic : LayerArithmeticValid row073.height { lower := 672768, upper := 1345536, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_enumeration :
    activePowerIntervalList 73 11 672768 1345536 = row073_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_pairs000 :
    row073_layer007_block000.all (fun I => row073_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_pairs001 :
    row073_layer007_block001.all (fun I => row073_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_pairs002 :
    row073_layer007_block002.all (fun I => row073_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_pairs003 :
    row073_layer007_block003.all (fun I => row073_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_pairs004 :
    row073_layer007_block004.all (fun I => row073_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_chunks_eq : row073_layer007_chunks.flatten = row073_layer007_intervals := by
  rfl

theorem row073_layer007_pairs : pairCoverCheck row073_layer007_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer007_chunks_eq
  intro block hblock
  simp only [row073_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row073_layer007_pairs000
  · exact row073_layer007_pairs001
  · exact row073_layer007_pairs002
  · exact row073_layer007_pairs003
  · exact row073_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer007_checked :
    coverLayerCheck row073.height row073.goods { lower := 672768, upper := 1345536, M := 11 } = true := by
  exact coverLayerCheck_of_parts row073_layer007_arithmetic row073_layer007_enumeration row073_bounds_eq row073_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer008_checked :
    coverLayerCheck row073.height row073.goods { lower := 1345536, upper := 2691072, M := 10 } = true := by
  decide +kernel

theorem row073_layer009_checked :
    coverLayerCheck row073.height row073.goods { lower := 2691072, upper := 5382144, M := 8 } = true := by
  decide +kernel

theorem row073_layer010_checked :
    coverLayerCheck row073.height row073.goods { lower := 5382144, upper := 10764288, M := 7 } = true := by
  decide +kernel

theorem row073_layer011_checked :
    coverLayerCheck row073.height row073.goods { lower := 10764288, upper := 21528576, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer012_checked :
    coverLayerCheck row073.height row073.goods { lower := 21528576, upper := 43057152, M := 6 } = true := by
  decide +kernel

theorem row073_layer013_checked :
    coverLayerCheck row073.height row073.goods { lower := 43057152, upper := 86114304, M := 5 } = true := by
  decide +kernel

theorem row073_layer014_checked :
    coverLayerCheck row073.height row073.goods { lower := 86114304, upper := 172228608, M := 4 } = true := by
  decide +kernel

theorem row073_layer015_checked :
    coverLayerCheck row073.height row073.goods { lower := 172228608, upper := 344457216, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer015_checked
