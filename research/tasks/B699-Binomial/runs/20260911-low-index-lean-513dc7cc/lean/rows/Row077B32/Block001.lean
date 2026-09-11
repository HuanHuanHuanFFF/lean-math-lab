import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs009 :
    row077_layer000_block009.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_chunks_eq : row077_layer000_chunks.flatten = row077_layer000_intervals := by
  rfl

theorem row077_layer000_pairs : pairCoverCheck row077_layer000_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer000_chunks_eq
  intro block hblock
  simp only [row077_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row077_layer000_pairs000
  · exact row077_layer000_pairs001
  · exact row077_layer000_pairs002
  · exact row077_layer000_pairs003
  · exact row077_layer000_pairs004
  · exact row077_layer000_pairs005
  · exact row077_layer000_pairs006
  · exact row077_layer000_pairs007
  · exact row077_layer000_pairs008
  · exact row077_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_checked :
    coverLayerCheck row077.height row077.goods { lower := 5852, upper := 11704, M := 29 } = true := by
  exact coverLayerCheck_of_parts row077_layer000_arithmetic row077_layer000_enumeration row077_bounds_eq row077_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer001_intervals : List ColouredInterval :=
  [(2, 11776, 11852), (2, 12288, 12364), (2, 12800, 12876), (2, 12288, 12364), (2, 13312, 13388), (2, 14336, 14412), (2, 15360, 15436), (2, 16384, 16460), (2, 17408, 17484), (2, 18432, 18508), (2, 19456, 19532), (2, 20480, 20556), (2, 21504, 21580), (2, 22528, 22604), (2, 12288, 12364), (2, 14336, 14412), (2, 16384, 16460), (2, 18432, 18508), (2, 20480, 20556), (2, 22528, 22604), (2, 12288, 12364), (2, 16384, 16460), (2, 20480, 20556), (2, 16384, 16460), (2, 16384, 16460), (3, 11704, 11740), (3, 12393, 12469), (3, 13122, 13198), (3, 13851, 13927), (3, 14580, 14656), (3, 15309, 15385), (3, 16038, 16114), (3, 16767, 16843), (3, 17496, 17572), (3, 18225, 18301), (3, 13122, 13198), (3, 15309, 15385), (3, 17496, 17572), (3, 19683, 19759), (3, 21870, 21946), (3, 13122, 13198), (3, 19683, 19759), (3, 19683, 19759), (5, 11875, 11951), (5, 12500, 12576), (5, 13125, 13201), (5, 13750, 13826), (5, 14375, 14451), (5, 15000, 15076), (5, 15625, 15701), (5, 12500, 12576), (5, 15625, 15701), (5, 18750, 18826), (5, 21875, 21951), (5, 15625, 15701), (7, 16807, 16883), (11, 14641, 14717), (13, 13182, 13258), (13, 15379, 15455), (13, 17576, 17652), (13, 19773, 19849), (13, 21970, 22046), (17, 14739, 14815), (17, 19652, 19728), (19, 13718, 13794), (19, 20577, 20653), (23, 11704, 11714), (23, 12167, 12243), (23, 12696, 12772), (23, 13225, 13301), (23, 12167, 12243), (29, 11774, 11850), (29, 12615, 12691), (29, 13456, 13532), (29, 14297, 14373), (29, 15138, 15214), (29, 15979, 16055), (29, 16820, 16896), (29, 17661, 17737), (29, 18502, 18578), (29, 19343, 19419), (29, 20184, 20260), (29, 21025, 21101), (31, 12493, 12569), (31, 13454, 13530), (31, 14415, 14491), (31, 15376, 15452), (31, 16337, 16413), (31, 17298, 17374), (31, 18259, 18335), (31, 19220, 19296), (31, 20181, 20257), (31, 21142, 21218), (31, 22103, 22179), (31, 23064, 23140), (37, 12321, 12397), (37, 13690, 13766), (37, 15059, 15135), (37, 16428, 16504), (37, 17797, 17873), (37, 19166, 19242), (37, 20535, 20611), (37, 21904, 21980), (37, 23273, 23349), (41, 11767, 11843), (41, 13448, 13524), (41, 15129, 15205), (41, 16810, 16886), (41, 18491, 18567), (41, 20172, 20248), (41, 21853, 21929), (43, 12943, 13019), (43, 14792, 14868), (43, 16641, 16717), (43, 18490, 18566), (43, 20339, 20415), (43, 22188, 22264), (47, 13254, 13330), (47, 15463, 15539), (47, 17672, 17748), (47, 19881, 19957), (47, 22090, 22166), (53, 14045, 14121), (53, 16854, 16930), (53, 19663, 19739), (53, 22472, 22548), (59, 13924, 14000), (59, 17405, 17481), (59, 20886, 20962), (61, 14884, 14960), (61, 18605, 18681), (61, 22326, 22402), (67, 13467, 13543), (67, 17956, 18032), (67, 22445, 22521), (71, 15123, 15199), (71, 20164, 20240), (73, 15987, 16063), (73, 21316, 21392)]

def row077_layer001_block000 : List ColouredInterval :=
  [(2, 11776, 11852), (2, 12288, 12364), (2, 12800, 12876), (2, 12288, 12364), (2, 13312, 13388), (2, 14336, 14412), (2, 15360, 15436), (2, 16384, 16460), (2, 17408, 17484), (2, 18432, 18508), (2, 19456, 19532), (2, 20480, 20556), (2, 21504, 21580), (2, 22528, 22604)]

def row077_layer001_block001 : List ColouredInterval :=
  [(2, 12288, 12364), (2, 14336, 14412), (2, 16384, 16460), (2, 18432, 18508), (2, 20480, 20556), (2, 22528, 22604), (2, 12288, 12364), (2, 16384, 16460), (2, 20480, 20556), (2, 16384, 16460), (2, 16384, 16460), (3, 11704, 11740), (3, 12393, 12469), (3, 13122, 13198)]

def row077_layer001_block002 : List ColouredInterval :=
  [(3, 13851, 13927), (3, 14580, 14656), (3, 15309, 15385), (3, 16038, 16114), (3, 16767, 16843), (3, 17496, 17572), (3, 18225, 18301), (3, 13122, 13198), (3, 15309, 15385), (3, 17496, 17572), (3, 19683, 19759), (3, 21870, 21946), (3, 13122, 13198), (3, 19683, 19759)]

def row077_layer001_block003 : List ColouredInterval :=
  [(3, 19683, 19759), (5, 11875, 11951), (5, 12500, 12576), (5, 13125, 13201), (5, 13750, 13826), (5, 14375, 14451), (5, 15000, 15076), (5, 15625, 15701), (5, 12500, 12576), (5, 15625, 15701), (5, 18750, 18826), (5, 21875, 21951), (5, 15625, 15701), (7, 16807, 16883)]

def row077_layer001_block004 : List ColouredInterval :=
  [(11, 14641, 14717), (13, 13182, 13258), (13, 15379, 15455), (13, 17576, 17652), (13, 19773, 19849), (13, 21970, 22046), (17, 14739, 14815), (17, 19652, 19728), (19, 13718, 13794), (19, 20577, 20653), (23, 11704, 11714), (23, 12167, 12243), (23, 12696, 12772), (23, 13225, 13301)]

def row077_layer001_block005 : List ColouredInterval :=
  [(23, 12167, 12243), (29, 11774, 11850), (29, 12615, 12691), (29, 13456, 13532), (29, 14297, 14373), (29, 15138, 15214), (29, 15979, 16055), (29, 16820, 16896), (29, 17661, 17737), (29, 18502, 18578), (29, 19343, 19419), (29, 20184, 20260), (29, 21025, 21101), (31, 12493, 12569)]

def row077_layer001_block006 : List ColouredInterval :=
  [(31, 13454, 13530), (31, 14415, 14491), (31, 15376, 15452), (31, 16337, 16413), (31, 17298, 17374), (31, 18259, 18335), (31, 19220, 19296), (31, 20181, 20257), (31, 21142, 21218), (31, 22103, 22179), (31, 23064, 23140), (37, 12321, 12397), (37, 13690, 13766), (37, 15059, 15135)]

def row077_layer001_block007 : List ColouredInterval :=
  [(37, 16428, 16504), (37, 17797, 17873), (37, 19166, 19242), (37, 20535, 20611), (37, 21904, 21980), (37, 23273, 23349), (41, 11767, 11843), (41, 13448, 13524), (41, 15129, 15205), (41, 16810, 16886), (41, 18491, 18567), (41, 20172, 20248), (41, 21853, 21929), (43, 12943, 13019)]

def row077_layer001_block008 : List ColouredInterval :=
  [(43, 14792, 14868), (43, 16641, 16717), (43, 18490, 18566), (43, 20339, 20415), (43, 22188, 22264), (47, 13254, 13330), (47, 15463, 15539), (47, 17672, 17748), (47, 19881, 19957), (47, 22090, 22166), (53, 14045, 14121), (53, 16854, 16930), (53, 19663, 19739), (53, 22472, 22548)]

def row077_layer001_block009 : List ColouredInterval :=
  [(59, 13924, 14000), (59, 17405, 17481), (59, 20886, 20962), (61, 14884, 14960), (61, 18605, 18681), (61, 22326, 22402), (67, 13467, 13543), (67, 17956, 18032), (67, 22445, 22521), (71, 15123, 15199), (71, 20164, 20240), (73, 15987, 16063), (73, 21316, 21392)]

def row077_layer001_chunks : List (List ColouredInterval) :=
  [row077_layer001_block000, row077_layer001_block001, row077_layer001_block002, row077_layer001_block003, row077_layer001_block004, row077_layer001_block005, row077_layer001_block006, row077_layer001_block007, row077_layer001_block008, row077_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_arithmetic : LayerArithmeticValid row077.height { lower := 11704, upper := 23408, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_enumeration :
    activePowerIntervalList 77 25 11704 23408 = row077_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs000 :
    row077_layer001_block000.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs001 :
    row077_layer001_block001.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs002 :
    row077_layer001_block002.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs003 :
    row077_layer001_block003.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs004 :
    row077_layer001_block004.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs005 :
    row077_layer001_block005.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs006 :
    row077_layer001_block006.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs007 :
    row077_layer001_block007.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs008 :
    row077_layer001_block008.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_pairs009 :
    row077_layer001_block009.all (fun I => row077_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_chunks_eq : row077_layer001_chunks.flatten = row077_layer001_intervals := by
  rfl

theorem row077_layer001_pairs : pairCoverCheck row077_layer001_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer001_chunks_eq
  intro block hblock
  simp only [row077_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row077_layer001_pairs000
  · exact row077_layer001_pairs001
  · exact row077_layer001_pairs002
  · exact row077_layer001_pairs003
  · exact row077_layer001_pairs004
  · exact row077_layer001_pairs005
  · exact row077_layer001_pairs006
  · exact row077_layer001_pairs007
  · exact row077_layer001_pairs008
  · exact row077_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer001_checked :
    coverLayerCheck row077.height row077.goods { lower := 11704, upper := 23408, M := 25 } = true := by
  exact coverLayerCheck_of_parts row077_layer001_arithmetic row077_layer001_enumeration row077_bounds_eq row077_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer002_intervals : List ColouredInterval :=
  [(2, 24576, 24652), (2, 26624, 26700), (2, 28672, 28748), (2, 30720, 30796), (2, 32768, 32844), (2, 34816, 34892), (2, 36864, 36940), (2, 38912, 38988), (2, 40960, 41036), (2, 43008, 43084), (2, 45056, 45132), (2, 24576, 24652), (2, 28672, 28748), (2, 32768, 32844), (2, 36864, 36940), (2, 40960, 41036), (2, 45056, 45132), (2, 24576, 24652), (2, 32768, 32844), (2, 40960, 41036), (2, 32768, 32844), (2, 32768, 32844), (3, 24057, 24133), (3, 26244, 26320), (3, 28431, 28507), (3, 30618, 30694), (3, 32805, 32881), (3, 34992, 35068), (3, 37179, 37255), (3, 39366, 39442), (3, 41553, 41629), (3, 43740, 43816), (3, 45927, 46003), (3, 26244, 26320), (3, 32805, 32881), (3, 39366, 39442), (3, 45927, 46003), (3, 39366, 39442), (5, 25000, 25076), (5, 28125, 28201), (5, 31250, 31326), (5, 34375, 34451), (5, 37500, 37576), (5, 40625, 40701), (5, 43750, 43826), (5, 31250, 31326), (7, 33614, 33690), (11, 29282, 29358), (13, 24167, 24243), (13, 26364, 26440), (13, 28561, 28637), (13, 30758, 30834), (13, 32955, 33031), (13, 35152, 35228), (13, 37349, 37425), (13, 39546, 39622), (13, 41743, 41819), (13, 43940, 44016), (13, 46137, 46213), (13, 28561, 28637), (17, 24565, 24641), (17, 29478, 29554), (17, 34391, 34467), (17, 39304, 39380), (17, 44217, 44293), (19, 27436, 27512), (19, 34295, 34371), (19, 41154, 41230), (23, 24334, 24410), (23, 36501, 36577), (29, 24389, 24465), (31, 29791, 29867), (37, 24642, 24718), (37, 26011, 26087), (37, 27380, 27456), (37, 28749, 28825), (37, 30118, 30194), (41, 23534, 23610), (41, 25215, 25291), (41, 26896, 26972), (41, 28577, 28653), (41, 30258, 30334), (41, 31939, 32015), (41, 33620, 33696), (41, 35301, 35377), (41, 36982, 37058), (43, 24037, 24113), (43, 25886, 25962), (43, 27735, 27811), (43, 29584, 29660), (43, 31433, 31509), (43, 33282, 33358), (43, 35131, 35207), (43, 36980, 37056), (43, 38829, 38905), (43, 40678, 40754), (47, 24299, 24375), (47, 26508, 26584), (47, 28717, 28793), (47, 30926, 31002), (47, 33135, 33211), (47, 35344, 35420), (47, 37553, 37629), (47, 39762, 39838), (47, 41971, 42047), (47, 44180, 44256), (47, 46389, 46465), (53, 25281, 25357), (53, 28090, 28166), (53, 30899, 30975), (53, 33708, 33784), (53, 36517, 36593), (53, 39326, 39402), (53, 42135, 42211), (53, 44944, 45020), (59, 24367, 24443), (59, 27848, 27924), (59, 31329, 31405), (59, 34810, 34886), (59, 38291, 38367), (59, 41772, 41848), (59, 45253, 45329), (61, 26047, 26123), (61, 29768, 29844), (61, 33489, 33565), (61, 37210, 37286), (61, 40931, 41007), (61, 44652, 44728), (67, 26934, 27010), (67, 31423, 31499), (67, 35912, 35988), (67, 40401, 40477), (67, 44890, 44966), (71, 25205, 25281), (71, 30246, 30322), (71, 35287, 35363), (71, 40328, 40404), (71, 45369, 45445), (73, 26645, 26721), (73, 31974, 32050), (73, 37303, 37379), (73, 42632, 42708)]

def row077_layer002_block000 : List ColouredInterval :=
  [(2, 24576, 24652), (2, 26624, 26700), (2, 28672, 28748), (2, 30720, 30796), (2, 32768, 32844), (2, 34816, 34892), (2, 36864, 36940), (2, 38912, 38988), (2, 40960, 41036), (2, 43008, 43084), (2, 45056, 45132), (2, 24576, 24652), (2, 28672, 28748), (2, 32768, 32844)]

def row077_layer002_block001 : List ColouredInterval :=
  [(2, 36864, 36940), (2, 40960, 41036), (2, 45056, 45132), (2, 24576, 24652), (2, 32768, 32844), (2, 40960, 41036), (2, 32768, 32844), (2, 32768, 32844), (3, 24057, 24133), (3, 26244, 26320), (3, 28431, 28507), (3, 30618, 30694), (3, 32805, 32881), (3, 34992, 35068)]

def row077_layer002_block002 : List ColouredInterval :=
  [(3, 37179, 37255), (3, 39366, 39442), (3, 41553, 41629), (3, 43740, 43816), (3, 45927, 46003), (3, 26244, 26320), (3, 32805, 32881), (3, 39366, 39442), (3, 45927, 46003), (3, 39366, 39442), (5, 25000, 25076), (5, 28125, 28201), (5, 31250, 31326), (5, 34375, 34451)]

def row077_layer002_block003 : List ColouredInterval :=
  [(5, 37500, 37576), (5, 40625, 40701), (5, 43750, 43826), (5, 31250, 31326), (7, 33614, 33690), (11, 29282, 29358), (13, 24167, 24243), (13, 26364, 26440), (13, 28561, 28637), (13, 30758, 30834), (13, 32955, 33031), (13, 35152, 35228), (13, 37349, 37425), (13, 39546, 39622)]

def row077_layer002_block004 : List ColouredInterval :=
  [(13, 41743, 41819), (13, 43940, 44016), (13, 46137, 46213), (13, 28561, 28637), (17, 24565, 24641), (17, 29478, 29554), (17, 34391, 34467), (17, 39304, 39380), (17, 44217, 44293), (19, 27436, 27512), (19, 34295, 34371), (19, 41154, 41230), (23, 24334, 24410), (23, 36501, 36577)]

def row077_layer002_block005 : List ColouredInterval :=
  [(29, 24389, 24465), (31, 29791, 29867), (37, 24642, 24718), (37, 26011, 26087), (37, 27380, 27456), (37, 28749, 28825), (37, 30118, 30194), (41, 23534, 23610), (41, 25215, 25291), (41, 26896, 26972), (41, 28577, 28653), (41, 30258, 30334), (41, 31939, 32015), (41, 33620, 33696)]

def row077_layer002_block006 : List ColouredInterval :=
  [(41, 35301, 35377), (41, 36982, 37058), (43, 24037, 24113), (43, 25886, 25962), (43, 27735, 27811), (43, 29584, 29660), (43, 31433, 31509), (43, 33282, 33358), (43, 35131, 35207), (43, 36980, 37056), (43, 38829, 38905), (43, 40678, 40754), (47, 24299, 24375), (47, 26508, 26584)]

def row077_layer002_block007 : List ColouredInterval :=
  [(47, 28717, 28793), (47, 30926, 31002), (47, 33135, 33211), (47, 35344, 35420), (47, 37553, 37629), (47, 39762, 39838), (47, 41971, 42047), (47, 44180, 44256), (47, 46389, 46465), (53, 25281, 25357), (53, 28090, 28166), (53, 30899, 30975), (53, 33708, 33784), (53, 36517, 36593)]

def row077_layer002_block008 : List ColouredInterval :=
  [(53, 39326, 39402), (53, 42135, 42211), (53, 44944, 45020), (59, 24367, 24443), (59, 27848, 27924), (59, 31329, 31405), (59, 34810, 34886), (59, 38291, 38367), (59, 41772, 41848), (59, 45253, 45329), (61, 26047, 26123), (61, 29768, 29844), (61, 33489, 33565), (61, 37210, 37286)]

def row077_layer002_block009 : List ColouredInterval :=
  [(61, 40931, 41007), (61, 44652, 44728), (67, 26934, 27010), (67, 31423, 31499), (67, 35912, 35988), (67, 40401, 40477), (67, 44890, 44966), (71, 25205, 25281), (71, 30246, 30322), (71, 35287, 35363), (71, 40328, 40404), (71, 45369, 45445), (73, 26645, 26721), (73, 31974, 32050)]

def row077_layer002_block010 : List ColouredInterval :=
  [(73, 37303, 37379), (73, 42632, 42708)]

def row077_layer002_chunks : List (List ColouredInterval) :=
  [row077_layer002_block000, row077_layer002_block001, row077_layer002_block002, row077_layer002_block003, row077_layer002_block004, row077_layer002_block005, row077_layer002_block006, row077_layer002_block007, row077_layer002_block008, row077_layer002_block009, row077_layer002_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_arithmetic : LayerArithmeticValid row077.height { lower := 23408, upper := 46816, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_enumeration :
    activePowerIntervalList 77 22 23408 46816 = row077_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs000 :
    row077_layer002_block000.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs001 :
    row077_layer002_block001.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs002 :
    row077_layer002_block002.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs003 :
    row077_layer002_block003.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs004 :
    row077_layer002_block004.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs005 :
    row077_layer002_block005.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs006 :
    row077_layer002_block006.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs007 :
    row077_layer002_block007.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs008 :
    row077_layer002_block008.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs009 :
    row077_layer002_block009.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_pairs010 :
    row077_layer002_block010.all (fun I => row077_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs010
