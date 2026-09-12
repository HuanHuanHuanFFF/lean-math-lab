import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row079B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_pairs009 :
    row079_layer000_block009.all (fun I => row079_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_chunks_eq : row079_layer000_chunks.flatten = row079_layer000_intervals := by
  rfl

theorem row079_layer000_pairs : pairCoverCheck row079_layer000_intervals row079_bounds = true := by
  apply pairCoverCheck_of_chunks row079_layer000_chunks_eq
  intro block hblock
  simp only [row079_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row079_layer000_pairs000
  · exact row079_layer000_pairs001
  · exact row079_layer000_pairs002
  · exact row079_layer000_pairs003
  · exact row079_layer000_pairs004
  · exact row079_layer000_pairs005
  · exact row079_layer000_pairs006
  · exact row079_layer000_pairs007
  · exact row079_layer000_pairs008
  · exact row079_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer000_checked :
    coverLayerCheck row079.height row079.goods { lower := 6162, upper := 12324, M := 25 } = true := by
  exact coverLayerCheck_of_parts row079_layer000_arithmetic row079_layer000_enumeration row079_bounds_eq row079_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row079_layer001_intervals : List ColouredInterval :=
  [(2, 12324, 12366), (2, 13312, 13390), (2, 14336, 14414), (2, 15360, 15438), (2, 16384, 16462), (2, 17408, 17486), (2, 18432, 18510), (2, 19456, 19534), (2, 20480, 20558), (2, 21504, 21582), (2, 12324, 12366), (2, 14336, 14414), (2, 16384, 16462), (2, 18432, 18510), (2, 20480, 20558), (2, 22528, 22606), (2, 24576, 24647), (2, 12324, 12366), (2, 16384, 16462), (2, 20480, 20558), (2, 24576, 24647), (2, 16384, 16462), (2, 24576, 24647), (2, 16384, 16462), (3, 12393, 12471), (3, 13122, 13200), (3, 13851, 13929), (3, 14580, 14658), (3, 15309, 15387), (3, 13122, 13200), (3, 15309, 15387), (3, 17496, 17574), (3, 19683, 19761), (3, 21870, 21948), (3, 24057, 24135), (3, 13122, 13200), (3, 19683, 19761), (3, 19683, 19761), (5, 12500, 12578), (5, 13125, 13203), (5, 12500, 12578), (5, 15625, 15703), (5, 18750, 18828), (5, 21875, 21953), (5, 15625, 15703), (7, 14406, 14484), (7, 16807, 16885), (7, 19208, 19286), (7, 21609, 21687), (7, 24010, 24088), (7, 16807, 16885), (11, 13310, 13388), (11, 14641, 14719), (11, 15972, 16050), (11, 17303, 17381), (11, 18634, 18712), (11, 19965, 20043), (11, 21296, 21374), (11, 22627, 22705), (11, 23958, 24036), (11, 14641, 14719), (13, 13182, 13260), (13, 15379, 15457), (13, 17576, 17654), (13, 19773, 19851), (13, 21970, 22048), (13, 24167, 24245), (17, 14739, 14817), (17, 19652, 19730), (17, 24565, 24643), (19, 13718, 13796), (19, 20577, 20655), (23, 24334, 24412), (29, 12615, 12693), (29, 13456, 13534), (29, 14297, 14375), (29, 15138, 15216), (29, 15979, 16057), (29, 16820, 16898), (29, 17661, 17739), (29, 24389, 24467), (31, 12493, 12571), (31, 13454, 13532), (31, 14415, 14493), (31, 15376, 15454), (31, 16337, 16415), (31, 17298, 17376), (31, 18259, 18337), (31, 19220, 19298), (31, 20181, 20259), (37, 12324, 12399), (37, 13690, 13768), (37, 15059, 15137), (37, 16428, 16506), (37, 17797, 17875), (37, 19166, 19244), (37, 20535, 20613), (37, 21904, 21982), (37, 23273, 23351), (37, 24642, 24647), (41, 13448, 13526), (41, 15129, 15207), (41, 16810, 16888), (41, 18491, 18569), (41, 20172, 20250), (41, 21853, 21931), (41, 23534, 23612), (43, 12943, 13021), (43, 14792, 14870), (43, 16641, 16719), (43, 18490, 18568), (43, 20339, 20417), (43, 22188, 22266), (43, 24037, 24115), (47, 13254, 13332), (47, 15463, 15541), (47, 17672, 17750), (47, 19881, 19959), (47, 22090, 22168), (47, 24299, 24377), (53, 14045, 14123), (53, 16854, 16932), (53, 19663, 19741), (53, 22472, 22550), (59, 13924, 14002), (59, 17405, 17483), (59, 20886, 20964), (59, 24367, 24445), (61, 14884, 14962), (61, 18605, 18683), (61, 22326, 22404), (67, 13467, 13545), (67, 17956, 18034), (67, 22445, 22523), (71, 15123, 15201), (71, 20164, 20242), (73, 15987, 16065), (73, 21316, 21394)]

def row079_layer001_block000 : List ColouredInterval :=
  [(2, 12324, 12366), (2, 13312, 13390), (2, 14336, 14414), (2, 15360, 15438), (2, 16384, 16462), (2, 17408, 17486), (2, 18432, 18510), (2, 19456, 19534), (2, 20480, 20558), (2, 21504, 21582), (2, 12324, 12366), (2, 14336, 14414), (2, 16384, 16462), (2, 18432, 18510)]

def row079_layer001_block001 : List ColouredInterval :=
  [(2, 20480, 20558), (2, 22528, 22606), (2, 24576, 24647), (2, 12324, 12366), (2, 16384, 16462), (2, 20480, 20558), (2, 24576, 24647), (2, 16384, 16462), (2, 24576, 24647), (2, 16384, 16462), (3, 12393, 12471), (3, 13122, 13200), (3, 13851, 13929), (3, 14580, 14658)]

def row079_layer001_block002 : List ColouredInterval :=
  [(3, 15309, 15387), (3, 13122, 13200), (3, 15309, 15387), (3, 17496, 17574), (3, 19683, 19761), (3, 21870, 21948), (3, 24057, 24135), (3, 13122, 13200), (3, 19683, 19761), (3, 19683, 19761), (5, 12500, 12578), (5, 13125, 13203), (5, 12500, 12578), (5, 15625, 15703)]

def row079_layer001_block003 : List ColouredInterval :=
  [(5, 18750, 18828), (5, 21875, 21953), (5, 15625, 15703), (7, 14406, 14484), (7, 16807, 16885), (7, 19208, 19286), (7, 21609, 21687), (7, 24010, 24088), (7, 16807, 16885), (11, 13310, 13388), (11, 14641, 14719), (11, 15972, 16050), (11, 17303, 17381), (11, 18634, 18712)]

def row079_layer001_block004 : List ColouredInterval :=
  [(11, 19965, 20043), (11, 21296, 21374), (11, 22627, 22705), (11, 23958, 24036), (11, 14641, 14719), (13, 13182, 13260), (13, 15379, 15457), (13, 17576, 17654), (13, 19773, 19851), (13, 21970, 22048), (13, 24167, 24245), (17, 14739, 14817), (17, 19652, 19730), (17, 24565, 24643)]

def row079_layer001_block005 : List ColouredInterval :=
  [(19, 13718, 13796), (19, 20577, 20655), (23, 24334, 24412), (29, 12615, 12693), (29, 13456, 13534), (29, 14297, 14375), (29, 15138, 15216), (29, 15979, 16057), (29, 16820, 16898), (29, 17661, 17739), (29, 24389, 24467), (31, 12493, 12571), (31, 13454, 13532), (31, 14415, 14493)]

def row079_layer001_block006 : List ColouredInterval :=
  [(31, 15376, 15454), (31, 16337, 16415), (31, 17298, 17376), (31, 18259, 18337), (31, 19220, 19298), (31, 20181, 20259), (37, 12324, 12399), (37, 13690, 13768), (37, 15059, 15137), (37, 16428, 16506), (37, 17797, 17875), (37, 19166, 19244), (37, 20535, 20613), (37, 21904, 21982)]

def row079_layer001_block007 : List ColouredInterval :=
  [(37, 23273, 23351), (37, 24642, 24647), (41, 13448, 13526), (41, 15129, 15207), (41, 16810, 16888), (41, 18491, 18569), (41, 20172, 20250), (41, 21853, 21931), (41, 23534, 23612), (43, 12943, 13021), (43, 14792, 14870), (43, 16641, 16719), (43, 18490, 18568), (43, 20339, 20417)]

def row079_layer001_block008 : List ColouredInterval :=
  [(43, 22188, 22266), (43, 24037, 24115), (47, 13254, 13332), (47, 15463, 15541), (47, 17672, 17750), (47, 19881, 19959), (47, 22090, 22168), (47, 24299, 24377), (53, 14045, 14123), (53, 16854, 16932), (53, 19663, 19741), (53, 22472, 22550), (59, 13924, 14002), (59, 17405, 17483)]

def row079_layer001_block009 : List ColouredInterval :=
  [(59, 20886, 20964), (59, 24367, 24445), (61, 14884, 14962), (61, 18605, 18683), (61, 22326, 22404), (67, 13467, 13545), (67, 17956, 18034), (67, 22445, 22523), (71, 15123, 15201), (71, 20164, 20242), (73, 15987, 16065), (73, 21316, 21394)]

def row079_layer001_chunks : List (List ColouredInterval) :=
  [row079_layer001_block000, row079_layer001_block001, row079_layer001_block002, row079_layer001_block003, row079_layer001_block004, row079_layer001_block005, row079_layer001_block006, row079_layer001_block007, row079_layer001_block008, row079_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_arithmetic : LayerArithmeticValid row079.height { lower := 12324, upper := 24648, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_enumeration :
    activePowerIntervalList 79 21 12324 24648 = row079_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs000 :
    row079_layer001_block000.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs001 :
    row079_layer001_block001.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs002 :
    row079_layer001_block002.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs003 :
    row079_layer001_block003.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs004 :
    row079_layer001_block004.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs005 :
    row079_layer001_block005.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs006 :
    row079_layer001_block006.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs007 :
    row079_layer001_block007.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs008 :
    row079_layer001_block008.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_pairs009 :
    row079_layer001_block009.all (fun I => row079_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_chunks_eq : row079_layer001_chunks.flatten = row079_layer001_intervals := by
  rfl

theorem row079_layer001_pairs : pairCoverCheck row079_layer001_intervals row079_bounds = true := by
  apply pairCoverCheck_of_chunks row079_layer001_chunks_eq
  intro block hblock
  simp only [row079_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row079_layer001_pairs000
  · exact row079_layer001_pairs001
  · exact row079_layer001_pairs002
  · exact row079_layer001_pairs003
  · exact row079_layer001_pairs004
  · exact row079_layer001_pairs005
  · exact row079_layer001_pairs006
  · exact row079_layer001_pairs007
  · exact row079_layer001_pairs008
  · exact row079_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer001_checked :
    coverLayerCheck row079.height row079.goods { lower := 12324, upper := 24648, M := 21 } = true := by
  exact coverLayerCheck_of_parts row079_layer001_arithmetic row079_layer001_enumeration row079_bounds_eq row079_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row079_layer002_intervals : List ColouredInterval :=
  [(2, 24648, 24654), (2, 26624, 26702), (2, 28672, 28750), (2, 30720, 30798), (2, 32768, 32846), (2, 34816, 34894), (2, 36864, 36942), (2, 24648, 24654), (2, 28672, 28750), (2, 32768, 32846), (2, 36864, 36942), (2, 40960, 41038), (2, 45056, 45134), (2, 49152, 49230), (2, 24648, 24654), (2, 32768, 32846), (2, 40960, 41038), (2, 49152, 49230), (2, 32768, 32846), (2, 49152, 49230), (2, 32768, 32846), (3, 26244, 26322), (3, 28431, 28509), (3, 30618, 30696), (3, 32805, 32883), (3, 34992, 35070), (3, 37179, 37257), (3, 39366, 39444), (3, 26244, 26322), (3, 32805, 32883), (3, 39366, 39444), (3, 45927, 46005), (3, 39366, 39444), (5, 25000, 25078), (5, 28125, 28203), (5, 31250, 31328), (5, 34375, 34453), (5, 37500, 37578), (5, 40625, 40703), (5, 43750, 43828), (5, 46875, 46953), (5, 31250, 31328), (5, 46875, 46953), (7, 26411, 26489), (7, 28812, 28890), (7, 31213, 31291), (7, 33614, 33692), (7, 36015, 36093), (7, 38416, 38494), (7, 40817, 40895), (7, 43218, 43296), (7, 33614, 33692), (11, 29282, 29360), (11, 43923, 44001), (13, 26364, 26442), (13, 28561, 28639), (13, 30758, 30836), (13, 32955, 33033), (13, 35152, 35230), (13, 37349, 37427), (13, 39546, 39624), (13, 28561, 28639), (17, 29478, 29556), (17, 34391, 34469), (17, 39304, 39382), (17, 44217, 44295), (17, 49130, 49208), (19, 27436, 27514), (19, 34295, 34373), (19, 41154, 41232), (19, 48013, 48091), (23, 36501, 36579), (23, 48668, 48746), (29, 48778, 48856), (31, 29791, 29869), (37, 24648, 24720), (41, 25215, 25293), (41, 26896, 26974), (41, 28577, 28655), (41, 30258, 30336), (43, 25886, 25964), (43, 27735, 27813), (43, 29584, 29662), (43, 31433, 31511), (43, 33282, 33360), (47, 26508, 26586), (47, 28717, 28795), (47, 30926, 31004), (47, 33135, 33213), (47, 35344, 35422), (47, 37553, 37631), (47, 39762, 39840), (53, 25281, 25359), (53, 28090, 28168), (53, 30899, 30977), (53, 33708, 33786), (53, 36517, 36595), (53, 39326, 39404), (53, 42135, 42213), (53, 44944, 45022), (53, 47753, 47831), (59, 27848, 27926), (59, 31329, 31407), (59, 34810, 34888), (59, 38291, 38369), (59, 41772, 41850), (59, 45253, 45331), (59, 48734, 48812), (61, 26047, 26125), (61, 29768, 29846), (61, 33489, 33567), (61, 37210, 37288), (61, 40931, 41009), (61, 44652, 44730), (61, 48373, 48451), (67, 26934, 27012), (67, 31423, 31501), (67, 35912, 35990), (67, 40401, 40479), (67, 44890, 44968), (71, 25205, 25283), (71, 30246, 30324), (71, 35287, 35365), (71, 40328, 40406), (71, 45369, 45447), (73, 26645, 26723), (73, 31974, 32052), (73, 37303, 37381), (73, 42632, 42710), (73, 47961, 48039)]

def row079_layer002_block000 : List ColouredInterval :=
  [(2, 24648, 24654), (2, 26624, 26702), (2, 28672, 28750), (2, 30720, 30798), (2, 32768, 32846), (2, 34816, 34894), (2, 36864, 36942), (2, 24648, 24654), (2, 28672, 28750), (2, 32768, 32846), (2, 36864, 36942), (2, 40960, 41038), (2, 45056, 45134), (2, 49152, 49230), (2, 24648, 24654)]

def row079_layer002_block001 : List ColouredInterval :=
  [(2, 32768, 32846), (2, 40960, 41038), (2, 49152, 49230), (2, 32768, 32846), (2, 49152, 49230), (2, 32768, 32846), (3, 26244, 26322), (3, 28431, 28509), (3, 30618, 30696), (3, 32805, 32883), (3, 34992, 35070), (3, 37179, 37257), (3, 39366, 39444), (3, 26244, 26322), (3, 32805, 32883)]

def row079_layer002_block002 : List ColouredInterval :=
  [(3, 39366, 39444), (3, 45927, 46005), (3, 39366, 39444), (5, 25000, 25078), (5, 28125, 28203), (5, 31250, 31328), (5, 34375, 34453), (5, 37500, 37578), (5, 40625, 40703), (5, 43750, 43828), (5, 46875, 46953), (5, 31250, 31328), (5, 46875, 46953), (7, 26411, 26489), (7, 28812, 28890)]

def row079_layer002_block003 : List ColouredInterval :=
  [(7, 31213, 31291), (7, 33614, 33692), (7, 36015, 36093), (7, 38416, 38494), (7, 40817, 40895), (7, 43218, 43296), (7, 33614, 33692), (11, 29282, 29360), (11, 43923, 44001), (13, 26364, 26442), (13, 28561, 28639), (13, 30758, 30836), (13, 32955, 33033), (13, 35152, 35230), (13, 37349, 37427)]

def row079_layer002_block004 : List ColouredInterval :=
  [(13, 39546, 39624), (13, 28561, 28639), (17, 29478, 29556), (17, 34391, 34469), (17, 39304, 39382), (17, 44217, 44295), (17, 49130, 49208), (19, 27436, 27514), (19, 34295, 34373), (19, 41154, 41232), (19, 48013, 48091), (23, 36501, 36579), (23, 48668, 48746), (29, 48778, 48856), (31, 29791, 29869)]

def row079_layer002_block005 : List ColouredInterval :=
  [(37, 24648, 24720), (41, 25215, 25293), (41, 26896, 26974), (41, 28577, 28655), (41, 30258, 30336), (43, 25886, 25964), (43, 27735, 27813), (43, 29584, 29662), (43, 31433, 31511), (43, 33282, 33360), (47, 26508, 26586), (47, 28717, 28795), (47, 30926, 31004), (47, 33135, 33213), (47, 35344, 35422)]

def row079_layer002_block006 : List ColouredInterval :=
  [(47, 37553, 37631), (47, 39762, 39840), (53, 25281, 25359), (53, 28090, 28168), (53, 30899, 30977), (53, 33708, 33786), (53, 36517, 36595), (53, 39326, 39404), (53, 42135, 42213), (53, 44944, 45022), (53, 47753, 47831), (59, 27848, 27926), (59, 31329, 31407), (59, 34810, 34888), (59, 38291, 38369)]

def row079_layer002_block007 : List ColouredInterval :=
  [(59, 41772, 41850), (59, 45253, 45331), (59, 48734, 48812), (61, 26047, 26125), (61, 29768, 29846), (61, 33489, 33567), (61, 37210, 37288), (61, 40931, 41009), (61, 44652, 44730), (61, 48373, 48451), (67, 26934, 27012), (67, 31423, 31501), (67, 35912, 35990), (67, 40401, 40479), (67, 44890, 44968)]

def row079_layer002_block008 : List ColouredInterval :=
  [(71, 25205, 25283), (71, 30246, 30324), (71, 35287, 35365), (71, 40328, 40406), (71, 45369, 45447), (73, 26645, 26723), (73, 31974, 32052), (73, 37303, 37381), (73, 42632, 42710), (73, 47961, 48039)]

def row079_layer002_chunks : List (List ColouredInterval) :=
  [row079_layer002_block000, row079_layer002_block001, row079_layer002_block002, row079_layer002_block003, row079_layer002_block004, row079_layer002_block005, row079_layer002_block006, row079_layer002_block007, row079_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_arithmetic : LayerArithmeticValid row079.height { lower := 24648, upper := 49296, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_enumeration :
    activePowerIntervalList 79 18 24648 49296 = row079_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs000 :
    row079_layer002_block000.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs001 :
    row079_layer002_block001.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs002 :
    row079_layer002_block002.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs003 :
    row079_layer002_block003.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs004 :
    row079_layer002_block004.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs005 :
    row079_layer002_block005.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs006 :
    row079_layer002_block006.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs007 :
    row079_layer002_block007.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_pairs008 :
    row079_layer002_block008.all (fun I => row079_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row079_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_chunks_eq : row079_layer002_chunks.flatten = row079_layer002_intervals := by
  rfl

theorem row079_layer002_pairs : pairCoverCheck row079_layer002_intervals row079_bounds = true := by
  apply pairCoverCheck_of_chunks row079_layer002_chunks_eq
  intro block hblock
  simp only [row079_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row079_layer002_pairs000
  · exact row079_layer002_pairs001
  · exact row079_layer002_pairs002
  · exact row079_layer002_pairs003
  · exact row079_layer002_pairs004
  · exact row079_layer002_pairs005
  · exact row079_layer002_pairs006
  · exact row079_layer002_pairs007
  · exact row079_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer002_checked :
    coverLayerCheck row079.height row079.goods { lower := 24648, upper := 49296, M := 18 } = true := by
  exact coverLayerCheck_of_parts row079_layer002_arithmetic row079_layer002_enumeration row079_bounds_eq row079_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer002_checked
