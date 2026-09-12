import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row103B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer000_pairs009 :
    row103_layer000_block009.all (fun I => row103_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer000_chunks_eq : row103_layer000_chunks.flatten = row103_layer000_intervals := by
  rfl

theorem row103_layer000_pairs : pairCoverCheck row103_layer000_intervals row103_bounds = true := by
  apply pairCoverCheck_of_chunks row103_layer000_chunks_eq
  intro block hblock
  simp only [row103_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row103_layer000_pairs000
  · exact row103_layer000_pairs001
  · exact row103_layer000_pairs002
  · exact row103_layer000_pairs003
  · exact row103_layer000_pairs004
  · exact row103_layer000_pairs005
  · exact row103_layer000_pairs006
  · exact row103_layer000_pairs007
  · exact row103_layer000_pairs008
  · exact row103_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer000_checked :
    coverLayerCheck row103.height row103.goods { lower := 10506, upper := 21012, M := 21 } = true := by
  exact coverLayerCheck_of_parts row103_layer000_arithmetic row103_layer000_enumeration row103_bounds_eq row103_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row103_layer001_intervals : List ColouredInterval :=
  [(2, 22528, 22630), (2, 24576, 24678), (2, 26624, 26726), (2, 28672, 28774), (2, 30720, 30822), (2, 32768, 32870), (2, 34816, 34918), (2, 24576, 24678), (2, 28672, 28774), (2, 32768, 32870), (2, 36864, 36966), (2, 40960, 41062), (2, 24576, 24678), (2, 32768, 32870), (2, 40960, 41062), (2, 32768, 32870), (2, 32768, 32870), (3, 21870, 21972), (3, 24057, 24159), (3, 26244, 26346), (3, 28431, 28533), (3, 30618, 30720), (3, 32805, 32907), (3, 34992, 35094), (3, 37179, 37281), (3, 26244, 26346), (3, 32805, 32907), (3, 39366, 39468), (3, 39366, 39468), (5, 21875, 21977), (5, 25000, 25102), (5, 28125, 28227), (5, 31250, 31352), (5, 34375, 34477), (5, 37500, 37602), (5, 40625, 40727), (5, 31250, 31352), (7, 21609, 21711), (7, 24010, 24112), (7, 26411, 26513), (7, 28812, 28914), (7, 31213, 31315), (7, 33614, 33716), (7, 36015, 36117), (7, 38416, 38518), (7, 40817, 40919), (7, 33614, 33716), (11, 21296, 21398), (11, 22627, 22729), (11, 29282, 29384), (13, 21970, 22072), (13, 24167, 24269), (13, 26364, 26466), (13, 28561, 28663), (13, 30758, 30860), (13, 32955, 33057), (13, 35152, 35254), (13, 37349, 37451), (13, 28561, 28663), (17, 24565, 24667), (17, 29478, 29580), (17, 34391, 34493), (17, 39304, 39406), (19, 27436, 27538), (19, 34295, 34397), (19, 41154, 41256), (23, 24334, 24436), (23, 36501, 36603), (29, 24389, 24491), (31, 29791, 29893), (37, 21904, 22006), (37, 23273, 23375), (41, 21853, 21955), (41, 23534, 23636), (41, 25215, 25317), (41, 26896, 26998), (41, 28577, 28679), (43, 22188, 22290), (43, 24037, 24139), (43, 25886, 25988), (43, 27735, 27837), (43, 29584, 29686), (43, 31433, 31535), (47, 22090, 22192), (47, 24299, 24401), (47, 26508, 26610), (47, 28717, 28819), (47, 30926, 31028), (47, 33135, 33237), (47, 35344, 35446), (47, 37553, 37655), (53, 22472, 22574), (53, 25281, 25383), (53, 28090, 28192), (53, 30899, 31001), (53, 33708, 33810), (53, 36517, 36619), (53, 39326, 39428), (59, 24367, 24469), (59, 27848, 27950), (59, 31329, 31431), (59, 34810, 34912), (59, 38291, 38393), (59, 41772, 41874), (61, 22326, 22428), (61, 26047, 26149), (61, 29768, 29870), (61, 33489, 33591), (61, 37210, 37312), (61, 40931, 41033), (67, 22445, 22547), (67, 26934, 27036), (67, 31423, 31525), (67, 35912, 36014), (67, 40401, 40503), (71, 25205, 25307), (71, 30246, 30348), (71, 35287, 35389), (71, 40328, 40430), (73, 21316, 21418), (73, 26645, 26747), (73, 31974, 32076), (73, 37303, 37405), (79, 24964, 25066), (79, 31205, 31307), (79, 37446, 37548), (83, 27556, 27658), (83, 34445, 34547), (83, 41334, 41436), (89, 23763, 23865), (89, 31684, 31786), (89, 39605, 39707), (97, 28227, 28329), (97, 37636, 37738), (101, 30603, 30705), (101, 40804, 40906)]

def row103_layer001_block000 : List ColouredInterval :=
  [(2, 22528, 22630), (2, 24576, 24678), (2, 26624, 26726), (2, 28672, 28774), (2, 30720, 30822), (2, 32768, 32870), (2, 34816, 34918), (2, 24576, 24678), (2, 28672, 28774), (2, 32768, 32870), (2, 36864, 36966), (2, 40960, 41062), (2, 24576, 24678), (2, 32768, 32870), (2, 40960, 41062)]

def row103_layer001_block001 : List ColouredInterval :=
  [(2, 32768, 32870), (2, 32768, 32870), (3, 21870, 21972), (3, 24057, 24159), (3, 26244, 26346), (3, 28431, 28533), (3, 30618, 30720), (3, 32805, 32907), (3, 34992, 35094), (3, 37179, 37281), (3, 26244, 26346), (3, 32805, 32907), (3, 39366, 39468), (3, 39366, 39468), (5, 21875, 21977)]

def row103_layer001_block002 : List ColouredInterval :=
  [(5, 25000, 25102), (5, 28125, 28227), (5, 31250, 31352), (5, 34375, 34477), (5, 37500, 37602), (5, 40625, 40727), (5, 31250, 31352), (7, 21609, 21711), (7, 24010, 24112), (7, 26411, 26513), (7, 28812, 28914), (7, 31213, 31315), (7, 33614, 33716), (7, 36015, 36117), (7, 38416, 38518)]

def row103_layer001_block003 : List ColouredInterval :=
  [(7, 40817, 40919), (7, 33614, 33716), (11, 21296, 21398), (11, 22627, 22729), (11, 29282, 29384), (13, 21970, 22072), (13, 24167, 24269), (13, 26364, 26466), (13, 28561, 28663), (13, 30758, 30860), (13, 32955, 33057), (13, 35152, 35254), (13, 37349, 37451), (13, 28561, 28663), (17, 24565, 24667)]

def row103_layer001_block004 : List ColouredInterval :=
  [(17, 29478, 29580), (17, 34391, 34493), (17, 39304, 39406), (19, 27436, 27538), (19, 34295, 34397), (19, 41154, 41256), (23, 24334, 24436), (23, 36501, 36603), (29, 24389, 24491), (31, 29791, 29893), (37, 21904, 22006), (37, 23273, 23375), (41, 21853, 21955), (41, 23534, 23636), (41, 25215, 25317)]

def row103_layer001_block005 : List ColouredInterval :=
  [(41, 26896, 26998), (41, 28577, 28679), (43, 22188, 22290), (43, 24037, 24139), (43, 25886, 25988), (43, 27735, 27837), (43, 29584, 29686), (43, 31433, 31535), (47, 22090, 22192), (47, 24299, 24401), (47, 26508, 26610), (47, 28717, 28819), (47, 30926, 31028), (47, 33135, 33237), (47, 35344, 35446)]

def row103_layer001_block006 : List ColouredInterval :=
  [(47, 37553, 37655), (53, 22472, 22574), (53, 25281, 25383), (53, 28090, 28192), (53, 30899, 31001), (53, 33708, 33810), (53, 36517, 36619), (53, 39326, 39428), (59, 24367, 24469), (59, 27848, 27950), (59, 31329, 31431), (59, 34810, 34912), (59, 38291, 38393), (59, 41772, 41874), (61, 22326, 22428)]

def row103_layer001_block007 : List ColouredInterval :=
  [(61, 26047, 26149), (61, 29768, 29870), (61, 33489, 33591), (61, 37210, 37312), (61, 40931, 41033), (67, 22445, 22547), (67, 26934, 27036), (67, 31423, 31525), (67, 35912, 36014), (67, 40401, 40503), (71, 25205, 25307), (71, 30246, 30348), (71, 35287, 35389), (71, 40328, 40430), (73, 21316, 21418)]

def row103_layer001_block008 : List ColouredInterval :=
  [(73, 26645, 26747), (73, 31974, 32076), (73, 37303, 37405), (79, 24964, 25066), (79, 31205, 31307), (79, 37446, 37548), (83, 27556, 27658), (83, 34445, 34547), (83, 41334, 41436), (89, 23763, 23865), (89, 31684, 31786), (89, 39605, 39707), (97, 28227, 28329), (97, 37636, 37738), (101, 30603, 30705)]

def row103_layer001_block009 : List ColouredInterval :=
  [(101, 40804, 40906)]

def row103_layer001_chunks : List (List ColouredInterval) :=
  [row103_layer001_block000, row103_layer001_block001, row103_layer001_block002, row103_layer001_block003, row103_layer001_block004, row103_layer001_block005, row103_layer001_block006, row103_layer001_block007, row103_layer001_block008, row103_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_arithmetic : LayerArithmeticValid row103.height { lower := 21012, upper := 42024, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_enumeration :
    activePowerIntervalList 103 17 21012 42024 = row103_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs000 :
    row103_layer001_block000.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs001 :
    row103_layer001_block001.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs002 :
    row103_layer001_block002.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs003 :
    row103_layer001_block003.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs004 :
    row103_layer001_block004.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs005 :
    row103_layer001_block005.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs006 :
    row103_layer001_block006.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs007 :
    row103_layer001_block007.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs008 :
    row103_layer001_block008.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer001_pairs009 :
    row103_layer001_block009.all (fun I => row103_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row103_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer001_pairs009
