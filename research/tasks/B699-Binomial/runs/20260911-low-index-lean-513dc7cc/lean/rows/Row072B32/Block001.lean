import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row072B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer000_checked :
    coverLayerCheck row072.height row072.goods { lower := 5112, upper := 10224, M := 32 } = true := by
  exact coverLayerCheck_of_parts row072_layer000_arithmetic row072_layer000_enumeration row072_bounds_eq row072_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_layer001_intervals : List ColouredInterval :=
  [(2, 12288, 12359), (2, 16384, 16455), (2, 16384, 16455), (3, 13122, 13193), (3, 19683, 19754), (3, 19683, 19754), (5, 10625, 10696), (5, 11250, 11321), (5, 11875, 11946), (5, 12500, 12571), (5, 13125, 13196), (5, 13750, 13821), (5, 14375, 14446), (5, 15000, 15071), (5, 15625, 15696), (5, 16250, 16321), (5, 16875, 16946), (5, 17500, 17571), (5, 12500, 12571), (5, 15625, 15696), (5, 18750, 18821), (5, 15625, 15696), (7, 12005, 12076), (7, 14406, 14477), (7, 16807, 16878), (7, 19208, 19279), (7, 16807, 16878), (11, 10648, 10719), (11, 11979, 12050), (11, 13310, 13381), (11, 14641, 14712), (11, 15972, 16043), (11, 17303, 17374), (11, 18634, 18705), (11, 19965, 20036), (11, 14641, 14712), (13, 10985, 11056), (13, 13182, 13253), (13, 15379, 15450), (13, 17576, 17647), (13, 19773, 19844), (17, 14739, 14810), (17, 19652, 19723), (19, 13718, 13789), (23, 10580, 10651), (23, 11109, 11180), (23, 11638, 11709), (23, 12167, 12238), (23, 12696, 12767), (23, 13225, 13296), (23, 13754, 13825), (23, 14283, 14354), (23, 14812, 14883), (23, 12167, 12238), (29, 10933, 11004), (29, 11774, 11845), (29, 12615, 12686), (29, 13456, 13527), (29, 14297, 14368), (29, 15138, 15209), (29, 15979, 16050), (29, 16820, 16891), (29, 17661, 17732), (29, 18502, 18573), (29, 19343, 19414), (29, 20184, 20255), (31, 10571, 10642), (31, 11532, 11603), (31, 12493, 12564), (31, 13454, 13525), (31, 14415, 14486), (31, 15376, 15447), (31, 16337, 16408), (31, 17298, 17369), (31, 18259, 18330), (31, 19220, 19291), (31, 20181, 20252), (37, 10952, 11023), (37, 12321, 12392), (37, 13690, 13761), (37, 15059, 15130), (37, 16428, 16499), (37, 17797, 17868), (37, 19166, 19237), (41, 11767, 11838), (41, 13448, 13519), (41, 15129, 15200), (41, 16810, 16881), (41, 18491, 18562), (41, 20172, 20243), (43, 11094, 11165), (43, 12943, 13014), (43, 14792, 14863), (43, 16641, 16712), (43, 18490, 18561), (43, 20339, 20410), (47, 11045, 11116), (47, 13254, 13325), (47, 15463, 15534), (47, 17672, 17743), (47, 19881, 19952), (53, 11236, 11307), (53, 14045, 14116), (53, 16854, 16925), (53, 19663, 19734), (59, 10443, 10514), (59, 13924, 13995), (59, 17405, 17476), (61, 11163, 11234), (61, 14884, 14955), (61, 18605, 18676), (67, 13467, 13538), (67, 17956, 18027), (71, 15123, 15194), (71, 20164, 20235)]

def row072_layer001_block000 : List ColouredInterval :=
  [(2, 12288, 12359), (2, 16384, 16455), (2, 16384, 16455), (3, 13122, 13193), (3, 19683, 19754), (3, 19683, 19754), (5, 10625, 10696), (5, 11250, 11321), (5, 11875, 11946), (5, 12500, 12571), (5, 13125, 13196), (5, 13750, 13821), (5, 14375, 14446), (5, 15000, 15071), (5, 15625, 15696), (5, 16250, 16321)]

def row072_layer001_block001 : List ColouredInterval :=
  [(5, 16875, 16946), (5, 17500, 17571), (5, 12500, 12571), (5, 15625, 15696), (5, 18750, 18821), (5, 15625, 15696), (7, 12005, 12076), (7, 14406, 14477), (7, 16807, 16878), (7, 19208, 19279), (7, 16807, 16878), (11, 10648, 10719), (11, 11979, 12050), (11, 13310, 13381), (11, 14641, 14712), (11, 15972, 16043)]

def row072_layer001_block002 : List ColouredInterval :=
  [(11, 17303, 17374), (11, 18634, 18705), (11, 19965, 20036), (11, 14641, 14712), (13, 10985, 11056), (13, 13182, 13253), (13, 15379, 15450), (13, 17576, 17647), (13, 19773, 19844), (17, 14739, 14810), (17, 19652, 19723), (19, 13718, 13789), (23, 10580, 10651), (23, 11109, 11180), (23, 11638, 11709), (23, 12167, 12238)]

def row072_layer001_block003 : List ColouredInterval :=
  [(23, 12696, 12767), (23, 13225, 13296), (23, 13754, 13825), (23, 14283, 14354), (23, 14812, 14883), (23, 12167, 12238), (29, 10933, 11004), (29, 11774, 11845), (29, 12615, 12686), (29, 13456, 13527), (29, 14297, 14368), (29, 15138, 15209), (29, 15979, 16050), (29, 16820, 16891), (29, 17661, 17732), (29, 18502, 18573)]

def row072_layer001_block004 : List ColouredInterval :=
  [(29, 19343, 19414), (29, 20184, 20255), (31, 10571, 10642), (31, 11532, 11603), (31, 12493, 12564), (31, 13454, 13525), (31, 14415, 14486), (31, 15376, 15447), (31, 16337, 16408), (31, 17298, 17369), (31, 18259, 18330), (31, 19220, 19291), (31, 20181, 20252), (37, 10952, 11023), (37, 12321, 12392), (37, 13690, 13761)]

def row072_layer001_block005 : List ColouredInterval :=
  [(37, 15059, 15130), (37, 16428, 16499), (37, 17797, 17868), (37, 19166, 19237), (41, 11767, 11838), (41, 13448, 13519), (41, 15129, 15200), (41, 16810, 16881), (41, 18491, 18562), (41, 20172, 20243), (43, 11094, 11165), (43, 12943, 13014), (43, 14792, 14863), (43, 16641, 16712), (43, 18490, 18561), (43, 20339, 20410)]

def row072_layer001_block006 : List ColouredInterval :=
  [(47, 11045, 11116), (47, 13254, 13325), (47, 15463, 15534), (47, 17672, 17743), (47, 19881, 19952), (53, 11236, 11307), (53, 14045, 14116), (53, 16854, 16925), (53, 19663, 19734), (59, 10443, 10514), (59, 13924, 13995), (59, 17405, 17476), (61, 11163, 11234), (61, 14884, 14955), (61, 18605, 18676), (67, 13467, 13538)]

def row072_layer001_block007 : List ColouredInterval :=
  [(67, 17956, 18027), (71, 15123, 15194), (71, 20164, 20235)]

def row072_layer001_chunks : List (List ColouredInterval) :=
  [row072_layer001_block000, row072_layer001_block001, row072_layer001_block002, row072_layer001_block003, row072_layer001_block004, row072_layer001_block005, row072_layer001_block006, row072_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_arithmetic : LayerArithmeticValid row072.height { lower := 10224, upper := 20448, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_enumeration :
    activePowerIntervalList 72 28 10224 20448 = row072_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs000 :
    row072_layer001_block000.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs001 :
    row072_layer001_block001.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs002 :
    row072_layer001_block002.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs003 :
    row072_layer001_block003.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs004 :
    row072_layer001_block004.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs005 :
    row072_layer001_block005.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs006 :
    row072_layer001_block006.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_pairs007 :
    row072_layer001_block007.all (fun I => row072_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_chunks_eq : row072_layer001_chunks.flatten = row072_layer001_intervals := by
  rfl

theorem row072_layer001_pairs : pairCoverCheck row072_layer001_intervals row072_bounds = true := by
  apply pairCoverCheck_of_chunks row072_layer001_chunks_eq
  intro block hblock
  simp only [row072_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row072_layer001_pairs000
  · exact row072_layer001_pairs001
  · exact row072_layer001_pairs002
  · exact row072_layer001_pairs003
  · exact row072_layer001_pairs004
  · exact row072_layer001_pairs005
  · exact row072_layer001_pairs006
  · exact row072_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer001_checked :
    coverLayerCheck row072.height row072.goods { lower := 10224, upper := 20448, M := 28 } = true := by
  exact coverLayerCheck_of_parts row072_layer001_arithmetic row072_layer001_enumeration row072_bounds_eq row072_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_layer002_intervals : List ColouredInterval :=
  [(2, 24576, 24647), (2, 32768, 32839), (2, 32768, 32839), (3, 39366, 39437), (5, 21875, 21946), (5, 25000, 25071), (5, 28125, 28196), (5, 31250, 31321), (5, 34375, 34446), (5, 37500, 37571), (5, 40625, 40696), (5, 31250, 31321), (7, 21609, 21680), (7, 24010, 24081), (7, 26411, 26482), (7, 28812, 28883), (7, 31213, 31284), (7, 33614, 33685), (7, 36015, 36086), (7, 38416, 38487), (7, 40817, 40888), (7, 33614, 33685), (11, 21296, 21367), (11, 22627, 22698), (11, 23958, 24029), (11, 25289, 25360), (11, 26620, 26691), (11, 27951, 28022), (11, 29282, 29353), (11, 30613, 30684), (11, 31944, 32015), (11, 29282, 29353), (13, 21970, 22041), (13, 24167, 24238), (13, 26364, 26435), (13, 28561, 28632), (13, 30758, 30829), (13, 32955, 33026), (13, 35152, 35223), (13, 37349, 37420), (13, 39546, 39617), (13, 28561, 28632), (17, 24565, 24636), (17, 29478, 29549), (17, 34391, 34462), (17, 39304, 39375), (19, 20577, 20648), (19, 27436, 27507), (19, 34295, 34366), (23, 24334, 24405), (23, 36501, 36572), (29, 24389, 24460), (31, 21142, 21213), (31, 22103, 22174), (31, 23064, 23135), (31, 29791, 29862), (37, 20535, 20606), (37, 21904, 21975), (37, 23273, 23344), (37, 24642, 24713), (37, 26011, 26082), (37, 27380, 27451), (37, 28749, 28820), (37, 30118, 30189), (37, 31487, 31558), (37, 32856, 32927), (41, 21853, 21924), (41, 23534, 23605), (41, 25215, 25286), (41, 26896, 26967), (41, 28577, 28648), (41, 30258, 30329), (41, 31939, 32010), (41, 33620, 33691), (41, 35301, 35372), (41, 36982, 37053), (41, 38663, 38734), (41, 40344, 40415), (43, 22188, 22259), (43, 24037, 24108), (43, 25886, 25957), (43, 27735, 27806), (43, 29584, 29655), (43, 31433, 31504), (43, 33282, 33353), (43, 35131, 35202), (43, 36980, 37051), (43, 38829, 38900), (43, 40678, 40749), (47, 22090, 22161), (47, 24299, 24370), (47, 26508, 26579), (47, 28717, 28788), (47, 30926, 30997), (47, 33135, 33206), (47, 35344, 35415), (47, 37553, 37624), (47, 39762, 39833), (53, 22472, 22543), (53, 25281, 25352), (53, 28090, 28161), (53, 30899, 30970), (53, 33708, 33779), (53, 36517, 36588), (53, 39326, 39397), (59, 20886, 20957), (59, 24367, 24438), (59, 27848, 27919), (59, 31329, 31400), (59, 34810, 34881), (59, 38291, 38362), (61, 22326, 22397), (61, 26047, 26118), (61, 29768, 29839), (61, 33489, 33560), (61, 37210, 37281), (67, 22445, 22516), (67, 26934, 27005), (67, 31423, 31494), (67, 35912, 35983), (67, 40401, 40472), (71, 25205, 25276), (71, 30246, 30317), (71, 35287, 35358), (71, 40328, 40399)]

def row072_layer002_block000 : List ColouredInterval :=
  [(2, 24576, 24647), (2, 32768, 32839), (2, 32768, 32839), (3, 39366, 39437), (5, 21875, 21946), (5, 25000, 25071), (5, 28125, 28196), (5, 31250, 31321), (5, 34375, 34446), (5, 37500, 37571), (5, 40625, 40696), (5, 31250, 31321), (7, 21609, 21680), (7, 24010, 24081), (7, 26411, 26482), (7, 28812, 28883)]

def row072_layer002_block001 : List ColouredInterval :=
  [(7, 31213, 31284), (7, 33614, 33685), (7, 36015, 36086), (7, 38416, 38487), (7, 40817, 40888), (7, 33614, 33685), (11, 21296, 21367), (11, 22627, 22698), (11, 23958, 24029), (11, 25289, 25360), (11, 26620, 26691), (11, 27951, 28022), (11, 29282, 29353), (11, 30613, 30684), (11, 31944, 32015), (11, 29282, 29353)]

def row072_layer002_block002 : List ColouredInterval :=
  [(13, 21970, 22041), (13, 24167, 24238), (13, 26364, 26435), (13, 28561, 28632), (13, 30758, 30829), (13, 32955, 33026), (13, 35152, 35223), (13, 37349, 37420), (13, 39546, 39617), (13, 28561, 28632), (17, 24565, 24636), (17, 29478, 29549), (17, 34391, 34462), (17, 39304, 39375), (19, 20577, 20648), (19, 27436, 27507)]

def row072_layer002_block003 : List ColouredInterval :=
  [(19, 34295, 34366), (23, 24334, 24405), (23, 36501, 36572), (29, 24389, 24460), (31, 21142, 21213), (31, 22103, 22174), (31, 23064, 23135), (31, 29791, 29862), (37, 20535, 20606), (37, 21904, 21975), (37, 23273, 23344), (37, 24642, 24713), (37, 26011, 26082), (37, 27380, 27451), (37, 28749, 28820), (37, 30118, 30189)]

def row072_layer002_block004 : List ColouredInterval :=
  [(37, 31487, 31558), (37, 32856, 32927), (41, 21853, 21924), (41, 23534, 23605), (41, 25215, 25286), (41, 26896, 26967), (41, 28577, 28648), (41, 30258, 30329), (41, 31939, 32010), (41, 33620, 33691), (41, 35301, 35372), (41, 36982, 37053), (41, 38663, 38734), (41, 40344, 40415), (43, 22188, 22259), (43, 24037, 24108)]

def row072_layer002_block005 : List ColouredInterval :=
  [(43, 25886, 25957), (43, 27735, 27806), (43, 29584, 29655), (43, 31433, 31504), (43, 33282, 33353), (43, 35131, 35202), (43, 36980, 37051), (43, 38829, 38900), (43, 40678, 40749), (47, 22090, 22161), (47, 24299, 24370), (47, 26508, 26579), (47, 28717, 28788), (47, 30926, 30997), (47, 33135, 33206), (47, 35344, 35415)]

def row072_layer002_block006 : List ColouredInterval :=
  [(47, 37553, 37624), (47, 39762, 39833), (53, 22472, 22543), (53, 25281, 25352), (53, 28090, 28161), (53, 30899, 30970), (53, 33708, 33779), (53, 36517, 36588), (53, 39326, 39397), (59, 20886, 20957), (59, 24367, 24438), (59, 27848, 27919), (59, 31329, 31400), (59, 34810, 34881), (59, 38291, 38362), (61, 22326, 22397)]

def row072_layer002_block007 : List ColouredInterval :=
  [(61, 26047, 26118), (61, 29768, 29839), (61, 33489, 33560), (61, 37210, 37281), (67, 22445, 22516), (67, 26934, 27005), (67, 31423, 31494), (67, 35912, 35983), (67, 40401, 40472), (71, 25205, 25276), (71, 30246, 30317), (71, 35287, 35358), (71, 40328, 40399)]

def row072_layer002_chunks : List (List ColouredInterval) :=
  [row072_layer002_block000, row072_layer002_block001, row072_layer002_block002, row072_layer002_block003, row072_layer002_block004, row072_layer002_block005, row072_layer002_block006, row072_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_arithmetic : LayerArithmeticValid row072.height { lower := 20448, upper := 40896, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_enumeration :
    activePowerIntervalList 72 24 20448 40896 = row072_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs000 :
    row072_layer002_block000.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs001 :
    row072_layer002_block001.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs002 :
    row072_layer002_block002.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs003 :
    row072_layer002_block003.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs004 :
    row072_layer002_block004.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs005 :
    row072_layer002_block005.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs006 :
    row072_layer002_block006.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_pairs007 :
    row072_layer002_block007.all (fun I => row072_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_chunks_eq : row072_layer002_chunks.flatten = row072_layer002_intervals := by
  rfl

theorem row072_layer002_pairs : pairCoverCheck row072_layer002_intervals row072_bounds = true := by
  apply pairCoverCheck_of_chunks row072_layer002_chunks_eq
  intro block hblock
  simp only [row072_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row072_layer002_pairs000
  · exact row072_layer002_pairs001
  · exact row072_layer002_pairs002
  · exact row072_layer002_pairs003
  · exact row072_layer002_pairs004
  · exact row072_layer002_pairs005
  · exact row072_layer002_pairs006
  · exact row072_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer002_checked :
    coverLayerCheck row072.height row072.goods { lower := 20448, upper := 40896, M := 24 } = true := by
  exact coverLayerCheck_of_parts row072_layer002_arithmetic row072_layer002_enumeration row072_bounds_eq row072_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row072_layer003_intervals : List ColouredInterval :=
  [(2, 65536, 65607), (2, 65536, 65607), (3, 59049, 59120), (5, 43750, 43821), (5, 46875, 46946), (5, 50000, 50071), (5, 53125, 53196), (5, 56250, 56321), (5, 59375, 59446), (5, 62500, 62571), (5, 65625, 65696), (5, 46875, 46946), (5, 62500, 62571), (5, 78125, 78196), (5, 78125, 78196), (7, 43218, 43289), (7, 45619, 45690), (7, 48020, 48091), (7, 50421, 50492), (7, 50421, 50492), (7, 67228, 67299), (11, 43923, 43994), (11, 58564, 58635), (11, 73205, 73276), (13, 41743, 41814), (13, 43940, 44011), (13, 46137, 46208), (13, 57122, 57193), (17, 44217, 44288), (17, 49130, 49201), (17, 54043, 54114), (17, 58956, 59027), (17, 63869, 63940), (17, 68782, 68853), (17, 73695, 73766), (17, 78608, 78679), (19, 41154, 41225), (19, 48013, 48084), (19, 54872, 54943), (19, 61731, 61802), (19, 68590, 68661), (19, 75449, 75520), (23, 48668, 48739), (23, 60835, 60906), (23, 73002, 73073), (29, 48778, 48849), (29, 73167, 73238), (31, 59582, 59653), (37, 50653, 50724), (41, 68921, 68992), (43, 79507, 79578), (47, 41971, 42042), (47, 44180, 44251), (47, 46389, 46460), (53, 42135, 42206), (53, 44944, 45015), (53, 47753, 47824), (53, 50562, 50633), (53, 53371, 53442), (53, 56180, 56251), (53, 58989, 59060), (59, 41772, 41843), (59, 45253, 45324), (59, 48734, 48805), (59, 52215, 52286), (59, 55696, 55767), (59, 59177, 59248), (59, 62658, 62729), (59, 66139, 66210), (59, 69620, 69691), (59, 73101, 73172), (61, 40931, 41002), (61, 44652, 44723), (61, 48373, 48444), (61, 52094, 52165), (61, 55815, 55886), (61, 59536, 59607), (61, 63257, 63328), (61, 66978, 67049), (61, 70699, 70770), (61, 74420, 74491), (61, 78141, 78212), (67, 44890, 44961), (67, 49379, 49450), (67, 53868, 53939), (67, 58357, 58428), (67, 62846, 62917), (67, 67335, 67406), (67, 71824, 71895), (67, 76313, 76384), (67, 80802, 80873), (71, 45369, 45440), (71, 50410, 50481), (71, 55451, 55522), (71, 60492, 60563), (71, 65533, 65604), (71, 70574, 70645), (71, 75615, 75686), (71, 80656, 80727)]

def row072_layer003_block000 : List ColouredInterval :=
  [(2, 65536, 65607), (2, 65536, 65607), (3, 59049, 59120), (5, 43750, 43821), (5, 46875, 46946), (5, 50000, 50071), (5, 53125, 53196), (5, 56250, 56321), (5, 59375, 59446), (5, 62500, 62571), (5, 65625, 65696), (5, 46875, 46946), (5, 62500, 62571), (5, 78125, 78196), (5, 78125, 78196), (7, 43218, 43289)]

def row072_layer003_block001 : List ColouredInterval :=
  [(7, 45619, 45690), (7, 48020, 48091), (7, 50421, 50492), (7, 50421, 50492), (7, 67228, 67299), (11, 43923, 43994), (11, 58564, 58635), (11, 73205, 73276), (13, 41743, 41814), (13, 43940, 44011), (13, 46137, 46208), (13, 57122, 57193), (17, 44217, 44288), (17, 49130, 49201), (17, 54043, 54114), (17, 58956, 59027)]

def row072_layer003_block002 : List ColouredInterval :=
  [(17, 63869, 63940), (17, 68782, 68853), (17, 73695, 73766), (17, 78608, 78679), (19, 41154, 41225), (19, 48013, 48084), (19, 54872, 54943), (19, 61731, 61802), (19, 68590, 68661), (19, 75449, 75520), (23, 48668, 48739), (23, 60835, 60906), (23, 73002, 73073), (29, 48778, 48849), (29, 73167, 73238), (31, 59582, 59653)]

def row072_layer003_block003 : List ColouredInterval :=
  [(37, 50653, 50724), (41, 68921, 68992), (43, 79507, 79578), (47, 41971, 42042), (47, 44180, 44251), (47, 46389, 46460), (53, 42135, 42206), (53, 44944, 45015), (53, 47753, 47824), (53, 50562, 50633), (53, 53371, 53442), (53, 56180, 56251), (53, 58989, 59060), (59, 41772, 41843), (59, 45253, 45324), (59, 48734, 48805)]

def row072_layer003_block004 : List ColouredInterval :=
  [(59, 52215, 52286), (59, 55696, 55767), (59, 59177, 59248), (59, 62658, 62729), (59, 66139, 66210), (59, 69620, 69691), (59, 73101, 73172), (61, 40931, 41002), (61, 44652, 44723), (61, 48373, 48444), (61, 52094, 52165), (61, 55815, 55886), (61, 59536, 59607), (61, 63257, 63328), (61, 66978, 67049), (61, 70699, 70770)]

def row072_layer003_block005 : List ColouredInterval :=
  [(61, 74420, 74491), (61, 78141, 78212), (67, 44890, 44961), (67, 49379, 49450), (67, 53868, 53939), (67, 58357, 58428), (67, 62846, 62917), (67, 67335, 67406), (67, 71824, 71895), (67, 76313, 76384), (67, 80802, 80873), (71, 45369, 45440), (71, 50410, 50481), (71, 55451, 55522), (71, 60492, 60563), (71, 65533, 65604)]

def row072_layer003_block006 : List ColouredInterval :=
  [(71, 70574, 70645), (71, 75615, 75686), (71, 80656, 80727)]

def row072_layer003_chunks : List (List ColouredInterval) :=
  [row072_layer003_block000, row072_layer003_block001, row072_layer003_block002, row072_layer003_block003, row072_layer003_block004, row072_layer003_block005, row072_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_arithmetic : LayerArithmeticValid row072.height { lower := 40896, upper := 81792, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_enumeration :
    activePowerIntervalList 72 21 40896 81792 = row072_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs000 :
    row072_layer003_block000.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer003_pairs001 :
    row072_layer003_block001.all (fun I => row072_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row072_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer003_pairs001
