import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block033
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_pairs001 :
    row048_layer018_block001.all (fun I => row048_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_pairs002 :
    row048_layer018_block002.all (fun I => row048_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_pairs003 :
    row048_layer018_block003.all (fun I => row048_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_pairs004 :
    row048_layer018_block004.all (fun I => row048_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_pairs005 :
    row048_layer018_block005.all (fun I => row048_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_chunks_eq : row048_layer018_chunks.flatten = row048_layer018_intervals := by
  rfl

theorem row048_layer018_pairs : pairCoverCheck row048_layer018_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer018_chunks_eq
  intro block hblock
  simp only [row048_layer018_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer018_pairs000
  · exact row048_layer018_pairs001
  · exact row048_layer018_pairs002
  · exact row048_layer018_pairs003
  · exact row048_layer018_pairs004
  · exact row048_layer018_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer018_checked :
    coverLayerCheck row048.height row048.goods { lower := 591396864, upper := 1182793728, M := 24 } = true := by
  exact coverLayerCheck_of_parts row048_layer018_arithmetic row048_layer018_enumeration row048_bounds_eq row048_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer018_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer019_intervals : List ColouredInterval :=
  [(2, 2147483648, 2147483695), (3, 1549681956, 1549682003), (3, 1937102445, 1937102492), (3, 2324522934, 2324522981), (3, 2324522934, 2324522981), (5, 1220703125, 1220703172), (5, 1464843750, 1464843797), (5, 1708984375, 1708984422), (5, 1953125000, 1953125047), (5, 2197265625, 2197265672), (5, 1220703125, 1220703172), (7, 1412376245, 1412376292), (7, 1694851494, 1694851541), (7, 1977326743, 1977326790), (7, 2259801992, 2259802039), (7, 1977326743, 1977326790), (11, 1286153286, 1286153333), (11, 1500512167, 1500512214), (11, 1714871048, 1714871095), (11, 1929229929, 1929229976), (11, 2143588810, 2143588857), (11, 2357947691, 2357947738), (11, 2357947691, 2357947738), (13, 1192221823, 1192221870), (13, 1254970340, 1254970387), (13, 1317718857, 1317718904), (13, 1380467374, 1380467421), (13, 1443215891, 1443215938), (13, 1505964408, 1505964455), (13, 1631461442, 1631461489), (17, 1231016019, 1231016066), (17, 1641354692, 1641354739), (17, 2051693365, 2051693412), (19, 1787743478, 1787743525), (23, 1184287112, 1184287159), (23, 1332323001, 1332323048), (23, 1480358890, 1480358937), (23, 1628394779, 1628394826), (23, 1776430668, 1776430715), (23, 1924466557, 1924466604), (23, 2072502446, 2072502493), (23, 2220538335, 2220538382), (29, 1189646642, 1189646689), (29, 1784469963, 1784470010), (31, 1775007362, 1775007409), (37, 1248191226, 1248191273), (37, 1317535183, 1317535230), (37, 1386879140, 1386879187), (37, 1456223097, 1456223144), (37, 1525567054, 1525567101), (37, 1594911011, 1594911058), (37, 1664254968, 1664255015), (41, 1274418211, 1274418258), (41, 1390274412, 1390274459), (41, 1506130613, 1506130660), (41, 1621986814, 1621986861), (41, 1737843015, 1737843062), (41, 1853699216, 1853699263), (41, 1969555417, 1969555464), (41, 2085411618, 2085411665), (41, 2201267819, 2201267866), (41, 2317124020, 2317124067), (43, 1323075987, 1323076034), (43, 1470084430, 1470084477), (43, 1617092873, 1617092920), (43, 1764101316, 1764101363), (43, 1911109759, 1911109806), (43, 2058118202, 2058118249), (43, 2205126645, 2205126692), (43, 2352135088, 2352135135), (47, 1376070042, 1376070089), (47, 1605415049, 1605415096), (47, 1834760056, 1834760103), (47, 2064105063, 2064105110), (47, 2293450070, 2293450117)]

def row048_layer019_block000 : List ColouredInterval :=
  [(2, 2147483648, 2147483695), (3, 1549681956, 1549682003), (3, 1937102445, 1937102492), (3, 2324522934, 2324522981), (3, 2324522934, 2324522981), (5, 1220703125, 1220703172), (5, 1464843750, 1464843797), (5, 1708984375, 1708984422), (5, 1953125000, 1953125047), (5, 2197265625, 2197265672), (5, 1220703125, 1220703172), (7, 1412376245, 1412376292), (7, 1694851494, 1694851541), (7, 1977326743, 1977326790), (7, 2259801992, 2259802039), (7, 1977326743, 1977326790)]

def row048_layer019_block001 : List ColouredInterval :=
  [(11, 1286153286, 1286153333), (11, 1500512167, 1500512214), (11, 1714871048, 1714871095), (11, 1929229929, 1929229976), (11, 2143588810, 2143588857), (11, 2357947691, 2357947738), (11, 2357947691, 2357947738), (13, 1192221823, 1192221870), (13, 1254970340, 1254970387), (13, 1317718857, 1317718904), (13, 1380467374, 1380467421), (13, 1443215891, 1443215938), (13, 1505964408, 1505964455), (13, 1631461442, 1631461489), (17, 1231016019, 1231016066), (17, 1641354692, 1641354739)]

def row048_layer019_block002 : List ColouredInterval :=
  [(17, 2051693365, 2051693412), (19, 1787743478, 1787743525), (23, 1184287112, 1184287159), (23, 1332323001, 1332323048), (23, 1480358890, 1480358937), (23, 1628394779, 1628394826), (23, 1776430668, 1776430715), (23, 1924466557, 1924466604), (23, 2072502446, 2072502493), (23, 2220538335, 2220538382), (29, 1189646642, 1189646689), (29, 1784469963, 1784470010), (31, 1775007362, 1775007409), (37, 1248191226, 1248191273), (37, 1317535183, 1317535230), (37, 1386879140, 1386879187)]

def row048_layer019_block003 : List ColouredInterval :=
  [(37, 1456223097, 1456223144), (37, 1525567054, 1525567101), (37, 1594911011, 1594911058), (37, 1664254968, 1664255015), (41, 1274418211, 1274418258), (41, 1390274412, 1390274459), (41, 1506130613, 1506130660), (41, 1621986814, 1621986861), (41, 1737843015, 1737843062), (41, 1853699216, 1853699263), (41, 1969555417, 1969555464), (41, 2085411618, 2085411665), (41, 2201267819, 2201267866), (41, 2317124020, 2317124067), (43, 1323075987, 1323076034), (43, 1470084430, 1470084477)]

def row048_layer019_block004 : List ColouredInterval :=
  [(43, 1617092873, 1617092920), (43, 1764101316, 1764101363), (43, 1911109759, 1911109806), (43, 2058118202, 2058118249), (43, 2205126645, 2205126692), (43, 2352135088, 2352135135), (47, 1376070042, 1376070089), (47, 1605415049, 1605415096), (47, 1834760056, 1834760103), (47, 2064105063, 2064105110), (47, 2293450070, 2293450117)]

def row048_layer019_chunks : List (List ColouredInterval) :=
  [row048_layer019_block000, row048_layer019_block001, row048_layer019_block002, row048_layer019_block003, row048_layer019_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer019_intervals
