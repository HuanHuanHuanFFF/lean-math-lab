import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054B64.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054B64.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_chunks_eq : row054_layer008_chunks.flatten = row054_layer008_intervals := by
  rfl

theorem row054_layer008_pairs : pairCoverCheck row054_layer008_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer008_chunks_eq
  intro block hblock
  simp only [row054_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer008_pairs000
  · exact row054_layer008_pairs001
  · exact row054_layer008_pairs002
  · exact row054_layer008_pairs003
  · exact row054_layer008_pairs004
  · exact row054_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_checked :
    coverLayerCheck row054.height row054.goods { lower := 732672, upper := 1465344, M := 20 } = true := by
  exact coverLayerCheck_of_parts row054_layer008_arithmetic row054_layer008_enumeration row054_bounds_eq row054_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer009_intervals : List ColouredInterval :=
  [(2, 1572864, 1572917), (2, 1835008, 1835061), (2, 2097152, 2097205), (2, 2359296, 2359349), (2, 1572864, 1572917), (2, 2097152, 2097205), (2, 2621440, 2621493), (2, 2097152, 2097205), (2, 2097152, 2097205), (5, 1562500, 1562553), (5, 1953125, 1953178), (5, 2343750, 2343803), (5, 2734375, 2734428), (5, 1953125, 1953178), (7, 1529437, 1529490), (7, 1647086, 1647139), (7, 1764735, 1764788), (7, 1882384, 1882437), (7, 2000033, 2000086), (7, 2117682, 2117735), (7, 1647086, 1647139), (7, 2470629, 2470682), (11, 1610510, 1610563), (11, 1771561, 1771614), (11, 1932612, 1932665), (11, 2093663, 2093716), (11, 2254714, 2254767), (11, 2415765, 2415818), (11, 2576816, 2576869), (11, 2737867, 2737920), (11, 2898918, 2898971), (11, 1771561, 1771614), (13, 1485172, 1485225), (13, 1856465, 1856518), (13, 2227758, 2227811), (13, 2599051, 2599104), (17, 1503378, 1503431), (17, 2839714, 2839767), (19, 1563852, 1563905), (19, 1694173, 1694226), (19, 1824494, 1824547), (19, 1954815, 1954868), (19, 2085136, 2085189), (19, 2215457, 2215510), (19, 2345778, 2345831), (19, 2476099, 2476152), (23, 1679046, 1679099), (23, 1958887, 1958940), (23, 2238728, 2238781), (23, 2518569, 2518622), (23, 2798410, 2798463), (29, 2121843, 2121896), (29, 2829124, 2829177), (31, 1847042, 1847095), (31, 2770563, 2770616), (37, 1874161, 1874214), (41, 2825761, 2825814), (47, 1557345, 1557398), (47, 1661168, 1661221), (47, 1764991, 1765044), (47, 1868814, 1868867), (53, 1488770, 1488823), (53, 1637647, 1637700), (53, 1786524, 1786577), (53, 1935401, 1935454), (53, 2084278, 2084331), (53, 2233155, 2233208), (53, 2382032, 2382085), (53, 2530909, 2530962), (53, 2679786, 2679839)]

def row054_layer009_block000 : List ColouredInterval :=
  [(2, 1572864, 1572917), (2, 1835008, 1835061), (2, 2097152, 2097205), (2, 2359296, 2359349), (2, 1572864, 1572917), (2, 2097152, 2097205), (2, 2621440, 2621493), (2, 2097152, 2097205), (2, 2097152, 2097205), (5, 1562500, 1562553), (5, 1953125, 1953178), (5, 2343750, 2343803), (5, 2734375, 2734428), (5, 1953125, 1953178), (7, 1529437, 1529490), (7, 1647086, 1647139)]

def row054_layer009_block001 : List ColouredInterval :=
  [(7, 1764735, 1764788), (7, 1882384, 1882437), (7, 2000033, 2000086), (7, 2117682, 2117735), (7, 1647086, 1647139), (7, 2470629, 2470682), (11, 1610510, 1610563), (11, 1771561, 1771614), (11, 1932612, 1932665), (11, 2093663, 2093716), (11, 2254714, 2254767), (11, 2415765, 2415818), (11, 2576816, 2576869), (11, 2737867, 2737920), (11, 2898918, 2898971), (11, 1771561, 1771614)]

def row054_layer009_block002 : List ColouredInterval :=
  [(13, 1485172, 1485225), (13, 1856465, 1856518), (13, 2227758, 2227811), (13, 2599051, 2599104), (17, 1503378, 1503431), (17, 2839714, 2839767), (19, 1563852, 1563905), (19, 1694173, 1694226), (19, 1824494, 1824547), (19, 1954815, 1954868), (19, 2085136, 2085189), (19, 2215457, 2215510), (19, 2345778, 2345831), (19, 2476099, 2476152), (23, 1679046, 1679099), (23, 1958887, 1958940)]

def row054_layer009_block003 : List ColouredInterval :=
  [(23, 2238728, 2238781), (23, 2518569, 2518622), (23, 2798410, 2798463), (29, 2121843, 2121896), (29, 2829124, 2829177), (31, 1847042, 1847095), (31, 2770563, 2770616), (37, 1874161, 1874214), (41, 2825761, 2825814), (47, 1557345, 1557398), (47, 1661168, 1661221), (47, 1764991, 1765044), (47, 1868814, 1868867), (53, 1488770, 1488823), (53, 1637647, 1637700), (53, 1786524, 1786577)]

def row054_layer009_block004 : List ColouredInterval :=
  [(53, 1935401, 1935454), (53, 2084278, 2084331), (53, 2233155, 2233208), (53, 2382032, 2382085), (53, 2530909, 2530962), (53, 2679786, 2679839)]

def row054_layer009_chunks : List (List ColouredInterval) :=
  [row054_layer009_block000, row054_layer009_block001, row054_layer009_block002, row054_layer009_block003, row054_layer009_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_arithmetic : LayerArithmeticValid row054.height { lower := 1465344, upper := 2930688, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_enumeration :
    activePowerIntervalList 54 18 1465344 2930688 = row054_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_pairs000 :
    row054_layer009_block000.all (fun I => row054_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_pairs001 :
    row054_layer009_block001.all (fun I => row054_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_pairs002 :
    row054_layer009_block002.all (fun I => row054_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_pairs003 :
    row054_layer009_block003.all (fun I => row054_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_pairs004 :
    row054_layer009_block004.all (fun I => row054_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_chunks_eq : row054_layer009_chunks.flatten = row054_layer009_intervals := by
  rfl

theorem row054_layer009_pairs : pairCoverCheck row054_layer009_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer009_chunks_eq
  intro block hblock
  simp only [row054_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row054_layer009_pairs000
  · exact row054_layer009_pairs001
  · exact row054_layer009_pairs002
  · exact row054_layer009_pairs003
  · exact row054_layer009_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer009_checked :
    coverLayerCheck row054.height row054.goods { lower := 1465344, upper := 2930688, M := 18 } = true := by
  exact coverLayerCheck_of_parts row054_layer009_arithmetic row054_layer009_enumeration row054_bounds_eq row054_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer010_checked :
    coverLayerCheck row054.height row054.goods { lower := 2930688, upper := 5861376, M := 17 } = true := by
  decide +kernel

theorem row054_layer011_checked :
    coverLayerCheck row054.height row054.goods { lower := 5861376, upper := 11722752, M := 16 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer012_checked :
    coverLayerCheck row054.height row054.goods { lower := 11722752, upper := 23445504, M := 15 } = true := by
  decide +kernel

theorem row054_layer013_checked :
    coverLayerCheck row054.height row054.goods { lower := 23445504, upper := 46891008, M := 14 } = true := by
  decide +kernel

theorem row054_layer014_checked :
    coverLayerCheck row054.height row054.goods { lower := 46891008, upper := 93782016, M := 13 } = true := by
  decide +kernel

theorem row054_layer015_checked :
    coverLayerCheck row054.height row054.goods { lower := 93782016, upper := 187564032, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer016_checked :
    coverLayerCheck row054.height row054.goods { lower := 187564032, upper := 375128064, M := 11 } = true := by
  decide +kernel

theorem row054_layer017_checked :
    coverLayerCheck row054.height row054.goods { lower := 375128064, upper := 750256128, M := 10 } = true := by
  decide +kernel

theorem row054_layer018_checked :
    coverLayerCheck row054.height row054.goods { lower := 750256128, upper := 1500512256, M := 9 } = true := by
  decide +kernel

theorem row054_layer019_checked :
    coverLayerCheck row054.height row054.goods { lower := 1500512256, upper := 3001024512, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer020_checked :
    coverLayerCheck row054.height row054.goods { lower := 3001024512, upper := 6002049024, M := 8 } = true := by
  decide +kernel

theorem row054_layer021_checked :
    coverLayerCheck row054.height row054.goods { lower := 6002049024, upper := 12004098048, M := 8 } = true := by
  decide +kernel

theorem row054_layer022_checked :
    coverLayerCheck row054.height row054.goods { lower := 12004098048, upper := 24008196096, M := 7 } = true := by
  decide +kernel

theorem row054_layer023_checked :
    coverLayerCheck row054.height row054.goods { lower := 24008196096, upper := 48016392192, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer024_checked :
    coverLayerCheck row054.height row054.goods { lower := 48016392192, upper := 96032784384, M := 6 } = true := by
  decide +kernel

theorem row054_layer025_checked :
    coverLayerCheck row054.height row054.goods { lower := 96032784384, upper := 192065568768, M := 6 } = true := by
  decide +kernel

theorem row054_layer026_checked :
    coverLayerCheck row054.height row054.goods { lower := 192065568768, upper := 384131137536, M := 5 } = true := by
  decide +kernel

theorem row054_layer027_checked :
    coverLayerCheck row054.height row054.goods { lower := 384131137536, upper := 768262275072, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer028_checked :
    coverLayerCheck row054.height row054.goods { lower := 768262275072, upper := 1536524550144, M := 5 } = true := by
  decide +kernel

theorem row054_layer029_checked :
    coverLayerCheck row054.height row054.goods { lower := 1536524550144, upper := 3073049100288, M := 4 } = true := by
  decide +kernel

theorem row054_layer030_checked :
    coverLayerCheck row054.height row054.goods { lower := 3073049100288, upper := 6146098200576, M := 4 } = true := by
  decide +kernel

theorem row054_layer031_checked :
    coverLayerCheck row054.height row054.goods { lower := 6146098200576, upper := 12292196401152, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer032_checked :
    coverLayerCheck row054.height row054.goods { lower := 12292196401152, upper := 24584392802304, M := 4 } = true := by
  decide +kernel

theorem row054_layer033_checked :
    coverLayerCheck row054.height row054.goods { lower := 24584392802304, upper := 49168785604608, M := 3 } = true := by
  decide +kernel

theorem row054_layer034_checked :
    coverLayerCheck row054.height row054.goods { lower := 49168785604608, upper := 98337571209216, M := 3 } = true := by
  decide +kernel

theorem row054_layer035_checked :
    coverLayerCheck row054.height row054.goods { lower := 98337571209216, upper := 196675142418432, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer036_checked :
    coverLayerCheck row054.height row054.goods { lower := 196675142418432, upper := 393350284836864, M := 3 } = true := by
  decide +kernel

theorem row054_layer037_checked :
    coverLayerCheck row054.height row054.goods { lower := 393350284836864, upper := 786700569673728, M := 3 } = true := by
  decide +kernel

theorem row054_layer038_checked :
    coverLayerCheck row054.height row054.goods { lower := 786700569673728, upper := 1573401139347456, M := 2 } = true := by
  decide +kernel

theorem row054_layer039_checked :
    coverLayerCheck row054.height row054.goods { lower := 1573401139347456, upper := 3146802278694912, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer039_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer040_checked :
    coverLayerCheck row054.height row054.goods { lower := 3146802278694912, upper := 6293604557389824, M := 2 } = true := by
  decide +kernel

theorem row054_layer041_checked :
    coverLayerCheck row054.height row054.goods { lower := 6293604557389824, upper := 12587209114779648, M := 2 } = true := by
  decide +kernel

theorem row054_layer042_checked :
    coverLayerCheck row054.height row054.goods { lower := 12587209114779648, upper := 25174418229559296, M := 2 } = true := by
  decide +kernel

theorem row054_layer043_checked :
    coverLayerCheck row054.height row054.goods { lower := 25174418229559296, upper := 50348836459118592, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer043_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer044_checked :
    coverLayerCheck row054.height row054.goods { lower := 50348836459118592, upper := 100697672918237184, M := 2 } = true := by
  decide +kernel

theorem row054_layer045_checked :
    coverLayerCheck row054.height row054.goods { lower := 100697672918237184, upper := 201395345836474368, M := 2 } = true := by
  decide +kernel

theorem row054_layer046_checked :
    coverLayerCheck row054.height row054.goods { lower := 201395345836474368, upper := 402790691672948736, M := 2 } = true := by
  decide +kernel

theorem row054_layer047_checked :
    coverLayerCheck row054.height row054.goods { lower := 402790691672948736, upper := 805581383345897472, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer048_checked :
    coverLayerCheck row054.height row054.goods { lower := 805581383345897472, upper := 1000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer048_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layers_checked :
    row054.layers.all (coverLayerCheck row054.height row054.goods) = true := by
  change row054_layers.all (coverLayerCheck row054.height row054.goods) = true
  simp only [row054_layers, List.all_cons, List.all_nil,
    row054_layer000_checked,
    row054_layer001_checked,
    row054_layer002_checked,
    row054_layer003_checked,
    row054_layer004_checked,
    row054_layer005_checked,
    row054_layer006_checked,
    row054_layer007_checked,
    row054_layer008_checked,
    row054_layer009_checked,
    row054_layer010_checked,
    row054_layer011_checked,
    row054_layer012_checked,
    row054_layer013_checked,
    row054_layer014_checked,
    row054_layer015_checked,
    row054_layer016_checked,
    row054_layer017_checked,
    row054_layer018_checked,
    row054_layer019_checked,
    row054_layer020_checked,
    row054_layer021_checked,
    row054_layer022_checked,
    row054_layer023_checked,
    row054_layer024_checked,
    row054_layer025_checked,
    row054_layer026_checked,
    row054_layer027_checked,
    row054_layer028_checked,
    row054_layer029_checked,
    row054_layer030_checked,
    row054_layer031_checked,
    row054_layer032_checked,
    row054_layer033_checked,
    row054_layer034_checked,
    row054_layer035_checked,
    row054_layer036_checked,
    row054_layer037_checked,
    row054_layer038_checked,
    row054_layer039_checked,
    row054_layer040_checked,
    row054_layer041_checked,
    row054_layer042_checked,
    row054_layer043_checked,
    row054_layer044_checked,
    row054_layer045_checked,
    row054_layer046_checked,
    row054_layer047_checked,
    row054_layer048_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_checked : finiteCoverRowCheck row054 = true := by
  simp only [finiteCoverRowCheck, row054_registered, row054_goods_checked,
    row054_small_checked, row054_layerCover_checked, row054_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i054 :
    ∀ n j : ℕ, 1 ≤ 54 ∧ 54 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 54 ≤ p ∧ p ∣ Nat.choose n 54 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row054_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i054
