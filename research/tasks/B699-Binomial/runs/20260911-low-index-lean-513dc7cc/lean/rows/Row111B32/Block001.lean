import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row111B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs005 :
    row111_layer000_block005.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs006 :
    row111_layer000_block006.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs007 :
    row111_layer000_block007.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs008 :
    row111_layer000_block008.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs009 :
    row111_layer000_block009.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs010 :
    row111_layer000_block010.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs011 :
    row111_layer000_block011.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs012 :
    row111_layer000_block012.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_pairs013 :
    row111_layer000_block013.all (fun I => row111_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_chunks_eq : row111_layer000_chunks.flatten = row111_layer000_intervals := by
  rfl

theorem row111_layer000_pairs : pairCoverCheck row111_layer000_intervals row111_bounds = true := by
  apply pairCoverCheck_of_chunks row111_layer000_chunks_eq
  intro block hblock
  simp only [row111_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row111_layer000_pairs000
  · exact row111_layer000_pairs001
  · exact row111_layer000_pairs002
  · exact row111_layer000_pairs003
  · exact row111_layer000_pairs004
  · exact row111_layer000_pairs005
  · exact row111_layer000_pairs006
  · exact row111_layer000_pairs007
  · exact row111_layer000_pairs008
  · exact row111_layer000_pairs009
  · exact row111_layer000_pairs010
  · exact row111_layer000_pairs011
  · exact row111_layer000_pairs012
  · exact row111_layer000_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer000_checked :
    coverLayerCheck row111.height row111.goods { lower := 12210, upper := 24420, M := 28 } = true := by
  exact coverLayerCheck_of_parts row111_layer000_arithmetic row111_layer000_enumeration row111_bounds_eq row111_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row111_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24686), (2, 26624, 26734), (2, 28672, 28782), (2, 30720, 30830), (2, 32768, 32878), (2, 34816, 34926), (2, 36864, 36974), (2, 38912, 39022), (2, 40960, 41070), (2, 43008, 43118), (2, 45056, 45166), (2, 47104, 47214), (2, 24576, 24686), (2, 28672, 28782), (2, 32768, 32878), (2, 36864, 36974), (2, 40960, 41070), (2, 45056, 45166), (2, 24576, 24686), (2, 32768, 32878), (2, 40960, 41070), (2, 32768, 32878), (2, 32768, 32878), (3, 26244, 26354), (3, 32805, 32915), (3, 39366, 39476), (3, 45927, 46037), (3, 39366, 39476), (5, 25000, 25110), (5, 28125, 28235), (5, 31250, 31360), (5, 34375, 34485), (5, 37500, 37610), (5, 40625, 40735), (5, 43750, 43860), (5, 46875, 46985), (5, 31250, 31360), (5, 46875, 46985), (7, 26411, 26521), (7, 28812, 28922), (7, 31213, 31323), (7, 33614, 33724), (7, 36015, 36125), (7, 38416, 38526), (7, 40817, 40927), (7, 43218, 43328), (7, 45619, 45729), (7, 48020, 48130), (7, 33614, 33724), (11, 25289, 25399), (11, 26620, 26730), (11, 27951, 28061), (11, 29282, 29392), (11, 30613, 30723), (11, 29282, 29392), (11, 43923, 44033), (13, 26364, 26474), (13, 28561, 28671), (13, 30758, 30868), (13, 32955, 33065), (13, 35152, 35262), (13, 37349, 37459), (13, 39546, 39656), (13, 41743, 41853), (13, 43940, 44050), (13, 46137, 46247), (13, 48334, 48444), (13, 28561, 28671), (17, 24565, 24675), (17, 29478, 29588), (17, 34391, 34501), (17, 39304, 39414), (17, 44217, 44327), (19, 27436, 27546), (19, 34295, 34405), (19, 41154, 41264), (19, 48013, 48123), (23, 24420, 24444), (23, 36501, 36611), (23, 48668, 48778), (29, 24420, 24499), (29, 48778, 48839), (31, 29791, 29901), (41, 25215, 25325), (41, 26896, 27006), (41, 28577, 28687), (41, 30258, 30368), (41, 31939, 32049), (41, 33620, 33730), (41, 35301, 35411), (41, 36982, 37092), (41, 38663, 38773), (43, 25886, 25996), (43, 27735, 27845), (43, 29584, 29694), (43, 31433, 31543), (43, 33282, 33392), (43, 35131, 35241), (43, 36980, 37090), (43, 38829, 38939), (43, 40678, 40788), (43, 42527, 42637), (47, 26508, 26618), (47, 28717, 28827), (47, 30926, 31036), (47, 33135, 33245), (47, 35344, 35454), (47, 37553, 37663), (47, 39762, 39872), (47, 41971, 42081), (47, 44180, 44290), (47, 46389, 46499), (47, 48598, 48708), (53, 25281, 25391), (53, 28090, 28200), (53, 30899, 31009), (53, 33708, 33818), (53, 36517, 36627), (53, 39326, 39436), (53, 42135, 42245), (53, 44944, 45054), (53, 47753, 47863), (59, 24420, 24477), (59, 27848, 27958), (59, 31329, 31439), (59, 34810, 34920), (59, 38291, 38401), (59, 41772, 41882), (59, 45253, 45363), (59, 48734, 48839), (61, 26047, 26157), (61, 29768, 29878), (61, 33489, 33599), (61, 37210, 37320), (61, 40931, 41041), (61, 44652, 44762), (61, 48373, 48483), (67, 26934, 27044), (67, 31423, 31533), (67, 35912, 36022), (67, 40401, 40511), (67, 44890, 45000), (71, 25205, 25315), (71, 30246, 30356), (71, 35287, 35397), (71, 40328, 40438), (71, 45369, 45479), (73, 26645, 26755), (73, 31974, 32084), (73, 37303, 37413), (73, 42632, 42742), (73, 47961, 48071), (79, 24964, 25074), (79, 31205, 31315), (79, 37446, 37556), (79, 43687, 43797), (83, 27556, 27666), (83, 34445, 34555), (83, 41334, 41444), (83, 48223, 48333), (89, 31684, 31794), (89, 39605, 39715), (89, 47526, 47636), (97, 28227, 28337), (97, 37636, 37746), (97, 47045, 47155), (101, 30603, 30713), (101, 40804, 40914), (103, 31827, 31937), (103, 42436, 42546), (107, 34347, 34457), (107, 45796, 45906), (109, 35643, 35753), (109, 47524, 47634)]

def row111_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24686), (2, 26624, 26734), (2, 28672, 28782), (2, 30720, 30830), (2, 32768, 32878), (2, 34816, 34926), (2, 36864, 36974), (2, 38912, 39022), (2, 40960, 41070), (2, 43008, 43118), (2, 45056, 45166)]

def row111_layer001_block001 : List ColouredInterval :=
  [(2, 47104, 47214), (2, 24576, 24686), (2, 28672, 28782), (2, 32768, 32878), (2, 36864, 36974), (2, 40960, 41070), (2, 45056, 45166), (2, 24576, 24686), (2, 32768, 32878), (2, 40960, 41070), (2, 32768, 32878)]

def row111_layer001_block002 : List ColouredInterval :=
  [(2, 32768, 32878), (3, 26244, 26354), (3, 32805, 32915), (3, 39366, 39476), (3, 45927, 46037), (3, 39366, 39476), (5, 25000, 25110), (5, 28125, 28235), (5, 31250, 31360), (5, 34375, 34485), (5, 37500, 37610)]

def row111_layer001_block003 : List ColouredInterval :=
  [(5, 40625, 40735), (5, 43750, 43860), (5, 46875, 46985), (5, 31250, 31360), (5, 46875, 46985), (7, 26411, 26521), (7, 28812, 28922), (7, 31213, 31323), (7, 33614, 33724), (7, 36015, 36125), (7, 38416, 38526)]

def row111_layer001_block004 : List ColouredInterval :=
  [(7, 40817, 40927), (7, 43218, 43328), (7, 45619, 45729), (7, 48020, 48130), (7, 33614, 33724), (11, 25289, 25399), (11, 26620, 26730), (11, 27951, 28061), (11, 29282, 29392), (11, 30613, 30723), (11, 29282, 29392)]

def row111_layer001_block005 : List ColouredInterval :=
  [(11, 43923, 44033), (13, 26364, 26474), (13, 28561, 28671), (13, 30758, 30868), (13, 32955, 33065), (13, 35152, 35262), (13, 37349, 37459), (13, 39546, 39656), (13, 41743, 41853), (13, 43940, 44050), (13, 46137, 46247)]

def row111_layer001_block006 : List ColouredInterval :=
  [(13, 48334, 48444), (13, 28561, 28671), (17, 24565, 24675), (17, 29478, 29588), (17, 34391, 34501), (17, 39304, 39414), (17, 44217, 44327), (19, 27436, 27546), (19, 34295, 34405), (19, 41154, 41264), (19, 48013, 48123)]

def row111_layer001_block007 : List ColouredInterval :=
  [(23, 24420, 24444), (23, 36501, 36611), (23, 48668, 48778), (29, 24420, 24499), (29, 48778, 48839), (31, 29791, 29901), (41, 25215, 25325), (41, 26896, 27006), (41, 28577, 28687), (41, 30258, 30368), (41, 31939, 32049)]

def row111_layer001_block008 : List ColouredInterval :=
  [(41, 33620, 33730), (41, 35301, 35411), (41, 36982, 37092), (41, 38663, 38773), (43, 25886, 25996), (43, 27735, 27845), (43, 29584, 29694), (43, 31433, 31543), (43, 33282, 33392), (43, 35131, 35241), (43, 36980, 37090)]

def row111_layer001_block009 : List ColouredInterval :=
  [(43, 38829, 38939), (43, 40678, 40788), (43, 42527, 42637), (47, 26508, 26618), (47, 28717, 28827), (47, 30926, 31036), (47, 33135, 33245), (47, 35344, 35454), (47, 37553, 37663), (47, 39762, 39872), (47, 41971, 42081)]

def row111_layer001_block010 : List ColouredInterval :=
  [(47, 44180, 44290), (47, 46389, 46499), (47, 48598, 48708), (53, 25281, 25391), (53, 28090, 28200), (53, 30899, 31009), (53, 33708, 33818), (53, 36517, 36627), (53, 39326, 39436), (53, 42135, 42245), (53, 44944, 45054)]

def row111_layer001_block011 : List ColouredInterval :=
  [(53, 47753, 47863), (59, 24420, 24477), (59, 27848, 27958), (59, 31329, 31439), (59, 34810, 34920), (59, 38291, 38401), (59, 41772, 41882), (59, 45253, 45363), (59, 48734, 48839), (61, 26047, 26157), (61, 29768, 29878)]

def row111_layer001_block012 : List ColouredInterval :=
  [(61, 33489, 33599), (61, 37210, 37320), (61, 40931, 41041), (61, 44652, 44762), (61, 48373, 48483), (67, 26934, 27044), (67, 31423, 31533), (67, 35912, 36022), (67, 40401, 40511), (67, 44890, 45000), (71, 25205, 25315)]

def row111_layer001_block013 : List ColouredInterval :=
  [(71, 30246, 30356), (71, 35287, 35397), (71, 40328, 40438), (71, 45369, 45479), (73, 26645, 26755), (73, 31974, 32084), (73, 37303, 37413), (73, 42632, 42742), (73, 47961, 48071), (79, 24964, 25074), (79, 31205, 31315)]

def row111_layer001_block014 : List ColouredInterval :=
  [(79, 37446, 37556), (79, 43687, 43797), (83, 27556, 27666), (83, 34445, 34555), (83, 41334, 41444), (83, 48223, 48333), (89, 31684, 31794), (89, 39605, 39715), (89, 47526, 47636), (97, 28227, 28337), (97, 37636, 37746)]

def row111_layer001_block015 : List ColouredInterval :=
  [(97, 47045, 47155), (101, 30603, 30713), (101, 40804, 40914), (103, 31827, 31937), (103, 42436, 42546), (107, 34347, 34457), (107, 45796, 45906), (109, 35643, 35753), (109, 47524, 47634)]

def row111_layer001_chunks : List (List ColouredInterval) :=
  [row111_layer001_block000, row111_layer001_block001, row111_layer001_block002, row111_layer001_block003, row111_layer001_block004, row111_layer001_block005, row111_layer001_block006, row111_layer001_block007, row111_layer001_block008, row111_layer001_block009, row111_layer001_block010, row111_layer001_block011, row111_layer001_block012, row111_layer001_block013, row111_layer001_block014, row111_layer001_block015]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_arithmetic : LayerArithmeticValid row111.height { lower := 24420, upper := 48840, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_enumeration :
    activePowerIntervalList 111 23 24420 48840 = row111_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs000 :
    row111_layer001_block000.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs001 :
    row111_layer001_block001.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs002 :
    row111_layer001_block002.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs003 :
    row111_layer001_block003.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs004 :
    row111_layer001_block004.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs005 :
    row111_layer001_block005.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs006 :
    row111_layer001_block006.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs007 :
    row111_layer001_block007.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs008 :
    row111_layer001_block008.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs009 :
    row111_layer001_block009.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs010 :
    row111_layer001_block010.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs011 :
    row111_layer001_block011.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs012 :
    row111_layer001_block012.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs013 :
    row111_layer001_block013.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs014 :
    row111_layer001_block014.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs014

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_pairs015 :
    row111_layer001_block015.all (fun I => row111_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row111_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs015

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_chunks_eq : row111_layer001_chunks.flatten = row111_layer001_intervals := by
  rfl

theorem row111_layer001_pairs : pairCoverCheck row111_layer001_intervals row111_bounds = true := by
  apply pairCoverCheck_of_chunks row111_layer001_chunks_eq
  intro block hblock
  simp only [row111_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row111_layer001_pairs000
  · exact row111_layer001_pairs001
  · exact row111_layer001_pairs002
  · exact row111_layer001_pairs003
  · exact row111_layer001_pairs004
  · exact row111_layer001_pairs005
  · exact row111_layer001_pairs006
  · exact row111_layer001_pairs007
  · exact row111_layer001_pairs008
  · exact row111_layer001_pairs009
  · exact row111_layer001_pairs010
  · exact row111_layer001_pairs011
  · exact row111_layer001_pairs012
  · exact row111_layer001_pairs013
  · exact row111_layer001_pairs014
  · exact row111_layer001_pairs015

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer001_checked :
    coverLayerCheck row111.height row111.goods { lower := 24420, upper := 48840, M := 23 } = true := by
  exact coverLayerCheck_of_parts row111_layer001_arithmetic row111_layer001_enumeration row111_bounds_eq row111_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer001_checked
