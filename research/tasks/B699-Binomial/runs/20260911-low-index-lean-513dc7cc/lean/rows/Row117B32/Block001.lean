import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row117B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs006 :
    row117_layer000_block006.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs007 :
    row117_layer000_block007.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs008 :
    row117_layer000_block008.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs009 :
    row117_layer000_block009.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs010 :
    row117_layer000_block010.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_pairs011 :
    row117_layer000_block011.all (fun I => row117_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_chunks_eq : row117_layer000_chunks.flatten = row117_layer000_intervals := by
  rfl

theorem row117_layer000_pairs : pairCoverCheck row117_layer000_intervals row117_bounds = true := by
  apply pairCoverCheck_of_chunks row117_layer000_chunks_eq
  intro block hblock
  simp only [row117_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row117_layer000_pairs000
  · exact row117_layer000_pairs001
  · exact row117_layer000_pairs002
  · exact row117_layer000_pairs003
  · exact row117_layer000_pairs004
  · exact row117_layer000_pairs005
  · exact row117_layer000_pairs006
  · exact row117_layer000_pairs007
  · exact row117_layer000_pairs008
  · exact row117_layer000_pairs009
  · exact row117_layer000_pairs010
  · exact row117_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer000_checked :
    coverLayerCheck row117.height row117.goods { lower := 13572, upper := 27144, M := 26 } = true := by
  exact coverLayerCheck_of_parts row117_layer000_arithmetic row117_layer000_enumeration row117_bounds_eq row117_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row117_layer001_intervals : List ColouredInterval :=
  [(2, 28672, 28788), (2, 30720, 30836), (2, 32768, 32884), (2, 34816, 34932), (2, 36864, 36980), (2, 38912, 39028), (2, 40960, 41076), (2, 43008, 43124), (2, 28672, 28788), (2, 32768, 32884), (2, 36864, 36980), (2, 40960, 41076), (2, 45056, 45172), (2, 49152, 49268), (2, 53248, 53364), (2, 32768, 32884), (2, 40960, 41076), (2, 49152, 49268), (2, 32768, 32884), (2, 49152, 49268), (2, 32768, 32884), (3, 39366, 39482), (5, 28125, 28241), (5, 31250, 31366), (5, 34375, 34491), (5, 37500, 37616), (5, 40625, 40741), (5, 43750, 43866), (5, 46875, 46991), (5, 50000, 50116), (5, 53125, 53241), (5, 31250, 31366), (5, 46875, 46991), (7, 28812, 28928), (7, 31213, 31329), (7, 33614, 33730), (7, 36015, 36131), (7, 38416, 38532), (7, 40817, 40933), (7, 43218, 43334), (7, 45619, 45735), (7, 48020, 48136), (7, 50421, 50537), (7, 33614, 33730), (7, 50421, 50537), (11, 27951, 28067), (11, 29282, 29398), (11, 43923, 44039), (13, 28561, 28677), (17, 29478, 29594), (17, 34391, 34507), (17, 39304, 39420), (17, 44217, 44333), (17, 49130, 49246), (17, 54043, 54159), (19, 27436, 27552), (19, 34295, 34411), (19, 41154, 41270), (19, 48013, 48129), (23, 36501, 36617), (23, 48668, 48784), (29, 48778, 48894), (31, 29791, 29907), (37, 27380, 27496), (37, 28749, 28865), (37, 50653, 50769), (41, 28577, 28693), (41, 30258, 30374), (41, 31939, 32055), (41, 33620, 33736), (41, 35301, 35417), (43, 27735, 27851), (43, 29584, 29700), (43, 31433, 31549), (43, 33282, 33398), (43, 35131, 35247), (43, 36980, 37096), (43, 38829, 38945), (47, 28717, 28833), (47, 30926, 31042), (47, 33135, 33251), (47, 35344, 35460), (47, 37553, 37669), (47, 39762, 39878), (47, 41971, 42087), (47, 44180, 44296), (47, 46389, 46505), (53, 28090, 28206), (53, 30899, 31015), (53, 33708, 33824), (53, 36517, 36633), (53, 39326, 39442), (53, 42135, 42251), (53, 44944, 45060), (53, 47753, 47869), (53, 50562, 50678), (53, 53371, 53487), (59, 27848, 27964), (59, 31329, 31445), (59, 34810, 34926), (59, 38291, 38407), (59, 41772, 41888), (59, 45253, 45369), (59, 48734, 48850), (59, 52215, 52331), (61, 29768, 29884), (61, 33489, 33605), (61, 37210, 37326), (61, 40931, 41047), (61, 44652, 44768), (61, 48373, 48489), (61, 52094, 52210), (67, 31423, 31539), (67, 35912, 36028), (67, 40401, 40517), (67, 44890, 45006), (67, 49379, 49495), (67, 53868, 53984), (71, 30246, 30362), (71, 35287, 35403), (71, 40328, 40444), (71, 45369, 45485), (71, 50410, 50526), (73, 31974, 32090), (73, 37303, 37419), (73, 42632, 42748), (73, 47961, 48077), (73, 53290, 53406), (79, 31205, 31321), (79, 37446, 37562), (79, 43687, 43803), (79, 49928, 50044), (83, 27556, 27672), (83, 34445, 34561), (83, 41334, 41450), (83, 48223, 48339), (89, 31684, 31800), (89, 39605, 39721), (89, 47526, 47642), (97, 28227, 28343), (97, 37636, 37752), (97, 47045, 47161), (101, 30603, 30719), (101, 40804, 40920), (101, 51005, 51121), (103, 31827, 31943), (103, 42436, 42552), (103, 53045, 53161), (107, 34347, 34463), (107, 45796, 45912), (109, 35643, 35759), (109, 47524, 47640), (113, 38307, 38423), (113, 51076, 51192)]

def row117_layer001_block000 : List ColouredInterval :=
  [(2, 28672, 28788), (2, 30720, 30836), (2, 32768, 32884), (2, 34816, 34932), (2, 36864, 36980), (2, 38912, 39028), (2, 40960, 41076), (2, 43008, 43124), (2, 28672, 28788), (2, 32768, 32884), (2, 36864, 36980), (2, 40960, 41076), (2, 45056, 45172)]

def row117_layer001_block001 : List ColouredInterval :=
  [(2, 49152, 49268), (2, 53248, 53364), (2, 32768, 32884), (2, 40960, 41076), (2, 49152, 49268), (2, 32768, 32884), (2, 49152, 49268), (2, 32768, 32884), (3, 39366, 39482), (5, 28125, 28241), (5, 31250, 31366), (5, 34375, 34491), (5, 37500, 37616)]

def row117_layer001_block002 : List ColouredInterval :=
  [(5, 40625, 40741), (5, 43750, 43866), (5, 46875, 46991), (5, 50000, 50116), (5, 53125, 53241), (5, 31250, 31366), (5, 46875, 46991), (7, 28812, 28928), (7, 31213, 31329), (7, 33614, 33730), (7, 36015, 36131), (7, 38416, 38532), (7, 40817, 40933)]

def row117_layer001_block003 : List ColouredInterval :=
  [(7, 43218, 43334), (7, 45619, 45735), (7, 48020, 48136), (7, 50421, 50537), (7, 33614, 33730), (7, 50421, 50537), (11, 27951, 28067), (11, 29282, 29398), (11, 43923, 44039), (13, 28561, 28677), (17, 29478, 29594), (17, 34391, 34507), (17, 39304, 39420)]

def row117_layer001_block004 : List ColouredInterval :=
  [(17, 44217, 44333), (17, 49130, 49246), (17, 54043, 54159), (19, 27436, 27552), (19, 34295, 34411), (19, 41154, 41270), (19, 48013, 48129), (23, 36501, 36617), (23, 48668, 48784), (29, 48778, 48894), (31, 29791, 29907), (37, 27380, 27496), (37, 28749, 28865)]

def row117_layer001_block005 : List ColouredInterval :=
  [(37, 50653, 50769), (41, 28577, 28693), (41, 30258, 30374), (41, 31939, 32055), (41, 33620, 33736), (41, 35301, 35417), (43, 27735, 27851), (43, 29584, 29700), (43, 31433, 31549), (43, 33282, 33398), (43, 35131, 35247), (43, 36980, 37096), (43, 38829, 38945)]

def row117_layer001_block006 : List ColouredInterval :=
  [(47, 28717, 28833), (47, 30926, 31042), (47, 33135, 33251), (47, 35344, 35460), (47, 37553, 37669), (47, 39762, 39878), (47, 41971, 42087), (47, 44180, 44296), (47, 46389, 46505), (53, 28090, 28206), (53, 30899, 31015), (53, 33708, 33824), (53, 36517, 36633)]

def row117_layer001_block007 : List ColouredInterval :=
  [(53, 39326, 39442), (53, 42135, 42251), (53, 44944, 45060), (53, 47753, 47869), (53, 50562, 50678), (53, 53371, 53487), (59, 27848, 27964), (59, 31329, 31445), (59, 34810, 34926), (59, 38291, 38407), (59, 41772, 41888), (59, 45253, 45369), (59, 48734, 48850)]

def row117_layer001_block008 : List ColouredInterval :=
  [(59, 52215, 52331), (61, 29768, 29884), (61, 33489, 33605), (61, 37210, 37326), (61, 40931, 41047), (61, 44652, 44768), (61, 48373, 48489), (61, 52094, 52210), (67, 31423, 31539), (67, 35912, 36028), (67, 40401, 40517), (67, 44890, 45006), (67, 49379, 49495)]

def row117_layer001_block009 : List ColouredInterval :=
  [(67, 53868, 53984), (71, 30246, 30362), (71, 35287, 35403), (71, 40328, 40444), (71, 45369, 45485), (71, 50410, 50526), (73, 31974, 32090), (73, 37303, 37419), (73, 42632, 42748), (73, 47961, 48077), (73, 53290, 53406), (79, 31205, 31321), (79, 37446, 37562)]

def row117_layer001_block010 : List ColouredInterval :=
  [(79, 43687, 43803), (79, 49928, 50044), (83, 27556, 27672), (83, 34445, 34561), (83, 41334, 41450), (83, 48223, 48339), (89, 31684, 31800), (89, 39605, 39721), (89, 47526, 47642), (97, 28227, 28343), (97, 37636, 37752), (97, 47045, 47161), (101, 30603, 30719)]

def row117_layer001_block011 : List ColouredInterval :=
  [(101, 40804, 40920), (101, 51005, 51121), (103, 31827, 31943), (103, 42436, 42552), (103, 53045, 53161), (107, 34347, 34463), (107, 45796, 45912), (109, 35643, 35759), (109, 47524, 47640), (113, 38307, 38423), (113, 51076, 51192)]

def row117_layer001_chunks : List (List ColouredInterval) :=
  [row117_layer001_block000, row117_layer001_block001, row117_layer001_block002, row117_layer001_block003, row117_layer001_block004, row117_layer001_block005, row117_layer001_block006, row117_layer001_block007, row117_layer001_block008, row117_layer001_block009, row117_layer001_block010, row117_layer001_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_arithmetic : LayerArithmeticValid row117.height { lower := 27144, upper := 54288, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_enumeration :
    activePowerIntervalList 117 21 27144 54288 = row117_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs000 :
    row117_layer001_block000.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs001 :
    row117_layer001_block001.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs002 :
    row117_layer001_block002.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs003 :
    row117_layer001_block003.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs004 :
    row117_layer001_block004.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs005 :
    row117_layer001_block005.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs006 :
    row117_layer001_block006.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs007 :
    row117_layer001_block007.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs008 :
    row117_layer001_block008.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs009 :
    row117_layer001_block009.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs010 :
    row117_layer001_block010.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_pairs011 :
    row117_layer001_block011.all (fun I => row117_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_chunks_eq : row117_layer001_chunks.flatten = row117_layer001_intervals := by
  rfl

theorem row117_layer001_pairs : pairCoverCheck row117_layer001_intervals row117_bounds = true := by
  apply pairCoverCheck_of_chunks row117_layer001_chunks_eq
  intro block hblock
  simp only [row117_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row117_layer001_pairs000
  · exact row117_layer001_pairs001
  · exact row117_layer001_pairs002
  · exact row117_layer001_pairs003
  · exact row117_layer001_pairs004
  · exact row117_layer001_pairs005
  · exact row117_layer001_pairs006
  · exact row117_layer001_pairs007
  · exact row117_layer001_pairs008
  · exact row117_layer001_pairs009
  · exact row117_layer001_pairs010
  · exact row117_layer001_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer001_checked :
    coverLayerCheck row117.height row117.goods { lower := 27144, upper := 54288, M := 21 } = true := by
  exact coverLayerCheck_of_parts row117_layer001_arithmetic row117_layer001_enumeration row117_bounds_eq row117_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row117_layer002_intervals : List ColouredInterval :=
  [(2, 57344, 57460), (2, 61440, 61556), (2, 65536, 65652), (2, 69632, 69748), (2, 57344, 57460), (2, 65536, 65652), (2, 73728, 73844), (2, 81920, 82036), (2, 90112, 90228), (2, 98304, 98420), (2, 106496, 106612), (2, 65536, 65652), (2, 81920, 82036), (2, 98304, 98420), (2, 65536, 65652), (2, 98304, 98420), (2, 65536, 65652), (3, 59049, 59165), (5, 62500, 62616), (5, 78125, 78241), (5, 93750, 93866), (5, 78125, 78241), (7, 67228, 67344), (7, 84035, 84151), (7, 100842, 100958), (11, 58564, 58680), (11, 73205, 73321), (11, 87846, 87962), (11, 102487, 102603), (17, 58956, 59072), (17, 63869, 63985), (17, 68782, 68898), (17, 73695, 73811), (17, 78608, 78724), (17, 83521, 83637), (17, 83521, 83637), (19, 54872, 54988), (19, 61731, 61847), (19, 68590, 68706), (19, 75449, 75565), (19, 82308, 82424), (19, 89167, 89283), (19, 96026, 96142), (19, 102885, 103001), (23, 60835, 60951), (23, 73002, 73118), (23, 85169, 85285), (23, 97336, 97452), (29, 73167, 73283), (29, 97556, 97672), (31, 59582, 59698), (31, 89373, 89489), (37, 101306, 101422), (41, 68921, 69037), (43, 79507, 79623), (47, 103823, 103939), (59, 55696, 55812), (59, 59177, 59293), (61, 55815, 55931), (61, 59536, 59652), (61, 63257, 63373), (67, 58357, 58473), (67, 62846, 62962), (67, 67335, 67451), (67, 71824, 71940), (67, 76313, 76429), (71, 55451, 55567), (71, 60492, 60608), (71, 65533, 65649), (71, 70574, 70690), (71, 75615, 75731), (71, 80656, 80772), (71, 85697, 85813), (73, 58619, 58735), (73, 63948, 64064), (73, 69277, 69393), (73, 74606, 74722), (73, 79935, 80051), (73, 85264, 85380), (73, 90593, 90709), (79, 56169, 56285), (79, 62410, 62526), (79, 68651, 68767), (79, 74892, 75008), (79, 81133, 81249), (79, 87374, 87490), (79, 93615, 93731), (79, 99856, 99972), (79, 106097, 106213), (83, 55112, 55228), (83, 62001, 62117), (83, 68890, 69006), (83, 75779, 75895), (83, 82668, 82784), (83, 89557, 89673), (83, 96446, 96562), (83, 103335, 103451), (89, 55447, 55563), (89, 63368, 63484), (89, 71289, 71405), (89, 79210, 79326), (89, 87131, 87247), (89, 95052, 95168), (89, 102973, 103089), (97, 56454, 56570), (97, 65863, 65979), (97, 75272, 75388), (97, 84681, 84797), (97, 94090, 94206), (97, 103499, 103615), (101, 61206, 61322), (101, 71407, 71523), (101, 81608, 81724), (101, 91809, 91925), (101, 102010, 102126), (103, 63654, 63770), (103, 74263, 74379), (103, 84872, 84988), (103, 95481, 95597), (103, 106090, 106206), (107, 57245, 57361), (107, 68694, 68810), (107, 80143, 80259), (107, 91592, 91708), (107, 103041, 103157), (109, 59405, 59521), (109, 71286, 71402), (109, 83167, 83283), (109, 95048, 95164), (109, 106929, 107045), (113, 63845, 63961), (113, 76614, 76730), (113, 89383, 89499), (113, 102152, 102268)]

def row117_layer002_block000 : List ColouredInterval :=
  [(2, 57344, 57460), (2, 61440, 61556), (2, 65536, 65652), (2, 69632, 69748), (2, 57344, 57460), (2, 65536, 65652), (2, 73728, 73844), (2, 81920, 82036), (2, 90112, 90228), (2, 98304, 98420), (2, 106496, 106612), (2, 65536, 65652), (2, 81920, 82036), (2, 98304, 98420), (2, 65536, 65652)]

def row117_layer002_block001 : List ColouredInterval :=
  [(2, 98304, 98420), (2, 65536, 65652), (3, 59049, 59165), (5, 62500, 62616), (5, 78125, 78241), (5, 93750, 93866), (5, 78125, 78241), (7, 67228, 67344), (7, 84035, 84151), (7, 100842, 100958), (11, 58564, 58680), (11, 73205, 73321), (11, 87846, 87962), (11, 102487, 102603), (17, 58956, 59072)]

def row117_layer002_block002 : List ColouredInterval :=
  [(17, 63869, 63985), (17, 68782, 68898), (17, 73695, 73811), (17, 78608, 78724), (17, 83521, 83637), (17, 83521, 83637), (19, 54872, 54988), (19, 61731, 61847), (19, 68590, 68706), (19, 75449, 75565), (19, 82308, 82424), (19, 89167, 89283), (19, 96026, 96142), (19, 102885, 103001), (23, 60835, 60951)]

def row117_layer002_block003 : List ColouredInterval :=
  [(23, 73002, 73118), (23, 85169, 85285), (23, 97336, 97452), (29, 73167, 73283), (29, 97556, 97672), (31, 59582, 59698), (31, 89373, 89489), (37, 101306, 101422), (41, 68921, 69037), (43, 79507, 79623), (47, 103823, 103939), (59, 55696, 55812), (59, 59177, 59293), (61, 55815, 55931), (61, 59536, 59652)]

def row117_layer002_block004 : List ColouredInterval :=
  [(61, 63257, 63373), (67, 58357, 58473), (67, 62846, 62962), (67, 67335, 67451), (67, 71824, 71940), (67, 76313, 76429), (71, 55451, 55567), (71, 60492, 60608), (71, 65533, 65649), (71, 70574, 70690), (71, 75615, 75731), (71, 80656, 80772), (71, 85697, 85813), (73, 58619, 58735), (73, 63948, 64064)]

def row117_layer002_block005 : List ColouredInterval :=
  [(73, 69277, 69393), (73, 74606, 74722), (73, 79935, 80051), (73, 85264, 85380), (73, 90593, 90709), (79, 56169, 56285), (79, 62410, 62526), (79, 68651, 68767), (79, 74892, 75008), (79, 81133, 81249), (79, 87374, 87490), (79, 93615, 93731), (79, 99856, 99972), (79, 106097, 106213), (83, 55112, 55228)]

def row117_layer002_block006 : List ColouredInterval :=
  [(83, 62001, 62117), (83, 68890, 69006), (83, 75779, 75895), (83, 82668, 82784), (83, 89557, 89673), (83, 96446, 96562), (83, 103335, 103451), (89, 55447, 55563), (89, 63368, 63484), (89, 71289, 71405), (89, 79210, 79326), (89, 87131, 87247), (89, 95052, 95168), (89, 102973, 103089), (97, 56454, 56570)]

def row117_layer002_block007 : List ColouredInterval :=
  [(97, 65863, 65979), (97, 75272, 75388), (97, 84681, 84797), (97, 94090, 94206), (97, 103499, 103615), (101, 61206, 61322), (101, 71407, 71523), (101, 81608, 81724), (101, 91809, 91925), (101, 102010, 102126), (103, 63654, 63770), (103, 74263, 74379), (103, 84872, 84988), (103, 95481, 95597), (103, 106090, 106206)]

def row117_layer002_block008 : List ColouredInterval :=
  [(107, 57245, 57361), (107, 68694, 68810), (107, 80143, 80259), (107, 91592, 91708), (107, 103041, 103157), (109, 59405, 59521), (109, 71286, 71402), (109, 83167, 83283), (109, 95048, 95164), (109, 106929, 107045), (113, 63845, 63961), (113, 76614, 76730), (113, 89383, 89499), (113, 102152, 102268)]

def row117_layer002_chunks : List (List ColouredInterval) :=
  [row117_layer002_block000, row117_layer002_block001, row117_layer002_block002, row117_layer002_block003, row117_layer002_block004, row117_layer002_block005, row117_layer002_block006, row117_layer002_block007, row117_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_arithmetic : LayerArithmeticValid row117.height { lower := 54288, upper := 108576, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_enumeration :
    activePowerIntervalList 117 17 54288 108576 = row117_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs000 :
    row117_layer002_block000.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs001 :
    row117_layer002_block001.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs002 :
    row117_layer002_block002.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer002_pairs003 :
    row117_layer002_block003.all (fun I => row117_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row117_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer002_pairs003
