import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer008_chunks_eq : row046_layer008_chunks.flatten = row046_layer008_intervals := by
  rfl

theorem row046_layer008_pairs : pairCoverCheck row046_layer008_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer008_chunks_eq
  intro block hblock
  simp only [row046_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer008_pairs000
  · exact row046_layer008_pairs001
  · exact row046_layer008_pairs002
  · exact row046_layer008_pairs003
  · exact row046_layer008_pairs004
  · exact row046_layer008_pairs005
  · exact row046_layer008_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer008_checked :
    coverLayerCheck row046.height row046.goods { lower := 529920, upper := 1059840, M := 25 } = true := by
  exact coverLayerCheck_of_parts row046_layer008_arithmetic row046_layer008_enumeration row046_bounds_eq row046_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer009_intervals : List ColouredInterval :=
  [(2, 1179648, 1179693), (2, 1310720, 1310765), (2, 1441792, 1441837), (2, 1310720, 1310765), (2, 1572864, 1572909), (2, 1835008, 1835053), (2, 2097152, 2097197), (2, 1572864, 1572909), (2, 2097152, 2097197), (2, 2097152, 2097197), (2, 2097152, 2097197), (3, 1062882, 1062927), (3, 1121931, 1121976), (3, 1180980, 1181025), (3, 1240029, 1240074), (3, 1299078, 1299123), (3, 1358127, 1358172), (3, 1062882, 1062927), (3, 1240029, 1240074), (3, 1417176, 1417221), (3, 1594323, 1594368), (3, 1771470, 1771515), (3, 1948617, 1948662), (3, 1062882, 1062927), (3, 1594323, 1594368), (3, 1594323, 1594368), (5, 1093750, 1093795), (5, 1171875, 1171920), (5, 1250000, 1250045), (5, 1328125, 1328170), (5, 1406250, 1406295), (5, 1484375, 1484420), (5, 1562500, 1562545), (5, 1640625, 1640670), (5, 1718750, 1718795), (5, 1796875, 1796920), (5, 1171875, 1171920), (5, 1562500, 1562545), (5, 1953125, 1953170), (5, 1953125, 1953170), (7, 1176490, 1176535), (7, 1294139, 1294184), (7, 1411788, 1411833), (7, 1529437, 1529482), (7, 1647086, 1647131), (7, 1764735, 1764780), (7, 1882384, 1882429), (7, 2000033, 2000078), (7, 2117682, 2117727), (7, 1647086, 1647131), (11, 1127357, 1127402), (11, 1288408, 1288453), (11, 1449459, 1449504), (11, 1610510, 1610555), (11, 1771561, 1771606), (11, 1932612, 1932657), (11, 2093663, 2093708), (11, 1771561, 1771606), (13, 1113879, 1113924), (13, 1485172, 1485217), (13, 1856465, 1856510), (17, 1085773, 1085818), (17, 1169294, 1169339), (17, 1252815, 1252860), (17, 1336336, 1336381), (17, 1419857, 1419902), (17, 1503378, 1503423), (17, 1586899, 1586944), (17, 1670420, 1670465), (17, 1753941, 1753986), (17, 1837462, 1837507), (17, 1920983, 1921028), (17, 1419857, 1419902), (19, 1172889, 1172934), (19, 1303210, 1303255), (19, 1433531, 1433576), (19, 1563852, 1563897), (19, 1694173, 1694218), (19, 1824494, 1824539), (19, 1954815, 1954860), (19, 2085136, 2085181), (29, 1414562, 1414607), (31, 1847042, 1847087), (37, 1063713, 1063758), (37, 1114366, 1114411), (37, 1165019, 1165064), (37, 1874161, 1874206), (41, 1102736, 1102781), (41, 1171657, 1171702), (41, 1240578, 1240623), (41, 1309499, 1309544), (41, 1378420, 1378465), (41, 1447341, 1447386), (41, 1516262, 1516307), (41, 1585183, 1585228), (43, 1113098, 1113143), (43, 1192605, 1192650), (43, 1272112, 1272157), (43, 1351619, 1351664), (43, 1431126, 1431171), (43, 1510633, 1510678), (43, 1590140, 1590185), (43, 1669647, 1669692), (43, 1749154, 1749199), (43, 1828661, 1828706)]

def row046_layer009_block000 : List ColouredInterval :=
  [(2, 1179648, 1179693), (2, 1310720, 1310765), (2, 1441792, 1441837), (2, 1310720, 1310765), (2, 1572864, 1572909), (2, 1835008, 1835053), (2, 2097152, 2097197), (2, 1572864, 1572909), (2, 2097152, 2097197), (2, 2097152, 2097197), (2, 2097152, 2097197), (3, 1062882, 1062927), (3, 1121931, 1121976), (3, 1180980, 1181025), (3, 1240029, 1240074), (3, 1299078, 1299123)]

def row046_layer009_block001 : List ColouredInterval :=
  [(3, 1358127, 1358172), (3, 1062882, 1062927), (3, 1240029, 1240074), (3, 1417176, 1417221), (3, 1594323, 1594368), (3, 1771470, 1771515), (3, 1948617, 1948662), (3, 1062882, 1062927), (3, 1594323, 1594368), (3, 1594323, 1594368), (5, 1093750, 1093795), (5, 1171875, 1171920), (5, 1250000, 1250045), (5, 1328125, 1328170), (5, 1406250, 1406295), (5, 1484375, 1484420)]

def row046_layer009_block002 : List ColouredInterval :=
  [(5, 1562500, 1562545), (5, 1640625, 1640670), (5, 1718750, 1718795), (5, 1796875, 1796920), (5, 1171875, 1171920), (5, 1562500, 1562545), (5, 1953125, 1953170), (5, 1953125, 1953170), (7, 1176490, 1176535), (7, 1294139, 1294184), (7, 1411788, 1411833), (7, 1529437, 1529482), (7, 1647086, 1647131), (7, 1764735, 1764780), (7, 1882384, 1882429), (7, 2000033, 2000078)]

def row046_layer009_block003 : List ColouredInterval :=
  [(7, 2117682, 2117727), (7, 1647086, 1647131), (11, 1127357, 1127402), (11, 1288408, 1288453), (11, 1449459, 1449504), (11, 1610510, 1610555), (11, 1771561, 1771606), (11, 1932612, 1932657), (11, 2093663, 2093708), (11, 1771561, 1771606), (13, 1113879, 1113924), (13, 1485172, 1485217), (13, 1856465, 1856510), (17, 1085773, 1085818), (17, 1169294, 1169339), (17, 1252815, 1252860)]

def row046_layer009_block004 : List ColouredInterval :=
  [(17, 1336336, 1336381), (17, 1419857, 1419902), (17, 1503378, 1503423), (17, 1586899, 1586944), (17, 1670420, 1670465), (17, 1753941, 1753986), (17, 1837462, 1837507), (17, 1920983, 1921028), (17, 1419857, 1419902), (19, 1172889, 1172934), (19, 1303210, 1303255), (19, 1433531, 1433576), (19, 1563852, 1563897), (19, 1694173, 1694218), (19, 1824494, 1824539), (19, 1954815, 1954860)]

def row046_layer009_block005 : List ColouredInterval :=
  [(19, 2085136, 2085181), (29, 1414562, 1414607), (31, 1847042, 1847087), (37, 1063713, 1063758), (37, 1114366, 1114411), (37, 1165019, 1165064), (37, 1874161, 1874206), (41, 1102736, 1102781), (41, 1171657, 1171702), (41, 1240578, 1240623), (41, 1309499, 1309544), (41, 1378420, 1378465), (41, 1447341, 1447386), (41, 1516262, 1516307), (41, 1585183, 1585228), (43, 1113098, 1113143)]

def row046_layer009_block006 : List ColouredInterval :=
  [(43, 1192605, 1192650), (43, 1272112, 1272157), (43, 1351619, 1351664), (43, 1431126, 1431171), (43, 1510633, 1510678), (43, 1590140, 1590185), (43, 1669647, 1669692), (43, 1749154, 1749199), (43, 1828661, 1828706)]

def row046_layer009_chunks : List (List ColouredInterval) :=
  [row046_layer009_block000, row046_layer009_block001, row046_layer009_block002, row046_layer009_block003, row046_layer009_block004, row046_layer009_block005, row046_layer009_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_arithmetic : LayerArithmeticValid row046.height { lower := 1059840, upper := 2119680, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_enumeration :
    activePowerIntervalList 46 23 1059840 2119680 = row046_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs000 :
    row046_layer009_block000.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs001 :
    row046_layer009_block001.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs002 :
    row046_layer009_block002.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs002
