import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062B64.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062B64.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_pairs000 :
    row062_layer007_block000.all (fun I => row062_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_pairs001 :
    row062_layer007_block001.all (fun I => row062_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_pairs002 :
    row062_layer007_block002.all (fun I => row062_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_pairs003 :
    row062_layer007_block003.all (fun I => row062_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_pairs004 :
    row062_layer007_block004.all (fun I => row062_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_pairs005 :
    row062_layer007_block005.all (fun I => row062_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_chunks_eq : row062_layer007_chunks.flatten = row062_layer007_intervals := by
  rfl

theorem row062_layer007_pairs : pairCoverCheck row062_layer007_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer007_chunks_eq
  intro block hblock
  simp only [row062_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer007_pairs000
  · exact row062_layer007_pairs001
  · exact row062_layer007_pairs002
  · exact row062_layer007_pairs003
  · exact row062_layer007_pairs004
  · exact row062_layer007_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_checked :
    coverLayerCheck row062.height row062.goods { lower := 484096, upper := 968192, M := 19 } = true := by
  exact coverLayerCheck_of_parts row062_layer007_arithmetic row062_layer007_enumeration row062_bounds_eq row062_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer008_intervals : List ColouredInterval :=
  [(2, 1048576, 1048637), (2, 1048576, 1048637), (2, 1310720, 1310781), (2, 1572864, 1572925), (2, 1835008, 1835069), (2, 1048576, 1048637), (2, 1572864, 1572925), (2, 1048576, 1048637), (3, 1003833, 1003894), (3, 1062882, 1062943), (3, 1240029, 1240090), (3, 1417176, 1417237), (3, 1594323, 1594384), (3, 1771470, 1771531), (3, 1062882, 1062943), (3, 1594323, 1594384), (3, 1594323, 1594384), (5, 1015625, 1015686), (5, 1093750, 1093811), (5, 1171875, 1171936), (5, 1250000, 1250061), (5, 1328125, 1328186), (5, 1171875, 1171936), (5, 1562500, 1562561), (7, 1058841, 1058902), (7, 1176490, 1176551), (7, 1294139, 1294200), (7, 1411788, 1411849), (7, 1529437, 1529498), (7, 1647086, 1647147), (7, 1764735, 1764796), (7, 1882384, 1882445), (7, 1647086, 1647147), (11, 1127357, 1127418), (11, 1288408, 1288469), (11, 1449459, 1449520), (11, 1610510, 1610571), (11, 1771561, 1771622), (11, 1932612, 1932673), (11, 1771561, 1771622), (13, 1113879, 1113940), (13, 1485172, 1485233), (13, 1856465, 1856526), (17, 1002252, 1002313), (17, 1085773, 1085834), (17, 1169294, 1169355), (17, 1252815, 1252876), (17, 1336336, 1336397), (17, 1419857, 1419918), (17, 1419857, 1419918), (19, 1042568, 1042629), (19, 1172889, 1172950), (19, 1303210, 1303271), (19, 1433531, 1433592), (19, 1563852, 1563913), (19, 1694173, 1694234), (19, 1824494, 1824555), (23, 1119364, 1119425), (23, 1399205, 1399266), (23, 1679046, 1679107), (29, 1414562, 1414623), (37, 1874161, 1874222), (41, 1033815, 1033876), (41, 1102736, 1102797), (41, 1171657, 1171718), (43, 1033591, 1033652), (43, 1113098, 1113159), (43, 1192605, 1192666), (43, 1272112, 1272173), (43, 1351619, 1351680), (47, 1038230, 1038291), (47, 1142053, 1142114), (47, 1245876, 1245937), (47, 1349699, 1349760), (47, 1453522, 1453583), (47, 1557345, 1557406), (47, 1661168, 1661229), (47, 1764991, 1765052), (53, 1042139, 1042200), (53, 1191016, 1191077), (53, 1339893, 1339954), (53, 1488770, 1488831), (53, 1637647, 1637708), (53, 1786524, 1786585), (53, 1935401, 1935462), (59, 1026895, 1026956), (59, 1232274, 1232335), (59, 1437653, 1437714), (59, 1643032, 1643093), (59, 1848411, 1848472), (61, 1134905, 1134966), (61, 1361886, 1361947), (61, 1588867, 1588928), (61, 1815848, 1815909)]

def row062_layer008_block000 : List ColouredInterval :=
  [(2, 1048576, 1048637), (2, 1048576, 1048637), (2, 1310720, 1310781), (2, 1572864, 1572925), (2, 1835008, 1835069), (2, 1048576, 1048637), (2, 1572864, 1572925), (2, 1048576, 1048637), (3, 1003833, 1003894), (3, 1062882, 1062943), (3, 1240029, 1240090), (3, 1417176, 1417237), (3, 1594323, 1594384), (3, 1771470, 1771531), (3, 1062882, 1062943), (3, 1594323, 1594384)]

def row062_layer008_block001 : List ColouredInterval :=
  [(3, 1594323, 1594384), (5, 1015625, 1015686), (5, 1093750, 1093811), (5, 1171875, 1171936), (5, 1250000, 1250061), (5, 1328125, 1328186), (5, 1171875, 1171936), (5, 1562500, 1562561), (7, 1058841, 1058902), (7, 1176490, 1176551), (7, 1294139, 1294200), (7, 1411788, 1411849), (7, 1529437, 1529498), (7, 1647086, 1647147), (7, 1764735, 1764796), (7, 1882384, 1882445)]

def row062_layer008_block002 : List ColouredInterval :=
  [(7, 1647086, 1647147), (11, 1127357, 1127418), (11, 1288408, 1288469), (11, 1449459, 1449520), (11, 1610510, 1610571), (11, 1771561, 1771622), (11, 1932612, 1932673), (11, 1771561, 1771622), (13, 1113879, 1113940), (13, 1485172, 1485233), (13, 1856465, 1856526), (17, 1002252, 1002313), (17, 1085773, 1085834), (17, 1169294, 1169355), (17, 1252815, 1252876), (17, 1336336, 1336397)]

def row062_layer008_block003 : List ColouredInterval :=
  [(17, 1419857, 1419918), (17, 1419857, 1419918), (19, 1042568, 1042629), (19, 1172889, 1172950), (19, 1303210, 1303271), (19, 1433531, 1433592), (19, 1563852, 1563913), (19, 1694173, 1694234), (19, 1824494, 1824555), (23, 1119364, 1119425), (23, 1399205, 1399266), (23, 1679046, 1679107), (29, 1414562, 1414623), (37, 1874161, 1874222), (41, 1033815, 1033876), (41, 1102736, 1102797)]

def row062_layer008_block004 : List ColouredInterval :=
  [(41, 1171657, 1171718), (43, 1033591, 1033652), (43, 1113098, 1113159), (43, 1192605, 1192666), (43, 1272112, 1272173), (43, 1351619, 1351680), (47, 1038230, 1038291), (47, 1142053, 1142114), (47, 1245876, 1245937), (47, 1349699, 1349760), (47, 1453522, 1453583), (47, 1557345, 1557406), (47, 1661168, 1661229), (47, 1764991, 1765052), (53, 1042139, 1042200), (53, 1191016, 1191077)]

def row062_layer008_block005 : List ColouredInterval :=
  [(53, 1339893, 1339954), (53, 1488770, 1488831), (53, 1637647, 1637708), (53, 1786524, 1786585), (53, 1935401, 1935462), (59, 1026895, 1026956), (59, 1232274, 1232335), (59, 1437653, 1437714), (59, 1643032, 1643093), (59, 1848411, 1848472), (61, 1134905, 1134966), (61, 1361886, 1361947), (61, 1588867, 1588928), (61, 1815848, 1815909)]

def row062_layer008_chunks : List (List ColouredInterval) :=
  [row062_layer008_block000, row062_layer008_block001, row062_layer008_block002, row062_layer008_block003, row062_layer008_block004, row062_layer008_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_arithmetic : LayerArithmeticValid row062.height { lower := 968192, upper := 1936384, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_enumeration :
    activePowerIntervalList 62 17 968192 1936384 = row062_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_pairs000 :
    row062_layer008_block000.all (fun I => row062_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_pairs001 :
    row062_layer008_block001.all (fun I => row062_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_pairs002 :
    row062_layer008_block002.all (fun I => row062_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_pairs003 :
    row062_layer008_block003.all (fun I => row062_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_pairs004 :
    row062_layer008_block004.all (fun I => row062_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_pairs005 :
    row062_layer008_block005.all (fun I => row062_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_chunks_eq : row062_layer008_chunks.flatten = row062_layer008_intervals := by
  rfl

theorem row062_layer008_pairs : pairCoverCheck row062_layer008_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer008_chunks_eq
  intro block hblock
  simp only [row062_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer008_pairs000
  · exact row062_layer008_pairs001
  · exact row062_layer008_pairs002
  · exact row062_layer008_pairs003
  · exact row062_layer008_pairs004
  · exact row062_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer008_checked :
    coverLayerCheck row062.height row062.goods { lower := 968192, upper := 1936384, M := 17 } = true := by
  exact coverLayerCheck_of_parts row062_layer008_arithmetic row062_layer008_enumeration row062_bounds_eq row062_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer009_intervals : List ColouredInterval :=
  [(2, 2097152, 2097213), (2, 2097152, 2097213), (2, 2621440, 2621501), (2, 3145728, 3145789), (2, 3670016, 3670077), (2, 2097152, 2097213), (2, 3145728, 3145789), (2, 2097152, 2097213), (3, 1948617, 1948678), (3, 2125764, 2125825), (3, 2302911, 2302972), (3, 2480058, 2480119), (3, 2657205, 2657266), (3, 2834352, 2834413), (3, 2125764, 2125825), (3, 2657205, 2657266), (3, 3188646, 3188707), (3, 3720087, 3720148), (3, 3188646, 3188707), (5, 1953125, 1953186), (5, 2343750, 2343811), (5, 2734375, 2734436), (5, 3125000, 3125061), (5, 3515625, 3515686), (5, 1953125, 1953186), (7, 2470629, 2470690), (7, 3294172, 3294233), (11, 2093663, 2093724), (11, 2254714, 2254775), (11, 2415765, 2415826), (11, 2576816, 2576877), (11, 3543122, 3543183), (13, 2227758, 2227819), (13, 2599051, 2599112), (13, 2970344, 2970405), (13, 3341637, 3341698), (13, 3712930, 3712991), (17, 2839714, 2839775), (19, 1954815, 1954876), (19, 2085136, 2085197), (19, 2476099, 2476160), (23, 1958887, 1958948), (23, 2238728, 2238789), (23, 2518569, 2518630), (23, 2798410, 2798471), (23, 3078251, 3078312), (23, 3358092, 3358153), (23, 3637933, 3637994), (29, 2121843, 2121904), (29, 2829124, 2829185), (29, 3536405, 3536466), (37, 3748322, 3748383), (41, 2825761, 2825822), (43, 3418801, 3418862), (53, 2084278, 2084339), (53, 2233155, 2233216), (53, 2382032, 2382093), (59, 2053790, 2053851), (59, 2259169, 2259230), (59, 2464548, 2464609), (59, 2669927, 2669988), (59, 2875306, 2875367), (59, 3080685, 3080746), (59, 3286064, 3286125), (61, 2042829, 2042890), (61, 2269810, 2269871), (61, 2496791, 2496852), (61, 2723772, 2723833), (61, 2950753, 2950814), (61, 3177734, 3177795), (61, 3404715, 3404776), (61, 3631696, 3631757)]

def row062_layer009_block000 : List ColouredInterval :=
  [(2, 2097152, 2097213), (2, 2097152, 2097213), (2, 2621440, 2621501), (2, 3145728, 3145789), (2, 3670016, 3670077), (2, 2097152, 2097213), (2, 3145728, 3145789), (2, 2097152, 2097213), (3, 1948617, 1948678), (3, 2125764, 2125825), (3, 2302911, 2302972), (3, 2480058, 2480119), (3, 2657205, 2657266), (3, 2834352, 2834413), (3, 2125764, 2125825), (3, 2657205, 2657266)]

def row062_layer009_block001 : List ColouredInterval :=
  [(3, 3188646, 3188707), (3, 3720087, 3720148), (3, 3188646, 3188707), (5, 1953125, 1953186), (5, 2343750, 2343811), (5, 2734375, 2734436), (5, 3125000, 3125061), (5, 3515625, 3515686), (5, 1953125, 1953186), (7, 2470629, 2470690), (7, 3294172, 3294233), (11, 2093663, 2093724), (11, 2254714, 2254775), (11, 2415765, 2415826), (11, 2576816, 2576877), (11, 3543122, 3543183)]

def row062_layer009_block002 : List ColouredInterval :=
  [(13, 2227758, 2227819), (13, 2599051, 2599112), (13, 2970344, 2970405), (13, 3341637, 3341698), (13, 3712930, 3712991), (17, 2839714, 2839775), (19, 1954815, 1954876), (19, 2085136, 2085197), (19, 2476099, 2476160), (23, 1958887, 1958948), (23, 2238728, 2238789), (23, 2518569, 2518630), (23, 2798410, 2798471), (23, 3078251, 3078312), (23, 3358092, 3358153), (23, 3637933, 3637994)]

def row062_layer009_block003 : List ColouredInterval :=
  [(29, 2121843, 2121904), (29, 2829124, 2829185), (29, 3536405, 3536466), (37, 3748322, 3748383), (41, 2825761, 2825822), (43, 3418801, 3418862), (53, 2084278, 2084339), (53, 2233155, 2233216), (53, 2382032, 2382093), (59, 2053790, 2053851), (59, 2259169, 2259230), (59, 2464548, 2464609), (59, 2669927, 2669988), (59, 2875306, 2875367), (59, 3080685, 3080746), (59, 3286064, 3286125)]

def row062_layer009_block004 : List ColouredInterval :=
  [(61, 2042829, 2042890), (61, 2269810, 2269871), (61, 2496791, 2496852), (61, 2723772, 2723833), (61, 2950753, 2950814), (61, 3177734, 3177795), (61, 3404715, 3404776), (61, 3631696, 3631757)]

def row062_layer009_chunks : List (List ColouredInterval) :=
  [row062_layer009_block000, row062_layer009_block001, row062_layer009_block002, row062_layer009_block003, row062_layer009_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_arithmetic : LayerArithmeticValid row062.height { lower := 1936384, upper := 3872768, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_enumeration :
    activePowerIntervalList 62 16 1936384 3872768 = row062_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_pairs000 :
    row062_layer009_block000.all (fun I => row062_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_pairs001 :
    row062_layer009_block001.all (fun I => row062_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_pairs002 :
    row062_layer009_block002.all (fun I => row062_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_pairs003 :
    row062_layer009_block003.all (fun I => row062_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_pairs004 :
    row062_layer009_block004.all (fun I => row062_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_chunks_eq : row062_layer009_chunks.flatten = row062_layer009_intervals := by
  rfl

theorem row062_layer009_pairs : pairCoverCheck row062_layer009_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer009_chunks_eq
  intro block hblock
  simp only [row062_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row062_layer009_pairs000
  · exact row062_layer009_pairs001
  · exact row062_layer009_pairs002
  · exact row062_layer009_pairs003
  · exact row062_layer009_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer009_checked :
    coverLayerCheck row062.height row062.goods { lower := 1936384, upper := 3872768, M := 16 } = true := by
  exact coverLayerCheck_of_parts row062_layer009_arithmetic row062_layer009_enumeration row062_bounds_eq row062_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer010_checked :
    coverLayerCheck row062.height row062.goods { lower := 3872768, upper := 7745536, M := 14 } = true := by
  decide +kernel

theorem row062_layer011_checked :
    coverLayerCheck row062.height row062.goods { lower := 7745536, upper := 15491072, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer012_checked :
    coverLayerCheck row062.height row062.goods { lower := 15491072, upper := 30982144, M := 12 } = true := by
  decide +kernel

theorem row062_layer013_checked :
    coverLayerCheck row062.height row062.goods { lower := 30982144, upper := 61964288, M := 11 } = true := by
  decide +kernel

theorem row062_layer014_checked :
    coverLayerCheck row062.height row062.goods { lower := 61964288, upper := 123928576, M := 10 } = true := by
  decide +kernel

theorem row062_layer015_checked :
    coverLayerCheck row062.height row062.goods { lower := 123928576, upper := 247857152, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer016_checked :
    coverLayerCheck row062.height row062.goods { lower := 247857152, upper := 495714304, M := 8 } = true := by
  decide +kernel

theorem row062_layer017_checked :
    coverLayerCheck row062.height row062.goods { lower := 495714304, upper := 991428608, M := 8 } = true := by
  decide +kernel

theorem row062_layer018_checked :
    coverLayerCheck row062.height row062.goods { lower := 991428608, upper := 1982857216, M := 7 } = true := by
  decide +kernel

theorem row062_layer019_checked :
    coverLayerCheck row062.height row062.goods { lower := 1982857216, upper := 3965714432, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer020_checked :
    coverLayerCheck row062.height row062.goods { lower := 3965714432, upper := 7931428864, M := 6 } = true := by
  decide +kernel

theorem row062_layer021_checked :
    coverLayerCheck row062.height row062.goods { lower := 7931428864, upper := 15862857728, M := 5 } = true := by
  decide +kernel

theorem row062_layer022_checked :
    coverLayerCheck row062.height row062.goods { lower := 15862857728, upper := 31725715456, M := 5 } = true := by
  decide +kernel

theorem row062_layer023_checked :
    coverLayerCheck row062.height row062.goods { lower := 31725715456, upper := 63451430912, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer024_checked :
    coverLayerCheck row062.height row062.goods { lower := 63451430912, upper := 126902861824, M := 4 } = true := by
  decide +kernel

theorem row062_layer025_checked :
    coverLayerCheck row062.height row062.goods { lower := 126902861824, upper := 253805723648, M := 4 } = true := by
  decide +kernel

theorem row062_layer026_checked :
    coverLayerCheck row062.height row062.goods { lower := 253805723648, upper := 507611447296, M := 4 } = true := by
  decide +kernel

theorem row062_layer027_checked :
    coverLayerCheck row062.height row062.goods { lower := 507611447296, upper := 1015222894592, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer028_checked :
    coverLayerCheck row062.height row062.goods { lower := 1015222894592, upper := 2030445789184, M := 3 } = true := by
  decide +kernel

theorem row062_layer029_checked :
    coverLayerCheck row062.height row062.goods { lower := 2030445789184, upper := 4060891578368, M := 3 } = true := by
  decide +kernel

theorem row062_layer030_checked :
    coverLayerCheck row062.height row062.goods { lower := 4060891578368, upper := 8121783156736, M := 3 } = true := by
  decide +kernel

theorem row062_layer031_checked :
    coverLayerCheck row062.height row062.goods { lower := 8121783156736, upper := 16243566313472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer032_checked :
    coverLayerCheck row062.height row062.goods { lower := 16243566313472, upper := 32487132626944, M := 2 } = true := by
  decide +kernel

theorem row062_layer033_checked :
    coverLayerCheck row062.height row062.goods { lower := 32487132626944, upper := 64974265253888, M := 2 } = true := by
  decide +kernel

theorem row062_layer034_checked :
    coverLayerCheck row062.height row062.goods { lower := 64974265253888, upper := 129948530507776, M := 2 } = true := by
  decide +kernel

theorem row062_layer035_checked :
    coverLayerCheck row062.height row062.goods { lower := 129948530507776, upper := 259897061015552, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer036_checked :
    coverLayerCheck row062.height row062.goods { lower := 259897061015552, upper := 519794122031104, M := 2 } = true := by
  decide +kernel

theorem row062_layer037_checked :
    coverLayerCheck row062.height row062.goods { lower := 519794122031104, upper := 1000000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer037_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layers_checked :
    row062.layers.all (coverLayerCheck row062.height row062.goods) = true := by
  change row062_layers.all (coverLayerCheck row062.height row062.goods) = true
  simp only [row062_layers, List.all_cons, List.all_nil,
    row062_layer000_checked,
    row062_layer001_checked,
    row062_layer002_checked,
    row062_layer003_checked,
    row062_layer004_checked,
    row062_layer005_checked,
    row062_layer006_checked,
    row062_layer007_checked,
    row062_layer008_checked,
    row062_layer009_checked,
    row062_layer010_checked,
    row062_layer011_checked,
    row062_layer012_checked,
    row062_layer013_checked,
    row062_layer014_checked,
    row062_layer015_checked,
    row062_layer016_checked,
    row062_layer017_checked,
    row062_layer018_checked,
    row062_layer019_checked,
    row062_layer020_checked,
    row062_layer021_checked,
    row062_layer022_checked,
    row062_layer023_checked,
    row062_layer024_checked,
    row062_layer025_checked,
    row062_layer026_checked,
    row062_layer027_checked,
    row062_layer028_checked,
    row062_layer029_checked,
    row062_layer030_checked,
    row062_layer031_checked,
    row062_layer032_checked,
    row062_layer033_checked,
    row062_layer034_checked,
    row062_layer035_checked,
    row062_layer036_checked,
    row062_layer037_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_checked : finiteCoverRowCheck row062 = true := by
  simp only [finiteCoverRowCheck, row062_registered, row062_goods_checked,
    row062_small_checked, row062_layerCover_checked, row062_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i062 :
    ∀ n j : ℕ, 1 ≤ 62 ∧ 62 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 62 ≤ p ∧ p ∣ Nat.choose n 62 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row062_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i062
