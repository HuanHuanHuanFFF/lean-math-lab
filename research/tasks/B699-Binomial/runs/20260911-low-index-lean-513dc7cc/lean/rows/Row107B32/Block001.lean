import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row107B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs008 :
    row107_layer000_block008.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs009 :
    row107_layer000_block009.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs010 :
    row107_layer000_block010.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_pairs011 :
    row107_layer000_block011.all (fun I => row107_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_chunks_eq : row107_layer000_chunks.flatten = row107_layer000_intervals := by
  rfl

theorem row107_layer000_pairs : pairCoverCheck row107_layer000_intervals row107_bounds = true := by
  apply pairCoverCheck_of_chunks row107_layer000_chunks_eq
  intro block hblock
  simp only [row107_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row107_layer000_pairs000
  · exact row107_layer000_pairs001
  · exact row107_layer000_pairs002
  · exact row107_layer000_pairs003
  · exact row107_layer000_pairs004
  · exact row107_layer000_pairs005
  · exact row107_layer000_pairs006
  · exact row107_layer000_pairs007
  · exact row107_layer000_pairs008
  · exact row107_layer000_pairs009
  · exact row107_layer000_pairs010
  · exact row107_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer000_checked :
    coverLayerCheck row107.height row107.goods { lower := 11342, upper := 22684, M := 22 } = true := by
  exact coverLayerCheck_of_parts row107_layer000_arithmetic row107_layer000_enumeration row107_bounds_eq row107_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row107_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24682), (2, 26624, 26730), (2, 28672, 28778), (2, 30720, 30826), (2, 32768, 32874), (2, 34816, 34922), (2, 36864, 36970), (2, 24576, 24682), (2, 28672, 28778), (2, 32768, 32874), (2, 36864, 36970), (2, 40960, 41066), (2, 45056, 45162), (2, 24576, 24682), (2, 32768, 32874), (2, 40960, 41066), (2, 32768, 32874), (2, 32768, 32874), (3, 24057, 24163), (3, 26244, 26350), (3, 28431, 28537), (3, 30618, 30724), (3, 32805, 32911), (3, 34992, 35098), (3, 37179, 37285), (3, 39366, 39472), (3, 26244, 26350), (3, 32805, 32911), (3, 39366, 39472), (3, 39366, 39472), (5, 25000, 25106), (5, 28125, 28231), (5, 31250, 31356), (5, 34375, 34481), (5, 37500, 37606), (5, 40625, 40731), (5, 43750, 43856), (5, 31250, 31356), (7, 24010, 24116), (7, 26411, 26517), (7, 28812, 28918), (7, 31213, 31319), (7, 33614, 33720), (7, 36015, 36121), (7, 38416, 38522), (7, 40817, 40923), (7, 43218, 43324), (7, 33614, 33720), (11, 22684, 22733), (11, 23958, 24064), (11, 29282, 29388), (11, 43923, 44029), (13, 24167, 24273), (13, 26364, 26470), (13, 28561, 28667), (13, 30758, 30864), (13, 32955, 33061), (13, 35152, 35258), (13, 37349, 37455), (13, 39546, 39652), (13, 28561, 28667), (17, 24565, 24671), (17, 29478, 29584), (17, 34391, 34497), (17, 39304, 39410), (17, 44217, 44323), (19, 27436, 27542), (19, 34295, 34401), (19, 41154, 41260), (23, 24334, 24440), (23, 36501, 36607), (29, 24389, 24495), (31, 29791, 29897), (37, 23273, 23379), (37, 24642, 24748), (41, 23534, 23640), (41, 25215, 25321), (41, 26896, 27002), (41, 28577, 28683), (41, 30258, 30364), (43, 24037, 24143), (43, 25886, 25992), (43, 27735, 27841), (43, 29584, 29690), (43, 31433, 31539), (43, 33282, 33388), (47, 24299, 24405), (47, 26508, 26614), (47, 28717, 28823), (47, 30926, 31032), (47, 33135, 33241), (47, 35344, 35450), (47, 37553, 37659), (47, 39762, 39868), (53, 25281, 25387), (53, 28090, 28196), (53, 30899, 31005), (53, 33708, 33814), (53, 36517, 36623), (53, 39326, 39432), (53, 42135, 42241), (53, 44944, 45050), (59, 24367, 24473), (59, 27848, 27954), (59, 31329, 31435), (59, 34810, 34916), (59, 38291, 38397), (59, 41772, 41878), (59, 45253, 45359), (61, 26047, 26153), (61, 29768, 29874), (61, 33489, 33595), (61, 37210, 37316), (61, 40931, 41037), (61, 44652, 44758), (67, 26934, 27040), (67, 31423, 31529), (67, 35912, 36018), (67, 40401, 40507), (67, 44890, 44996), (71, 25205, 25311), (71, 30246, 30352), (71, 35287, 35393), (71, 40328, 40434), (73, 26645, 26751), (73, 31974, 32080), (73, 37303, 37409), (73, 42632, 42738), (79, 24964, 25070), (79, 31205, 31311), (79, 37446, 37552), (79, 43687, 43793), (83, 27556, 27662), (83, 34445, 34551), (83, 41334, 41440), (89, 23763, 23869), (89, 31684, 31790), (89, 39605, 39711), (97, 28227, 28333), (97, 37636, 37742), (101, 30603, 30709), (101, 40804, 40910), (103, 31827, 31933), (103, 42436, 42542)]

def row107_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24682), (2, 26624, 26730), (2, 28672, 28778), (2, 30720, 30826), (2, 32768, 32874), (2, 34816, 34922), (2, 36864, 36970), (2, 24576, 24682), (2, 28672, 28778), (2, 32768, 32874), (2, 36864, 36970), (2, 40960, 41066), (2, 45056, 45162), (2, 24576, 24682)]

def row107_layer001_block001 : List ColouredInterval :=
  [(2, 32768, 32874), (2, 40960, 41066), (2, 32768, 32874), (2, 32768, 32874), (3, 24057, 24163), (3, 26244, 26350), (3, 28431, 28537), (3, 30618, 30724), (3, 32805, 32911), (3, 34992, 35098), (3, 37179, 37285), (3, 39366, 39472), (3, 26244, 26350), (3, 32805, 32911)]

def row107_layer001_block002 : List ColouredInterval :=
  [(3, 39366, 39472), (3, 39366, 39472), (5, 25000, 25106), (5, 28125, 28231), (5, 31250, 31356), (5, 34375, 34481), (5, 37500, 37606), (5, 40625, 40731), (5, 43750, 43856), (5, 31250, 31356), (7, 24010, 24116), (7, 26411, 26517), (7, 28812, 28918), (7, 31213, 31319)]

def row107_layer001_block003 : List ColouredInterval :=
  [(7, 33614, 33720), (7, 36015, 36121), (7, 38416, 38522), (7, 40817, 40923), (7, 43218, 43324), (7, 33614, 33720), (11, 22684, 22733), (11, 23958, 24064), (11, 29282, 29388), (11, 43923, 44029), (13, 24167, 24273), (13, 26364, 26470), (13, 28561, 28667), (13, 30758, 30864)]

def row107_layer001_block004 : List ColouredInterval :=
  [(13, 32955, 33061), (13, 35152, 35258), (13, 37349, 37455), (13, 39546, 39652), (13, 28561, 28667), (17, 24565, 24671), (17, 29478, 29584), (17, 34391, 34497), (17, 39304, 39410), (17, 44217, 44323), (19, 27436, 27542), (19, 34295, 34401), (19, 41154, 41260), (23, 24334, 24440)]

def row107_layer001_block005 : List ColouredInterval :=
  [(23, 36501, 36607), (29, 24389, 24495), (31, 29791, 29897), (37, 23273, 23379), (37, 24642, 24748), (41, 23534, 23640), (41, 25215, 25321), (41, 26896, 27002), (41, 28577, 28683), (41, 30258, 30364), (43, 24037, 24143), (43, 25886, 25992), (43, 27735, 27841), (43, 29584, 29690)]

def row107_layer001_block006 : List ColouredInterval :=
  [(43, 31433, 31539), (43, 33282, 33388), (47, 24299, 24405), (47, 26508, 26614), (47, 28717, 28823), (47, 30926, 31032), (47, 33135, 33241), (47, 35344, 35450), (47, 37553, 37659), (47, 39762, 39868), (53, 25281, 25387), (53, 28090, 28196), (53, 30899, 31005), (53, 33708, 33814)]

def row107_layer001_block007 : List ColouredInterval :=
  [(53, 36517, 36623), (53, 39326, 39432), (53, 42135, 42241), (53, 44944, 45050), (59, 24367, 24473), (59, 27848, 27954), (59, 31329, 31435), (59, 34810, 34916), (59, 38291, 38397), (59, 41772, 41878), (59, 45253, 45359), (61, 26047, 26153), (61, 29768, 29874), (61, 33489, 33595)]

def row107_layer001_block008 : List ColouredInterval :=
  [(61, 37210, 37316), (61, 40931, 41037), (61, 44652, 44758), (67, 26934, 27040), (67, 31423, 31529), (67, 35912, 36018), (67, 40401, 40507), (67, 44890, 44996), (71, 25205, 25311), (71, 30246, 30352), (71, 35287, 35393), (71, 40328, 40434), (73, 26645, 26751), (73, 31974, 32080)]

def row107_layer001_block009 : List ColouredInterval :=
  [(73, 37303, 37409), (73, 42632, 42738), (79, 24964, 25070), (79, 31205, 31311), (79, 37446, 37552), (79, 43687, 43793), (83, 27556, 27662), (83, 34445, 34551), (83, 41334, 41440), (89, 23763, 23869), (89, 31684, 31790), (89, 39605, 39711), (97, 28227, 28333), (97, 37636, 37742)]

def row107_layer001_block010 : List ColouredInterval :=
  [(101, 30603, 30709), (101, 40804, 40910), (103, 31827, 31933), (103, 42436, 42542)]

def row107_layer001_chunks : List (List ColouredInterval) :=
  [row107_layer001_block000, row107_layer001_block001, row107_layer001_block002, row107_layer001_block003, row107_layer001_block004, row107_layer001_block005, row107_layer001_block006, row107_layer001_block007, row107_layer001_block008, row107_layer001_block009, row107_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_arithmetic : LayerArithmeticValid row107.height { lower := 22684, upper := 45368, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_enumeration :
    activePowerIntervalList 107 18 22684 45368 = row107_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs000 :
    row107_layer001_block000.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs001 :
    row107_layer001_block001.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs002 :
    row107_layer001_block002.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs003 :
    row107_layer001_block003.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs004 :
    row107_layer001_block004.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs005 :
    row107_layer001_block005.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs006 :
    row107_layer001_block006.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs007 :
    row107_layer001_block007.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs008 :
    row107_layer001_block008.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs009 :
    row107_layer001_block009.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_pairs010 :
    row107_layer001_block010.all (fun I => row107_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_chunks_eq : row107_layer001_chunks.flatten = row107_layer001_intervals := by
  rfl

theorem row107_layer001_pairs : pairCoverCheck row107_layer001_intervals row107_bounds = true := by
  apply pairCoverCheck_of_chunks row107_layer001_chunks_eq
  intro block hblock
  simp only [row107_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row107_layer001_pairs000
  · exact row107_layer001_pairs001
  · exact row107_layer001_pairs002
  · exact row107_layer001_pairs003
  · exact row107_layer001_pairs004
  · exact row107_layer001_pairs005
  · exact row107_layer001_pairs006
  · exact row107_layer001_pairs007
  · exact row107_layer001_pairs008
  · exact row107_layer001_pairs009
  · exact row107_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer001_checked :
    coverLayerCheck row107.height row107.goods { lower := 22684, upper := 45368, M := 18 } = true := by
  exact coverLayerCheck_of_parts row107_layer001_arithmetic row107_layer001_enumeration row107_bounds_eq row107_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row107_layer002_intervals : List ColouredInterval :=
  [(2, 49152, 49258), (2, 53248, 53354), (2, 57344, 57450), (2, 49152, 49258), (2, 57344, 57450), (2, 65536, 65642), (2, 73728, 73834), (2, 81920, 82026), (2, 90112, 90218), (2, 49152, 49258), (2, 65536, 65642), (2, 81920, 82026), (2, 65536, 65642), (2, 65536, 65642), (3, 45927, 46033), (3, 52488, 52594), (3, 59049, 59155), (3, 65610, 65716), (3, 72171, 72277), (3, 78732, 78838), (3, 85293, 85399), (3, 59049, 59155), (3, 78732, 78838), (3, 59049, 59155), (5, 46875, 46981), (5, 62500, 62606), (5, 78125, 78231), (5, 78125, 78231), (7, 50421, 50527), (7, 67228, 67334), (7, 84035, 84141), (11, 58564, 58670), (11, 73205, 73311), (11, 87846, 87952), (13, 57122, 57228), (13, 85683, 85789), (17, 49130, 49236), (17, 54043, 54149), (17, 58956, 59062), (17, 63869, 63975), (17, 68782, 68888), (17, 83521, 83627), (19, 48013, 48119), (19, 54872, 54978), (19, 61731, 61837), (19, 68590, 68696), (19, 75449, 75555), (19, 82308, 82414), (19, 89167, 89273), (23, 48668, 48774), (23, 60835, 60941), (23, 73002, 73108), (23, 85169, 85275), (29, 48778, 48884), (29, 73167, 73273), (31, 59582, 59688), (31, 89373, 89479), (37, 50653, 50759), (41, 68921, 69027), (43, 79507, 79613), (59, 48734, 48840), (61, 48373, 48479), (61, 52094, 52200), (67, 49379, 49485), (67, 53868, 53974), (67, 58357, 58463), (67, 62846, 62952), (71, 45369, 45475), (71, 50410, 50516), (71, 55451, 55557), (71, 60492, 60598), (71, 65533, 65639), (71, 70574, 70680), (73, 47961, 48067), (73, 53290, 53396), (73, 58619, 58725), (73, 63948, 64054), (73, 69277, 69383), (73, 74606, 74712), (79, 49928, 50034), (79, 56169, 56275), (79, 62410, 62516), (79, 68651, 68757), (79, 74892, 74998), (79, 81133, 81239), (79, 87374, 87480), (83, 48223, 48329), (83, 55112, 55218), (83, 62001, 62107), (83, 68890, 68996), (83, 75779, 75885), (83, 82668, 82774), (83, 89557, 89663), (89, 47526, 47632), (89, 55447, 55553), (89, 63368, 63474), (89, 71289, 71395), (89, 79210, 79316), (89, 87131, 87237), (97, 47045, 47151), (97, 56454, 56560), (97, 65863, 65969), (97, 75272, 75378), (97, 84681, 84787), (101, 51005, 51111), (101, 61206, 61312), (101, 71407, 71513), (101, 81608, 81714), (103, 53045, 53151), (103, 63654, 63760), (103, 74263, 74369), (103, 84872, 84978)]

def row107_layer002_block000 : List ColouredInterval :=
  [(2, 49152, 49258), (2, 53248, 53354), (2, 57344, 57450), (2, 49152, 49258), (2, 57344, 57450), (2, 65536, 65642), (2, 73728, 73834), (2, 81920, 82026), (2, 90112, 90218), (2, 49152, 49258), (2, 65536, 65642), (2, 81920, 82026), (2, 65536, 65642), (2, 65536, 65642), (3, 45927, 46033), (3, 52488, 52594)]

def row107_layer002_block001 : List ColouredInterval :=
  [(3, 59049, 59155), (3, 65610, 65716), (3, 72171, 72277), (3, 78732, 78838), (3, 85293, 85399), (3, 59049, 59155), (3, 78732, 78838), (3, 59049, 59155), (5, 46875, 46981), (5, 62500, 62606), (5, 78125, 78231), (5, 78125, 78231), (7, 50421, 50527), (7, 67228, 67334), (7, 84035, 84141), (11, 58564, 58670)]

def row107_layer002_block002 : List ColouredInterval :=
  [(11, 73205, 73311), (11, 87846, 87952), (13, 57122, 57228), (13, 85683, 85789), (17, 49130, 49236), (17, 54043, 54149), (17, 58956, 59062), (17, 63869, 63975), (17, 68782, 68888), (17, 83521, 83627), (19, 48013, 48119), (19, 54872, 54978), (19, 61731, 61837), (19, 68590, 68696), (19, 75449, 75555), (19, 82308, 82414)]

def row107_layer002_block003 : List ColouredInterval :=
  [(19, 89167, 89273), (23, 48668, 48774), (23, 60835, 60941), (23, 73002, 73108), (23, 85169, 85275), (29, 48778, 48884), (29, 73167, 73273), (31, 59582, 59688), (31, 89373, 89479), (37, 50653, 50759), (41, 68921, 69027), (43, 79507, 79613), (59, 48734, 48840), (61, 48373, 48479), (61, 52094, 52200), (67, 49379, 49485)]

def row107_layer002_block004 : List ColouredInterval :=
  [(67, 53868, 53974), (67, 58357, 58463), (67, 62846, 62952), (71, 45369, 45475), (71, 50410, 50516), (71, 55451, 55557), (71, 60492, 60598), (71, 65533, 65639), (71, 70574, 70680), (73, 47961, 48067), (73, 53290, 53396), (73, 58619, 58725), (73, 63948, 64054), (73, 69277, 69383), (73, 74606, 74712), (79, 49928, 50034)]

def row107_layer002_block005 : List ColouredInterval :=
  [(79, 56169, 56275), (79, 62410, 62516), (79, 68651, 68757), (79, 74892, 74998), (79, 81133, 81239), (79, 87374, 87480), (83, 48223, 48329), (83, 55112, 55218), (83, 62001, 62107), (83, 68890, 68996), (83, 75779, 75885), (83, 82668, 82774), (83, 89557, 89663), (89, 47526, 47632), (89, 55447, 55553), (89, 63368, 63474)]

def row107_layer002_block006 : List ColouredInterval :=
  [(89, 71289, 71395), (89, 79210, 79316), (89, 87131, 87237), (97, 47045, 47151), (97, 56454, 56560), (97, 65863, 65969), (97, 75272, 75378), (97, 84681, 84787), (101, 51005, 51111), (101, 61206, 61312), (101, 71407, 71513), (101, 81608, 81714), (103, 53045, 53151), (103, 63654, 63760), (103, 74263, 74369), (103, 84872, 84978)]

def row107_layer002_chunks : List (List ColouredInterval) :=
  [row107_layer002_block000, row107_layer002_block001, row107_layer002_block002, row107_layer002_block003, row107_layer002_block004, row107_layer002_block005, row107_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_arithmetic : LayerArithmeticValid row107.height { lower := 45368, upper := 90736, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_enumeration :
    activePowerIntervalList 107 14 45368 90736 = row107_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs000 :
    row107_layer002_block000.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs001 :
    row107_layer002_block001.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs002 :
    row107_layer002_block002.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs003 :
    row107_layer002_block003.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs004 :
    row107_layer002_block004.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs005 :
    row107_layer002_block005.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row107_layer002_pairs006 :
    row107_layer002_block006.all (fun I => row107_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row107_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row107_layer002_pairs006
