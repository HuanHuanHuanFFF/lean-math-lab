import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs002 :
    row072_layer003_block002.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs003 :
    row072_layer003_block003.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs004 :
    row072_layer003_block004.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs005 :
    row072_layer003_block005.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs006 :
    row072_layer003_block006.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_chunks_eq : row072_layer003_chunks.flatten = row072_layer003_intervals := by
  rfl

theorem row072_layer003_pairs : pairCoverCheck row072_layer003_intervals row072_bounds = true := by
  apply pairCoverCheck_of_chunks row072_layer003_chunks_eq
  intro block hblock
  simp only [row072_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row072_layer003_pairs000
  · exact row072_layer003_pairs001
  · exact row072_layer003_pairs002
  · exact row072_layer003_pairs003
  · exact row072_layer003_pairs004
  · exact row072_layer003_pairs005
  · exact row072_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_checked :
    coverLayerCheck row072.height row072.goods { lower := 40896, upper := 81792, M := 21 } = true := by
  exact coverLayerCheck_of_parts row072_layer003_arithmetic row072_layer003_enumeration row072_bounds_eq row072_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_layer007_intervals : List ColouredInterval :=
  [(2, 1048576, 1048647), (5, 703125, 703196), (5, 781250, 781321), (5, 859375, 859446), (5, 937500, 937571), (5, 1015625, 1015696), (5, 781250, 781321), (5, 1171875, 1171946), (7, 705894, 705965), (7, 823543, 823614), (7, 941192, 941263), (7, 1058841, 1058912), (7, 1176490, 1176561), (7, 1294139, 1294210), (7, 823543, 823614), (11, 805255, 805326), (11, 966306, 966377), (11, 1127357, 1127428), (11, 1288408, 1288479), (13, 742586, 742657), (13, 1113879, 1113950), (17, 668168, 668239), (17, 751689, 751760), (17, 835210, 835281), (17, 918731, 918802), (17, 1002252, 1002323), (17, 1085773, 1085844), (19, 781926, 781997), (19, 912247, 912318), (19, 1042568, 1042639), (19, 1172889, 1172960), (19, 1303210, 1303281), (23, 839523, 839594), (23, 1119364, 1119435), (29, 707281, 707352), (31, 923521, 923592), (37, 658489, 658560), (41, 689210, 689281), (41, 758131, 758202), (41, 827052, 827123), (41, 895973, 896044), (43, 715563, 715634), (43, 795070, 795141), (43, 874577, 874648), (43, 954084, 954155), (43, 1033591, 1033662), (47, 726761, 726832), (47, 830584, 830655), (47, 934407, 934478), (47, 1038230, 1038301), (47, 1142053, 1142124), (47, 1245876, 1245947), (53, 744385, 744456), (53, 893262, 893333), (53, 1042139, 1042210), (53, 1191016, 1191087), (59, 821516, 821587), (59, 1026895, 1026966), (59, 1232274, 1232345), (61, 680943, 681014), (61, 907924, 907995), (61, 1134905, 1134976), (67, 902289, 902360), (67, 1203052, 1203123), (71, 715822, 715893), (71, 1073733, 1073804)]

def row072_layer007_block000 : List ColouredInterval :=
  [(2, 1048576, 1048647), (5, 703125, 703196), (5, 781250, 781321), (5, 859375, 859446), (5, 937500, 937571), (5, 1015625, 1015696), (5, 781250, 781321), (5, 1171875, 1171946), (7, 705894, 705965), (7, 823543, 823614), (7, 941192, 941263), (7, 1058841, 1058912), (7, 1176490, 1176561), (7, 1294139, 1294210), (7, 823543, 823614), (11, 805255, 805326)]

def row072_layer007_block001 : List ColouredInterval :=
  [(11, 966306, 966377), (11, 1127357, 1127428), (11, 1288408, 1288479), (13, 742586, 742657), (13, 1113879, 1113950), (17, 668168, 668239), (17, 751689, 751760), (17, 835210, 835281), (17, 918731, 918802), (17, 1002252, 1002323), (17, 1085773, 1085844), (19, 781926, 781997), (19, 912247, 912318), (19, 1042568, 1042639), (19, 1172889, 1172960), (19, 1303210, 1303281)]

def row072_layer007_block002 : List ColouredInterval :=
  [(23, 839523, 839594), (23, 1119364, 1119435), (29, 707281, 707352), (31, 923521, 923592), (37, 658489, 658560), (41, 689210, 689281), (41, 758131, 758202), (41, 827052, 827123), (41, 895973, 896044), (43, 715563, 715634), (43, 795070, 795141), (43, 874577, 874648), (43, 954084, 954155), (43, 1033591, 1033662), (47, 726761, 726832), (47, 830584, 830655)]

def row072_layer007_block003 : List ColouredInterval :=
  [(47, 934407, 934478), (47, 1038230, 1038301), (47, 1142053, 1142124), (47, 1245876, 1245947), (53, 744385, 744456), (53, 893262, 893333), (53, 1042139, 1042210), (53, 1191016, 1191087), (59, 821516, 821587), (59, 1026895, 1026966), (59, 1232274, 1232345), (61, 680943, 681014), (61, 907924, 907995), (61, 1134905, 1134976), (67, 902289, 902360), (67, 1203052, 1203123)]

def row072_layer007_block004 : List ColouredInterval :=
  [(71, 715822, 715893), (71, 1073733, 1073804)]

def row072_layer007_chunks : List (List ColouredInterval) :=
  [row072_layer007_block000, row072_layer007_block001, row072_layer007_block002, row072_layer007_block003, row072_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_arithmetic : LayerArithmeticValid row072.height { lower := 654336, upper := 1308672, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_enumeration :
    activePowerIntervalList 72 13 654336 1308672 = row072_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_pairs000 :
    row072_layer007_block000.all (fun I => row072_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_pairs001 :
    row072_layer007_block001.all (fun I => row072_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_pairs002 :
    row072_layer007_block002.all (fun I => row072_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_pairs003 :
    row072_layer007_block003.all (fun I => row072_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_pairs004 :
    row072_layer007_block004.all (fun I => row072_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_chunks_eq : row072_layer007_chunks.flatten = row072_layer007_intervals := by
  rfl

theorem row072_layer007_pairs : pairCoverCheck row072_layer007_intervals row072_bounds = true := by
  apply pairCoverCheck_of_chunks row072_layer007_chunks_eq
  intro block hblock
  simp only [row072_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row072_layer007_pairs000
  · exact row072_layer007_pairs001
  · exact row072_layer007_pairs002
  · exact row072_layer007_pairs003
  · exact row072_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer007_checked :
    coverLayerCheck row072.height row072.goods { lower := 654336, upper := 1308672, M := 13 } = true := by
  exact coverLayerCheck_of_parts row072_layer007_arithmetic row072_layer007_enumeration row072_bounds_eq row072_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer004_checked :
    coverLayerCheck row072.height row072.goods { lower := 81792, upper := 163584, M := 19 } = true := by
  decide +kernel

theorem row072_layer005_checked :
    coverLayerCheck row072.height row072.goods { lower := 163584, upper := 327168, M := 16 } = true := by
  decide +kernel

theorem row072_layer006_checked :
    coverLayerCheck row072.height row072.goods { lower := 327168, upper := 654336, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer008_checked :
    coverLayerCheck row072.height row072.goods { lower := 1308672, upper := 2617344, M := 11 } = true := by
  decide +kernel

theorem row072_layer009_checked :
    coverLayerCheck row072.height row072.goods { lower := 2617344, upper := 5234688, M := 10 } = true := by
  decide +kernel

theorem row072_layer010_checked :
    coverLayerCheck row072.height row072.goods { lower := 5234688, upper := 10469376, M := 9 } = true := by
  decide +kernel

theorem row072_layer011_checked :
    coverLayerCheck row072.height row072.goods { lower := 10469376, upper := 20938752, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer012_checked :
    coverLayerCheck row072.height row072.goods { lower := 20938752, upper := 41877504, M := 7 } = true := by
  decide +kernel

theorem row072_layer013_checked :
    coverLayerCheck row072.height row072.goods { lower := 41877504, upper := 83755008, M := 6 } = true := by
  decide +kernel

theorem row072_layer014_checked :
    coverLayerCheck row072.height row072.goods { lower := 83755008, upper := 167510016, M := 5 } = true := by
  decide +kernel

theorem row072_layer015_checked :
    coverLayerCheck row072.height row072.goods { lower := 167510016, upper := 335020032, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer016_checked :
    coverLayerCheck row072.height row072.goods { lower := 335020032, upper := 670040064, M := 4 } = true := by
  decide +kernel

theorem row072_layer017_checked :
    coverLayerCheck row072.height row072.goods { lower := 670040064, upper := 1340080128, M := 4 } = true := by
  decide +kernel

theorem row072_layer018_checked :
    coverLayerCheck row072.height row072.goods { lower := 1340080128, upper := 2680160256, M := 3 } = true := by
  decide +kernel

theorem row072_layer019_checked :
    coverLayerCheck row072.height row072.goods { lower := 2680160256, upper := 5360320512, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer020_checked :
    coverLayerCheck row072.height row072.goods { lower := 5360320512, upper := 10720641024, M := 3 } = true := by
  decide +kernel

theorem row072_layer021_checked :
    coverLayerCheck row072.height row072.goods { lower := 10720641024, upper := 21441282048, M := 2 } = true := by
  decide +kernel

theorem row072_layer022_checked :
    coverLayerCheck row072.height row072.goods { lower := 21441282048, upper := 42882564096, M := 2 } = true := by
  decide +kernel

theorem row072_layer023_checked :
    coverLayerCheck row072.height row072.goods { lower := 42882564096, upper := 85765128192, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer024_checked :
    coverLayerCheck row072.height row072.goods { lower := 85765128192, upper := 171530256384, M := 2 } = true := by
  decide +kernel

theorem row072_layer025_checked :
    coverLayerCheck row072.height row072.goods { lower := 171530256384, upper := 343060512768, M := 2 } = true := by
  decide +kernel

theorem row072_layer026_checked :
    coverLayerCheck row072.height row072.goods { lower := 343060512768, upper := 686121025536, M := 1 } = true := by
  decide +kernel

theorem row072_layer027_checked :
    coverLayerCheck row072.height row072.goods { lower := 686121025536, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layers_checked :
    row072.layers.all (coverLayerCheck row072.height row072.goods) = true := by
  change row072_layers.all (coverLayerCheck row072.height row072.goods) = true
  simp only [row072_layers, List.all_cons, List.all_nil,
    row072_layer000_checked,
    row072_layer001_checked,
    row072_layer002_checked,
    row072_layer003_checked,
    row072_layer004_checked,
    row072_layer005_checked,
    row072_layer006_checked,
    row072_layer007_checked,
    row072_layer008_checked,
    row072_layer009_checked,
    row072_layer010_checked,
    row072_layer011_checked,
    row072_layer012_checked,
    row072_layer013_checked,
    row072_layer014_checked,
    row072_layer015_checked,
    row072_layer016_checked,
    row072_layer017_checked,
    row072_layer018_checked,
    row072_layer019_checked,
    row072_layer020_checked,
    row072_layer021_checked,
    row072_layer022_checked,
    row072_layer023_checked,
    row072_layer024_checked,
    row072_layer025_checked,
    row072_layer026_checked,
    row072_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_checked : finiteCoverRowCheck row072 = true := by
  simp only [finiteCoverRowCheck, row072_registered, row072_goods_checked,
    row072_small_checked, row072_layerCover_checked, row072_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i072 :
    ∀ n j : ℕ, 1 ≤ 72 ∧ 72 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 72 ≤ p ∧ p ∣ Nat.choose n 72 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row072_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i072
