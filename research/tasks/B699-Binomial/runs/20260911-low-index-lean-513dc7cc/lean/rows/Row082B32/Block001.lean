import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row082B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_chunks_eq : row082_layer000_chunks.flatten = row082_layer000_intervals := by
  rfl

theorem row082_layer000_pairs : pairCoverCheck row082_layer000_intervals row082_bounds = true := by
  apply pairCoverCheck_of_chunks row082_layer000_chunks_eq
  intro block hblock
  simp only [row082_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row082_layer000_pairs000
  · exact row082_layer000_pairs001
  · exact row082_layer000_pairs002
  · exact row082_layer000_pairs003
  · exact row082_layer000_pairs004
  · exact row082_layer000_pairs005
  · exact row082_layer000_pairs006
  · exact row082_layer000_pairs007
  · exact row082_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_checked :
    coverLayerCheck row082.height row082.goods { lower := 6642, upper := 13284, M := 27 } = true := by
  exact coverLayerCheck_of_parts row082_layer000_arithmetic row082_layer000_enumeration row082_bounds_eq row082_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row082_layer001_intervals : List ColouredInterval :=
  [(2, 14336, 14417), (2, 16384, 16465), (2, 18432, 18513), (2, 20480, 20561), (2, 22528, 22609), (2, 16384, 16465), (2, 20480, 20561), (2, 24576, 24657), (2, 16384, 16465), (2, 24576, 24657), (2, 16384, 16465), (3, 13851, 13932), (3, 14580, 14661), (3, 15309, 15390), (3, 16038, 16119), (3, 16767, 16848), (3, 15309, 15390), (3, 17496, 17577), (3, 19683, 19764), (3, 21870, 21951), (3, 24057, 24138), (3, 26244, 26325), (3, 19683, 19764), (3, 26244, 26325), (3, 19683, 19764), (5, 13750, 13831), (5, 14375, 14456), (5, 15625, 15706), (5, 18750, 18831), (5, 21875, 21956), (5, 25000, 25081), (5, 15625, 15706), (7, 14406, 14487), (7, 16807, 16888), (7, 19208, 19289), (7, 21609, 21690), (7, 24010, 24091), (7, 26411, 26492), (7, 16807, 16888), (11, 13310, 13391), (11, 14641, 14722), (11, 15972, 16053), (11, 17303, 17384), (11, 18634, 18715), (11, 19965, 20046), (11, 21296, 21377), (11, 22627, 22708), (11, 23958, 24039), (11, 25289, 25370), (11, 14641, 14722), (13, 15379, 15460), (13, 17576, 17657), (13, 19773, 19854), (13, 21970, 22051), (13, 24167, 24248), (13, 26364, 26445), (17, 14739, 14820), (17, 19652, 19733), (17, 24565, 24646), (19, 13718, 13799), (19, 20577, 20658), (23, 24334, 24415), (29, 13456, 13537), (29, 14297, 14378), (29, 15138, 15219), (29, 15979, 16060), (29, 16820, 16901), (29, 17661, 17742), (29, 18502, 18583), (29, 19343, 19424), (29, 24389, 24470), (31, 13454, 13535), (31, 14415, 14496), (31, 15376, 15457), (31, 16337, 16418), (31, 17298, 17379), (31, 18259, 18340), (31, 19220, 19301), (31, 20181, 20262), (31, 21142, 21223), (31, 22103, 22184), (37, 13690, 13771), (37, 15059, 15140), (37, 16428, 16509), (37, 17797, 17878), (37, 19166, 19247), (37, 20535, 20616), (37, 21904, 21985), (37, 23273, 23354), (37, 24642, 24723), (37, 26011, 26092), (43, 14792, 14873), (43, 16641, 16722), (43, 18490, 18571), (43, 20339, 20420), (43, 22188, 22269), (43, 24037, 24118), (43, 25886, 25967), (47, 13284, 13335), (47, 15463, 15544), (47, 17672, 17753), (47, 19881, 19962), (47, 22090, 22171), (47, 24299, 24380), (47, 26508, 26567), (53, 14045, 14126), (53, 16854, 16935), (53, 19663, 19744), (53, 22472, 22553), (53, 25281, 25362), (59, 13924, 14005), (59, 17405, 17486), (59, 20886, 20967), (59, 24367, 24448), (61, 14884, 14965), (61, 18605, 18686), (61, 22326, 22407), (61, 26047, 26128), (67, 13467, 13548), (67, 17956, 18037), (67, 22445, 22526), (71, 15123, 15204), (71, 20164, 20245), (71, 25205, 25286), (73, 15987, 16068), (73, 21316, 21397), (79, 18723, 18804), (79, 24964, 25045)]

def row082_layer001_block000 : List ColouredInterval :=
  [(2, 14336, 14417), (2, 16384, 16465), (2, 18432, 18513), (2, 20480, 20561), (2, 22528, 22609), (2, 16384, 16465), (2, 20480, 20561), (2, 24576, 24657), (2, 16384, 16465), (2, 24576, 24657), (2, 16384, 16465), (3, 13851, 13932), (3, 14580, 14661), (3, 15309, 15390), (3, 16038, 16119), (3, 16767, 16848)]

def row082_layer001_block001 : List ColouredInterval :=
  [(3, 15309, 15390), (3, 17496, 17577), (3, 19683, 19764), (3, 21870, 21951), (3, 24057, 24138), (3, 26244, 26325), (3, 19683, 19764), (3, 26244, 26325), (3, 19683, 19764), (5, 13750, 13831), (5, 14375, 14456), (5, 15625, 15706), (5, 18750, 18831), (5, 21875, 21956), (5, 25000, 25081), (5, 15625, 15706)]

def row082_layer001_block002 : List ColouredInterval :=
  [(7, 14406, 14487), (7, 16807, 16888), (7, 19208, 19289), (7, 21609, 21690), (7, 24010, 24091), (7, 26411, 26492), (7, 16807, 16888), (11, 13310, 13391), (11, 14641, 14722), (11, 15972, 16053), (11, 17303, 17384), (11, 18634, 18715), (11, 19965, 20046), (11, 21296, 21377), (11, 22627, 22708), (11, 23958, 24039)]

def row082_layer001_block003 : List ColouredInterval :=
  [(11, 25289, 25370), (11, 14641, 14722), (13, 15379, 15460), (13, 17576, 17657), (13, 19773, 19854), (13, 21970, 22051), (13, 24167, 24248), (13, 26364, 26445), (17, 14739, 14820), (17, 19652, 19733), (17, 24565, 24646), (19, 13718, 13799), (19, 20577, 20658), (23, 24334, 24415), (29, 13456, 13537), (29, 14297, 14378)]

def row082_layer001_block004 : List ColouredInterval :=
  [(29, 15138, 15219), (29, 15979, 16060), (29, 16820, 16901), (29, 17661, 17742), (29, 18502, 18583), (29, 19343, 19424), (29, 24389, 24470), (31, 13454, 13535), (31, 14415, 14496), (31, 15376, 15457), (31, 16337, 16418), (31, 17298, 17379), (31, 18259, 18340), (31, 19220, 19301), (31, 20181, 20262), (31, 21142, 21223)]

def row082_layer001_block005 : List ColouredInterval :=
  [(31, 22103, 22184), (37, 13690, 13771), (37, 15059, 15140), (37, 16428, 16509), (37, 17797, 17878), (37, 19166, 19247), (37, 20535, 20616), (37, 21904, 21985), (37, 23273, 23354), (37, 24642, 24723), (37, 26011, 26092), (43, 14792, 14873), (43, 16641, 16722), (43, 18490, 18571), (43, 20339, 20420), (43, 22188, 22269)]

def row082_layer001_block006 : List ColouredInterval :=
  [(43, 24037, 24118), (43, 25886, 25967), (47, 13284, 13335), (47, 15463, 15544), (47, 17672, 17753), (47, 19881, 19962), (47, 22090, 22171), (47, 24299, 24380), (47, 26508, 26567), (53, 14045, 14126), (53, 16854, 16935), (53, 19663, 19744), (53, 22472, 22553), (53, 25281, 25362), (59, 13924, 14005), (59, 17405, 17486)]

def row082_layer001_block007 : List ColouredInterval :=
  [(59, 20886, 20967), (59, 24367, 24448), (61, 14884, 14965), (61, 18605, 18686), (61, 22326, 22407), (61, 26047, 26128), (67, 13467, 13548), (67, 17956, 18037), (67, 22445, 22526), (71, 15123, 15204), (71, 20164, 20245), (71, 25205, 25286), (73, 15987, 16068), (73, 21316, 21397), (79, 18723, 18804), (79, 24964, 25045)]

def row082_layer001_chunks : List (List ColouredInterval) :=
  [row082_layer001_block000, row082_layer001_block001, row082_layer001_block002, row082_layer001_block003, row082_layer001_block004, row082_layer001_block005, row082_layer001_block006, row082_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_arithmetic : LayerArithmeticValid row082.height { lower := 13284, upper := 26568, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_enumeration :
    activePowerIntervalList 82 23 13284 26568 = row082_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs000 :
    row082_layer001_block000.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs001 :
    row082_layer001_block001.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs002 :
    row082_layer001_block002.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs003 :
    row082_layer001_block003.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs004 :
    row082_layer001_block004.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs005 :
    row082_layer001_block005.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs006 :
    row082_layer001_block006.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_pairs007 :
    row082_layer001_block007.all (fun I => row082_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_chunks_eq : row082_layer001_chunks.flatten = row082_layer001_intervals := by
  rfl

theorem row082_layer001_pairs : pairCoverCheck row082_layer001_intervals row082_bounds = true := by
  apply pairCoverCheck_of_chunks row082_layer001_chunks_eq
  intro block hblock
  simp only [row082_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row082_layer001_pairs000
  · exact row082_layer001_pairs001
  · exact row082_layer001_pairs002
  · exact row082_layer001_pairs003
  · exact row082_layer001_pairs004
  · exact row082_layer001_pairs005
  · exact row082_layer001_pairs006
  · exact row082_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer001_checked :
    coverLayerCheck row082.height row082.goods { lower := 13284, upper := 26568, M := 23 } = true := by
  exact coverLayerCheck_of_parts row082_layer001_arithmetic row082_layer001_enumeration row082_bounds_eq row082_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row082_layer002_intervals : List ColouredInterval :=
  [(2, 28672, 28753), (2, 32768, 32849), (2, 36864, 36945), (2, 40960, 41041), (2, 32768, 32849), (2, 40960, 41041), (2, 49152, 49233), (2, 32768, 32849), (2, 49152, 49233), (2, 32768, 32849), (3, 28431, 28512), (3, 30618, 30699), (3, 32805, 32886), (3, 34992, 35073), (3, 37179, 37260), (3, 39366, 39447), (3, 41553, 41634), (3, 43740, 43821), (3, 32805, 32886), (3, 39366, 39447), (3, 45927, 46008), (3, 52488, 52569), (3, 39366, 39447), (5, 28125, 28206), (5, 31250, 31331), (5, 34375, 34456), (5, 37500, 37581), (5, 40625, 40706), (5, 43750, 43831), (5, 46875, 46956), (5, 50000, 50081), (5, 53125, 53135), (5, 31250, 31331), (5, 46875, 46956), (7, 28812, 28893), (7, 31213, 31294), (7, 33614, 33695), (7, 36015, 36096), (7, 38416, 38497), (7, 40817, 40898), (7, 43218, 43299), (7, 45619, 45700), (7, 48020, 48101), (7, 33614, 33695), (7, 50421, 50502), (11, 26620, 26701), (11, 29282, 29363), (11, 43923, 44004), (13, 28561, 28642), (13, 30758, 30839), (13, 32955, 33036), (13, 35152, 35233), (13, 37349, 37430), (13, 39546, 39627), (13, 41743, 41824), (13, 43940, 44021), (13, 28561, 28642), (17, 29478, 29559), (17, 34391, 34472), (17, 39304, 39385), (17, 44217, 44298), (17, 49130, 49211), (19, 27436, 27517), (19, 34295, 34376), (19, 41154, 41235), (19, 48013, 48094), (23, 36501, 36582), (23, 48668, 48749), (29, 48778, 48859), (31, 29791, 29872), (37, 27380, 27461), (37, 50653, 50734), (43, 27735, 27816), (43, 29584, 29665), (43, 31433, 31514), (43, 33282, 33363), (43, 35131, 35212), (43, 36980, 37061), (47, 26568, 26589), (47, 28717, 28798), (47, 30926, 31007), (47, 33135, 33216), (47, 35344, 35425), (47, 37553, 37634), (47, 39762, 39843), (47, 41971, 42052), (47, 44180, 44261), (53, 28090, 28171), (53, 30899, 30980), (53, 33708, 33789), (53, 36517, 36598), (53, 39326, 39407), (53, 42135, 42216), (53, 44944, 45025), (53, 47753, 47834), (53, 50562, 50643), (59, 27848, 27929), (59, 31329, 31410), (59, 34810, 34891), (59, 38291, 38372), (59, 41772, 41853), (59, 45253, 45334), (59, 48734, 48815), (59, 52215, 52296), (61, 29768, 29849), (61, 33489, 33570), (61, 37210, 37291), (61, 40931, 41012), (61, 44652, 44733), (61, 48373, 48454), (61, 52094, 52175), (67, 26934, 27015), (67, 31423, 31504), (67, 35912, 35993), (67, 40401, 40482), (67, 44890, 44971), (67, 49379, 49460), (71, 30246, 30327), (71, 35287, 35368), (71, 40328, 40409), (71, 45369, 45450), (71, 50410, 50491), (73, 26645, 26726), (73, 31974, 32055), (73, 37303, 37384), (73, 42632, 42713), (73, 47961, 48042), (79, 31205, 31286), (79, 37446, 37527), (79, 43687, 43768), (79, 49928, 50009)]

def row082_layer002_block000 : List ColouredInterval :=
  [(2, 28672, 28753), (2, 32768, 32849), (2, 36864, 36945), (2, 40960, 41041), (2, 32768, 32849), (2, 40960, 41041), (2, 49152, 49233), (2, 32768, 32849), (2, 49152, 49233), (2, 32768, 32849), (3, 28431, 28512), (3, 30618, 30699), (3, 32805, 32886), (3, 34992, 35073), (3, 37179, 37260)]

def row082_layer002_block001 : List ColouredInterval :=
  [(3, 39366, 39447), (3, 41553, 41634), (3, 43740, 43821), (3, 32805, 32886), (3, 39366, 39447), (3, 45927, 46008), (3, 52488, 52569), (3, 39366, 39447), (5, 28125, 28206), (5, 31250, 31331), (5, 34375, 34456), (5, 37500, 37581), (5, 40625, 40706), (5, 43750, 43831), (5, 46875, 46956)]

def row082_layer002_block002 : List ColouredInterval :=
  [(5, 50000, 50081), (5, 53125, 53135), (5, 31250, 31331), (5, 46875, 46956), (7, 28812, 28893), (7, 31213, 31294), (7, 33614, 33695), (7, 36015, 36096), (7, 38416, 38497), (7, 40817, 40898), (7, 43218, 43299), (7, 45619, 45700), (7, 48020, 48101), (7, 33614, 33695), (7, 50421, 50502)]

def row082_layer002_block003 : List ColouredInterval :=
  [(11, 26620, 26701), (11, 29282, 29363), (11, 43923, 44004), (13, 28561, 28642), (13, 30758, 30839), (13, 32955, 33036), (13, 35152, 35233), (13, 37349, 37430), (13, 39546, 39627), (13, 41743, 41824), (13, 43940, 44021), (13, 28561, 28642), (17, 29478, 29559), (17, 34391, 34472), (17, 39304, 39385)]

def row082_layer002_block004 : List ColouredInterval :=
  [(17, 44217, 44298), (17, 49130, 49211), (19, 27436, 27517), (19, 34295, 34376), (19, 41154, 41235), (19, 48013, 48094), (23, 36501, 36582), (23, 48668, 48749), (29, 48778, 48859), (31, 29791, 29872), (37, 27380, 27461), (37, 50653, 50734), (43, 27735, 27816), (43, 29584, 29665), (43, 31433, 31514)]

def row082_layer002_block005 : List ColouredInterval :=
  [(43, 33282, 33363), (43, 35131, 35212), (43, 36980, 37061), (47, 26568, 26589), (47, 28717, 28798), (47, 30926, 31007), (47, 33135, 33216), (47, 35344, 35425), (47, 37553, 37634), (47, 39762, 39843), (47, 41971, 42052), (47, 44180, 44261), (53, 28090, 28171), (53, 30899, 30980), (53, 33708, 33789)]

def row082_layer002_block006 : List ColouredInterval :=
  [(53, 36517, 36598), (53, 39326, 39407), (53, 42135, 42216), (53, 44944, 45025), (53, 47753, 47834), (53, 50562, 50643), (59, 27848, 27929), (59, 31329, 31410), (59, 34810, 34891), (59, 38291, 38372), (59, 41772, 41853), (59, 45253, 45334), (59, 48734, 48815), (59, 52215, 52296), (61, 29768, 29849)]

def row082_layer002_block007 : List ColouredInterval :=
  [(61, 33489, 33570), (61, 37210, 37291), (61, 40931, 41012), (61, 44652, 44733), (61, 48373, 48454), (61, 52094, 52175), (67, 26934, 27015), (67, 31423, 31504), (67, 35912, 35993), (67, 40401, 40482), (67, 44890, 44971), (67, 49379, 49460), (71, 30246, 30327), (71, 35287, 35368), (71, 40328, 40409)]

def row082_layer002_block008 : List ColouredInterval :=
  [(71, 45369, 45450), (71, 50410, 50491), (73, 26645, 26726), (73, 31974, 32055), (73, 37303, 37384), (73, 42632, 42713), (73, 47961, 48042), (79, 31205, 31286), (79, 37446, 37527), (79, 43687, 43768), (79, 49928, 50009)]

def row082_layer002_chunks : List (List ColouredInterval) :=
  [row082_layer002_block000, row082_layer002_block001, row082_layer002_block002, row082_layer002_block003, row082_layer002_block004, row082_layer002_block005, row082_layer002_block006, row082_layer002_block007, row082_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_arithmetic : LayerArithmeticValid row082.height { lower := 26568, upper := 53136, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_enumeration :
    activePowerIntervalList 82 20 26568 53136 = row082_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs000 :
    row082_layer002_block000.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs001 :
    row082_layer002_block001.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs002 :
    row082_layer002_block002.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs003 :
    row082_layer002_block003.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs004 :
    row082_layer002_block004.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs005 :
    row082_layer002_block005.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs006 :
    row082_layer002_block006.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs007 :
    row082_layer002_block007.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_pairs008 :
    row082_layer002_block008.all (fun I => row082_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_chunks_eq : row082_layer002_chunks.flatten = row082_layer002_intervals := by
  rfl

theorem row082_layer002_pairs : pairCoverCheck row082_layer002_intervals row082_bounds = true := by
  apply pairCoverCheck_of_chunks row082_layer002_chunks_eq
  intro block hblock
  simp only [row082_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row082_layer002_pairs000
  · exact row082_layer002_pairs001
  · exact row082_layer002_pairs002
  · exact row082_layer002_pairs003
  · exact row082_layer002_pairs004
  · exact row082_layer002_pairs005
  · exact row082_layer002_pairs006
  · exact row082_layer002_pairs007
  · exact row082_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer002_checked :
    coverLayerCheck row082.height row082.goods { lower := 26568, upper := 53136, M := 20 } = true := by
  exact coverLayerCheck_of_parts row082_layer002_arithmetic row082_layer002_enumeration row082_bounds_eq row082_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row082_layer003_intervals : List ColouredInterval :=
  [(2, 57344, 57425), (2, 65536, 65617), (2, 65536, 65617), (2, 81920, 82001), (2, 98304, 98385), (2, 65536, 65617), (2, 98304, 98385), (2, 65536, 65617), (3, 59049, 59130), (3, 65610, 65691), (3, 72171, 72252), (3, 78732, 78813), (3, 85293, 85374), (3, 91854, 91935), (3, 98415, 98496), (3, 104976, 105057), (3, 59049, 59130), (3, 78732, 78813), (3, 98415, 98496), (3, 59049, 59130), (5, 53136, 53206), (5, 62500, 62581), (5, 78125, 78206), (5, 93750, 93831), (5, 78125, 78206), (7, 67228, 67309), (7, 84035, 84116), (7, 100842, 100923), (11, 58564, 58645), (11, 73205, 73286), (11, 87846, 87927), (11, 102487, 102568), (13, 57122, 57203), (13, 85683, 85764), (17, 54043, 54124), (17, 58956, 59037), (17, 63869, 63950), (17, 68782, 68863), (17, 73695, 73776), (17, 78608, 78689), (17, 83521, 83602), (17, 83521, 83602), (19, 54872, 54953), (19, 61731, 61812), (19, 68590, 68671), (19, 75449, 75530), (19, 82308, 82389), (19, 89167, 89248), (19, 96026, 96107), (19, 102885, 102966), (23, 60835, 60916), (23, 73002, 73083), (23, 85169, 85250), (23, 97336, 97417), (29, 73167, 73248), (29, 97556, 97637), (31, 59582, 59663), (31, 89373, 89454), (37, 101306, 101387), (43, 79507, 79588), (47, 103823, 103904), (59, 55696, 55777), (59, 59177, 59258), (61, 55815, 55896), (61, 59536, 59617), (61, 63257, 63338), (67, 53868, 53949), (67, 58357, 58438), (67, 62846, 62927), (67, 67335, 67416), (67, 71824, 71905), (67, 76313, 76394), (71, 55451, 55532), (71, 60492, 60573), (71, 65533, 65614), (71, 70574, 70655), (71, 75615, 75696), (71, 80656, 80737), (71, 85697, 85778), (73, 53290, 53371), (73, 58619, 58700), (73, 63948, 64029), (73, 69277, 69358), (73, 74606, 74687), (73, 79935, 80016), (73, 85264, 85345), (73, 90593, 90674), (79, 56169, 56250), (79, 62410, 62491), (79, 68651, 68732), (79, 74892, 74973), (79, 81133, 81214), (79, 87374, 87455), (79, 93615, 93696), (79, 99856, 99937), (79, 106097, 106178)]

def row082_layer003_block000 : List ColouredInterval :=
  [(2, 57344, 57425), (2, 65536, 65617), (2, 65536, 65617), (2, 81920, 82001), (2, 98304, 98385), (2, 65536, 65617), (2, 98304, 98385), (2, 65536, 65617), (3, 59049, 59130), (3, 65610, 65691), (3, 72171, 72252), (3, 78732, 78813), (3, 85293, 85374), (3, 91854, 91935), (3, 98415, 98496), (3, 104976, 105057)]

def row082_layer003_block001 : List ColouredInterval :=
  [(3, 59049, 59130), (3, 78732, 78813), (3, 98415, 98496), (3, 59049, 59130), (5, 53136, 53206), (5, 62500, 62581), (5, 78125, 78206), (5, 93750, 93831), (5, 78125, 78206), (7, 67228, 67309), (7, 84035, 84116), (7, 100842, 100923), (11, 58564, 58645), (11, 73205, 73286), (11, 87846, 87927), (11, 102487, 102568)]

def row082_layer003_block002 : List ColouredInterval :=
  [(13, 57122, 57203), (13, 85683, 85764), (17, 54043, 54124), (17, 58956, 59037), (17, 63869, 63950), (17, 68782, 68863), (17, 73695, 73776), (17, 78608, 78689), (17, 83521, 83602), (17, 83521, 83602), (19, 54872, 54953), (19, 61731, 61812), (19, 68590, 68671), (19, 75449, 75530), (19, 82308, 82389), (19, 89167, 89248)]

def row082_layer003_block003 : List ColouredInterval :=
  [(19, 96026, 96107), (19, 102885, 102966), (23, 60835, 60916), (23, 73002, 73083), (23, 85169, 85250), (23, 97336, 97417), (29, 73167, 73248), (29, 97556, 97637), (31, 59582, 59663), (31, 89373, 89454), (37, 101306, 101387), (43, 79507, 79588), (47, 103823, 103904), (59, 55696, 55777), (59, 59177, 59258), (61, 55815, 55896)]

def row082_layer003_block004 : List ColouredInterval :=
  [(61, 59536, 59617), (61, 63257, 63338), (67, 53868, 53949), (67, 58357, 58438), (67, 62846, 62927), (67, 67335, 67416), (67, 71824, 71905), (67, 76313, 76394), (71, 55451, 55532), (71, 60492, 60573), (71, 65533, 65614), (71, 70574, 70655), (71, 75615, 75696), (71, 80656, 80737), (71, 85697, 85778), (73, 53290, 53371)]

def row082_layer003_block005 : List ColouredInterval :=
  [(73, 58619, 58700), (73, 63948, 64029), (73, 69277, 69358), (73, 74606, 74687), (73, 79935, 80016), (73, 85264, 85345), (73, 90593, 90674), (79, 56169, 56250), (79, 62410, 62491), (79, 68651, 68732), (79, 74892, 74973), (79, 81133, 81214), (79, 87374, 87455), (79, 93615, 93696), (79, 99856, 99937), (79, 106097, 106178)]

def row082_layer003_chunks : List (List ColouredInterval) :=
  [row082_layer003_block000, row082_layer003_block001, row082_layer003_block002, row082_layer003_block003, row082_layer003_block004, row082_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_arithmetic : LayerArithmeticValid row082.height { lower := 53136, upper := 106272, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer003_enumeration :
    activePowerIntervalList 82 17 53136 106272 = row082_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer003_enumeration
