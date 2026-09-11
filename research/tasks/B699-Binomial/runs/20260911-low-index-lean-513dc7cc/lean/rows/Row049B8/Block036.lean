import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block035
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs004 :
    row049_layer018_block004.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs005 :
    row049_layer018_block005.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_chunks_eq : row049_layer018_chunks.flatten = row049_layer018_intervals := by
  rfl

theorem row049_layer018_pairs : pairCoverCheck row049_layer018_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer018_chunks_eq
  intro block hblock
  simp only [row049_layer018_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer018_pairs000
  · exact row049_layer018_pairs001
  · exact row049_layer018_pairs002
  · exact row049_layer018_pairs003
  · exact row049_layer018_pairs004
  · exact row049_layer018_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_checked :
    coverLayerCheck row049.height row049.goods { lower := 616562688, upper := 1233125376, M := 17 } = true := by
  exact coverLayerCheck_of_parts row049_layer018_arithmetic row049_layer018_enumeration row049_bounds_eq row049_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer019_intervals : List ColouredInterval :=
  [(2, 1342177280, 1342177328), (2, 1476395008, 1476395056), (2, 1610612736, 1610612784), (2, 1744830464, 1744830512), (2, 1879048192, 1879048240), (2, 2013265920, 2013265968), (2, 2147483648, 2147483696), (2, 1342177280, 1342177328), (2, 1610612736, 1610612784), (2, 1879048192, 1879048240), (2, 2147483648, 2147483696), (2, 2415919104, 2415919152), (2, 1610612736, 1610612784), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (3, 1291401630, 1291401678), (3, 1420541793, 1420541841), (3, 1549681956, 1549682004), (3, 1678822119, 1678822167), (3, 1807962282, 1807962330), (3, 1937102445, 1937102493), (3, 2066242608, 2066242656), (3, 1549681956, 1549682004), (3, 1937102445, 1937102493), (3, 2324522934, 2324522982), (3, 2324522934, 2324522982), (5, 1464843750, 1464843798), (5, 1708984375, 1708984423), (5, 1953125000, 1953125048), (5, 2197265625, 2197265673), (5, 2441406250, 2441406298), (5, 2441406250, 2441406298), (11, 1286153286, 1286153334), (11, 1500512167, 1500512215), (11, 1714871048, 1714871096), (11, 1929229929, 1929229977), (11, 2143588810, 2143588858), (11, 2357947691, 2357947739), (11, 2357947691, 2357947739), (13, 1631461442, 1631461490), (13, 2447192163, 2447192211), (17, 1641354692, 1641354740), (17, 2051693365, 2051693413), (17, 2462032038, 2462032086), (19, 1787743478, 1787743526), (23, 1332323001, 1332323049), (23, 1480358890, 1480358938), (23, 1628394779, 1628394827), (23, 1776430668, 1776430716), (23, 1924466557, 1924466605), (23, 2072502446, 2072502494), (23, 2220538335, 2220538383), (23, 2368574224, 2368574272), (29, 1784469963, 1784470011), (29, 2379293284, 2379293332), (31, 1775007362, 1775007410), (41, 1274418211, 1274418259), (41, 1390274412, 1390274460), (41, 1506130613, 1506130661), (41, 1621986814, 1621986862), (41, 1737843015, 1737843063), (41, 1853699216, 1853699264), (43, 1323075987, 1323076035), (43, 1470084430, 1470084478), (43, 1617092873, 1617092921), (43, 1764101316, 1764101364), (43, 1911109759, 1911109807), (43, 2058118202, 2058118250), (43, 2205126645, 2205126693), (43, 2352135088, 2352135136), (47, 1376070042, 1376070090), (47, 1605415049, 1605415097), (47, 1834760056, 1834760104), (47, 2064105063, 2064105111), (47, 2293450070, 2293450118)]

def row049_layer019_block000 : List ColouredInterval :=
  [(2, 1342177280, 1342177328), (2, 1476395008, 1476395056), (2, 1610612736, 1610612784), (2, 1744830464, 1744830512), (2, 1879048192, 1879048240), (2, 2013265920, 2013265968), (2, 2147483648, 2147483696), (2, 1342177280, 1342177328), (2, 1610612736, 1610612784), (2, 1879048192, 1879048240), (2, 2147483648, 2147483696), (2, 2415919104, 2415919152), (2, 1610612736, 1610612784), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696)]

def row049_layer019_block001 : List ColouredInterval :=
  [(3, 1291401630, 1291401678), (3, 1420541793, 1420541841), (3, 1549681956, 1549682004), (3, 1678822119, 1678822167), (3, 1807962282, 1807962330), (3, 1937102445, 1937102493), (3, 2066242608, 2066242656), (3, 1549681956, 1549682004), (3, 1937102445, 1937102493), (3, 2324522934, 2324522982), (3, 2324522934, 2324522982), (5, 1464843750, 1464843798), (5, 1708984375, 1708984423), (5, 1953125000, 1953125048), (5, 2197265625, 2197265673), (5, 2441406250, 2441406298)]

def row049_layer019_block002 : List ColouredInterval :=
  [(5, 2441406250, 2441406298), (11, 1286153286, 1286153334), (11, 1500512167, 1500512215), (11, 1714871048, 1714871096), (11, 1929229929, 1929229977), (11, 2143588810, 2143588858), (11, 2357947691, 2357947739), (11, 2357947691, 2357947739), (13, 1631461442, 1631461490), (13, 2447192163, 2447192211), (17, 1641354692, 1641354740), (17, 2051693365, 2051693413), (17, 2462032038, 2462032086), (19, 1787743478, 1787743526), (23, 1332323001, 1332323049), (23, 1480358890, 1480358938)]

def row049_layer019_block003 : List ColouredInterval :=
  [(23, 1628394779, 1628394827), (23, 1776430668, 1776430716), (23, 1924466557, 1924466605), (23, 2072502446, 2072502494), (23, 2220538335, 2220538383), (23, 2368574224, 2368574272), (29, 1784469963, 1784470011), (29, 2379293284, 2379293332), (31, 1775007362, 1775007410), (41, 1274418211, 1274418259), (41, 1390274412, 1390274460), (41, 1506130613, 1506130661), (41, 1621986814, 1621986862), (41, 1737843015, 1737843063), (41, 1853699216, 1853699264), (43, 1323075987, 1323076035)]

def row049_layer019_block004 : List ColouredInterval :=
  [(43, 1470084430, 1470084478), (43, 1617092873, 1617092921), (43, 1764101316, 1764101364), (43, 1911109759, 1911109807), (43, 2058118202, 2058118250), (43, 2205126645, 2205126693), (43, 2352135088, 2352135136), (47, 1376070042, 1376070090), (47, 1605415049, 1605415097), (47, 1834760056, 1834760104), (47, 2064105063, 2064105111), (47, 2293450070, 2293450118)]

def row049_layer019_chunks : List (List ColouredInterval) :=
  [row049_layer019_block000, row049_layer019_block001, row049_layer019_block002, row049_layer019_block003, row049_layer019_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_arithmetic : LayerArithmeticValid row049.height { lower := 1233125376, upper := 2466250752, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_enumeration :
    activePowerIntervalList 49 16 1233125376 2466250752 = row049_layer019_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs000 :
    row049_layer019_block000.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs000
