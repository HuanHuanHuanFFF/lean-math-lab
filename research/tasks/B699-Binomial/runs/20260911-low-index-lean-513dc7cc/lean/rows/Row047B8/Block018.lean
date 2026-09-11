import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer008_pairs004 :
    row047_layer008_block004.all (fun I => row047_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer008_pairs005 :
    row047_layer008_block005.all (fun I => row047_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer008_chunks_eq : row047_layer008_chunks.flatten = row047_layer008_intervals := by
  rfl

theorem row047_layer008_pairs : pairCoverCheck row047_layer008_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer008_chunks_eq
  intro block hblock
  simp only [row047_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row047_layer008_pairs000
  · exact row047_layer008_pairs001
  · exact row047_layer008_pairs002
  · exact row047_layer008_pairs003
  · exact row047_layer008_pairs004
  · exact row047_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer008_checked :
    coverLayerCheck row047.height row047.goods { lower := 553472, upper := 1106944, M := 20 } = true := by
  exact coverLayerCheck_of_parts row047_layer008_arithmetic row047_layer008_enumeration row047_bounds_eq row047_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer009_intervals : List ColouredInterval :=
  [(2, 1114112, 1114158), (2, 1179648, 1179694), (2, 1179648, 1179694), (2, 1310720, 1310766), (2, 1441792, 1441838), (2, 1572864, 1572910), (2, 1703936, 1703982), (2, 1835008, 1835054), (2, 1966080, 1966126), (2, 2097152, 2097198), (2, 1310720, 1310766), (2, 1572864, 1572910), (2, 1835008, 1835054), (2, 2097152, 2097198), (2, 1572864, 1572910), (2, 2097152, 2097198), (2, 2097152, 2097198), (2, 2097152, 2097198), (3, 1240029, 1240075), (3, 1417176, 1417222), (3, 1594323, 1594369), (3, 1771470, 1771516), (3, 1948617, 1948663), (3, 2125764, 2125810), (3, 1594323, 1594369), (3, 2125764, 2125810), (3, 1594323, 1594369), (5, 1171875, 1171921), (5, 1250000, 1250046), (5, 1328125, 1328171), (5, 1406250, 1406296), (5, 1171875, 1171921), (5, 1562500, 1562546), (5, 1953125, 1953171), (5, 1953125, 1953171), (7, 1176490, 1176536), (7, 1294139, 1294185), (7, 1411788, 1411834), (7, 1529437, 1529483), (7, 1647086, 1647132), (7, 1764735, 1764781), (7, 1882384, 1882430), (7, 2000033, 2000079), (7, 2117682, 2117728), (7, 1647086, 1647132), (11, 1127357, 1127403), (11, 1288408, 1288454), (11, 1449459, 1449505), (11, 1610510, 1610556), (11, 1771561, 1771607), (11, 1932612, 1932658), (11, 2093663, 2093709), (11, 1771561, 1771607), (13, 1113879, 1113925), (13, 1485172, 1485218), (13, 1856465, 1856511), (17, 1169294, 1169340), (17, 1252815, 1252861), (17, 1336336, 1336382), (17, 1419857, 1419903), (17, 1503378, 1503424), (17, 1419857, 1419903), (19, 1172889, 1172935), (19, 1303210, 1303256), (19, 1433531, 1433577), (19, 1563852, 1563898), (19, 1694173, 1694219), (19, 1824494, 1824540), (19, 1954815, 1954861), (19, 2085136, 2085182), (23, 1119364, 1119410), (23, 1399205, 1399251), (23, 1679046, 1679092), (23, 1958887, 1958933), (29, 1414562, 1414608), (29, 2121843, 2121889), (31, 1847042, 1847088), (37, 1874161, 1874207), (41, 1171657, 1171703), (41, 1240578, 1240624), (43, 1113098, 1113144), (43, 1192605, 1192651), (43, 1272112, 1272158), (43, 1351619, 1351665), (43, 1431126, 1431172)]

def row047_layer009_block000 : List ColouredInterval :=
  [(2, 1114112, 1114158), (2, 1179648, 1179694), (2, 1179648, 1179694), (2, 1310720, 1310766), (2, 1441792, 1441838), (2, 1572864, 1572910), (2, 1703936, 1703982), (2, 1835008, 1835054), (2, 1966080, 1966126), (2, 2097152, 2097198), (2, 1310720, 1310766), (2, 1572864, 1572910), (2, 1835008, 1835054), (2, 2097152, 2097198), (2, 1572864, 1572910), (2, 2097152, 2097198)]

def row047_layer009_block001 : List ColouredInterval :=
  [(2, 2097152, 2097198), (2, 2097152, 2097198), (3, 1240029, 1240075), (3, 1417176, 1417222), (3, 1594323, 1594369), (3, 1771470, 1771516), (3, 1948617, 1948663), (3, 2125764, 2125810), (3, 1594323, 1594369), (3, 2125764, 2125810), (3, 1594323, 1594369), (5, 1171875, 1171921), (5, 1250000, 1250046), (5, 1328125, 1328171), (5, 1406250, 1406296), (5, 1171875, 1171921)]

def row047_layer009_block002 : List ColouredInterval :=
  [(5, 1562500, 1562546), (5, 1953125, 1953171), (5, 1953125, 1953171), (7, 1176490, 1176536), (7, 1294139, 1294185), (7, 1411788, 1411834), (7, 1529437, 1529483), (7, 1647086, 1647132), (7, 1764735, 1764781), (7, 1882384, 1882430), (7, 2000033, 2000079), (7, 2117682, 2117728), (7, 1647086, 1647132), (11, 1127357, 1127403), (11, 1288408, 1288454), (11, 1449459, 1449505)]

def row047_layer009_block003 : List ColouredInterval :=
  [(11, 1610510, 1610556), (11, 1771561, 1771607), (11, 1932612, 1932658), (11, 2093663, 2093709), (11, 1771561, 1771607), (13, 1113879, 1113925), (13, 1485172, 1485218), (13, 1856465, 1856511), (17, 1169294, 1169340), (17, 1252815, 1252861), (17, 1336336, 1336382), (17, 1419857, 1419903), (17, 1503378, 1503424), (17, 1419857, 1419903), (19, 1172889, 1172935), (19, 1303210, 1303256)]

def row047_layer009_block004 : List ColouredInterval :=
  [(19, 1433531, 1433577), (19, 1563852, 1563898), (19, 1694173, 1694219), (19, 1824494, 1824540), (19, 1954815, 1954861), (19, 2085136, 2085182), (23, 1119364, 1119410), (23, 1399205, 1399251), (23, 1679046, 1679092), (23, 1958887, 1958933), (29, 1414562, 1414608), (29, 2121843, 2121889), (31, 1847042, 1847088), (37, 1874161, 1874207), (41, 1171657, 1171703), (41, 1240578, 1240624)]

def row047_layer009_block005 : List ColouredInterval :=
  [(43, 1113098, 1113144), (43, 1192605, 1192651), (43, 1272112, 1272158), (43, 1351619, 1351665), (43, 1431126, 1431172)]

def row047_layer009_chunks : List (List ColouredInterval) :=
  [row047_layer009_block000, row047_layer009_block001, row047_layer009_block002, row047_layer009_block003, row047_layer009_block004, row047_layer009_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_arithmetic : LayerArithmeticValid row047.height { lower := 1106944, upper := 2213888, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_enumeration :
    activePowerIntervalList 47 18 1106944 2213888 = row047_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_pairs000 :
    row047_layer009_block000.all (fun I => row047_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs000
