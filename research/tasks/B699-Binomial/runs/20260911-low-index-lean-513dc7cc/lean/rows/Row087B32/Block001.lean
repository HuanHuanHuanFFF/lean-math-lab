import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row087B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_checked :
    coverLayerCheck row087.height row087.goods { lower := 7482, upper := 14964, M := 26 } = true := by
  exact coverLayerCheck_of_parts row087_layer000_arithmetic row087_layer000_enumeration row087_bounds_eq row087_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row087_layer001_intervals : List ColouredInterval :=
  [(2, 15360, 15446), (2, 16384, 16470), (2, 17408, 17494), (2, 18432, 18518), (2, 19456, 19542), (2, 20480, 20566), (2, 21504, 21590), (2, 22528, 22614), (2, 16384, 16470), (2, 18432, 18518), (2, 20480, 20566), (2, 22528, 22614), (2, 24576, 24662), (2, 26624, 26710), (2, 28672, 28758), (2, 16384, 16470), (2, 20480, 20566), (2, 24576, 24662), (2, 28672, 28758), (2, 16384, 16470), (2, 24576, 24662), (2, 16384, 16470), (3, 15309, 15395), (3, 19683, 19769), (3, 26244, 26330), (3, 19683, 19769), (5, 15625, 15711), (5, 18750, 18836), (5, 21875, 21961), (5, 25000, 25086), (5, 28125, 28211), (5, 15625, 15711), (7, 16807, 16893), (7, 19208, 19294), (7, 21609, 21695), (7, 24010, 24096), (7, 26411, 26497), (7, 28812, 28898), (7, 16807, 16893), (11, 15972, 16058), (11, 17303, 17389), (11, 18634, 18720), (11, 19965, 20051), (11, 21296, 21382), (11, 22627, 22713), (11, 23958, 24044), (11, 25289, 25375), (11, 26620, 26706), (11, 27951, 28037), (11, 29282, 29368), (11, 29282, 29368), (13, 15379, 15465), (13, 17576, 17662), (13, 19773, 19859), (13, 21970, 22056), (13, 24167, 24253), (13, 26364, 26450), (13, 28561, 28647), (13, 28561, 28647), (17, 19652, 19738), (17, 24565, 24651), (17, 29478, 29564), (19, 20577, 20663), (19, 27436, 27522), (23, 24334, 24420), (31, 15376, 15462), (31, 16337, 16423), (31, 17298, 17384), (31, 18259, 18345), (31, 19220, 19306), (31, 20181, 20267), (31, 21142, 21228), (31, 29791, 29877), (37, 15059, 15145), (37, 16428, 16514), (37, 17797, 17883), (37, 19166, 19252), (37, 20535, 20621), (37, 21904, 21990), (37, 23273, 23359), (37, 24642, 24728), (37, 26011, 26097), (37, 27380, 27466), (37, 28749, 28835), (41, 15129, 15215), (41, 16810, 16896), (41, 18491, 18577), (41, 20172, 20258), (41, 21853, 21939), (41, 23534, 23620), (41, 25215, 25301), (41, 26896, 26982), (41, 28577, 28663), (43, 16641, 16727), (43, 18490, 18576), (43, 20339, 20425), (43, 22188, 22274), (43, 24037, 24123), (43, 25886, 25972), (43, 27735, 27821), (43, 29584, 29670), (47, 15463, 15549), (47, 17672, 17758), (47, 19881, 19967), (47, 22090, 22176), (47, 24299, 24385), (47, 26508, 26594), (47, 28717, 28803), (53, 16854, 16940), (53, 19663, 19749), (53, 22472, 22558), (53, 25281, 25367), (53, 28090, 28176), (59, 17405, 17491), (59, 20886, 20972), (59, 24367, 24453), (59, 27848, 27934), (61, 14964, 14970), (61, 18605, 18691), (61, 22326, 22412), (61, 26047, 26133), (61, 29768, 29854), (67, 17956, 18042), (67, 22445, 22531), (67, 26934, 27020), (71, 15123, 15209), (71, 20164, 20250), (71, 25205, 25291), (73, 15987, 16073), (73, 21316, 21402), (73, 26645, 26731), (79, 18723, 18809), (79, 24964, 25050), (83, 20667, 20753), (83, 27556, 27642)]

def row087_layer001_block000 : List ColouredInterval :=
  [(2, 15360, 15446), (2, 16384, 16470), (2, 17408, 17494), (2, 18432, 18518), (2, 19456, 19542), (2, 20480, 20566), (2, 21504, 21590), (2, 22528, 22614), (2, 16384, 16470), (2, 18432, 18518), (2, 20480, 20566), (2, 22528, 22614), (2, 24576, 24662), (2, 26624, 26710), (2, 28672, 28758)]

def row087_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16470), (2, 20480, 20566), (2, 24576, 24662), (2, 28672, 28758), (2, 16384, 16470), (2, 24576, 24662), (2, 16384, 16470), (3, 15309, 15395), (3, 19683, 19769), (3, 26244, 26330), (3, 19683, 19769), (5, 15625, 15711), (5, 18750, 18836), (5, 21875, 21961), (5, 25000, 25086)]

def row087_layer001_block002 : List ColouredInterval :=
  [(5, 28125, 28211), (5, 15625, 15711), (7, 16807, 16893), (7, 19208, 19294), (7, 21609, 21695), (7, 24010, 24096), (7, 26411, 26497), (7, 28812, 28898), (7, 16807, 16893), (11, 15972, 16058), (11, 17303, 17389), (11, 18634, 18720), (11, 19965, 20051), (11, 21296, 21382), (11, 22627, 22713)]

def row087_layer001_block003 : List ColouredInterval :=
  [(11, 23958, 24044), (11, 25289, 25375), (11, 26620, 26706), (11, 27951, 28037), (11, 29282, 29368), (11, 29282, 29368), (13, 15379, 15465), (13, 17576, 17662), (13, 19773, 19859), (13, 21970, 22056), (13, 24167, 24253), (13, 26364, 26450), (13, 28561, 28647), (13, 28561, 28647), (17, 19652, 19738)]

def row087_layer001_block004 : List ColouredInterval :=
  [(17, 24565, 24651), (17, 29478, 29564), (19, 20577, 20663), (19, 27436, 27522), (23, 24334, 24420), (31, 15376, 15462), (31, 16337, 16423), (31, 17298, 17384), (31, 18259, 18345), (31, 19220, 19306), (31, 20181, 20267), (31, 21142, 21228), (31, 29791, 29877), (37, 15059, 15145), (37, 16428, 16514)]

def row087_layer001_block005 : List ColouredInterval :=
  [(37, 17797, 17883), (37, 19166, 19252), (37, 20535, 20621), (37, 21904, 21990), (37, 23273, 23359), (37, 24642, 24728), (37, 26011, 26097), (37, 27380, 27466), (37, 28749, 28835), (41, 15129, 15215), (41, 16810, 16896), (41, 18491, 18577), (41, 20172, 20258), (41, 21853, 21939), (41, 23534, 23620)]

def row087_layer001_block006 : List ColouredInterval :=
  [(41, 25215, 25301), (41, 26896, 26982), (41, 28577, 28663), (43, 16641, 16727), (43, 18490, 18576), (43, 20339, 20425), (43, 22188, 22274), (43, 24037, 24123), (43, 25886, 25972), (43, 27735, 27821), (43, 29584, 29670), (47, 15463, 15549), (47, 17672, 17758), (47, 19881, 19967), (47, 22090, 22176)]

def row087_layer001_block007 : List ColouredInterval :=
  [(47, 24299, 24385), (47, 26508, 26594), (47, 28717, 28803), (53, 16854, 16940), (53, 19663, 19749), (53, 22472, 22558), (53, 25281, 25367), (53, 28090, 28176), (59, 17405, 17491), (59, 20886, 20972), (59, 24367, 24453), (59, 27848, 27934), (61, 14964, 14970), (61, 18605, 18691), (61, 22326, 22412)]

def row087_layer001_block008 : List ColouredInterval :=
  [(61, 26047, 26133), (61, 29768, 29854), (67, 17956, 18042), (67, 22445, 22531), (67, 26934, 27020), (71, 15123, 15209), (71, 20164, 20250), (71, 25205, 25291), (73, 15987, 16073), (73, 21316, 21402), (73, 26645, 26731), (79, 18723, 18809), (79, 24964, 25050), (83, 20667, 20753), (83, 27556, 27642)]

def row087_layer001_chunks : List (List ColouredInterval) :=
  [row087_layer001_block000, row087_layer001_block001, row087_layer001_block002, row087_layer001_block003, row087_layer001_block004, row087_layer001_block005, row087_layer001_block006, row087_layer001_block007, row087_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_arithmetic : LayerArithmeticValid row087.height { lower := 14964, upper := 29928, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_enumeration :
    activePowerIntervalList 87 22 14964 29928 = row087_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs000 :
    row087_layer001_block000.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs001 :
    row087_layer001_block001.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs002 :
    row087_layer001_block002.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs003 :
    row087_layer001_block003.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs004 :
    row087_layer001_block004.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs005 :
    row087_layer001_block005.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs006 :
    row087_layer001_block006.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs007 :
    row087_layer001_block007.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_pairs008 :
    row087_layer001_block008.all (fun I => row087_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_chunks_eq : row087_layer001_chunks.flatten = row087_layer001_intervals := by
  rfl

theorem row087_layer001_pairs : pairCoverCheck row087_layer001_intervals row087_bounds = true := by
  apply pairCoverCheck_of_chunks row087_layer001_chunks_eq
  intro block hblock
  simp only [row087_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row087_layer001_pairs000
  · exact row087_layer001_pairs001
  · exact row087_layer001_pairs002
  · exact row087_layer001_pairs003
  · exact row087_layer001_pairs004
  · exact row087_layer001_pairs005
  · exact row087_layer001_pairs006
  · exact row087_layer001_pairs007
  · exact row087_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer001_checked :
    coverLayerCheck row087.height row087.goods { lower := 14964, upper := 29928, M := 22 } = true := by
  exact coverLayerCheck_of_parts row087_layer001_arithmetic row087_layer001_enumeration row087_bounds_eq row087_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row087_layer002_intervals : List ColouredInterval :=
  [(2, 30720, 30806), (2, 32768, 32854), (2, 34816, 34902), (2, 36864, 36950), (2, 38912, 38998), (2, 32768, 32854), (2, 36864, 36950), (2, 40960, 41046), (2, 45056, 45142), (2, 49152, 49238), (2, 53248, 53334), (2, 57344, 57430), (2, 32768, 32854), (2, 40960, 41046), (2, 49152, 49238), (2, 57344, 57430), (2, 32768, 32854), (2, 49152, 49238), (2, 32768, 32854), (3, 32805, 32891), (3, 39366, 39452), (3, 39366, 39452), (3, 59049, 59135), (3, 59049, 59135), (5, 31250, 31336), (5, 34375, 34461), (5, 37500, 37586), (5, 40625, 40711), (5, 43750, 43836), (5, 46875, 46961), (5, 50000, 50086), (5, 53125, 53211), (5, 56250, 56336), (5, 59375, 59461), (5, 31250, 31336), (5, 46875, 46961), (7, 31213, 31299), (7, 33614, 33700), (7, 36015, 36101), (7, 38416, 38502), (7, 40817, 40903), (7, 43218, 43304), (7, 45619, 45705), (7, 33614, 33700), (7, 50421, 50507), (11, 43923, 44009), (11, 58564, 58650), (13, 30758, 30844), (13, 32955, 33041), (13, 35152, 35238), (13, 37349, 37435), (13, 39546, 39632), (13, 41743, 41829), (13, 57122, 57208), (17, 34391, 34477), (17, 39304, 39390), (17, 44217, 44303), (17, 49130, 49216), (17, 54043, 54129), (17, 58956, 59042), (19, 34295, 34381), (19, 41154, 41240), (19, 48013, 48099), (19, 54872, 54958), (23, 36501, 36587), (23, 48668, 48754), (31, 59582, 59668), (37, 50653, 50739), (41, 30258, 30344), (41, 31939, 32025), (43, 31433, 31519), (43, 33282, 33368), (43, 35131, 35217), (47, 30926, 31012), (47, 33135, 33221), (47, 35344, 35430), (47, 37553, 37639), (47, 39762, 39848), (47, 41971, 42057), (53, 30899, 30985), (53, 33708, 33794), (53, 36517, 36603), (53, 39326, 39412), (53, 42135, 42221), (53, 44944, 45030), (53, 47753, 47839), (53, 50562, 50648), (53, 53371, 53457), (59, 31329, 31415), (59, 34810, 34896), (59, 38291, 38377), (59, 41772, 41858), (59, 45253, 45339), (59, 48734, 48820), (59, 52215, 52301), (59, 55696, 55782), (59, 59177, 59263), (61, 33489, 33575), (61, 37210, 37296), (61, 40931, 41017), (61, 44652, 44738), (61, 48373, 48459), (61, 52094, 52180), (61, 55815, 55901), (61, 59536, 59622), (67, 31423, 31509), (67, 35912, 35998), (67, 40401, 40487), (67, 44890, 44976), (67, 49379, 49465), (67, 53868, 53954), (67, 58357, 58443), (71, 30246, 30332), (71, 35287, 35373), (71, 40328, 40414), (71, 45369, 45455), (71, 50410, 50496), (71, 55451, 55537), (73, 31974, 32060), (73, 37303, 37389), (73, 42632, 42718), (73, 47961, 48047), (73, 53290, 53376), (73, 58619, 58705), (79, 31205, 31291), (79, 37446, 37532), (79, 43687, 43773), (79, 49928, 50014), (79, 56169, 56255), (83, 34445, 34531), (83, 41334, 41420), (83, 48223, 48309), (83, 55112, 55198)]

def row087_layer002_block000 : List ColouredInterval :=
  [(2, 30720, 30806), (2, 32768, 32854), (2, 34816, 34902), (2, 36864, 36950), (2, 38912, 38998), (2, 32768, 32854), (2, 36864, 36950), (2, 40960, 41046), (2, 45056, 45142), (2, 49152, 49238), (2, 53248, 53334), (2, 57344, 57430), (2, 32768, 32854), (2, 40960, 41046), (2, 49152, 49238)]

def row087_layer002_block001 : List ColouredInterval :=
  [(2, 57344, 57430), (2, 32768, 32854), (2, 49152, 49238), (2, 32768, 32854), (3, 32805, 32891), (3, 39366, 39452), (3, 39366, 39452), (3, 59049, 59135), (3, 59049, 59135), (5, 31250, 31336), (5, 34375, 34461), (5, 37500, 37586), (5, 40625, 40711), (5, 43750, 43836), (5, 46875, 46961)]

def row087_layer002_block002 : List ColouredInterval :=
  [(5, 50000, 50086), (5, 53125, 53211), (5, 56250, 56336), (5, 59375, 59461), (5, 31250, 31336), (5, 46875, 46961), (7, 31213, 31299), (7, 33614, 33700), (7, 36015, 36101), (7, 38416, 38502), (7, 40817, 40903), (7, 43218, 43304), (7, 45619, 45705), (7, 33614, 33700), (7, 50421, 50507)]

def row087_layer002_block003 : List ColouredInterval :=
  [(11, 43923, 44009), (11, 58564, 58650), (13, 30758, 30844), (13, 32955, 33041), (13, 35152, 35238), (13, 37349, 37435), (13, 39546, 39632), (13, 41743, 41829), (13, 57122, 57208), (17, 34391, 34477), (17, 39304, 39390), (17, 44217, 44303), (17, 49130, 49216), (17, 54043, 54129), (17, 58956, 59042)]

def row087_layer002_block004 : List ColouredInterval :=
  [(19, 34295, 34381), (19, 41154, 41240), (19, 48013, 48099), (19, 54872, 54958), (23, 36501, 36587), (23, 48668, 48754), (31, 59582, 59668), (37, 50653, 50739), (41, 30258, 30344), (41, 31939, 32025), (43, 31433, 31519), (43, 33282, 33368), (43, 35131, 35217), (47, 30926, 31012), (47, 33135, 33221)]

def row087_layer002_block005 : List ColouredInterval :=
  [(47, 35344, 35430), (47, 37553, 37639), (47, 39762, 39848), (47, 41971, 42057), (53, 30899, 30985), (53, 33708, 33794), (53, 36517, 36603), (53, 39326, 39412), (53, 42135, 42221), (53, 44944, 45030), (53, 47753, 47839), (53, 50562, 50648), (53, 53371, 53457), (59, 31329, 31415), (59, 34810, 34896)]

def row087_layer002_block006 : List ColouredInterval :=
  [(59, 38291, 38377), (59, 41772, 41858), (59, 45253, 45339), (59, 48734, 48820), (59, 52215, 52301), (59, 55696, 55782), (59, 59177, 59263), (61, 33489, 33575), (61, 37210, 37296), (61, 40931, 41017), (61, 44652, 44738), (61, 48373, 48459), (61, 52094, 52180), (61, 55815, 55901), (61, 59536, 59622)]

def row087_layer002_block007 : List ColouredInterval :=
  [(67, 31423, 31509), (67, 35912, 35998), (67, 40401, 40487), (67, 44890, 44976), (67, 49379, 49465), (67, 53868, 53954), (67, 58357, 58443), (71, 30246, 30332), (71, 35287, 35373), (71, 40328, 40414), (71, 45369, 45455), (71, 50410, 50496), (71, 55451, 55537), (73, 31974, 32060), (73, 37303, 37389)]

def row087_layer002_block008 : List ColouredInterval :=
  [(73, 42632, 42718), (73, 47961, 48047), (73, 53290, 53376), (73, 58619, 58705), (79, 31205, 31291), (79, 37446, 37532), (79, 43687, 43773), (79, 49928, 50014), (79, 56169, 56255), (83, 34445, 34531), (83, 41334, 41420), (83, 48223, 48309), (83, 55112, 55198)]

def row087_layer002_chunks : List (List ColouredInterval) :=
  [row087_layer002_block000, row087_layer002_block001, row087_layer002_block002, row087_layer002_block003, row087_layer002_block004, row087_layer002_block005, row087_layer002_block006, row087_layer002_block007, row087_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_arithmetic : LayerArithmeticValid row087.height { lower := 29928, upper := 59856, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_enumeration :
    activePowerIntervalList 87 19 29928 59856 = row087_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs000 :
    row087_layer002_block000.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs001 :
    row087_layer002_block001.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs002 :
    row087_layer002_block002.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs003 :
    row087_layer002_block003.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs004 :
    row087_layer002_block004.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs005 :
    row087_layer002_block005.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs006 :
    row087_layer002_block006.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs007 :
    row087_layer002_block007.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_pairs008 :
    row087_layer002_block008.all (fun I => row087_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_chunks_eq : row087_layer002_chunks.flatten = row087_layer002_intervals := by
  rfl

theorem row087_layer002_pairs : pairCoverCheck row087_layer002_intervals row087_bounds = true := by
  apply pairCoverCheck_of_chunks row087_layer002_chunks_eq
  intro block hblock
  simp only [row087_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row087_layer002_pairs000
  · exact row087_layer002_pairs001
  · exact row087_layer002_pairs002
  · exact row087_layer002_pairs003
  · exact row087_layer002_pairs004
  · exact row087_layer002_pairs005
  · exact row087_layer002_pairs006
  · exact row087_layer002_pairs007
  · exact row087_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer002_checked :
    coverLayerCheck row087.height row087.goods { lower := 29928, upper := 59856, M := 19 } = true := by
  exact coverLayerCheck_of_parts row087_layer002_arithmetic row087_layer002_enumeration row087_bounds_eq row087_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row087_layer003_intervals : List ColouredInterval :=
  [(2, 61440, 61526), (2, 65536, 65622), (2, 65536, 65622), (2, 73728, 73814), (2, 81920, 82006), (2, 90112, 90198), (2, 98304, 98390), (2, 106496, 106582), (2, 114688, 114774), (2, 65536, 65622), (2, 81920, 82006), (2, 98304, 98390), (2, 114688, 114774), (2, 65536, 65622), (2, 98304, 98390), (2, 65536, 65622), (3, 78732, 78818), (3, 98415, 98501), (3, 118098, 118184), (5, 62500, 62586), (5, 78125, 78211), (5, 93750, 93836), (5, 109375, 109461), (5, 78125, 78211), (7, 67228, 67314), (7, 84035, 84121), (7, 100842, 100928), (7, 117649, 117735), (7, 117649, 117735), (11, 73205, 73291), (11, 87846, 87932), (11, 102487, 102573), (11, 117128, 117214), (13, 85683, 85769), (13, 114244, 114330), (17, 63869, 63955), (17, 68782, 68868), (17, 73695, 73781), (17, 78608, 78694), (17, 83521, 83607), (19, 61731, 61817), (19, 68590, 68676), (19, 75449, 75535), (19, 82308, 82394), (19, 89167, 89253), (19, 96026, 96112), (19, 102885, 102971), (19, 109744, 109830), (23, 60835, 60921), (23, 73002, 73088), (23, 85169, 85255), (23, 97336, 97422), (23, 109503, 109589), (31, 89373, 89459), (31, 119164, 119250), (37, 101306, 101392), (41, 68921, 69007), (43, 79507, 79593), (47, 103823, 103909), (67, 62846, 62932), (67, 67335, 67421), (67, 71824, 71910), (71, 60492, 60578), (71, 65533, 65619), (71, 70574, 70660), (71, 75615, 75701), (71, 80656, 80742), (73, 63948, 64034), (73, 69277, 69363), (73, 74606, 74692), (73, 79935, 80021), (73, 85264, 85350), (79, 62410, 62496), (79, 68651, 68737), (79, 74892, 74978), (79, 81133, 81219), (79, 87374, 87460), (79, 93615, 93701), (79, 99856, 99942), (83, 62001, 62087), (83, 68890, 68976), (83, 75779, 75865), (83, 82668, 82754), (83, 89557, 89643), (83, 96446, 96532), (83, 103335, 103421), (83, 110224, 110310)]

def row087_layer003_block000 : List ColouredInterval :=
  [(2, 61440, 61526), (2, 65536, 65622), (2, 65536, 65622), (2, 73728, 73814), (2, 81920, 82006), (2, 90112, 90198), (2, 98304, 98390), (2, 106496, 106582), (2, 114688, 114774), (2, 65536, 65622), (2, 81920, 82006), (2, 98304, 98390), (2, 114688, 114774), (2, 65536, 65622), (2, 98304, 98390), (2, 65536, 65622)]

def row087_layer003_block001 : List ColouredInterval :=
  [(3, 78732, 78818), (3, 98415, 98501), (3, 118098, 118184), (5, 62500, 62586), (5, 78125, 78211), (5, 93750, 93836), (5, 109375, 109461), (5, 78125, 78211), (7, 67228, 67314), (7, 84035, 84121), (7, 100842, 100928), (7, 117649, 117735), (7, 117649, 117735), (11, 73205, 73291), (11, 87846, 87932), (11, 102487, 102573)]

def row087_layer003_block002 : List ColouredInterval :=
  [(11, 117128, 117214), (13, 85683, 85769), (13, 114244, 114330), (17, 63869, 63955), (17, 68782, 68868), (17, 73695, 73781), (17, 78608, 78694), (17, 83521, 83607), (19, 61731, 61817), (19, 68590, 68676), (19, 75449, 75535), (19, 82308, 82394), (19, 89167, 89253), (19, 96026, 96112), (19, 102885, 102971), (19, 109744, 109830)]

def row087_layer003_block003 : List ColouredInterval :=
  [(23, 60835, 60921), (23, 73002, 73088), (23, 85169, 85255), (23, 97336, 97422), (23, 109503, 109589), (31, 89373, 89459), (31, 119164, 119250), (37, 101306, 101392), (41, 68921, 69007), (43, 79507, 79593), (47, 103823, 103909), (67, 62846, 62932), (67, 67335, 67421), (67, 71824, 71910), (71, 60492, 60578), (71, 65533, 65619)]

def row087_layer003_block004 : List ColouredInterval :=
  [(71, 70574, 70660), (71, 75615, 75701), (71, 80656, 80742), (73, 63948, 64034), (73, 69277, 69363), (73, 74606, 74692), (73, 79935, 80021), (73, 85264, 85350), (79, 62410, 62496), (79, 68651, 68737), (79, 74892, 74978), (79, 81133, 81219), (79, 87374, 87460), (79, 93615, 93701), (79, 99856, 99942), (83, 62001, 62087)]

def row087_layer003_block005 : List ColouredInterval :=
  [(83, 68890, 68976), (83, 75779, 75865), (83, 82668, 82754), (83, 89557, 89643), (83, 96446, 96532), (83, 103335, 103421), (83, 110224, 110310)]

def row087_layer003_chunks : List (List ColouredInterval) :=
  [row087_layer003_block000, row087_layer003_block001, row087_layer003_block002, row087_layer003_block003, row087_layer003_block004, row087_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_arithmetic : LayerArithmeticValid row087.height { lower := 59856, upper := 119712, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer003_enumeration :
    activePowerIntervalList 87 16 59856 119712 = row087_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer003_enumeration
