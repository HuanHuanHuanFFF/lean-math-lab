import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_chunks_eq : row080_layer000_chunks.flatten = row080_layer000_intervals := by
  rfl

theorem row080_layer000_pairs : pairCoverCheck row080_layer000_intervals row080_bounds = true := by
  apply pairCoverCheck_of_chunks row080_layer000_chunks_eq
  intro block hblock
  simp only [row080_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row080_layer000_pairs000
  · exact row080_layer000_pairs001
  · exact row080_layer000_pairs002
  · exact row080_layer000_pairs003
  · exact row080_layer000_pairs004
  · exact row080_layer000_pairs005
  · exact row080_layer000_pairs006
  · exact row080_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer000_checked :
    coverLayerCheck row080.height row080.goods { lower := 6320, upper := 12640, M := 31 } = true := by
  exact coverLayerCheck_of_parts row080_layer000_arithmetic row080_layer000_enumeration row080_bounds_eq row080_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16463), (3, 13122, 13201), (3, 13851, 13930), (3, 14580, 14659), (3, 15309, 15388), (3, 16038, 16117), (3, 16767, 16846), (3, 17496, 17575), (3, 18225, 18304), (3, 18954, 19033), (3, 19683, 19762), (3, 13122, 13201), (3, 15309, 15388), (3, 17496, 17575), (3, 19683, 19762), (3, 21870, 21949), (3, 24057, 24136), (3, 13122, 13201), (3, 19683, 19762), (3, 19683, 19762), (5, 15625, 15704), (5, 15625, 15704), (7, 14406, 14485), (7, 16807, 16886), (7, 19208, 19287), (7, 21609, 21688), (7, 24010, 24089), (7, 16807, 16886), (11, 13310, 13389), (11, 14641, 14720), (11, 15972, 16051), (11, 17303, 17382), (11, 18634, 18713), (11, 19965, 20044), (11, 21296, 21375), (11, 22627, 22706), (11, 23958, 24037), (11, 14641, 14720), (13, 13182, 13261), (13, 15379, 15458), (13, 17576, 17655), (13, 19773, 19852), (13, 21970, 22049), (13, 24167, 24246), (17, 14739, 14818), (17, 19652, 19731), (17, 24565, 24644), (19, 13718, 13797), (19, 20577, 20656), (23, 12696, 12775), (23, 13225, 13304), (23, 13754, 13833), (23, 14283, 14362), (23, 24334, 24413), (29, 12640, 12694), (29, 13456, 13535), (29, 14297, 14376), (29, 15138, 15217), (29, 15979, 16058), (29, 16820, 16899), (29, 17661, 17740), (29, 18502, 18581), (29, 19343, 19422), (29, 20184, 20263), (29, 21025, 21104), (29, 21866, 21945), (29, 22707, 22786), (29, 24389, 24468), (31, 13454, 13533), (31, 14415, 14494), (31, 15376, 15455), (31, 16337, 16416), (31, 17298, 17377), (31, 18259, 18338), (31, 19220, 19299), (31, 20181, 20260), (31, 21142, 21221), (31, 22103, 22182), (31, 23064, 23143), (31, 24025, 24104), (31, 24986, 25065), (37, 13690, 13769), (37, 15059, 15138), (37, 16428, 16507), (37, 17797, 17876), (37, 19166, 19245), (37, 20535, 20614), (37, 21904, 21983), (37, 23273, 23352), (37, 24642, 24721), (41, 13448, 13527), (41, 15129, 15208), (41, 16810, 16889), (41, 18491, 18570), (41, 20172, 20251), (41, 21853, 21932), (41, 23534, 23613), (41, 25215, 25279), (43, 12943, 13022), (43, 14792, 14871), (43, 16641, 16720), (43, 18490, 18569), (43, 20339, 20418), (43, 22188, 22267), (43, 24037, 24116), (47, 13254, 13333), (47, 15463, 15542), (47, 17672, 17751), (47, 19881, 19960), (47, 22090, 22169), (47, 24299, 24378), (53, 14045, 14124), (53, 16854, 16933), (53, 19663, 19742), (53, 22472, 22551), (59, 13924, 14003), (59, 17405, 17484), (59, 20886, 20965), (59, 24367, 24446), (61, 14884, 14963), (61, 18605, 18684), (61, 22326, 22405), (67, 13467, 13546), (67, 17956, 18035), (67, 22445, 22524), (71, 15123, 15202), (71, 20164, 20243), (71, 25205, 25279), (73, 15987, 16066), (73, 21316, 21395), (79, 18723, 18802), (79, 24964, 25043)]

def row080_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16463), (3, 13122, 13201), (3, 13851, 13930), (3, 14580, 14659), (3, 15309, 15388), (3, 16038, 16117), (3, 16767, 16846), (3, 17496, 17575), (3, 18225, 18304), (3, 18954, 19033), (3, 19683, 19762), (3, 13122, 13201), (3, 15309, 15388), (3, 17496, 17575), (3, 19683, 19762)]

def row080_layer001_block001 : List ColouredInterval :=
  [(3, 21870, 21949), (3, 24057, 24136), (3, 13122, 13201), (3, 19683, 19762), (3, 19683, 19762), (5, 15625, 15704), (5, 15625, 15704), (7, 14406, 14485), (7, 16807, 16886), (7, 19208, 19287), (7, 21609, 21688), (7, 24010, 24089), (7, 16807, 16886), (11, 13310, 13389), (11, 14641, 14720)]

def row080_layer001_block002 : List ColouredInterval :=
  [(11, 15972, 16051), (11, 17303, 17382), (11, 18634, 18713), (11, 19965, 20044), (11, 21296, 21375), (11, 22627, 22706), (11, 23958, 24037), (11, 14641, 14720), (13, 13182, 13261), (13, 15379, 15458), (13, 17576, 17655), (13, 19773, 19852), (13, 21970, 22049), (13, 24167, 24246), (17, 14739, 14818)]

def row080_layer001_block003 : List ColouredInterval :=
  [(17, 19652, 19731), (17, 24565, 24644), (19, 13718, 13797), (19, 20577, 20656), (23, 12696, 12775), (23, 13225, 13304), (23, 13754, 13833), (23, 14283, 14362), (23, 24334, 24413), (29, 12640, 12694), (29, 13456, 13535), (29, 14297, 14376), (29, 15138, 15217), (29, 15979, 16058), (29, 16820, 16899)]

def row080_layer001_block004 : List ColouredInterval :=
  [(29, 17661, 17740), (29, 18502, 18581), (29, 19343, 19422), (29, 20184, 20263), (29, 21025, 21104), (29, 21866, 21945), (29, 22707, 22786), (29, 24389, 24468), (31, 13454, 13533), (31, 14415, 14494), (31, 15376, 15455), (31, 16337, 16416), (31, 17298, 17377), (31, 18259, 18338), (31, 19220, 19299)]

def row080_layer001_block005 : List ColouredInterval :=
  [(31, 20181, 20260), (31, 21142, 21221), (31, 22103, 22182), (31, 23064, 23143), (31, 24025, 24104), (31, 24986, 25065), (37, 13690, 13769), (37, 15059, 15138), (37, 16428, 16507), (37, 17797, 17876), (37, 19166, 19245), (37, 20535, 20614), (37, 21904, 21983), (37, 23273, 23352), (37, 24642, 24721)]

def row080_layer001_block006 : List ColouredInterval :=
  [(41, 13448, 13527), (41, 15129, 15208), (41, 16810, 16889), (41, 18491, 18570), (41, 20172, 20251), (41, 21853, 21932), (41, 23534, 23613), (41, 25215, 25279), (43, 12943, 13022), (43, 14792, 14871), (43, 16641, 16720), (43, 18490, 18569), (43, 20339, 20418), (43, 22188, 22267), (43, 24037, 24116)]

def row080_layer001_block007 : List ColouredInterval :=
  [(47, 13254, 13333), (47, 15463, 15542), (47, 17672, 17751), (47, 19881, 19960), (47, 22090, 22169), (47, 24299, 24378), (53, 14045, 14124), (53, 16854, 16933), (53, 19663, 19742), (53, 22472, 22551), (59, 13924, 14003), (59, 17405, 17484), (59, 20886, 20965), (59, 24367, 24446), (61, 14884, 14963)]

def row080_layer001_block008 : List ColouredInterval :=
  [(61, 18605, 18684), (61, 22326, 22405), (67, 13467, 13546), (67, 17956, 18035), (67, 22445, 22524), (71, 15123, 15202), (71, 20164, 20243), (71, 25205, 25279), (73, 15987, 16066), (73, 21316, 21395), (79, 18723, 18802), (79, 24964, 25043)]

def row080_layer001_chunks : List (List ColouredInterval) :=
  [row080_layer001_block000, row080_layer001_block001, row080_layer001_block002, row080_layer001_block003, row080_layer001_block004, row080_layer001_block005, row080_layer001_block006, row080_layer001_block007, row080_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_arithmetic : LayerArithmeticValid row080.height { lower := 12640, upper := 25280, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_enumeration :
    activePowerIntervalList 80 27 12640 25280 = row080_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs000 :
    row080_layer001_block000.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs001 :
    row080_layer001_block001.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs002 :
    row080_layer001_block002.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs003 :
    row080_layer001_block003.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs004 :
    row080_layer001_block004.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs005 :
    row080_layer001_block005.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs006 :
    row080_layer001_block006.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs007 :
    row080_layer001_block007.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_pairs008 :
    row080_layer001_block008.all (fun I => row080_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_chunks_eq : row080_layer001_chunks.flatten = row080_layer001_intervals := by
  rfl

theorem row080_layer001_pairs : pairCoverCheck row080_layer001_intervals row080_bounds = true := by
  apply pairCoverCheck_of_chunks row080_layer001_chunks_eq
  intro block hblock
  simp only [row080_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row080_layer001_pairs000
  · exact row080_layer001_pairs001
  · exact row080_layer001_pairs002
  · exact row080_layer001_pairs003
  · exact row080_layer001_pairs004
  · exact row080_layer001_pairs005
  · exact row080_layer001_pairs006
  · exact row080_layer001_pairs007
  · exact row080_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer001_checked :
    coverLayerCheck row080.height row080.goods { lower := 12640, upper := 25280, M := 27 } = true := by
  exact coverLayerCheck_of_parts row080_layer001_arithmetic row080_layer001_enumeration row080_bounds_eq row080_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32847), (3, 26244, 26323), (3, 28431, 28510), (3, 30618, 30697), (3, 32805, 32884), (3, 34992, 35071), (3, 37179, 37258), (3, 39366, 39445), (3, 41553, 41632), (3, 43740, 43819), (3, 45927, 46006), (3, 48114, 48193), (3, 50301, 50380), (3, 26244, 26323), (3, 32805, 32884), (3, 39366, 39445), (3, 45927, 46006), (3, 39366, 39445), (5, 31250, 31329), (5, 46875, 46954), (7, 26411, 26490), (7, 28812, 28891), (7, 31213, 31292), (7, 33614, 33693), (7, 36015, 36094), (7, 38416, 38495), (7, 40817, 40896), (7, 43218, 43297), (7, 45619, 45698), (7, 48020, 48099), (7, 50421, 50500), (7, 33614, 33693), (7, 50421, 50500), (11, 25289, 25368), (11, 26620, 26699), (11, 27951, 28030), (11, 29282, 29361), (11, 30613, 30692), (11, 31944, 32023), (11, 29282, 29361), (11, 43923, 44002), (13, 26364, 26443), (13, 28561, 28640), (13, 30758, 30837), (13, 32955, 33034), (13, 35152, 35231), (13, 37349, 37428), (13, 39546, 39625), (13, 41743, 41822), (13, 43940, 44019), (13, 46137, 46216), (13, 48334, 48413), (13, 50531, 50559), (13, 28561, 28640), (17, 29478, 29557), (17, 34391, 34470), (17, 39304, 39383), (17, 44217, 44296), (17, 49130, 49209), (19, 27436, 27515), (19, 34295, 34374), (19, 41154, 41233), (19, 48013, 48092), (23, 36501, 36580), (23, 48668, 48747), (29, 48778, 48857), (31, 29791, 29870), (37, 26011, 26090), (37, 27380, 27459), (37, 28749, 28828), (37, 30118, 30197), (37, 31487, 31566), (37, 32856, 32935), (41, 25280, 25294), (41, 26896, 26975), (41, 28577, 28656), (41, 30258, 30337), (41, 31939, 32018), (41, 33620, 33699), (41, 35301, 35380), (41, 36982, 37061), (41, 38663, 38742), (41, 40344, 40423), (43, 25886, 25965), (43, 27735, 27814), (43, 29584, 29663), (43, 31433, 31512), (43, 33282, 33361), (43, 35131, 35210), (43, 36980, 37059), (43, 38829, 38908), (43, 40678, 40757), (43, 42527, 42606), (43, 44376, 44455), (47, 26508, 26587), (47, 28717, 28796), (47, 30926, 31005), (47, 33135, 33214), (47, 35344, 35423), (47, 37553, 37632), (47, 39762, 39841), (47, 41971, 42050), (47, 44180, 44259), (47, 46389, 46468), (47, 48598, 48677), (53, 25281, 25360), (53, 28090, 28169), (53, 30899, 30978), (53, 33708, 33787), (53, 36517, 36596), (53, 39326, 39405), (53, 42135, 42214), (53, 44944, 45023), (53, 47753, 47832), (59, 27848, 27927), (59, 31329, 31408), (59, 34810, 34889), (59, 38291, 38370), (59, 41772, 41851), (59, 45253, 45332), (59, 48734, 48813), (61, 26047, 26126), (61, 29768, 29847), (61, 33489, 33568), (61, 37210, 37289), (61, 40931, 41010), (61, 44652, 44731), (61, 48373, 48452), (67, 26934, 27013), (67, 31423, 31502), (67, 35912, 35991), (67, 40401, 40480), (67, 44890, 44969), (67, 49379, 49458), (71, 25280, 25284), (71, 30246, 30325), (71, 35287, 35366), (71, 40328, 40407), (71, 45369, 45448), (71, 50410, 50489), (73, 26645, 26724), (73, 31974, 32053), (73, 37303, 37382), (73, 42632, 42711), (73, 47961, 48040), (79, 31205, 31284), (79, 37446, 37525), (79, 43687, 43766), (79, 49928, 50007)]

def row080_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32847), (3, 26244, 26323), (3, 28431, 28510), (3, 30618, 30697), (3, 32805, 32884), (3, 34992, 35071), (3, 37179, 37258), (3, 39366, 39445), (3, 41553, 41632), (3, 43740, 43819), (3, 45927, 46006), (3, 48114, 48193), (3, 50301, 50380)]

def row080_layer002_block001 : List ColouredInterval :=
  [(3, 26244, 26323), (3, 32805, 32884), (3, 39366, 39445), (3, 45927, 46006), (3, 39366, 39445), (5, 31250, 31329), (5, 46875, 46954), (7, 26411, 26490), (7, 28812, 28891), (7, 31213, 31292), (7, 33614, 33693), (7, 36015, 36094), (7, 38416, 38495)]

def row080_layer002_block002 : List ColouredInterval :=
  [(7, 40817, 40896), (7, 43218, 43297), (7, 45619, 45698), (7, 48020, 48099), (7, 50421, 50500), (7, 33614, 33693), (7, 50421, 50500), (11, 25289, 25368), (11, 26620, 26699), (11, 27951, 28030), (11, 29282, 29361), (11, 30613, 30692), (11, 31944, 32023)]

def row080_layer002_block003 : List ColouredInterval :=
  [(11, 29282, 29361), (11, 43923, 44002), (13, 26364, 26443), (13, 28561, 28640), (13, 30758, 30837), (13, 32955, 33034), (13, 35152, 35231), (13, 37349, 37428), (13, 39546, 39625), (13, 41743, 41822), (13, 43940, 44019), (13, 46137, 46216), (13, 48334, 48413)]

def row080_layer002_block004 : List ColouredInterval :=
  [(13, 50531, 50559), (13, 28561, 28640), (17, 29478, 29557), (17, 34391, 34470), (17, 39304, 39383), (17, 44217, 44296), (17, 49130, 49209), (19, 27436, 27515), (19, 34295, 34374), (19, 41154, 41233), (19, 48013, 48092), (23, 36501, 36580), (23, 48668, 48747)]

def row080_layer002_block005 : List ColouredInterval :=
  [(29, 48778, 48857), (31, 29791, 29870), (37, 26011, 26090), (37, 27380, 27459), (37, 28749, 28828), (37, 30118, 30197), (37, 31487, 31566), (37, 32856, 32935), (41, 25280, 25294), (41, 26896, 26975), (41, 28577, 28656), (41, 30258, 30337), (41, 31939, 32018)]

def row080_layer002_block006 : List ColouredInterval :=
  [(41, 33620, 33699), (41, 35301, 35380), (41, 36982, 37061), (41, 38663, 38742), (41, 40344, 40423), (43, 25886, 25965), (43, 27735, 27814), (43, 29584, 29663), (43, 31433, 31512), (43, 33282, 33361), (43, 35131, 35210), (43, 36980, 37059), (43, 38829, 38908)]

def row080_layer002_block007 : List ColouredInterval :=
  [(43, 40678, 40757), (43, 42527, 42606), (43, 44376, 44455), (47, 26508, 26587), (47, 28717, 28796), (47, 30926, 31005), (47, 33135, 33214), (47, 35344, 35423), (47, 37553, 37632), (47, 39762, 39841), (47, 41971, 42050), (47, 44180, 44259), (47, 46389, 46468)]

def row080_layer002_block008 : List ColouredInterval :=
  [(47, 48598, 48677), (53, 25281, 25360), (53, 28090, 28169), (53, 30899, 30978), (53, 33708, 33787), (53, 36517, 36596), (53, 39326, 39405), (53, 42135, 42214), (53, 44944, 45023), (53, 47753, 47832), (59, 27848, 27927), (59, 31329, 31408), (59, 34810, 34889)]

def row080_layer002_block009 : List ColouredInterval :=
  [(59, 38291, 38370), (59, 41772, 41851), (59, 45253, 45332), (59, 48734, 48813), (61, 26047, 26126), (61, 29768, 29847), (61, 33489, 33568), (61, 37210, 37289), (61, 40931, 41010), (61, 44652, 44731), (61, 48373, 48452), (67, 26934, 27013), (67, 31423, 31502)]

def row080_layer002_block010 : List ColouredInterval :=
  [(67, 35912, 35991), (67, 40401, 40480), (67, 44890, 44969), (67, 49379, 49458), (71, 25280, 25284), (71, 30246, 30325), (71, 35287, 35366), (71, 40328, 40407), (71, 45369, 45448), (71, 50410, 50489), (73, 26645, 26724), (73, 31974, 32053), (73, 37303, 37382)]

def row080_layer002_block011 : List ColouredInterval :=
  [(73, 42632, 42711), (73, 47961, 48040), (79, 31205, 31284), (79, 37446, 37525), (79, 43687, 43766), (79, 49928, 50007)]

def row080_layer002_chunks : List (List ColouredInterval) :=
  [row080_layer002_block000, row080_layer002_block001, row080_layer002_block002, row080_layer002_block003, row080_layer002_block004, row080_layer002_block005, row080_layer002_block006, row080_layer002_block007, row080_layer002_block008, row080_layer002_block009, row080_layer002_block010, row080_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_arithmetic : LayerArithmeticValid row080.height { lower := 25280, upper := 50560, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_enumeration :
    activePowerIntervalList 80 24 25280 50560 = row080_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs000 :
    row080_layer002_block000.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs001 :
    row080_layer002_block001.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs002 :
    row080_layer002_block002.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs003 :
    row080_layer002_block003.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs004 :
    row080_layer002_block004.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs005 :
    row080_layer002_block005.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs006 :
    row080_layer002_block006.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs007 :
    row080_layer002_block007.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs008 :
    row080_layer002_block008.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs009 :
    row080_layer002_block009.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs010 :
    row080_layer002_block010.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_pairs011 :
    row080_layer002_block011.all (fun I => row080_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_chunks_eq : row080_layer002_chunks.flatten = row080_layer002_intervals := by
  rfl

theorem row080_layer002_pairs : pairCoverCheck row080_layer002_intervals row080_bounds = true := by
  apply pairCoverCheck_of_chunks row080_layer002_chunks_eq
  intro block hblock
  simp only [row080_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row080_layer002_pairs000
  · exact row080_layer002_pairs001
  · exact row080_layer002_pairs002
  · exact row080_layer002_pairs003
  · exact row080_layer002_pairs004
  · exact row080_layer002_pairs005
  · exact row080_layer002_pairs006
  · exact row080_layer002_pairs007
  · exact row080_layer002_pairs008
  · exact row080_layer002_pairs009
  · exact row080_layer002_pairs010
  · exact row080_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_pairs
