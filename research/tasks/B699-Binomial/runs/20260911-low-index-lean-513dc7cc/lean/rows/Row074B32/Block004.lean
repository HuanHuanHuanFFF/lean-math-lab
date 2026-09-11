import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074B32.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer006_chunks_eq : row074_layer006_chunks.flatten = row074_layer006_intervals := by
  rfl

theorem row074_layer006_pairs : pairCoverCheck row074_layer006_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer006_chunks_eq
  intro block hblock
  simp only [row074_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row074_layer006_pairs000
  · exact row074_layer006_pairs001
  · exact row074_layer006_pairs002
  · exact row074_layer006_pairs003
  · exact row074_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer006_checked :
    coverLayerCheck row074.height row074.goods { lower := 345728, upper := 691456, M := 18 } = true := by
  exact coverLayerCheck_of_parts row074_layer006_arithmetic row074_layer006_enumeration row074_bounds_eq row074_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_layer007_intervals : List ColouredInterval :=
  [(2, 786432, 786505), (2, 917504, 917577), (2, 1048576, 1048649), (2, 786432, 786505), (2, 1048576, 1048649), (2, 1310720, 1310793), (2, 1048576, 1048649), (2, 1048576, 1048649), (3, 708588, 708661), (3, 767637, 767710), (3, 826686, 826759), (3, 885735, 885808), (3, 944784, 944857), (3, 708588, 708661), (3, 885735, 885808), (3, 1062882, 1062955), (3, 1240029, 1240102), (3, 1062882, 1062955), (5, 703125, 703198), (5, 781250, 781323), (5, 859375, 859448), (5, 937500, 937573), (5, 1015625, 1015698), (5, 1093750, 1093823), (5, 1171875, 1171948), (5, 1250000, 1250073), (5, 781250, 781323), (5, 1171875, 1171948), (7, 705894, 705967), (7, 823543, 823616), (7, 941192, 941265), (7, 1058841, 1058914), (7, 1176490, 1176563), (7, 1294139, 1294212), (7, 823543, 823616), (11, 805255, 805328), (11, 966306, 966379), (11, 1127357, 1127430), (11, 1288408, 1288481), (13, 742586, 742659), (13, 1113879, 1113952), (17, 751689, 751762), (17, 835210, 835283), (17, 918731, 918804), (17, 1002252, 1002325), (17, 1085773, 1085846), (17, 1169294, 1169367), (17, 1252815, 1252888), (17, 1336336, 1336409), (19, 781926, 781999), (19, 912247, 912320), (19, 1042568, 1042641), (19, 1172889, 1172962), (19, 1303210, 1303283), (23, 839523, 839596), (23, 1119364, 1119437), (29, 707281, 707354), (31, 923521, 923594), (41, 758131, 758204), (41, 827052, 827125), (41, 895973, 896046), (41, 964894, 964967), (41, 1033815, 1033888), (41, 1102736, 1102809), (43, 715563, 715636), (43, 795070, 795143), (43, 874577, 874650), (43, 954084, 954157), (43, 1033591, 1033664), (43, 1113098, 1113171), (43, 1192605, 1192678), (43, 1272112, 1272185), (47, 726761, 726834), (47, 830584, 830657), (47, 934407, 934480), (47, 1038230, 1038303), (47, 1142053, 1142126), (47, 1245876, 1245949), (47, 1349699, 1349772), (53, 744385, 744458), (53, 893262, 893335), (53, 1042139, 1042212), (53, 1191016, 1191089), (53, 1339893, 1339966), (59, 821516, 821589), (59, 1026895, 1026968), (59, 1232274, 1232347), (61, 907924, 907997), (61, 1134905, 1134978), (61, 1361886, 1361959), (67, 902289, 902362), (67, 1203052, 1203125), (71, 715822, 715895), (71, 1073733, 1073806), (73, 778034, 778107), (73, 1167051, 1167124)]

def row074_layer007_block000 : List ColouredInterval :=
  [(2, 786432, 786505), (2, 917504, 917577), (2, 1048576, 1048649), (2, 786432, 786505), (2, 1048576, 1048649), (2, 1310720, 1310793), (2, 1048576, 1048649), (2, 1048576, 1048649), (3, 708588, 708661), (3, 767637, 767710), (3, 826686, 826759), (3, 885735, 885808), (3, 944784, 944857), (3, 708588, 708661), (3, 885735, 885808), (3, 1062882, 1062955)]

def row074_layer007_block001 : List ColouredInterval :=
  [(3, 1240029, 1240102), (3, 1062882, 1062955), (5, 703125, 703198), (5, 781250, 781323), (5, 859375, 859448), (5, 937500, 937573), (5, 1015625, 1015698), (5, 1093750, 1093823), (5, 1171875, 1171948), (5, 1250000, 1250073), (5, 781250, 781323), (5, 1171875, 1171948), (7, 705894, 705967), (7, 823543, 823616), (7, 941192, 941265), (7, 1058841, 1058914)]

def row074_layer007_block002 : List ColouredInterval :=
  [(7, 1176490, 1176563), (7, 1294139, 1294212), (7, 823543, 823616), (11, 805255, 805328), (11, 966306, 966379), (11, 1127357, 1127430), (11, 1288408, 1288481), (13, 742586, 742659), (13, 1113879, 1113952), (17, 751689, 751762), (17, 835210, 835283), (17, 918731, 918804), (17, 1002252, 1002325), (17, 1085773, 1085846), (17, 1169294, 1169367), (17, 1252815, 1252888)]

def row074_layer007_block003 : List ColouredInterval :=
  [(17, 1336336, 1336409), (19, 781926, 781999), (19, 912247, 912320), (19, 1042568, 1042641), (19, 1172889, 1172962), (19, 1303210, 1303283), (23, 839523, 839596), (23, 1119364, 1119437), (29, 707281, 707354), (31, 923521, 923594), (41, 758131, 758204), (41, 827052, 827125), (41, 895973, 896046), (41, 964894, 964967), (41, 1033815, 1033888), (41, 1102736, 1102809)]

def row074_layer007_block004 : List ColouredInterval :=
  [(43, 715563, 715636), (43, 795070, 795143), (43, 874577, 874650), (43, 954084, 954157), (43, 1033591, 1033664), (43, 1113098, 1113171), (43, 1192605, 1192678), (43, 1272112, 1272185), (47, 726761, 726834), (47, 830584, 830657), (47, 934407, 934480), (47, 1038230, 1038303), (47, 1142053, 1142126), (47, 1245876, 1245949), (47, 1349699, 1349772), (53, 744385, 744458)]

def row074_layer007_block005 : List ColouredInterval :=
  [(53, 893262, 893335), (53, 1042139, 1042212), (53, 1191016, 1191089), (53, 1339893, 1339966), (59, 821516, 821589), (59, 1026895, 1026968), (59, 1232274, 1232347), (61, 907924, 907997), (61, 1134905, 1134978), (61, 1361886, 1361959), (67, 902289, 902362), (67, 1203052, 1203125), (71, 715822, 715895), (71, 1073733, 1073806), (73, 778034, 778107), (73, 1167051, 1167124)]

def row074_layer007_chunks : List (List ColouredInterval) :=
  [row074_layer007_block000, row074_layer007_block001, row074_layer007_block002, row074_layer007_block003, row074_layer007_block004, row074_layer007_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_arithmetic : LayerArithmeticValid row074.height { lower := 691456, upper := 1382912, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_enumeration :
    activePowerIntervalList 74 16 691456 1382912 = row074_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_pairs000 :
    row074_layer007_block000.all (fun I => row074_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_pairs001 :
    row074_layer007_block001.all (fun I => row074_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_pairs002 :
    row074_layer007_block002.all (fun I => row074_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_pairs003 :
    row074_layer007_block003.all (fun I => row074_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_pairs004 :
    row074_layer007_block004.all (fun I => row074_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_pairs005 :
    row074_layer007_block005.all (fun I => row074_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_chunks_eq : row074_layer007_chunks.flatten = row074_layer007_intervals := by
  rfl

theorem row074_layer007_pairs : pairCoverCheck row074_layer007_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer007_chunks_eq
  intro block hblock
  simp only [row074_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row074_layer007_pairs000
  · exact row074_layer007_pairs001
  · exact row074_layer007_pairs002
  · exact row074_layer007_pairs003
  · exact row074_layer007_pairs004
  · exact row074_layer007_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer007_checked :
    coverLayerCheck row074.height row074.goods { lower := 691456, upper := 1382912, M := 16 } = true := by
  exact coverLayerCheck_of_parts row074_layer007_arithmetic row074_layer007_enumeration row074_bounds_eq row074_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_layer008_intervals : List ColouredInterval :=
  [(2, 1572864, 1572937), (2, 1835008, 1835081), (2, 1572864, 1572937), (2, 2097152, 2097225), (2, 2621440, 2621513), (2, 2097152, 2097225), (2, 2097152, 2097225), (3, 1417176, 1417249), (3, 1594323, 1594396), (3, 1771470, 1771543), (3, 1948617, 1948690), (3, 2125764, 2125837), (3, 2302911, 2302984), (3, 2480058, 2480131), (3, 1594323, 1594396), (3, 2125764, 2125837), (3, 2657205, 2657278), (3, 1594323, 1594396), (5, 1562500, 1562573), (5, 1953125, 1953198), (5, 2343750, 2343823), (5, 2734375, 2734448), (5, 1953125, 1953198), (7, 1411788, 1411861), (7, 1529437, 1529510), (7, 1647086, 1647159), (7, 1647086, 1647159), (7, 2470629, 2470702), (11, 1449459, 1449532), (11, 1610510, 1610583), (11, 1771561, 1771634), (11, 1932612, 1932685), (11, 2093663, 2093736), (11, 2254714, 2254787), (11, 1771561, 1771634), (13, 1485172, 1485245), (13, 1856465, 1856538), (13, 2227758, 2227831), (13, 2599051, 2599124), (17, 1419857, 1419930), (19, 1433531, 1433604), (19, 1563852, 1563925), (19, 1694173, 1694246), (19, 1824494, 1824567), (19, 2476099, 2476172), (23, 1399205, 1399278), (23, 1679046, 1679119), (23, 1958887, 1958960), (23, 2238728, 2238801), (23, 2518569, 2518642), (29, 1414562, 1414635), (29, 2121843, 2121916), (31, 1847042, 1847115), (47, 1453522, 1453595), (53, 1488770, 1488843), (53, 1637647, 1637720), (53, 1786524, 1786597), (53, 1935401, 1935474), (53, 2084278, 2084351), (59, 1437653, 1437726), (59, 1643032, 1643105), (59, 1848411, 1848484), (59, 2053790, 2053863), (59, 2259169, 2259242), (59, 2464548, 2464621), (59, 2669927, 2670000), (61, 1588867, 1588940), (61, 1815848, 1815921), (61, 2042829, 2042902), (61, 2269810, 2269883), (61, 2496791, 2496864), (61, 2723772, 2723845), (67, 1503815, 1503888), (67, 1804578, 1804651), (67, 2105341, 2105414), (67, 2406104, 2406177), (67, 2706867, 2706940), (71, 1431644, 1431717), (71, 1789555, 1789628), (71, 2147466, 2147539), (71, 2505377, 2505450), (73, 1556068, 1556141), (73, 1945085, 1945158), (73, 2334102, 2334175), (73, 2723119, 2723192)]

def row074_layer008_block000 : List ColouredInterval :=
  [(2, 1572864, 1572937), (2, 1835008, 1835081), (2, 1572864, 1572937), (2, 2097152, 2097225), (2, 2621440, 2621513), (2, 2097152, 2097225), (2, 2097152, 2097225), (3, 1417176, 1417249), (3, 1594323, 1594396), (3, 1771470, 1771543), (3, 1948617, 1948690), (3, 2125764, 2125837), (3, 2302911, 2302984), (3, 2480058, 2480131), (3, 1594323, 1594396), (3, 2125764, 2125837)]

def row074_layer008_block001 : List ColouredInterval :=
  [(3, 2657205, 2657278), (3, 1594323, 1594396), (5, 1562500, 1562573), (5, 1953125, 1953198), (5, 2343750, 2343823), (5, 2734375, 2734448), (5, 1953125, 1953198), (7, 1411788, 1411861), (7, 1529437, 1529510), (7, 1647086, 1647159), (7, 1647086, 1647159), (7, 2470629, 2470702), (11, 1449459, 1449532), (11, 1610510, 1610583), (11, 1771561, 1771634), (11, 1932612, 1932685)]

def row074_layer008_block002 : List ColouredInterval :=
  [(11, 2093663, 2093736), (11, 2254714, 2254787), (11, 1771561, 1771634), (13, 1485172, 1485245), (13, 1856465, 1856538), (13, 2227758, 2227831), (13, 2599051, 2599124), (17, 1419857, 1419930), (19, 1433531, 1433604), (19, 1563852, 1563925), (19, 1694173, 1694246), (19, 1824494, 1824567), (19, 2476099, 2476172), (23, 1399205, 1399278), (23, 1679046, 1679119), (23, 1958887, 1958960)]

def row074_layer008_block003 : List ColouredInterval :=
  [(23, 2238728, 2238801), (23, 2518569, 2518642), (29, 1414562, 1414635), (29, 2121843, 2121916), (31, 1847042, 1847115), (47, 1453522, 1453595), (53, 1488770, 1488843), (53, 1637647, 1637720), (53, 1786524, 1786597), (53, 1935401, 1935474), (53, 2084278, 2084351), (59, 1437653, 1437726), (59, 1643032, 1643105), (59, 1848411, 1848484), (59, 2053790, 2053863), (59, 2259169, 2259242)]

def row074_layer008_block004 : List ColouredInterval :=
  [(59, 2464548, 2464621), (59, 2669927, 2670000), (61, 1588867, 1588940), (61, 1815848, 1815921), (61, 2042829, 2042902), (61, 2269810, 2269883), (61, 2496791, 2496864), (61, 2723772, 2723845), (67, 1503815, 1503888), (67, 1804578, 1804651), (67, 2105341, 2105414), (67, 2406104, 2406177), (67, 2706867, 2706940), (71, 1431644, 1431717), (71, 1789555, 1789628), (71, 2147466, 2147539)]

def row074_layer008_block005 : List ColouredInterval :=
  [(71, 2505377, 2505450), (73, 1556068, 1556141), (73, 1945085, 1945158), (73, 2334102, 2334175), (73, 2723119, 2723192)]

def row074_layer008_chunks : List (List ColouredInterval) :=
  [row074_layer008_block000, row074_layer008_block001, row074_layer008_block002, row074_layer008_block003, row074_layer008_block004, row074_layer008_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_arithmetic : LayerArithmeticValid row074.height { lower := 1382912, upper := 2765824, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_enumeration :
    activePowerIntervalList 74 14 1382912 2765824 = row074_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_pairs000 :
    row074_layer008_block000.all (fun I => row074_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_pairs001 :
    row074_layer008_block001.all (fun I => row074_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_pairs002 :
    row074_layer008_block002.all (fun I => row074_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_pairs003 :
    row074_layer008_block003.all (fun I => row074_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_pairs004 :
    row074_layer008_block004.all (fun I => row074_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_pairs005 :
    row074_layer008_block005.all (fun I => row074_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_chunks_eq : row074_layer008_chunks.flatten = row074_layer008_intervals := by
  rfl

theorem row074_layer008_pairs : pairCoverCheck row074_layer008_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer008_chunks_eq
  intro block hblock
  simp only [row074_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row074_layer008_pairs000
  · exact row074_layer008_pairs001
  · exact row074_layer008_pairs002
  · exact row074_layer008_pairs003
  · exact row074_layer008_pairs004
  · exact row074_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer008_checked :
    coverLayerCheck row074.height row074.goods { lower := 1382912, upper := 2765824, M := 14 } = true := by
  exact coverLayerCheck_of_parts row074_layer008_arithmetic row074_layer008_enumeration row074_bounds_eq row074_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_layer009_intervals : List ColouredInterval :=
  [(2, 3145728, 3145801), (2, 3145728, 3145801), (2, 4194304, 4194377), (2, 5242880, 5242953), (2, 4194304, 4194377), (2, 4194304, 4194377), (3, 3188646, 3188719), (3, 3720087, 3720160), (3, 4251528, 4251601), (3, 4782969, 4783042), (3, 5314410, 5314483), (3, 3188646, 3188719), (3, 4782969, 4783042), (3, 4782969, 4783042), (5, 3125000, 3125073), (5, 3515625, 3515698), (5, 3906250, 3906323), (5, 4296875, 4296948), (5, 4687500, 4687573), (5, 5078125, 5078198), (5, 3906250, 3906323), (7, 3294172, 3294245), (7, 4117715, 4117788), (7, 4941258, 4941331), (11, 3543122, 3543195), (11, 5314683, 5314756), (13, 2970344, 2970417), (13, 3341637, 3341710), (13, 3712930, 3713003), (13, 4084223, 4084296), (13, 4455516, 4455589), (13, 4826809, 4826882), (13, 4826809, 4826882), (17, 2839714, 2839787), (17, 4259571, 4259644), (19, 4952198, 4952271), (23, 2798410, 2798483), (23, 3078251, 3078324), (23, 3358092, 3358165), (23, 3637933, 3638006), (29, 2829124, 2829197), (29, 3536405, 3536478), (29, 4243686, 4243759), (29, 4950967, 4951040), (31, 2770563, 2770636), (31, 3694084, 3694157), (31, 4617605, 4617678), (41, 2825761, 2825834), (43, 3418801, 3418874), (47, 4879681, 4879754), (61, 2950753, 2950826), (67, 3007630, 3007703), (67, 3308393, 3308466), (67, 3609156, 3609229), (67, 3909919, 3909992), (71, 2863288, 2863361), (71, 3221199, 3221272), (71, 3579110, 3579183), (71, 3937021, 3937094), (71, 4294932, 4295005), (71, 4652843, 4652916), (73, 3112136, 3112209), (73, 3501153, 3501226), (73, 3890170, 3890243), (73, 4279187, 4279260), (73, 4668204, 4668277), (73, 5057221, 5057294)]

def row074_layer009_block000 : List ColouredInterval :=
  [(2, 3145728, 3145801), (2, 3145728, 3145801), (2, 4194304, 4194377), (2, 5242880, 5242953), (2, 4194304, 4194377), (2, 4194304, 4194377), (3, 3188646, 3188719), (3, 3720087, 3720160), (3, 4251528, 4251601), (3, 4782969, 4783042), (3, 5314410, 5314483), (3, 3188646, 3188719), (3, 4782969, 4783042), (3, 4782969, 4783042), (5, 3125000, 3125073), (5, 3515625, 3515698)]

def row074_layer009_block001 : List ColouredInterval :=
  [(5, 3906250, 3906323), (5, 4296875, 4296948), (5, 4687500, 4687573), (5, 5078125, 5078198), (5, 3906250, 3906323), (7, 3294172, 3294245), (7, 4117715, 4117788), (7, 4941258, 4941331), (11, 3543122, 3543195), (11, 5314683, 5314756), (13, 2970344, 2970417), (13, 3341637, 3341710), (13, 3712930, 3713003), (13, 4084223, 4084296), (13, 4455516, 4455589), (13, 4826809, 4826882)]

def row074_layer009_block002 : List ColouredInterval :=
  [(13, 4826809, 4826882), (17, 2839714, 2839787), (17, 4259571, 4259644), (19, 4952198, 4952271), (23, 2798410, 2798483), (23, 3078251, 3078324), (23, 3358092, 3358165), (23, 3637933, 3638006), (29, 2829124, 2829197), (29, 3536405, 3536478), (29, 4243686, 4243759), (29, 4950967, 4951040), (31, 2770563, 2770636), (31, 3694084, 3694157), (31, 4617605, 4617678), (41, 2825761, 2825834)]

def row074_layer009_block003 : List ColouredInterval :=
  [(43, 3418801, 3418874), (47, 4879681, 4879754), (61, 2950753, 2950826), (67, 3007630, 3007703), (67, 3308393, 3308466), (67, 3609156, 3609229), (67, 3909919, 3909992), (71, 2863288, 2863361), (71, 3221199, 3221272), (71, 3579110, 3579183), (71, 3937021, 3937094), (71, 4294932, 4295005), (71, 4652843, 4652916), (73, 3112136, 3112209), (73, 3501153, 3501226), (73, 3890170, 3890243)]

def row074_layer009_block004 : List ColouredInterval :=
  [(73, 4279187, 4279260), (73, 4668204, 4668277), (73, 5057221, 5057294)]

def row074_layer009_chunks : List (List ColouredInterval) :=
  [row074_layer009_block000, row074_layer009_block001, row074_layer009_block002, row074_layer009_block003, row074_layer009_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_arithmetic : LayerArithmeticValid row074.height { lower := 2765824, upper := 5531648, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_enumeration :
    activePowerIntervalList 74 13 2765824 5531648 = row074_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_pairs000 :
    row074_layer009_block000.all (fun I => row074_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_pairs001 :
    row074_layer009_block001.all (fun I => row074_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_pairs002 :
    row074_layer009_block002.all (fun I => row074_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_pairs003 :
    row074_layer009_block003.all (fun I => row074_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs003
