import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row116B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs005 :
    row116_layer000_block005.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs006 :
    row116_layer000_block006.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs007 :
    row116_layer000_block007.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs008 :
    row116_layer000_block008.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs009 :
    row116_layer000_block009.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs010 :
    row116_layer000_block010.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs011 :
    row116_layer000_block011.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_chunks_eq : row116_layer000_chunks.flatten = row116_layer000_intervals := by
  rfl

theorem row116_layer000_pairs : pairCoverCheck row116_layer000_intervals row116_bounds = true := by
  apply pairCoverCheck_of_chunks row116_layer000_chunks_eq
  intro block hblock
  simp only [row116_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row116_layer000_pairs000
  · exact row116_layer000_pairs001
  · exact row116_layer000_pairs002
  · exact row116_layer000_pairs003
  · exact row116_layer000_pairs004
  · exact row116_layer000_pairs005
  · exact row116_layer000_pairs006
  · exact row116_layer000_pairs007
  · exact row116_layer000_pairs008
  · exact row116_layer000_pairs009
  · exact row116_layer000_pairs010
  · exact row116_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_checked :
    coverLayerCheck row116.height row116.goods { lower := 13340, upper := 26680, M := 27 } = true := by
  exact coverLayerCheck_of_parts row116_layer000_arithmetic row116_layer000_enumeration row116_bounds_eq row116_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row116_layer001_intervals : List ColouredInterval :=
  [(2, 32768, 32883), (2, 40960, 41075), (2, 32768, 32883), (2, 49152, 49267), (2, 32768, 32883), (3, 28431, 28546), (3, 30618, 30733), (3, 32805, 32920), (3, 34992, 35107), (3, 37179, 37294), (3, 39366, 39481), (3, 41553, 41668), (3, 43740, 43855), (3, 45927, 46042), (3, 48114, 48229), (3, 32805, 32920), (3, 39366, 39481), (3, 45927, 46042), (3, 52488, 52603), (3, 39366, 39481), (5, 28125, 28240), (5, 31250, 31365), (5, 34375, 34490), (5, 37500, 37615), (5, 40625, 40740), (5, 43750, 43865), (5, 46875, 46990), (5, 50000, 50115), (5, 53125, 53240), (5, 31250, 31365), (5, 46875, 46990), (7, 28812, 28927), (7, 31213, 31328), (7, 33614, 33729), (7, 36015, 36130), (7, 38416, 38531), (7, 40817, 40932), (7, 43218, 43333), (7, 45619, 45734), (7, 48020, 48135), (7, 50421, 50536), (7, 52822, 52937), (7, 33614, 33729), (7, 50421, 50536), (11, 26680, 26735), (11, 27951, 28066), (11, 29282, 29397), (11, 29282, 29397), (11, 43923, 44038), (13, 28561, 28676), (13, 30758, 30873), (13, 32955, 33070), (13, 35152, 35267), (13, 37349, 37464), (13, 39546, 39661), (13, 41743, 41858), (13, 43940, 44055), (13, 46137, 46252), (13, 48334, 48449), (13, 28561, 28676), (17, 29478, 29593), (17, 34391, 34506), (17, 39304, 39419), (17, 44217, 44332), (17, 49130, 49245), (19, 27436, 27551), (19, 34295, 34410), (19, 41154, 41269), (19, 48013, 48128), (23, 36501, 36616), (23, 48668, 48783), (31, 29791, 29906), (37, 27380, 27495), (37, 28749, 28864), (37, 30118, 30233), (37, 50653, 50768), (41, 26896, 27011), (41, 28577, 28692), (41, 30258, 30373), (41, 31939, 32054), (41, 33620, 33735), (41, 35301, 35416), (41, 36982, 37097), (43, 27735, 27850), (43, 29584, 29699), (43, 31433, 31548), (43, 33282, 33397), (43, 35131, 35246), (43, 36980, 37095), (43, 38829, 38944), (43, 40678, 40793), (47, 28717, 28832), (47, 30926, 31041), (47, 33135, 33250), (47, 35344, 35459), (47, 37553, 37668), (47, 39762, 39877), (47, 41971, 42086), (47, 44180, 44295), (47, 46389, 46504), (47, 48598, 48713), (53, 28090, 28205), (53, 30899, 31014), (53, 33708, 33823), (53, 36517, 36632), (53, 39326, 39441), (53, 42135, 42250), (53, 44944, 45059), (53, 47753, 47868), (53, 50562, 50677), (59, 27848, 27963), (59, 31329, 31444), (59, 34810, 34925), (59, 38291, 38406), (59, 41772, 41887), (59, 45253, 45368), (59, 48734, 48849), (59, 52215, 52330), (61, 29768, 29883), (61, 33489, 33604), (61, 37210, 37325), (61, 40931, 41046), (61, 44652, 44767), (61, 48373, 48488), (61, 52094, 52209), (67, 26934, 27049), (67, 31423, 31538), (67, 35912, 36027), (67, 40401, 40516), (67, 44890, 45005), (67, 49379, 49494), (71, 30246, 30361), (71, 35287, 35402), (71, 40328, 40443), (71, 45369, 45484), (71, 50410, 50525), (73, 26680, 26760), (73, 31974, 32089), (73, 37303, 37418), (73, 42632, 42747), (73, 47961, 48076), (73, 53290, 53359), (79, 31205, 31320), (79, 37446, 37561), (79, 43687, 43802), (79, 49928, 50043), (83, 27556, 27671), (83, 34445, 34560), (83, 41334, 41449), (83, 48223, 48338), (89, 31684, 31799), (89, 39605, 39720), (89, 47526, 47641), (97, 28227, 28342), (97, 37636, 37751), (97, 47045, 47160), (101, 30603, 30718), (101, 40804, 40919), (101, 51005, 51120), (103, 31827, 31942), (103, 42436, 42551), (103, 53045, 53160), (107, 34347, 34462), (107, 45796, 45911), (109, 35643, 35758), (109, 47524, 47639), (113, 38307, 38422), (113, 51076, 51191)]

def row116_layer001_block000 : List ColouredInterval :=
  [(2, 32768, 32883), (2, 40960, 41075), (2, 32768, 32883), (2, 49152, 49267), (2, 32768, 32883), (3, 28431, 28546), (3, 30618, 30733), (3, 32805, 32920), (3, 34992, 35107), (3, 37179, 37294), (3, 39366, 39481), (3, 41553, 41668)]

def row116_layer001_block001 : List ColouredInterval :=
  [(3, 43740, 43855), (3, 45927, 46042), (3, 48114, 48229), (3, 32805, 32920), (3, 39366, 39481), (3, 45927, 46042), (3, 52488, 52603), (3, 39366, 39481), (5, 28125, 28240), (5, 31250, 31365), (5, 34375, 34490), (5, 37500, 37615)]

def row116_layer001_block002 : List ColouredInterval :=
  [(5, 40625, 40740), (5, 43750, 43865), (5, 46875, 46990), (5, 50000, 50115), (5, 53125, 53240), (5, 31250, 31365), (5, 46875, 46990), (7, 28812, 28927), (7, 31213, 31328), (7, 33614, 33729), (7, 36015, 36130), (7, 38416, 38531)]

def row116_layer001_block003 : List ColouredInterval :=
  [(7, 40817, 40932), (7, 43218, 43333), (7, 45619, 45734), (7, 48020, 48135), (7, 50421, 50536), (7, 52822, 52937), (7, 33614, 33729), (7, 50421, 50536), (11, 26680, 26735), (11, 27951, 28066), (11, 29282, 29397), (11, 29282, 29397)]

def row116_layer001_block004 : List ColouredInterval :=
  [(11, 43923, 44038), (13, 28561, 28676), (13, 30758, 30873), (13, 32955, 33070), (13, 35152, 35267), (13, 37349, 37464), (13, 39546, 39661), (13, 41743, 41858), (13, 43940, 44055), (13, 46137, 46252), (13, 48334, 48449), (13, 28561, 28676)]

def row116_layer001_block005 : List ColouredInterval :=
  [(17, 29478, 29593), (17, 34391, 34506), (17, 39304, 39419), (17, 44217, 44332), (17, 49130, 49245), (19, 27436, 27551), (19, 34295, 34410), (19, 41154, 41269), (19, 48013, 48128), (23, 36501, 36616), (23, 48668, 48783), (31, 29791, 29906)]

def row116_layer001_block006 : List ColouredInterval :=
  [(37, 27380, 27495), (37, 28749, 28864), (37, 30118, 30233), (37, 50653, 50768), (41, 26896, 27011), (41, 28577, 28692), (41, 30258, 30373), (41, 31939, 32054), (41, 33620, 33735), (41, 35301, 35416), (41, 36982, 37097), (43, 27735, 27850)]

def row116_layer001_block007 : List ColouredInterval :=
  [(43, 29584, 29699), (43, 31433, 31548), (43, 33282, 33397), (43, 35131, 35246), (43, 36980, 37095), (43, 38829, 38944), (43, 40678, 40793), (47, 28717, 28832), (47, 30926, 31041), (47, 33135, 33250), (47, 35344, 35459), (47, 37553, 37668)]

def row116_layer001_block008 : List ColouredInterval :=
  [(47, 39762, 39877), (47, 41971, 42086), (47, 44180, 44295), (47, 46389, 46504), (47, 48598, 48713), (53, 28090, 28205), (53, 30899, 31014), (53, 33708, 33823), (53, 36517, 36632), (53, 39326, 39441), (53, 42135, 42250), (53, 44944, 45059)]

def row116_layer001_block009 : List ColouredInterval :=
  [(53, 47753, 47868), (53, 50562, 50677), (59, 27848, 27963), (59, 31329, 31444), (59, 34810, 34925), (59, 38291, 38406), (59, 41772, 41887), (59, 45253, 45368), (59, 48734, 48849), (59, 52215, 52330), (61, 29768, 29883), (61, 33489, 33604)]

def row116_layer001_block010 : List ColouredInterval :=
  [(61, 37210, 37325), (61, 40931, 41046), (61, 44652, 44767), (61, 48373, 48488), (61, 52094, 52209), (67, 26934, 27049), (67, 31423, 31538), (67, 35912, 36027), (67, 40401, 40516), (67, 44890, 45005), (67, 49379, 49494), (71, 30246, 30361)]

def row116_layer001_block011 : List ColouredInterval :=
  [(71, 35287, 35402), (71, 40328, 40443), (71, 45369, 45484), (71, 50410, 50525), (73, 26680, 26760), (73, 31974, 32089), (73, 37303, 37418), (73, 42632, 42747), (73, 47961, 48076), (73, 53290, 53359), (79, 31205, 31320), (79, 37446, 37561)]

def row116_layer001_block012 : List ColouredInterval :=
  [(79, 43687, 43802), (79, 49928, 50043), (83, 27556, 27671), (83, 34445, 34560), (83, 41334, 41449), (83, 48223, 48338), (89, 31684, 31799), (89, 39605, 39720), (89, 47526, 47641), (97, 28227, 28342), (97, 37636, 37751), (97, 47045, 47160)]

def row116_layer001_block013 : List ColouredInterval :=
  [(101, 30603, 30718), (101, 40804, 40919), (101, 51005, 51120), (103, 31827, 31942), (103, 42436, 42551), (103, 53045, 53160), (107, 34347, 34462), (107, 45796, 45911), (109, 35643, 35758), (109, 47524, 47639), (113, 38307, 38422), (113, 51076, 51191)]

def row116_layer001_chunks : List (List ColouredInterval) :=
  [row116_layer001_block000, row116_layer001_block001, row116_layer001_block002, row116_layer001_block003, row116_layer001_block004, row116_layer001_block005, row116_layer001_block006, row116_layer001_block007, row116_layer001_block008, row116_layer001_block009, row116_layer001_block010, row116_layer001_block011, row116_layer001_block012, row116_layer001_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_arithmetic : LayerArithmeticValid row116.height { lower := 26680, upper := 53360, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_enumeration :
    activePowerIntervalList 116 22 26680 53360 = row116_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs000 :
    row116_layer001_block000.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs001 :
    row116_layer001_block001.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs002 :
    row116_layer001_block002.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs003 :
    row116_layer001_block003.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs004 :
    row116_layer001_block004.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs005 :
    row116_layer001_block005.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs006 :
    row116_layer001_block006.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs007 :
    row116_layer001_block007.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs008 :
    row116_layer001_block008.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs009 :
    row116_layer001_block009.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs010 :
    row116_layer001_block010.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs011 :
    row116_layer001_block011.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs012 :
    row116_layer001_block012.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_pairs013 :
    row116_layer001_block013.all (fun I => row116_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_chunks_eq : row116_layer001_chunks.flatten = row116_layer001_intervals := by
  rfl

theorem row116_layer001_pairs : pairCoverCheck row116_layer001_intervals row116_bounds = true := by
  apply pairCoverCheck_of_chunks row116_layer001_chunks_eq
  intro block hblock
  simp only [row116_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row116_layer001_pairs000
  · exact row116_layer001_pairs001
  · exact row116_layer001_pairs002
  · exact row116_layer001_pairs003
  · exact row116_layer001_pairs004
  · exact row116_layer001_pairs005
  · exact row116_layer001_pairs006
  · exact row116_layer001_pairs007
  · exact row116_layer001_pairs008
  · exact row116_layer001_pairs009
  · exact row116_layer001_pairs010
  · exact row116_layer001_pairs011
  · exact row116_layer001_pairs012
  · exact row116_layer001_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer001_checked :
    coverLayerCheck row116.height row116.goods { lower := 26680, upper := 53360, M := 22 } = true := by
  exact coverLayerCheck_of_parts row116_layer001_arithmetic row116_layer001_enumeration row116_bounds_eq row116_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row116_layer002_intervals : List ColouredInterval :=
  [(2, 65536, 65651), (2, 65536, 65651), (2, 98304, 98419), (2, 65536, 65651), (3, 59049, 59164), (3, 65610, 65725), (3, 72171, 72286), (3, 78732, 78847), (3, 85293, 85408), (3, 91854, 91969), (3, 98415, 98530), (3, 104976, 105091), (3, 59049, 59164), (3, 78732, 78847), (3, 98415, 98530), (3, 59049, 59164), (5, 56250, 56365), (5, 62500, 62615), (5, 78125, 78240), (5, 93750, 93865), (5, 78125, 78240), (7, 67228, 67343), (7, 84035, 84150), (7, 100842, 100957), (11, 58564, 58679), (11, 73205, 73320), (11, 87846, 87961), (11, 102487, 102602), (13, 57122, 57237), (13, 85683, 85798), (17, 54043, 54158), (17, 58956, 59071), (17, 63869, 63984), (17, 68782, 68897), (17, 73695, 73810), (17, 78608, 78723), (17, 83521, 83636), (17, 88434, 88549), (17, 83521, 83636), (19, 54872, 54987), (19, 61731, 61846), (19, 68590, 68705), (19, 75449, 75564), (19, 82308, 82423), (19, 89167, 89282), (19, 96026, 96141), (19, 102885, 103000), (23, 60835, 60950), (23, 73002, 73117), (23, 85169, 85284), (23, 97336, 97451), (31, 59582, 59697), (31, 89373, 89488), (37, 101306, 101421), (41, 68921, 69036), (43, 79507, 79622), (47, 103823, 103938), (59, 55696, 55811), (59, 59177, 59292), (59, 62658, 62773), (61, 55815, 55930), (61, 59536, 59651), (61, 63257, 63372), (61, 66978, 67093), (67, 53868, 53983), (67, 58357, 58472), (67, 62846, 62961), (67, 67335, 67450), (67, 71824, 71939), (67, 76313, 76428), (67, 80802, 80917), (71, 55451, 55566), (71, 60492, 60607), (71, 65533, 65648), (71, 70574, 70689), (71, 75615, 75730), (71, 80656, 80771), (71, 85697, 85812), (71, 90738, 90853), (73, 53360, 53405), (73, 58619, 58734), (73, 63948, 64063), (73, 69277, 69392), (73, 74606, 74721), (73, 79935, 80050), (73, 85264, 85379), (73, 90593, 90708), (73, 95922, 96037), (79, 56169, 56284), (79, 62410, 62525), (79, 68651, 68766), (79, 74892, 75007), (79, 81133, 81248), (79, 87374, 87489), (79, 93615, 93730), (79, 99856, 99971), (79, 106097, 106212), (83, 55112, 55227), (83, 62001, 62116), (83, 68890, 69005), (83, 75779, 75894), (83, 82668, 82783), (83, 89557, 89672), (83, 96446, 96561), (83, 103335, 103450), (89, 55447, 55562), (89, 63368, 63483), (89, 71289, 71404), (89, 79210, 79325), (89, 87131, 87246), (89, 95052, 95167), (89, 102973, 103088), (97, 56454, 56569), (97, 65863, 65978), (97, 75272, 75387), (97, 84681, 84796), (97, 94090, 94205), (97, 103499, 103614), (101, 61206, 61321), (101, 71407, 71522), (101, 81608, 81723), (101, 91809, 91924), (101, 102010, 102125), (103, 63654, 63769), (103, 74263, 74378), (103, 84872, 84987), (103, 95481, 95596), (103, 106090, 106205), (107, 57245, 57360), (107, 68694, 68809), (107, 80143, 80258), (107, 91592, 91707), (107, 103041, 103156), (109, 59405, 59520), (109, 71286, 71401), (109, 83167, 83282), (109, 95048, 95163), (113, 63845, 63960), (113, 76614, 76729), (113, 89383, 89498), (113, 102152, 102267)]

def row116_layer002_block000 : List ColouredInterval :=
  [(2, 65536, 65651), (2, 65536, 65651), (2, 98304, 98419), (2, 65536, 65651), (3, 59049, 59164), (3, 65610, 65725), (3, 72171, 72286), (3, 78732, 78847), (3, 85293, 85408), (3, 91854, 91969), (3, 98415, 98530), (3, 104976, 105091), (3, 59049, 59164), (3, 78732, 78847)]

def row116_layer002_block001 : List ColouredInterval :=
  [(3, 98415, 98530), (3, 59049, 59164), (5, 56250, 56365), (5, 62500, 62615), (5, 78125, 78240), (5, 93750, 93865), (5, 78125, 78240), (7, 67228, 67343), (7, 84035, 84150), (7, 100842, 100957), (11, 58564, 58679), (11, 73205, 73320), (11, 87846, 87961), (11, 102487, 102602)]

def row116_layer002_block002 : List ColouredInterval :=
  [(13, 57122, 57237), (13, 85683, 85798), (17, 54043, 54158), (17, 58956, 59071), (17, 63869, 63984), (17, 68782, 68897), (17, 73695, 73810), (17, 78608, 78723), (17, 83521, 83636), (17, 88434, 88549), (17, 83521, 83636), (19, 54872, 54987), (19, 61731, 61846), (19, 68590, 68705)]

def row116_layer002_block003 : List ColouredInterval :=
  [(19, 75449, 75564), (19, 82308, 82423), (19, 89167, 89282), (19, 96026, 96141), (19, 102885, 103000), (23, 60835, 60950), (23, 73002, 73117), (23, 85169, 85284), (23, 97336, 97451), (31, 59582, 59697), (31, 89373, 89488), (37, 101306, 101421), (41, 68921, 69036), (43, 79507, 79622)]

def row116_layer002_block004 : List ColouredInterval :=
  [(47, 103823, 103938), (59, 55696, 55811), (59, 59177, 59292), (59, 62658, 62773), (61, 55815, 55930), (61, 59536, 59651), (61, 63257, 63372), (61, 66978, 67093), (67, 53868, 53983), (67, 58357, 58472), (67, 62846, 62961), (67, 67335, 67450), (67, 71824, 71939), (67, 76313, 76428)]

def row116_layer002_block005 : List ColouredInterval :=
  [(67, 80802, 80917), (71, 55451, 55566), (71, 60492, 60607), (71, 65533, 65648), (71, 70574, 70689), (71, 75615, 75730), (71, 80656, 80771), (71, 85697, 85812), (71, 90738, 90853), (73, 53360, 53405), (73, 58619, 58734), (73, 63948, 64063), (73, 69277, 69392), (73, 74606, 74721)]

def row116_layer002_block006 : List ColouredInterval :=
  [(73, 79935, 80050), (73, 85264, 85379), (73, 90593, 90708), (73, 95922, 96037), (79, 56169, 56284), (79, 62410, 62525), (79, 68651, 68766), (79, 74892, 75007), (79, 81133, 81248), (79, 87374, 87489), (79, 93615, 93730), (79, 99856, 99971), (79, 106097, 106212), (83, 55112, 55227)]

def row116_layer002_block007 : List ColouredInterval :=
  [(83, 62001, 62116), (83, 68890, 69005), (83, 75779, 75894), (83, 82668, 82783), (83, 89557, 89672), (83, 96446, 96561), (83, 103335, 103450), (89, 55447, 55562), (89, 63368, 63483), (89, 71289, 71404), (89, 79210, 79325), (89, 87131, 87246), (89, 95052, 95167), (89, 102973, 103088)]

def row116_layer002_block008 : List ColouredInterval :=
  [(97, 56454, 56569), (97, 65863, 65978), (97, 75272, 75387), (97, 84681, 84796), (97, 94090, 94205), (97, 103499, 103614), (101, 61206, 61321), (101, 71407, 71522), (101, 81608, 81723), (101, 91809, 91924), (101, 102010, 102125), (103, 63654, 63769), (103, 74263, 74378), (103, 84872, 84987)]

def row116_layer002_block009 : List ColouredInterval :=
  [(103, 95481, 95596), (103, 106090, 106205), (107, 57245, 57360), (107, 68694, 68809), (107, 80143, 80258), (107, 91592, 91707), (107, 103041, 103156), (109, 59405, 59520), (109, 71286, 71401), (109, 83167, 83282), (109, 95048, 95163), (113, 63845, 63960), (113, 76614, 76729), (113, 89383, 89498)]

def row116_layer002_block010 : List ColouredInterval :=
  [(113, 102152, 102267)]

def row116_layer002_chunks : List (List ColouredInterval) :=
  [row116_layer002_block000, row116_layer002_block001, row116_layer002_block002, row116_layer002_block003, row116_layer002_block004, row116_layer002_block005, row116_layer002_block006, row116_layer002_block007, row116_layer002_block008, row116_layer002_block009, row116_layer002_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer002_arithmetic : LayerArithmeticValid row116.height { lower := 53360, upper := 106720, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer002_enumeration :
    activePowerIntervalList 116 18 53360 106720 = row116_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer002_pairs000 :
    row116_layer002_block000.all (fun I => row116_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer002_pairs000
