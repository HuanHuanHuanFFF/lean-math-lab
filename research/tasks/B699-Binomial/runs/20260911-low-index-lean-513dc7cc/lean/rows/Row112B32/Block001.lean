import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row112B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs007 :
    row112_layer000_block007.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs008 :
    row112_layer000_block008.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs009 :
    row112_layer000_block009.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_pairs010 :
    row112_layer000_block010.all (fun I => row112_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_chunks_eq : row112_layer000_chunks.flatten = row112_layer000_intervals := by
  rfl

theorem row112_layer000_pairs : pairCoverCheck row112_layer000_intervals row112_bounds = true := by
  apply pairCoverCheck_of_chunks row112_layer000_chunks_eq
  intro block hblock
  simp only [row112_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row112_layer000_pairs000
  · exact row112_layer000_pairs001
  · exact row112_layer000_pairs002
  · exact row112_layer000_pairs003
  · exact row112_layer000_pairs004
  · exact row112_layer000_pairs005
  · exact row112_layer000_pairs006
  · exact row112_layer000_pairs007
  · exact row112_layer000_pairs008
  · exact row112_layer000_pairs009
  · exact row112_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer000_checked :
    coverLayerCheck row112.height row112.goods { lower := 12432, upper := 24864, M := 26 } = true := by
  exact coverLayerCheck_of_parts row112_layer000_arithmetic row112_layer000_enumeration row112_bounds_eq row112_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row112_layer001_intervals : List ColouredInterval :=
  [(2, 32768, 32879), (3, 26244, 26355), (3, 28431, 28542), (3, 30618, 30729), (3, 32805, 32916), (3, 34992, 35103), (3, 37179, 37290), (3, 39366, 39477), (3, 41553, 41664), (3, 43740, 43851), (3, 45927, 46038), (3, 48114, 48225), (3, 26244, 26355), (3, 32805, 32916), (3, 39366, 39477), (3, 45927, 46038), (3, 39366, 39477), (5, 25000, 25111), (5, 28125, 28236), (5, 31250, 31361), (5, 34375, 34486), (5, 37500, 37611), (5, 40625, 40736), (5, 43750, 43861), (5, 46875, 46986), (5, 31250, 31361), (5, 46875, 46986), (7, 33614, 33725), (11, 25289, 25400), (11, 26620, 26731), (11, 27951, 28062), (11, 29282, 29393), (11, 29282, 29393), (11, 43923, 44034), (13, 26364, 26475), (13, 28561, 28672), (13, 30758, 30869), (13, 32955, 33066), (13, 35152, 35263), (13, 37349, 37460), (13, 39546, 39657), (13, 41743, 41854), (13, 43940, 44051), (13, 46137, 46248), (13, 48334, 48445), (13, 28561, 28672), (17, 29478, 29589), (17, 34391, 34502), (17, 39304, 39415), (17, 44217, 44328), (17, 49130, 49241), (19, 27436, 27547), (19, 34295, 34406), (19, 41154, 41265), (19, 48013, 48124), (23, 36501, 36612), (23, 48668, 48779), (29, 48778, 48889), (31, 29791, 29902), (37, 26011, 26122), (37, 27380, 27491), (37, 28749, 28860), (37, 30118, 30229), (41, 25215, 25326), (41, 26896, 27007), (41, 28577, 28688), (41, 30258, 30369), (41, 31939, 32050), (41, 33620, 33731), (41, 35301, 35412), (41, 36982, 37093), (43, 25886, 25997), (43, 27735, 27846), (43, 29584, 29695), (43, 31433, 31544), (43, 33282, 33393), (43, 35131, 35242), (43, 36980, 37091), (43, 38829, 38940), (43, 40678, 40789), (47, 26508, 26619), (47, 28717, 28828), (47, 30926, 31037), (47, 33135, 33246), (47, 35344, 35455), (47, 37553, 37664), (47, 39762, 39873), (47, 41971, 42082), (47, 44180, 44291), (47, 46389, 46500), (47, 48598, 48709), (53, 25281, 25392), (53, 28090, 28201), (53, 30899, 31010), (53, 33708, 33819), (53, 36517, 36628), (53, 39326, 39437), (53, 42135, 42246), (53, 44944, 45055), (53, 47753, 47864), (59, 27848, 27959), (59, 31329, 31440), (59, 34810, 34921), (59, 38291, 38402), (59, 41772, 41883), (59, 45253, 45364), (59, 48734, 48845), (61, 26047, 26158), (61, 29768, 29879), (61, 33489, 33600), (61, 37210, 37321), (61, 40931, 41042), (61, 44652, 44763), (61, 48373, 48484), (67, 26934, 27045), (67, 31423, 31534), (67, 35912, 36023), (67, 40401, 40512), (67, 44890, 45001), (67, 49379, 49490), (71, 25205, 25316), (71, 30246, 30357), (71, 35287, 35398), (71, 40328, 40439), (71, 45369, 45480), (73, 26645, 26756), (73, 31974, 32085), (73, 37303, 37414), (73, 42632, 42743), (73, 47961, 48072), (79, 24964, 25075), (79, 31205, 31316), (79, 37446, 37557), (79, 43687, 43798), (83, 27556, 27667), (83, 34445, 34556), (83, 41334, 41445), (83, 48223, 48334), (89, 31684, 31795), (89, 39605, 39716), (89, 47526, 47637), (97, 28227, 28338), (97, 37636, 37747), (97, 47045, 47156), (101, 30603, 30714), (101, 40804, 40915), (103, 31827, 31938), (103, 42436, 42547), (107, 34347, 34458), (107, 45796, 45907), (109, 35643, 35754), (109, 47524, 47635)]

def row112_layer001_block000 : List ColouredInterval :=
  [(2, 32768, 32879), (3, 26244, 26355), (3, 28431, 28542), (3, 30618, 30729), (3, 32805, 32916), (3, 34992, 35103), (3, 37179, 37290), (3, 39366, 39477), (3, 41553, 41664), (3, 43740, 43851), (3, 45927, 46038), (3, 48114, 48225), (3, 26244, 26355)]

def row112_layer001_block001 : List ColouredInterval :=
  [(3, 32805, 32916), (3, 39366, 39477), (3, 45927, 46038), (3, 39366, 39477), (5, 25000, 25111), (5, 28125, 28236), (5, 31250, 31361), (5, 34375, 34486), (5, 37500, 37611), (5, 40625, 40736), (5, 43750, 43861), (5, 46875, 46986), (5, 31250, 31361)]

def row112_layer001_block002 : List ColouredInterval :=
  [(5, 46875, 46986), (7, 33614, 33725), (11, 25289, 25400), (11, 26620, 26731), (11, 27951, 28062), (11, 29282, 29393), (11, 29282, 29393), (11, 43923, 44034), (13, 26364, 26475), (13, 28561, 28672), (13, 30758, 30869), (13, 32955, 33066), (13, 35152, 35263)]

def row112_layer001_block003 : List ColouredInterval :=
  [(13, 37349, 37460), (13, 39546, 39657), (13, 41743, 41854), (13, 43940, 44051), (13, 46137, 46248), (13, 48334, 48445), (13, 28561, 28672), (17, 29478, 29589), (17, 34391, 34502), (17, 39304, 39415), (17, 44217, 44328), (17, 49130, 49241), (19, 27436, 27547)]

def row112_layer001_block004 : List ColouredInterval :=
  [(19, 34295, 34406), (19, 41154, 41265), (19, 48013, 48124), (23, 36501, 36612), (23, 48668, 48779), (29, 48778, 48889), (31, 29791, 29902), (37, 26011, 26122), (37, 27380, 27491), (37, 28749, 28860), (37, 30118, 30229), (41, 25215, 25326), (41, 26896, 27007)]

def row112_layer001_block005 : List ColouredInterval :=
  [(41, 28577, 28688), (41, 30258, 30369), (41, 31939, 32050), (41, 33620, 33731), (41, 35301, 35412), (41, 36982, 37093), (43, 25886, 25997), (43, 27735, 27846), (43, 29584, 29695), (43, 31433, 31544), (43, 33282, 33393), (43, 35131, 35242), (43, 36980, 37091)]

def row112_layer001_block006 : List ColouredInterval :=
  [(43, 38829, 38940), (43, 40678, 40789), (47, 26508, 26619), (47, 28717, 28828), (47, 30926, 31037), (47, 33135, 33246), (47, 35344, 35455), (47, 37553, 37664), (47, 39762, 39873), (47, 41971, 42082), (47, 44180, 44291), (47, 46389, 46500), (47, 48598, 48709)]

def row112_layer001_block007 : List ColouredInterval :=
  [(53, 25281, 25392), (53, 28090, 28201), (53, 30899, 31010), (53, 33708, 33819), (53, 36517, 36628), (53, 39326, 39437), (53, 42135, 42246), (53, 44944, 45055), (53, 47753, 47864), (59, 27848, 27959), (59, 31329, 31440), (59, 34810, 34921), (59, 38291, 38402)]

def row112_layer001_block008 : List ColouredInterval :=
  [(59, 41772, 41883), (59, 45253, 45364), (59, 48734, 48845), (61, 26047, 26158), (61, 29768, 29879), (61, 33489, 33600), (61, 37210, 37321), (61, 40931, 41042), (61, 44652, 44763), (61, 48373, 48484), (67, 26934, 27045), (67, 31423, 31534), (67, 35912, 36023)]

def row112_layer001_block009 : List ColouredInterval :=
  [(67, 40401, 40512), (67, 44890, 45001), (67, 49379, 49490), (71, 25205, 25316), (71, 30246, 30357), (71, 35287, 35398), (71, 40328, 40439), (71, 45369, 45480), (73, 26645, 26756), (73, 31974, 32085), (73, 37303, 37414), (73, 42632, 42743), (73, 47961, 48072)]

def row112_layer001_block010 : List ColouredInterval :=
  [(79, 24964, 25075), (79, 31205, 31316), (79, 37446, 37557), (79, 43687, 43798), (83, 27556, 27667), (83, 34445, 34556), (83, 41334, 41445), (83, 48223, 48334), (89, 31684, 31795), (89, 39605, 39716), (89, 47526, 47637), (97, 28227, 28338), (97, 37636, 37747)]

def row112_layer001_block011 : List ColouredInterval :=
  [(97, 47045, 47156), (101, 30603, 30714), (101, 40804, 40915), (103, 31827, 31938), (103, 42436, 42547), (107, 34347, 34458), (107, 45796, 45907), (109, 35643, 35754), (109, 47524, 47635)]

def row112_layer001_chunks : List (List ColouredInterval) :=
  [row112_layer001_block000, row112_layer001_block001, row112_layer001_block002, row112_layer001_block003, row112_layer001_block004, row112_layer001_block005, row112_layer001_block006, row112_layer001_block007, row112_layer001_block008, row112_layer001_block009, row112_layer001_block010, row112_layer001_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_arithmetic : LayerArithmeticValid row112.height { lower := 24864, upper := 49728, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_enumeration :
    activePowerIntervalList 112 22 24864 49728 = row112_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs000 :
    row112_layer001_block000.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs001 :
    row112_layer001_block001.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs002 :
    row112_layer001_block002.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs003 :
    row112_layer001_block003.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs004 :
    row112_layer001_block004.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs005 :
    row112_layer001_block005.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs006 :
    row112_layer001_block006.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs007 :
    row112_layer001_block007.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs008 :
    row112_layer001_block008.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs009 :
    row112_layer001_block009.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs010 :
    row112_layer001_block010.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_pairs011 :
    row112_layer001_block011.all (fun I => row112_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_chunks_eq : row112_layer001_chunks.flatten = row112_layer001_intervals := by
  rfl

theorem row112_layer001_pairs : pairCoverCheck row112_layer001_intervals row112_bounds = true := by
  apply pairCoverCheck_of_chunks row112_layer001_chunks_eq
  intro block hblock
  simp only [row112_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row112_layer001_pairs000
  · exact row112_layer001_pairs001
  · exact row112_layer001_pairs002
  · exact row112_layer001_pairs003
  · exact row112_layer001_pairs004
  · exact row112_layer001_pairs005
  · exact row112_layer001_pairs006
  · exact row112_layer001_pairs007
  · exact row112_layer001_pairs008
  · exact row112_layer001_pairs009
  · exact row112_layer001_pairs010
  · exact row112_layer001_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer001_checked :
    coverLayerCheck row112.height row112.goods { lower := 24864, upper := 49728, M := 22 } = true := by
  exact coverLayerCheck_of_parts row112_layer001_arithmetic row112_layer001_enumeration row112_bounds_eq row112_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row112_layer002_intervals : List ColouredInterval :=
  [(2, 65536, 65647), (3, 52488, 52599), (3, 59049, 59160), (3, 65610, 65721), (3, 72171, 72282), (3, 78732, 78843), (3, 85293, 85404), (3, 91854, 91965), (3, 98415, 98526), (3, 59049, 59160), (3, 78732, 78843), (3, 98415, 98526), (3, 59049, 59160), (5, 50000, 50111), (5, 53125, 53236), (5, 56250, 56361), (5, 62500, 62611), (5, 78125, 78236), (5, 93750, 93861), (5, 78125, 78236), (11, 58564, 58675), (11, 73205, 73316), (11, 87846, 87957), (13, 57122, 57233), (13, 85683, 85794), (17, 54043, 54154), (17, 58956, 59067), (17, 63869, 63980), (17, 68782, 68893), (17, 73695, 73806), (17, 78608, 78719), (17, 83521, 83632), (17, 88434, 88545), (17, 83521, 83632), (19, 54872, 54983), (19, 61731, 61842), (19, 68590, 68701), (19, 75449, 75560), (19, 82308, 82419), (19, 89167, 89278), (19, 96026, 96137), (23, 60835, 60946), (23, 73002, 73113), (23, 85169, 85280), (23, 97336, 97447), (29, 73167, 73278), (29, 97556, 97667), (31, 59582, 59693), (31, 89373, 89484), (37, 50653, 50764), (41, 68921, 69032), (43, 79507, 79618), (53, 50562, 50673), (59, 52215, 52326), (59, 55696, 55807), (59, 59177, 59288), (59, 62658, 62769), (61, 52094, 52205), (61, 55815, 55926), (61, 59536, 59647), (61, 63257, 63368), (61, 66978, 67089), (67, 53868, 53979), (67, 58357, 58468), (67, 62846, 62957), (67, 67335, 67446), (67, 71824, 71935), (67, 76313, 76424), (67, 80802, 80913), (71, 50410, 50521), (71, 55451, 55562), (71, 60492, 60603), (71, 65533, 65644), (71, 70574, 70685), (71, 75615, 75726), (71, 80656, 80767), (71, 85697, 85808), (71, 90738, 90849), (73, 53290, 53401), (73, 58619, 58730), (73, 63948, 64059), (73, 69277, 69388), (73, 74606, 74717), (73, 79935, 80046), (73, 85264, 85375), (73, 90593, 90704), (73, 95922, 96033), (79, 49928, 50039), (79, 56169, 56280), (79, 62410, 62521), (79, 68651, 68762), (79, 74892, 75003), (79, 81133, 81244), (79, 87374, 87485), (79, 93615, 93726), (83, 55112, 55223), (83, 62001, 62112), (83, 68890, 69001), (83, 75779, 75890), (83, 82668, 82779), (83, 89557, 89668), (83, 96446, 96557), (89, 55447, 55558), (89, 63368, 63479), (89, 71289, 71400), (89, 79210, 79321), (89, 87131, 87242), (89, 95052, 95163), (97, 56454, 56565), (97, 65863, 65974), (97, 75272, 75383), (97, 84681, 84792), (97, 94090, 94201), (101, 51005, 51116), (101, 61206, 61317), (101, 71407, 71518), (101, 81608, 81719), (101, 91809, 91920), (103, 53045, 53156), (103, 63654, 63765), (103, 74263, 74374), (103, 84872, 84983), (103, 95481, 95592), (107, 57245, 57356), (107, 68694, 68805), (107, 80143, 80254), (107, 91592, 91703), (109, 59405, 59516), (109, 71286, 71397), (109, 83167, 83278), (109, 95048, 95159)]

def row112_layer002_block000 : List ColouredInterval :=
  [(2, 65536, 65647), (3, 52488, 52599), (3, 59049, 59160), (3, 65610, 65721), (3, 72171, 72282), (3, 78732, 78843), (3, 85293, 85404), (3, 91854, 91965), (3, 98415, 98526), (3, 59049, 59160), (3, 78732, 78843), (3, 98415, 98526), (3, 59049, 59160), (5, 50000, 50111), (5, 53125, 53236)]

def row112_layer002_block001 : List ColouredInterval :=
  [(5, 56250, 56361), (5, 62500, 62611), (5, 78125, 78236), (5, 93750, 93861), (5, 78125, 78236), (11, 58564, 58675), (11, 73205, 73316), (11, 87846, 87957), (13, 57122, 57233), (13, 85683, 85794), (17, 54043, 54154), (17, 58956, 59067), (17, 63869, 63980), (17, 68782, 68893), (17, 73695, 73806)]

def row112_layer002_block002 : List ColouredInterval :=
  [(17, 78608, 78719), (17, 83521, 83632), (17, 88434, 88545), (17, 83521, 83632), (19, 54872, 54983), (19, 61731, 61842), (19, 68590, 68701), (19, 75449, 75560), (19, 82308, 82419), (19, 89167, 89278), (19, 96026, 96137), (23, 60835, 60946), (23, 73002, 73113), (23, 85169, 85280), (23, 97336, 97447)]

def row112_layer002_block003 : List ColouredInterval :=
  [(29, 73167, 73278), (29, 97556, 97667), (31, 59582, 59693), (31, 89373, 89484), (37, 50653, 50764), (41, 68921, 69032), (43, 79507, 79618), (53, 50562, 50673), (59, 52215, 52326), (59, 55696, 55807), (59, 59177, 59288), (59, 62658, 62769), (61, 52094, 52205), (61, 55815, 55926), (61, 59536, 59647)]

def row112_layer002_block004 : List ColouredInterval :=
  [(61, 63257, 63368), (61, 66978, 67089), (67, 53868, 53979), (67, 58357, 58468), (67, 62846, 62957), (67, 67335, 67446), (67, 71824, 71935), (67, 76313, 76424), (67, 80802, 80913), (71, 50410, 50521), (71, 55451, 55562), (71, 60492, 60603), (71, 65533, 65644), (71, 70574, 70685), (71, 75615, 75726)]

def row112_layer002_block005 : List ColouredInterval :=
  [(71, 80656, 80767), (71, 85697, 85808), (71, 90738, 90849), (73, 53290, 53401), (73, 58619, 58730), (73, 63948, 64059), (73, 69277, 69388), (73, 74606, 74717), (73, 79935, 80046), (73, 85264, 85375), (73, 90593, 90704), (73, 95922, 96033), (79, 49928, 50039), (79, 56169, 56280), (79, 62410, 62521)]

def row112_layer002_block006 : List ColouredInterval :=
  [(79, 68651, 68762), (79, 74892, 75003), (79, 81133, 81244), (79, 87374, 87485), (79, 93615, 93726), (83, 55112, 55223), (83, 62001, 62112), (83, 68890, 69001), (83, 75779, 75890), (83, 82668, 82779), (83, 89557, 89668), (83, 96446, 96557), (89, 55447, 55558), (89, 63368, 63479), (89, 71289, 71400)]

def row112_layer002_block007 : List ColouredInterval :=
  [(89, 79210, 79321), (89, 87131, 87242), (89, 95052, 95163), (97, 56454, 56565), (97, 65863, 65974), (97, 75272, 75383), (97, 84681, 84792), (97, 94090, 94201), (101, 51005, 51116), (101, 61206, 61317), (101, 71407, 71518), (101, 81608, 81719), (101, 91809, 91920), (103, 53045, 53156), (103, 63654, 63765)]

def row112_layer002_block008 : List ColouredInterval :=
  [(103, 74263, 74374), (103, 84872, 84983), (103, 95481, 95592), (107, 57245, 57356), (107, 68694, 68805), (107, 80143, 80254), (107, 91592, 91703), (109, 59405, 59516), (109, 71286, 71397), (109, 83167, 83278), (109, 95048, 95159)]

def row112_layer002_chunks : List (List ColouredInterval) :=
  [row112_layer002_block000, row112_layer002_block001, row112_layer002_block002, row112_layer002_block003, row112_layer002_block004, row112_layer002_block005, row112_layer002_block006, row112_layer002_block007, row112_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_arithmetic : LayerArithmeticValid row112.height { lower := 49728, upper := 99456, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_enumeration :
    activePowerIntervalList 112 18 49728 99456 = row112_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs000 :
    row112_layer002_block000.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs001 :
    row112_layer002_block001.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs002 :
    row112_layer002_block002.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs003 :
    row112_layer002_block003.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs004 :
    row112_layer002_block004.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer002_pairs005 :
    row112_layer002_block005.all (fun I => row112_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row112_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer002_pairs005
