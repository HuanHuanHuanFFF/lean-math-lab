import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050B64.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050B64.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_enumeration :
    activePowerIntervalList 50 22 627200 1254400 = row050_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_pairs000 :
    row050_layer008_block000.all (fun I => row050_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_pairs001 :
    row050_layer008_block001.all (fun I => row050_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_pairs002 :
    row050_layer008_block002.all (fun I => row050_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_pairs003 :
    row050_layer008_block003.all (fun I => row050_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_pairs004 :
    row050_layer008_block004.all (fun I => row050_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_pairs005 :
    row050_layer008_block005.all (fun I => row050_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_chunks_eq : row050_layer008_chunks.flatten = row050_layer008_intervals := by
  rfl

theorem row050_layer008_pairs : pairCoverCheck row050_layer008_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer008_chunks_eq
  intro block hblock
  simp only [row050_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row050_layer008_pairs000
  · exact row050_layer008_pairs001
  · exact row050_layer008_pairs002
  · exact row050_layer008_pairs003
  · exact row050_layer008_pairs004
  · exact row050_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer008_checked :
    coverLayerCheck row050.height row050.goods { lower := 627200, upper := 1254400, M := 22 } = true := by
  exact coverLayerCheck_of_parts row050_layer008_arithmetic row050_layer008_enumeration row050_bounds_eq row050_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer009_intervals : List ColouredInterval :=
  [(2, 1310720, 1310769), (2, 1310720, 1310769), (2, 1572864, 1572913), (2, 1835008, 1835057), (2, 2097152, 2097201), (2, 2359296, 2359345), (2, 1572864, 1572913), (2, 2097152, 2097201), (2, 2097152, 2097201), (2, 2097152, 2097201), (3, 1417176, 1417225), (3, 1594323, 1594372), (3, 1771470, 1771519), (3, 1948617, 1948666), (3, 2125764, 2125813), (3, 2302911, 2302960), (3, 2480058, 2480107), (3, 1594323, 1594372), (3, 2125764, 2125813), (3, 1594323, 1594372), (7, 1294139, 1294188), (7, 1411788, 1411837), (7, 1529437, 1529486), (7, 1647086, 1647135), (7, 1764735, 1764784), (7, 1882384, 1882433), (7, 2000033, 2000082), (7, 2117682, 2117731), (7, 2235331, 2235380), (7, 2352980, 2353029), (7, 1647086, 1647135), (7, 2470629, 2470678), (11, 1288408, 1288457), (11, 1449459, 1449508), (11, 1610510, 1610559), (11, 1771561, 1771610), (11, 1932612, 1932661), (11, 2093663, 2093712), (11, 2254714, 2254763), (11, 2415765, 2415814), (11, 1771561, 1771610), (13, 1485172, 1485221), (13, 1856465, 1856514), (13, 2227758, 2227807), (17, 1336336, 1336385), (17, 1419857, 1419906), (17, 1503378, 1503427), (17, 1586899, 1586948), (17, 1670420, 1670469), (17, 1419857, 1419906), (19, 1303210, 1303259), (19, 1433531, 1433580), (19, 1563852, 1563901), (19, 1694173, 1694222), (19, 1824494, 1824543), (19, 1954815, 1954864), (19, 2085136, 2085185), (19, 2215457, 2215506), (19, 2345778, 2345827), (19, 2476099, 2476148), (19, 2476099, 2476148), (23, 1399205, 1399254), (23, 1679046, 1679095), (23, 1958887, 1958936), (23, 2238728, 2238777), (29, 1414562, 1414611), (29, 2121843, 2121892), (31, 1847042, 1847091), (37, 1874161, 1874210), (41, 1309499, 1309548), (41, 1378420, 1378469), (43, 1272112, 1272161), (43, 1351619, 1351668), (43, 1431126, 1431175), (43, 1510633, 1510682), (43, 1590140, 1590189), (47, 1349699, 1349748), (47, 1453522, 1453571), (47, 1557345, 1557394), (47, 1661168, 1661217), (47, 1764991, 1765040), (47, 1868814, 1868863), (47, 1972637, 1972686), (47, 2076460, 2076509)]

def row050_layer009_block000 : List ColouredInterval :=
  [(2, 1310720, 1310769), (2, 1310720, 1310769), (2, 1572864, 1572913), (2, 1835008, 1835057), (2, 2097152, 2097201), (2, 2359296, 2359345), (2, 1572864, 1572913), (2, 2097152, 2097201), (2, 2097152, 2097201), (2, 2097152, 2097201), (3, 1417176, 1417225), (3, 1594323, 1594372), (3, 1771470, 1771519), (3, 1948617, 1948666), (3, 2125764, 2125813), (3, 2302911, 2302960)]

def row050_layer009_block001 : List ColouredInterval :=
  [(3, 2480058, 2480107), (3, 1594323, 1594372), (3, 2125764, 2125813), (3, 1594323, 1594372), (7, 1294139, 1294188), (7, 1411788, 1411837), (7, 1529437, 1529486), (7, 1647086, 1647135), (7, 1764735, 1764784), (7, 1882384, 1882433), (7, 2000033, 2000082), (7, 2117682, 2117731), (7, 2235331, 2235380), (7, 2352980, 2353029), (7, 1647086, 1647135), (7, 2470629, 2470678)]

def row050_layer009_block002 : List ColouredInterval :=
  [(11, 1288408, 1288457), (11, 1449459, 1449508), (11, 1610510, 1610559), (11, 1771561, 1771610), (11, 1932612, 1932661), (11, 2093663, 2093712), (11, 2254714, 2254763), (11, 2415765, 2415814), (11, 1771561, 1771610), (13, 1485172, 1485221), (13, 1856465, 1856514), (13, 2227758, 2227807), (17, 1336336, 1336385), (17, 1419857, 1419906), (17, 1503378, 1503427), (17, 1586899, 1586948)]

def row050_layer009_block003 : List ColouredInterval :=
  [(17, 1670420, 1670469), (17, 1419857, 1419906), (19, 1303210, 1303259), (19, 1433531, 1433580), (19, 1563852, 1563901), (19, 1694173, 1694222), (19, 1824494, 1824543), (19, 1954815, 1954864), (19, 2085136, 2085185), (19, 2215457, 2215506), (19, 2345778, 2345827), (19, 2476099, 2476148), (19, 2476099, 2476148), (23, 1399205, 1399254), (23, 1679046, 1679095), (23, 1958887, 1958936)]

def row050_layer009_block004 : List ColouredInterval :=
  [(23, 2238728, 2238777), (29, 1414562, 1414611), (29, 2121843, 2121892), (31, 1847042, 1847091), (37, 1874161, 1874210), (41, 1309499, 1309548), (41, 1378420, 1378469), (43, 1272112, 1272161), (43, 1351619, 1351668), (43, 1431126, 1431175), (43, 1510633, 1510682), (43, 1590140, 1590189), (47, 1349699, 1349748), (47, 1453522, 1453571), (47, 1557345, 1557394), (47, 1661168, 1661217)]

def row050_layer009_block005 : List ColouredInterval :=
  [(47, 1764991, 1765040), (47, 1868814, 1868863), (47, 1972637, 1972686), (47, 2076460, 2076509)]

def row050_layer009_chunks : List (List ColouredInterval) :=
  [row050_layer009_block000, row050_layer009_block001, row050_layer009_block002, row050_layer009_block003, row050_layer009_block004, row050_layer009_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_arithmetic : LayerArithmeticValid row050.height { lower := 1254400, upper := 2508800, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_enumeration :
    activePowerIntervalList 50 20 1254400 2508800 = row050_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_pairs000 :
    row050_layer009_block000.all (fun I => row050_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_pairs001 :
    row050_layer009_block001.all (fun I => row050_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_pairs002 :
    row050_layer009_block002.all (fun I => row050_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_pairs003 :
    row050_layer009_block003.all (fun I => row050_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_pairs004 :
    row050_layer009_block004.all (fun I => row050_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_pairs005 :
    row050_layer009_block005.all (fun I => row050_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_chunks_eq : row050_layer009_chunks.flatten = row050_layer009_intervals := by
  rfl

theorem row050_layer009_pairs : pairCoverCheck row050_layer009_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer009_chunks_eq
  intro block hblock
  simp only [row050_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row050_layer009_pairs000
  · exact row050_layer009_pairs001
  · exact row050_layer009_pairs002
  · exact row050_layer009_pairs003
  · exact row050_layer009_pairs004
  · exact row050_layer009_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer009_checked :
    coverLayerCheck row050.height row050.goods { lower := 1254400, upper := 2508800, M := 20 } = true := by
  exact coverLayerCheck_of_parts row050_layer009_arithmetic row050_layer009_enumeration row050_bounds_eq row050_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer011_intervals : List ColouredInterval :=
  [(2, 5242880, 5242929), (2, 6291456, 6291505), (2, 7340032, 7340081), (2, 8388608, 8388657), (2, 9437184, 9437233), (2, 6291456, 6291505), (2, 8388608, 8388657), (2, 8388608, 8388657), (2, 8388608, 8388657), (3, 5314410, 5314459), (3, 5845851, 5845900), (3, 6377292, 6377341), (3, 6908733, 6908782), (3, 7440174, 7440223), (3, 7971615, 7971664), (3, 8503056, 8503105), (3, 9034497, 9034546), (3, 9565938, 9565987), (3, 6377292, 6377341), (3, 7971615, 7971664), (3, 9565938, 9565987), (3, 9565938, 9565987), (7, 5764801, 5764850), (7, 6588344, 6588393), (7, 7411887, 7411936), (7, 8235430, 8235479), (7, 9058973, 9059022), (7, 9882516, 9882565), (7, 5764801, 5764850), (11, 5314683, 5314732), (11, 7086244, 7086293), (11, 8857805, 8857854), (13, 5198102, 5198151), (13, 5569395, 5569444), (13, 5940688, 5940737), (13, 6311981, 6312030), (13, 6683274, 6683323), (13, 9653618, 9653667), (17, 5679428, 5679477), (17, 7099285, 7099334), (17, 8519142, 8519191), (17, 9938999, 9939048), (19, 7428297, 7428346), (19, 9904396, 9904445), (23, 5037138, 5037187), (23, 6436343, 6436392), (29, 5658248, 5658297), (29, 6365529, 6365578), (29, 7072810, 7072859), (29, 7780091, 7780140), (29, 8487372, 8487421), (29, 9194653, 9194702), (29, 9901934, 9901983), (31, 5541126, 5541175), (31, 6464647, 6464696), (31, 7388168, 7388217), (31, 8311689, 8311738), (31, 9235210, 9235259), (37, 5622483, 5622532), (37, 7496644, 7496693), (37, 9370805, 9370854), (41, 5651522, 5651571), (41, 8477283, 8477332), (43, 6837602, 6837651), (47, 9759362, 9759411)]

def row050_layer011_block000 : List ColouredInterval :=
  [(2, 5242880, 5242929), (2, 6291456, 6291505), (2, 7340032, 7340081), (2, 8388608, 8388657), (2, 9437184, 9437233), (2, 6291456, 6291505), (2, 8388608, 8388657), (2, 8388608, 8388657), (2, 8388608, 8388657), (3, 5314410, 5314459), (3, 5845851, 5845900), (3, 6377292, 6377341), (3, 6908733, 6908782), (3, 7440174, 7440223), (3, 7971615, 7971664), (3, 8503056, 8503105)]

def row050_layer011_block001 : List ColouredInterval :=
  [(3, 9034497, 9034546), (3, 9565938, 9565987), (3, 6377292, 6377341), (3, 7971615, 7971664), (3, 9565938, 9565987), (3, 9565938, 9565987), (7, 5764801, 5764850), (7, 6588344, 6588393), (7, 7411887, 7411936), (7, 8235430, 8235479), (7, 9058973, 9059022), (7, 9882516, 9882565), (7, 5764801, 5764850), (11, 5314683, 5314732), (11, 7086244, 7086293), (11, 8857805, 8857854)]

def row050_layer011_block002 : List ColouredInterval :=
  [(13, 5198102, 5198151), (13, 5569395, 5569444), (13, 5940688, 5940737), (13, 6311981, 6312030), (13, 6683274, 6683323), (13, 9653618, 9653667), (17, 5679428, 5679477), (17, 7099285, 7099334), (17, 8519142, 8519191), (17, 9938999, 9939048), (19, 7428297, 7428346), (19, 9904396, 9904445), (23, 5037138, 5037187), (23, 6436343, 6436392), (29, 5658248, 5658297), (29, 6365529, 6365578)]

def row050_layer011_block003 : List ColouredInterval :=
  [(29, 7072810, 7072859), (29, 7780091, 7780140), (29, 8487372, 8487421), (29, 9194653, 9194702), (29, 9901934, 9901983), (31, 5541126, 5541175), (31, 6464647, 6464696), (31, 7388168, 7388217), (31, 8311689, 8311738), (31, 9235210, 9235259), (37, 5622483, 5622532), (37, 7496644, 7496693), (37, 9370805, 9370854), (41, 5651522, 5651571), (41, 8477283, 8477332), (43, 6837602, 6837651)]

def row050_layer011_block004 : List ColouredInterval :=
  [(47, 9759362, 9759411)]

def row050_layer011_chunks : List (List ColouredInterval) :=
  [row050_layer011_block000, row050_layer011_block001, row050_layer011_block002, row050_layer011_block003, row050_layer011_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_arithmetic : LayerArithmeticValid row050.height { lower := 5017600, upper := 10035200, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_enumeration :
    activePowerIntervalList 50 18 5017600 10035200 = row050_layer011_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_pairs000 :
    row050_layer011_block000.all (fun I => row050_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_pairs001 :
    row050_layer011_block001.all (fun I => row050_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_pairs002 :
    row050_layer011_block002.all (fun I => row050_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_pairs003 :
    row050_layer011_block003.all (fun I => row050_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_pairs004 :
    row050_layer011_block004.all (fun I => row050_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_chunks_eq : row050_layer011_chunks.flatten = row050_layer011_intervals := by
  rfl

theorem row050_layer011_pairs : pairCoverCheck row050_layer011_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer011_chunks_eq
  intro block hblock
  simp only [row050_layer011_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row050_layer011_pairs000
  · exact row050_layer011_pairs001
  · exact row050_layer011_pairs002
  · exact row050_layer011_pairs003
  · exact row050_layer011_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_checked :
    coverLayerCheck row050.height row050.goods { lower := 5017600, upper := 10035200, M := 18 } = true := by
  exact coverLayerCheck_of_parts row050_layer011_arithmetic row050_layer011_enumeration row050_bounds_eq row050_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer010_checked :
    coverLayerCheck row050.height row050.goods { lower := 2508800, upper := 5017600, M := 19 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer012_intervals : List ColouredInterval :=
  [(2, 10485760, 10485809), (2, 12582912, 12582961), (2, 14680064, 14680113), (2, 16777216, 16777265), (2, 12582912, 12582961), (2, 16777216, 16777265), (2, 16777216, 16777265), (2, 16777216, 16777265), (3, 11160261, 11160310), (3, 12754584, 12754633), (3, 14348907, 14348956), (3, 15943230, 15943279), (3, 17537553, 17537602), (3, 19131876, 19131925), (3, 14348907, 14348956), (3, 19131876, 19131925), (3, 14348907, 14348956), (7, 10706059, 10706108), (7, 11529602, 11529651), (7, 12353145, 12353194), (7, 13176688, 13176737), (7, 14000231, 14000280), (7, 11529602, 11529651), (7, 17294403, 17294452), (11, 10629366, 10629415), (11, 12400927, 12400976), (11, 14172488, 14172537), (11, 15944049, 15944098), (11, 17715610, 17715659), (11, 19487171, 19487220), (11, 19487171, 19487220), (13, 14480427, 14480476), (13, 19307236, 19307285), (17, 11358856, 11358905), (17, 12778713, 12778762), (17, 14198570, 14198619), (17, 15618427, 15618476), (17, 17038284, 17038333), (17, 18458141, 18458190), (17, 19877998, 19878047), (19, 12380495, 12380544), (19, 14856594, 14856643), (19, 17332693, 17332742), (19, 19808792, 19808841), (23, 12872686, 12872735), (23, 19309029, 19309078), (29, 10609215, 10609264), (29, 11316496, 11316545), (29, 12023777, 12023826), (31, 10158731, 10158780), (31, 11082252, 11082301), (31, 12005773, 12005822), (31, 12929294, 12929343), (31, 13852815, 13852864), (31, 14776336, 14776385), (31, 15699857, 15699906), (37, 11244966, 11245015), (37, 13119127, 13119176), (37, 14993288, 14993337), (37, 16867449, 16867498), (37, 18741610, 18741659), (41, 11303044, 11303093), (41, 14128805, 14128854), (41, 16954566, 16954615), (41, 19780327, 19780376), (43, 10256403, 10256452), (43, 13675204, 13675253), (43, 17094005, 17094054), (47, 14639043, 14639092), (47, 19518724, 19518773)]

def row050_layer012_block000 : List ColouredInterval :=
  [(2, 10485760, 10485809), (2, 12582912, 12582961), (2, 14680064, 14680113), (2, 16777216, 16777265), (2, 12582912, 12582961), (2, 16777216, 16777265), (2, 16777216, 16777265), (2, 16777216, 16777265), (3, 11160261, 11160310), (3, 12754584, 12754633), (3, 14348907, 14348956), (3, 15943230, 15943279), (3, 17537553, 17537602), (3, 19131876, 19131925), (3, 14348907, 14348956), (3, 19131876, 19131925)]

def row050_layer012_block001 : List ColouredInterval :=
  [(3, 14348907, 14348956), (7, 10706059, 10706108), (7, 11529602, 11529651), (7, 12353145, 12353194), (7, 13176688, 13176737), (7, 14000231, 14000280), (7, 11529602, 11529651), (7, 17294403, 17294452), (11, 10629366, 10629415), (11, 12400927, 12400976), (11, 14172488, 14172537), (11, 15944049, 15944098), (11, 17715610, 17715659), (11, 19487171, 19487220), (11, 19487171, 19487220), (13, 14480427, 14480476)]

def row050_layer012_block002 : List ColouredInterval :=
  [(13, 19307236, 19307285), (17, 11358856, 11358905), (17, 12778713, 12778762), (17, 14198570, 14198619), (17, 15618427, 15618476), (17, 17038284, 17038333), (17, 18458141, 18458190), (17, 19877998, 19878047), (19, 12380495, 12380544), (19, 14856594, 14856643), (19, 17332693, 17332742), (19, 19808792, 19808841), (23, 12872686, 12872735), (23, 19309029, 19309078), (29, 10609215, 10609264), (29, 11316496, 11316545)]

def row050_layer012_block003 : List ColouredInterval :=
  [(29, 12023777, 12023826), (31, 10158731, 10158780), (31, 11082252, 11082301), (31, 12005773, 12005822), (31, 12929294, 12929343), (31, 13852815, 13852864), (31, 14776336, 14776385), (31, 15699857, 15699906), (37, 11244966, 11245015), (37, 13119127, 13119176), (37, 14993288, 14993337), (37, 16867449, 16867498), (37, 18741610, 18741659), (41, 11303044, 11303093), (41, 14128805, 14128854), (41, 16954566, 16954615)]

def row050_layer012_block004 : List ColouredInterval :=
  [(41, 19780327, 19780376), (43, 10256403, 10256452), (43, 13675204, 13675253), (43, 17094005, 17094054), (47, 14639043, 14639092), (47, 19518724, 19518773)]

def row050_layer012_chunks : List (List ColouredInterval) :=
  [row050_layer012_block000, row050_layer012_block001, row050_layer012_block002, row050_layer012_block003, row050_layer012_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_arithmetic : LayerArithmeticValid row050.height { lower := 10035200, upper := 20070400, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_enumeration :
    activePowerIntervalList 50 17 10035200 20070400 = row050_layer012_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_pairs000 :
    row050_layer012_block000.all (fun I => row050_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_pairs001 :
    row050_layer012_block001.all (fun I => row050_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_pairs002 :
    row050_layer012_block002.all (fun I => row050_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_pairs003 :
    row050_layer012_block003.all (fun I => row050_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_pairs004 :
    row050_layer012_block004.all (fun I => row050_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_chunks_eq : row050_layer012_chunks.flatten = row050_layer012_intervals := by
  rfl

theorem row050_layer012_pairs : pairCoverCheck row050_layer012_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer012_chunks_eq
  intro block hblock
  simp only [row050_layer012_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row050_layer012_pairs000
  · exact row050_layer012_pairs001
  · exact row050_layer012_pairs002
  · exact row050_layer012_pairs003
  · exact row050_layer012_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer012_checked :
    coverLayerCheck row050.height row050.goods { lower := 10035200, upper := 20070400, M := 17 } = true := by
  exact coverLayerCheck_of_parts row050_layer012_arithmetic row050_layer012_enumeration row050_bounds_eq row050_layer012_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer013_intervals : List ColouredInterval :=
  [(2, 20971520, 20971569), (2, 25165824, 25165873), (2, 29360128, 29360177), (2, 33554432, 33554481), (2, 25165824, 25165873), (2, 33554432, 33554481), (2, 33554432, 33554481), (2, 33554432, 33554481), (3, 20726199, 20726248), (3, 22320522, 22320571), (3, 23914845, 23914894), (3, 25509168, 25509217), (3, 23914845, 23914894), (3, 28697814, 28697863), (3, 33480783, 33480832), (3, 38263752, 38263801), (3, 28697814, 28697863), (7, 23059204, 23059253), (7, 28824005, 28824054), (7, 34588806, 34588855), (11, 21258732, 21258781), (11, 23030293, 23030342), (11, 24801854, 24801903), (11, 26573415, 26573464), (11, 28344976, 28345025), (11, 38974342, 38974391), (13, 24134045, 24134094), (13, 28960854, 28960903), (13, 33787663, 33787712), (13, 38614472, 38614521), (17, 21297855, 21297904), (17, 22717712, 22717761), (17, 24137569, 24137618), (19, 22284891, 22284940), (19, 24760990, 24761039), (19, 27237089, 27237138), (19, 29713188, 29713237), (19, 32189287, 32189336), (19, 34665386, 34665435), (19, 37141485, 37141534), (19, 39617584, 39617633), (23, 25745372, 25745421), (23, 32181715, 32181764), (23, 38618058, 38618107), (29, 20511149, 20511198), (31, 28629151, 28629200), (37, 20615771, 20615820), (37, 22489932, 22489981), (37, 24364093, 24364142), (37, 26238254, 26238303), (37, 28112415, 28112464), (37, 29986576, 29986625), (41, 22606088, 22606137), (41, 25431849, 25431898), (41, 28257610, 28257659), (41, 31083371, 31083420), (41, 33909132, 33909181), (41, 36734893, 36734942), (41, 39560654, 39560703), (43, 20512806, 20512855), (43, 23931607, 23931656), (43, 27350408, 27350457), (43, 30769209, 30769258), (43, 34188010, 34188059), (43, 37606811, 37606860), (47, 24398405, 24398454), (47, 29278086, 29278135), (47, 34157767, 34157816), (47, 39037448, 39037497)]

def row050_layer013_block000 : List ColouredInterval :=
  [(2, 20971520, 20971569), (2, 25165824, 25165873), (2, 29360128, 29360177), (2, 33554432, 33554481), (2, 25165824, 25165873), (2, 33554432, 33554481), (2, 33554432, 33554481), (2, 33554432, 33554481), (3, 20726199, 20726248), (3, 22320522, 22320571), (3, 23914845, 23914894), (3, 25509168, 25509217), (3, 23914845, 23914894), (3, 28697814, 28697863), (3, 33480783, 33480832), (3, 38263752, 38263801)]

def row050_layer013_block001 : List ColouredInterval :=
  [(3, 28697814, 28697863), (7, 23059204, 23059253), (7, 28824005, 28824054), (7, 34588806, 34588855), (11, 21258732, 21258781), (11, 23030293, 23030342), (11, 24801854, 24801903), (11, 26573415, 26573464), (11, 28344976, 28345025), (11, 38974342, 38974391), (13, 24134045, 24134094), (13, 28960854, 28960903), (13, 33787663, 33787712), (13, 38614472, 38614521), (17, 21297855, 21297904), (17, 22717712, 22717761)]

def row050_layer013_block002 : List ColouredInterval :=
  [(17, 24137569, 24137618), (19, 22284891, 22284940), (19, 24760990, 24761039), (19, 27237089, 27237138), (19, 29713188, 29713237), (19, 32189287, 32189336), (19, 34665386, 34665435), (19, 37141485, 37141534), (19, 39617584, 39617633), (23, 25745372, 25745421), (23, 32181715, 32181764), (23, 38618058, 38618107), (29, 20511149, 20511198), (31, 28629151, 28629200), (37, 20615771, 20615820), (37, 22489932, 22489981)]

def row050_layer013_block003 : List ColouredInterval :=
  [(37, 24364093, 24364142), (37, 26238254, 26238303), (37, 28112415, 28112464), (37, 29986576, 29986625), (41, 22606088, 22606137), (41, 25431849, 25431898), (41, 28257610, 28257659), (41, 31083371, 31083420), (41, 33909132, 33909181), (41, 36734893, 36734942), (41, 39560654, 39560703), (43, 20512806, 20512855), (43, 23931607, 23931656), (43, 27350408, 27350457), (43, 30769209, 30769258), (43, 34188010, 34188059)]

def row050_layer013_block004 : List ColouredInterval :=
  [(43, 37606811, 37606860), (47, 24398405, 24398454), (47, 29278086, 29278135), (47, 34157767, 34157816), (47, 39037448, 39037497)]

def row050_layer013_chunks : List (List ColouredInterval) :=
  [row050_layer013_block000, row050_layer013_block001, row050_layer013_block002, row050_layer013_block003, row050_layer013_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_arithmetic : LayerArithmeticValid row050.height { lower := 20070400, upper := 40140800, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_enumeration :
    activePowerIntervalList 50 16 20070400 40140800 = row050_layer013_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_pairs000 :
    row050_layer013_block000.all (fun I => row050_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_pairs001 :
    row050_layer013_block001.all (fun I => row050_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_pairs002 :
    row050_layer013_block002.all (fun I => row050_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_pairs003 :
    row050_layer013_block003.all (fun I => row050_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_pairs004 :
    row050_layer013_block004.all (fun I => row050_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_chunks_eq : row050_layer013_chunks.flatten = row050_layer013_intervals := by
  rfl

theorem row050_layer013_pairs : pairCoverCheck row050_layer013_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer013_chunks_eq
  intro block hblock
  simp only [row050_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row050_layer013_pairs000
  · exact row050_layer013_pairs001
  · exact row050_layer013_pairs002
  · exact row050_layer013_pairs003
  · exact row050_layer013_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer013_checked :
    coverLayerCheck row050.height row050.goods { lower := 20070400, upper := 40140800, M := 16 } = true := by
  exact coverLayerCheck_of_parts row050_layer013_arithmetic row050_layer013_enumeration row050_bounds_eq row050_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer014_checked :
    coverLayerCheck row050.height row050.goods { lower := 40140800, upper := 80281600, M := 15 } = true := by
  decide +kernel

theorem row050_layer015_checked :
    coverLayerCheck row050.height row050.goods { lower := 80281600, upper := 160563200, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer016_checked :
    coverLayerCheck row050.height row050.goods { lower := 160563200, upper := 321126400, M := 13 } = true := by
  decide +kernel

theorem row050_layer017_checked :
    coverLayerCheck row050.height row050.goods { lower := 321126400, upper := 642252800, M := 12 } = true := by
  decide +kernel

theorem row050_layer018_checked :
    coverLayerCheck row050.height row050.goods { lower := 642252800, upper := 1284505600, M := 12 } = true := by
  decide +kernel

theorem row050_layer019_checked :
    coverLayerCheck row050.height row050.goods { lower := 1284505600, upper := 2569011200, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer020_checked :
    coverLayerCheck row050.height row050.goods { lower := 2569011200, upper := 5138022400, M := 10 } = true := by
  decide +kernel

theorem row050_layer021_checked :
    coverLayerCheck row050.height row050.goods { lower := 5138022400, upper := 10276044800, M := 10 } = true := by
  decide +kernel

theorem row050_layer022_checked :
    coverLayerCheck row050.height row050.goods { lower := 10276044800, upper := 20552089600, M := 9 } = true := by
  decide +kernel

theorem row050_layer023_checked :
    coverLayerCheck row050.height row050.goods { lower := 20552089600, upper := 41104179200, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer024_checked :
    coverLayerCheck row050.height row050.goods { lower := 41104179200, upper := 82208358400, M := 8 } = true := by
  decide +kernel

theorem row050_layer025_checked :
    coverLayerCheck row050.height row050.goods { lower := 82208358400, upper := 164416716800, M := 7 } = true := by
  decide +kernel

theorem row050_layer026_checked :
    coverLayerCheck row050.height row050.goods { lower := 164416716800, upper := 328833433600, M := 7 } = true := by
  decide +kernel

theorem row050_layer027_checked :
    coverLayerCheck row050.height row050.goods { lower := 328833433600, upper := 657666867200, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer028_checked :
    coverLayerCheck row050.height row050.goods { lower := 657666867200, upper := 1315333734400, M := 6 } = true := by
  decide +kernel

theorem row050_layer029_checked :
    coverLayerCheck row050.height row050.goods { lower := 1315333734400, upper := 2630667468800, M := 6 } = true := by
  decide +kernel

theorem row050_layer030_checked :
    coverLayerCheck row050.height row050.goods { lower := 2630667468800, upper := 5261334937600, M := 6 } = true := by
  decide +kernel

theorem row050_layer031_checked :
    coverLayerCheck row050.height row050.goods { lower := 5261334937600, upper := 10522669875200, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer032_checked :
    coverLayerCheck row050.height row050.goods { lower := 10522669875200, upper := 21045339750400, M := 5 } = true := by
  decide +kernel

theorem row050_layer033_checked :
    coverLayerCheck row050.height row050.goods { lower := 21045339750400, upper := 42090679500800, M := 5 } = true := by
  decide +kernel

theorem row050_layer034_checked :
    coverLayerCheck row050.height row050.goods { lower := 42090679500800, upper := 84181359001600, M := 4 } = true := by
  decide +kernel

theorem row050_layer035_checked :
    coverLayerCheck row050.height row050.goods { lower := 84181359001600, upper := 168362718003200, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer036_checked :
    coverLayerCheck row050.height row050.goods { lower := 168362718003200, upper := 336725436006400, M := 4 } = true := by
  decide +kernel

theorem row050_layer037_checked :
    coverLayerCheck row050.height row050.goods { lower := 336725436006400, upper := 673450872012800, M := 4 } = true := by
  decide +kernel

theorem row050_layer038_checked :
    coverLayerCheck row050.height row050.goods { lower := 673450872012800, upper := 1346901744025600, M := 3 } = true := by
  decide +kernel

theorem row050_layer039_checked :
    coverLayerCheck row050.height row050.goods { lower := 1346901744025600, upper := 2693803488051200, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer039_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer040_checked :
    coverLayerCheck row050.height row050.goods { lower := 2693803488051200, upper := 5387606976102400, M := 3 } = true := by
  decide +kernel

theorem row050_layer041_checked :
    coverLayerCheck row050.height row050.goods { lower := 5387606976102400, upper := 10775213952204800, M := 3 } = true := by
  decide +kernel

theorem row050_layer042_checked :
    coverLayerCheck row050.height row050.goods { lower := 10775213952204800, upper := 21550427904409600, M := 3 } = true := by
  decide +kernel

theorem row050_layer043_checked :
    coverLayerCheck row050.height row050.goods { lower := 21550427904409600, upper := 43100855808819200, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer043_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer044_checked :
    coverLayerCheck row050.height row050.goods { lower := 43100855808819200, upper := 86201711617638400, M := 3 } = true := by
  decide +kernel

theorem row050_layer045_checked :
    coverLayerCheck row050.height row050.goods { lower := 86201711617638400, upper := 172403423235276800, M := 2 } = true := by
  decide +kernel

theorem row050_layer046_checked :
    coverLayerCheck row050.height row050.goods { lower := 172403423235276800, upper := 344806846470553600, M := 2 } = true := by
  decide +kernel

theorem row050_layer047_checked :
    coverLayerCheck row050.height row050.goods { lower := 344806846470553600, upper := 689613692941107200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer048_checked :
    coverLayerCheck row050.height row050.goods { lower := 689613692941107200, upper := 1379227385882214400, M := 2 } = true := by
  decide +kernel

theorem row050_layer049_checked :
    coverLayerCheck row050.height row050.goods { lower := 1379227385882214400, upper := 2758454771764428800, M := 2 } = true := by
  decide +kernel

theorem row050_layer050_checked :
    coverLayerCheck row050.height row050.goods { lower := 2758454771764428800, upper := 5516909543528857600, M := 2 } = true := by
  decide +kernel

theorem row050_layer051_checked :
    coverLayerCheck row050.height row050.goods { lower := 5516909543528857600, upper := 11033819087057715200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer051_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer052_checked :
    coverLayerCheck row050.height row050.goods { lower := 11033819087057715200, upper := 22067638174115430400, M := 2 } = true := by
  decide +kernel

theorem row050_layer053_checked :
    coverLayerCheck row050.height row050.goods { lower := 22067638174115430400, upper := 44135276348230860800, M := 2 } = true := by
  decide +kernel

theorem row050_layer054_checked :
    coverLayerCheck row050.height row050.goods { lower := 44135276348230860800, upper := 88270552696461721600, M := 2 } = true := by
  decide +kernel

theorem row050_layer055_checked :
    coverLayerCheck row050.height row050.goods { lower := 88270552696461721600, upper := 100000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer055_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layers_checked :
    row050.layers.all (coverLayerCheck row050.height row050.goods) = true := by
  change row050_layers.all (coverLayerCheck row050.height row050.goods) = true
  simp only [row050_layers, List.all_cons, List.all_nil,
    row050_layer000_checked,
    row050_layer001_checked,
    row050_layer002_checked,
    row050_layer003_checked,
    row050_layer004_checked,
    row050_layer005_checked,
    row050_layer006_checked,
    row050_layer007_checked,
    row050_layer008_checked,
    row050_layer009_checked,
    row050_layer010_checked,
    row050_layer011_checked,
    row050_layer012_checked,
    row050_layer013_checked,
    row050_layer014_checked,
    row050_layer015_checked,
    row050_layer016_checked,
    row050_layer017_checked,
    row050_layer018_checked,
    row050_layer019_checked,
    row050_layer020_checked,
    row050_layer021_checked,
    row050_layer022_checked,
    row050_layer023_checked,
    row050_layer024_checked,
    row050_layer025_checked,
    row050_layer026_checked,
    row050_layer027_checked,
    row050_layer028_checked,
    row050_layer029_checked,
    row050_layer030_checked,
    row050_layer031_checked,
    row050_layer032_checked,
    row050_layer033_checked,
    row050_layer034_checked,
    row050_layer035_checked,
    row050_layer036_checked,
    row050_layer037_checked,
    row050_layer038_checked,
    row050_layer039_checked,
    row050_layer040_checked,
    row050_layer041_checked,
    row050_layer042_checked,
    row050_layer043_checked,
    row050_layer044_checked,
    row050_layer045_checked,
    row050_layer046_checked,
    row050_layer047_checked,
    row050_layer048_checked,
    row050_layer049_checked,
    row050_layer050_checked,
    row050_layer051_checked,
    row050_layer052_checked,
    row050_layer053_checked,
    row050_layer054_checked,
    row050_layer055_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_checked : finiteCoverRowCheck row050 = true := by
  simp only [finiteCoverRowCheck, row050_registered, row050_goods_checked,
    row050_small_checked, row050_layerCover_checked, row050_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_checked
